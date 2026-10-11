MPS Meta Programming System (jetbrains DSL)

### constraints
    must import the jetbrains "smodel" language

### handy keys
    ctrl+b  jump to object/class definition
    ctrl+h  show hierarchy
    alt+x   open node explorer
    alt+F12 show tree nodes:


### model
    can contain many AST trees?

### key idea
    - projectional editor: you actually edit the AST, rather
      than text which gets parsed into an AST
    - so no parser is needed
    - because you dont have a parser, you can define
      a context sensitive grammar. E.g. you could have the
      same keyword "rule" used in two different  ways.
