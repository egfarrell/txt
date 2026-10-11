JSON

# Javascript Object Notation
    "semi" structed data standard for "serializing" data
    objects into human readable format useful for
    data-interchange

# JSON gotcha
    * Can't put SINGLE quotes around values!
      - (must be double quotes)

    * Can't have UPPERCASE booleans e.g. "True",
      - (must be lowercase )

    * You'll get Python error msg for `json.load()`
      - "No json object could be decoded "

# Basic constructs (recursive)
	- Base values:  number, string, boolean
	- Objects: 	    {"label":"value"}
	- Objects: 	    {"property":"value"}
	- Arrays:       [lists of values]
