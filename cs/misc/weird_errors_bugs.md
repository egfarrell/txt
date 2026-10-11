### How to accidently delete 6 files!
    mv aet_summary_0.jpg -> aet_summary_1.jpg
    mv aet_summary_1.jpg -> aet_summary_2.jpg
    mv aet_summary_2.jpg -> aet_summary_3.jpg
    mv aet_summary_3.jpg -> aet_summary_4.jpg

    - old numbering was : '0 to 3'
    - I wanted to batch change to '1 to 4'
    - used python vimv
    - I was left with one file in the end!

### ONS: SAS!
    - If code was triple commented out, then SAS Batch would
      ignore the next line, although SAS Enterprise guide would
      detect it.

# Pitfalls of [COMMENTED OUT] code

- The "Magic / More Magic button" story:
    http://catb.org/jargon/html/magic-story.html

- I've heard some horror stories about programs failing to
  compile if you switch independent lines around or, even worst,
  remove some comments. Thought it would be one of those!

- If you want a short one: It's not too hard to get FLEX to
  switch from generating compiling code to non-compiling code by
  _removing a comment_.
  - The secret is in if the comment is "interpreted" by flex or
    the compiler, even thought they should both be the same.

- I was hit with a flex compiler bug on a large project days away
  from a deadline. I think it was due to either the depth or
  shape of the AST as I was able to get it to finally compile by
  _reordering the functions_ in the class. Then I added more code
  and broke it again.


### Links
    - Code different when moon was full https://news.ycombinator.com/item?id=28686016
