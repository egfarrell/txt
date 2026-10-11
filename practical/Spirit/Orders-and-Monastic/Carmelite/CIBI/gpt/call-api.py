
# How to call this script: 
    # See batch file ./run-api-01.sh etc

# See also: 
    # $MY_NOTES/cs/AI-ML/ChatGPT-LLMs-OpenAI.txt

import os
import sys
from openai import OpenAI
import argparse


client = OpenAI(api_key=os.getenv('openai_key'))
import traceback
from time import sleep

# MODEL = "gpt-3.5-turbo"
# MODEL = "gpt-4-1106-preview"
MODEL = "gpt-4o"
# MODEL = "gpt-4o-mini"
# MODEL = "gpt-4"

# old gpt-4
# CHUNK_SIZE = 3600
# MAX_TOKENS = 4000

# # for smoothing
# CHUNK_SIZE = 12000
# MAX_TOKENS = 15000

# for summary work
CHUNK_SIZE = 100000
# CHUNK_SIZE = 13000
MAX_TOKENS = 15000


GPT_SYS_PROMPT   = "You are a clear, simple writer."
# GPT_SYS_PROMPT   = "You are a helpful summarizer."



    # "1. How would you describe St Teresa's life in the Monastery of the Incarnation?"
    # "2. How do you understand what St Teresa describes as her 'conversion'?"
    # "3. What were the most significant features of the new life of St Teresa following her conversion?"
    # "4. What was the model for the new monastery of San José?"
    # "5. What were the elements of the life of the sisters San José?"


do_simplify  = (
    "Task: Please edit these 10 answers to retain all the same information and approximate length, ** but ** use simpler language. "
    "i.e. say the same thing, but in a less formal, less complicated way."
    "Thank you!"
    )


do_h05_assign2  = (
    "Task: Please answer these 5 questions in very simple, clear British English. "
    "Please make each answer around ** 210 words ** approx."
    "Please base your answer on the povided source texts, Source-01, Source-02 etc"
    "Where possible, please cite the sources as appropriate. e.g. Put in brackets (Source-01)"
    "Many thanks!"
    "The questions are:"
    "6. How were Teresa's horizons expanded so that she wanted to make more foundations?"
    "7. Why did Teresa found the discalced friars?"
    "8. How did Teresa prepare John of the Cross for the new foundation?"
    "9. How would you characterise the relationship between John of the Cross and Teresa?"
    "10. For whom did Teresa write? Why did Teresa assume the male role of a teacher and writer?"

    )


do_reduce  = (
    "Task: For each chunk of text, please summarise it to 50% of its original size. "
    "Before you summarise the chunk of text, please output the original word count."
    "When you have finsihed summarising the chunk of text, please output the new reduced word count."
    "(hopefully the new reduced word count will be 50% smaller)"
    "Many thanks!"
    )


do_tidy_up  = (
        "Task: Please only do 2 things: 1. ensure all spellings are British English, not American. "
        "2. after each answer append the following: Wordcount: {insert correct number of words}"
        "Please, no need to do any other edits whatsoever."
    "Many thanks!"
)




make_summary  = (
    "Context: This is a module from a Religious course. "
    "Task: Please could u summarise this text in bullet points. Thank you!"
)

basic = (
    "Please proofread this audio transcription. Only correct errors and insert punctuation. "
    "Note 1: The start/end of the text may seem nonsensical due to truncation and token limits."
    "Please insert '###' at the end."
)

GPT_INSTRUCTIONS = do_simplify
# GPT_INSTRUCTIONS = do_h05_assign2
# GPT_INSTRUCTIONS = do_questions2b
# GPT_INSTRUCTIONS = do_questions2a
# GPT_INSTRUCTIONS = do_reduce
# GPT_INSTRUCTIONS = do_tidy_up
# GPT_INSTRUCTIONS = do_questions
# GPT_INSTRUCTIONS = make_summary
# GPT_INSTRUCTIONS = basic


# Create parser
parser = argparse.ArgumentParser(description='Process input and output file names.')
parser.add_argument('--input', dest='input_file', required=True, help='Input file name')
parser.add_argument('--output', dest='output_file', required=True, help='Output file name')

# Parse arguments
args = parser.parse_args()

# Update file locations with command line arguments
input_file = args.input_file
output_file = args.output_file


# BASH
# export openai_key=""

os_encoding = sys.getfilesystemencoding()
print('os_encoding: ', os_encoding)


def send_to_openai(text, retries=3, delay=60):
    for attempt in range(retries):
        try:
            response = client.chat.completions.create(model=MODEL,
            messages=[
                {"role": "system", "content": GPT_SYS_PROMPT},
                {"role": "user",   "content": GPT_INSTRUCTIONS + text}
            ],
            max_tokens=MAX_TOKENS)
            return response.choices[0].message.content.strip()

        # except OpenAI.Error as e:
        except Exception as e:
            print(f"OpenAI API call failed: {e}.")
            exit()
            # traceback.print_exc()

        except TimeoutError:
            print("Request timed out.")

        # If max retries reached, exit. Else, wait and retry.
        if attempt == retries - 1:
            print("Max retries reached. Exiting.")
            return ""
        else:
            print(f"Retrying in {delay} seconds...")
            sleep(delay)


def proofread_file(file_path, output_path, chunk_size=2000):  # Reduced chunk size
    print('----------------------------------------------------------------------- ')
    print('Current file: ', file_path)
    print('----------------------------------------------------------------------- ')
    print('Chunk_size:   ', chunk_size)
    with open(file_path, 'r', encoding=os_encoding) as f, open(output_path, 'w') as out:
        while True:
            # Read chunk
            chunk = f.read(chunk_size)

            # If we're not at the end of the file,
            # adjust the chunk to end at the end of a sentence
            if len(chunk) == chunk_size:
                print('Not at end of file')
                last_sentence = chunk.rfind('.')
                if last_sentence != -1:
                    last_sentence += 1 # include the full stop
                    # Adjust the file's read position
                    f.seek(f.tell() - (chunk_size - last_sentence))
                    chunk = chunk[:last_sentence]


            # Exit loop if chunk is empty
            if not chunk:
                break
            else:
                print('Tail of current chunk: ', chunk.replace('\n', ' ').replace('\r', ' ')[-20:])

            corrected_chunk = send_to_openai(chunk)

            # Write corrected_chunk to the output file immediately
            out.write(corrected_chunk)
            out.flush()
            print('Done.')

            # Optional: sleep for a few seconds to avoid hitting rate limits
            sleep(3)



# Do proofreading
proofread_file(input_file, output_file, CHUNK_SIZE)
