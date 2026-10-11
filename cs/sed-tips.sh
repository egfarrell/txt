sed tips

# KEY PATTERN: replace
    sed 's/pattern/replacement/g' [OLD_FILE] > [NEW_FILE]
    sed -i 's/pattern/replacement/' [FILES]

# Replace something in a given specific LIST OF FLIES 
    xargs sed -i 's/old/new/g'               < list_of_files.txt
    xargs sed -i 's/\~\/videos/$MY_VIDEOS/g' < ~/files
    xargs sed -i 's/misc\/Spirit/Spirit/g' < ~/files

# extract questions
    sed '/m[ ][[:digit:]]+/!d' survey_266.txt > questions.txt

# non greedy matching in SED
    # ah! its not straight-forward
    https://stackoverflow.com/questions/1103149/non-greedy-regex-matching-in-sed

# NOT delete: ie KEEP certain lines ("!d")
    # - delete all lines that DONT contain "success"
    sed '/success/!d'  v0_7_Imputation_.log > out.log
    sed -i '/INSERT\ INTO/!d' dump_results_rnastruct

# case insensitive delete ("/Id")
    # - delete all lines that DO contain "pdf"
    sed '/pdf/Id'  $input > $output

# print first 8 lines of a stream
    cat dummy_commands | sed 8q

# replace urls
    sed  -i 's#http://composingprograms.com/pages/##g' *

    # You can escape the "/" either:
        sed 's/http:\/\/www.find.com\/page/http:\/\/www.replace.com\/page/g' input_file

# replace - case insensitive
    sed -i 's/pattern/replacement/I' <files>

# print first line 
    sed -n '1p'  somefile.txt

# delete line 2 ONLY if ends in "txt"
    sed -i '2,2{/txt$/d;}' *

# sed: add header to file
    sed -i 1'i\my header text' some_file_name

# sed remove lines
    # remove lines 5-10 and 12 and backup {file}
    sed -i.bak -e '5,10d;12d' {file}

# sed remove leading blanks
    cat leading_space.dat | sed 's/^[ \t]*//' > trimmed.dat

# sed extract specific lines
    sed -n 16224,16482p filename > newfile

