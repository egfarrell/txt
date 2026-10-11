lifeoverflow web hacking

### Links
    - Videos https://www.youtube.com/watch?v=jmgsgjPn1vs&list=PLhixgUqwRTjx2BmNF5-GddyqZcizwLLGP
    - Code Academy (recommended)

### Interesting:
    - "view source" on a browser page.
    - Then edit it. (Changes lost when refresh)
    - You could edit the number of YouTube views for example, and
      then screenshot!

### Rendering engines are forgiving
    - eg. doesn't complain about ID tags that are supposed to be
      unique. (handy if you want to inject new html code)

### Define CSS:
    - give each html element tag a "style" attribute
    - use a tag <style></style>
    - reference a separate CSS file

### Define Javascript
    - write JS directly inside of tag attributes
    - use tag `<script> alert(1) </script>`
    - reference a external JS file
    - `<script scr="www.google.com/prog.js></script>`

### Trigger Javascript XSS attack
    - solution: escape content before reflecting back to webpage
    - $MY_IMAGES/cs/php-xss-attack.jpg
    - `javascript` inside textbox contents
        -> included in GET Request (to server)
            -> PHP Server reflected textbox contents
                -> back to webpage
                    -> but chrome XSS auditor refused to execute it
