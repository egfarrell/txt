
### Oct 2026: eMudhra private key
    - :)
    - https://m.youtube.com/watch?v=SMGg7iisHmc&pp=0gcJCS8MAYcqIYzv
    @SierraJohn118514 hours ago 
    ----- BEGIN RSA PRIVATE KEY -----
    4
    ----- END RSA PRIVATE KEY -----


### AI: The Bitter Lesson
    - https://news.ycombinator.com/item?id=48389360
    - The "bitter lesson": what feels intellectually satisfying
      to researchers—encoding human insight—is often less
      effective than letting computation, search, and learning do
      the work.
    - The long-run winners in AI are general methods that scale
      with compute, not systems packed with human expertise.
    - Researchers repeatedly underestimate computation. They
      hand-engineer domain knowledge for short-term gains, but
      exponential growth in computing power eventually overwhelms
      those advantages.
    - History keeps repeating itself: in chess, Go, speech
      recognition, and computer vision, approaches based on
      search, learning, and large-scale computation ultimately
      beat handcrafted, human-inspired methods.
    - The two techniques that scale best are search and learning.
      As more compute becomes available, they continue improving
      where specialised tricks tend to plateau.
    - Human knowledge is often a local optimum. It can boost
      performance initially, but it frequently limits future
      progress and makes systems harder to scale.
    - "Building in how we think" is usually the wrong strategy.
      AI succeeds more by discovering solutions itself than by
      being given our understanding of the world.
    - The real goal is to build systems that can discover
      knowledge, not systems that contain our knowledge.

### expertise
    - https://news.ycombinator.com/item?id=48340411
    - While I agree that domain expertise has always been a moat,
      I believe the author is missing something critical: there
      is a big difference between being able to verify the output
      of a system is correct, and being able to tell a system how
      to generate the correct output to begin with.

    - Personal example: I had a software engineering colleague
      who was the best coder of financial management systems I've
      ever encountered. He gained these skills through years of
      in-the-trenches development. One of the things he told me,
      and that I also observed, was that the vast majority of
      financial experts (basically, the people in the accounting
      department of companies) had an extremely difficult time
      just telling him what the rules of any particular
      transaction should be. But what they could do was tell him
      whether the handling of any particular transaction was
      right or wrong. So often times he would sit down with these
      accounting folks and go through lots of example
      transactions he came up with, and from there he essentially
      built up the requirements spec.

    - In my experience, that is the primary difference between
      people I've known who are good software engineers and those
      who aren't: people who can specify the detailed rules of
      any system, vs. folks who take a "well, I know it when
      I see it" approach.

I have a strong suspicion that folks who have a high degree of domain expertise in a particular area will fail as software builders even in an agentic world because they will struggle to elucidate clearly the rules in their head that they've learned over years. As an analogy, it's kind of like asking a native speaker for the grammar rules of their language. Often times they can't, but they'll just say "well, that sounds wrong." They may be "domain experts" in their language, but they'd have a hell of a time prompting an AI system on how to grade a test for grammar correctness.
### Manim
    - 3Blue1brown animation engine
        - https://github.com/ManimCommunity/manim/
    - Andrej Karpathy:
        - Feed Manim docs to LLM
        - then the LLM creates/vibe codes the animation?

### Read this?
    - AI Coder https://news.ycombinator.com/item?id=42728717

### APIs: REST SOAP
    - SOAP is older, more structured, and uses `XML`. 
        - Used for enterprise-level, complex, and secure
          applications.
    - REST is newer, simpler, and uses `HTTP` and `JSON`. 
        - ideal for web and mobile apps where speed, flexibility,
          and scalability are key.
    - $MY_NOTES/cs/misc/API-REST-SOAP.txt

### Pingback (auto-link)
    - A "pingback" is an automatic notification that occurs
      between blogs or websites when one site links to another.
      Essentially, it acts as a form of backlink notification.
      Here's how it works:
        - When someone links to a blog post on their own website
          or blog, the platform (e.g. WordPress) detects this
          link.
        - The linked website or blog receives a notification,
          which appears as a "pingback" in the comments section.
        - The pingback includes a link to the post that
          referenced the original blog post, allowing users to
          click through and see who linked to it.
    - This serves two purposes:
        - Acknowledgement of the link: The original blog knows
          someone has linked to their content.
        - Promotion: Readers of the original blog can discover
          other blogs that are discussing similar topics.
    - Pingbacks are a way for websites to communicate
      automatically, without requiring the person creating the
      link to manually send a notification.

### Apollo software
    - When Margaret Hamilton developed the Apollo guidance
      systems, she ran `three teams` which all wrote completely
      independent guidance systems. She then wrote herself
      a program to arbitrate between them when they disagreed.

### Cloudflare memory leak
    - https://www.youtube.com/watch?v=GEbn3nHyKnA
    - one thing my father always told me about iterators: 
    - "NEVER check `index == end`. ALWAYS check `index >= end`. 
    - Never assume that your iterator is consistent and never
      skips over any values."

### Good GPU's?
    - gtx 1650 https://allegro.pl/oferta/komputer-gaming-gry-astro-i5-gtx1650-16gb-500ssd-15151884094
    - gtx 3050 https://allegro.pl/oferta/komputer-gaming-gry-cs109-i5-rtx3050-16gb-500ssd-15148746174#parametry

### Human / Computer interaction
    -  Interesting:
    -  Moral Crumple Zones: Cautionary Tales in Human-Robot
       Interaction by Madeline Clare Elish 

### Difference parameters v arguments
    - Deep lizard pytorch course:
    - `self.conv1 = nn.Conv2d(in_channels=1, out_channels=6 ...)`
        - `in_channels` is a parameter
        - `1` is an argument
    - 'parameter' is a placeholder that will eventually have
      a value (the argument)

### Example of a 'factory function'
    - OO concept: for creating objects
        - instead of using a constructor, create a new object via
          a `function`
        - allows for more dynamic object create
        - pass parameters to the factory function
    - A "factory function" refers to a function that creates and
      returns NEW OBJECTS. 
    - In PyTorch, `torch.tensor(data)` is called a factory
      function because it creates a new PyTorch Tensor object
      from given data.

    - Key characteristics:
        - OBJECT CREATION: constructs and returns new objects.
        - ABSTRACTION: hides the details of object creation.
        - CUSTOMIZATION: allows for customization of objects it
          creates.

        def animal_factory(animal_type):
            class Dog:
                def speak(self):
                    return "Woof!"
            class Cat:
                def speak(self):
                    return "Meow!"
            if animal_type == "dog":
                return Dog()
            elif animal_type == "cat":
                return Cat()
            else:
                raise ValueError("Unknown animal type")

        # Instantiate
        dog = animal_factory("dog")
        cat = animal_factory("cat")
        print(dog.speak())  # Woof!
        print(cat.speak())  # Meow!


### "/proc" file system
    - HN:  https://news.ycombinator.com/item?id=38009372
    - The Linux /proc "file system" is a kernel to user space
      communication hammered into the WRONG FORM because
      "everything is a file". 
    - `/proc` is a system call with a FAKE file system API, and
      this matters.
        - (yes! always thought something funny about /proc)
    - The sample code won't work reliably, because it assumes
      that the "files" won't change while being read. 
    - If you read /proc, you must "read" each file with one
      unbuffered kernel read to be free of race conditions. See
      [1].
    - The Linux kernel has no standard mechanism for delivering
      a variable-sized result from a system call. I/O comes
      closest to that, so this was hammered into the file system
      API. 
    - The dents show. `/proc` does not have standard file
      semantics.


### Bram
    - https://news.ycombinator.com/item?id=37011324
    - I met Bram once, at an open source fair at Google’s Zürich
      office. At the fair everybody could show off their
      projects. There was one person who had built some kind of
      AST editor/IDE, where the unit of editing was not the file,
      but functions floating around in a workspace. He was
      showing this to Bram, but I don’t think he realized who he
      was talking to. When he asked “so, what do you think?”,
      Bram answered 
        > “Hmm yeah, I’m more of a vi-type of person.”

### Opensource after death
    - Trying to piece this stuff together after the fact is
      always a chore. And no amount of "well, they should have
      a plan in place" will help. People don't think they're
      going to die tomorrow, so there's always a reason to put it
      off for later, so they do.
    - I don't think anybody's worried about Linux going poof if
      Linus unexpectantly returns to his home planet, but there
      are plenty of projects that might have some issues.

### Floating point (Haskell)
    - The term "floating-point" comes from the fact that the
      number of digits permitted after the decimal point depends
      upon the magnitude of the number. 

    - Evaluating `sqrt 2 :: Float` using Hugs gives `1.41421`,
      with ﬁve digits after the point, whereas `sqrt 99999 ::
      Float` gives `316.226`, only three digits after the point.


### Code Readability
    - yes so true!
    - https://grugbrain.dev/
    - $MY_IMAGES/cs/grugbrain-dev-code-readability.jpg

### Y2K sort of
    - https://news.ycombinator.com/item?id=33969896
    - AmericanChopper 
    - During my first week in my first programming job
        I remember overhearing a senior engineer saying “don’t
        worry, there’s not another leap year for 2 years”.
        I was still working there on February 29, he wasn’t. It
        was a stressful day. My condolences go out to the
        engineers who will be working on January 1st 100000.
    - Y_Y 
    - Surely by then we'll have had a powerful enough pope to
        rename the months at least once.

### Sully on computers/automation
    - Since we’re talking about automation quite a bit here,
      I found Sully’s take on cockpit automation to be relevant:
        > “I’VE COME across a number of people over the years who
        > think that modern airplanes, with all their technology
        > and automation, can almost fly themselves. That’s
        > simply not true. Automation can lower the workload in
        > some cases. But in other situations, using automation
        > when not appropriate can increase one’s workload.
        > A pilot has to know how to use a level of automation
        > that is appropriate.” … “Whether you’re flying by hand
        > or using technology to help, you’re ultimately flying
        > the airplane with your mind by developing and
        > maintaining an accurate real-time mental model of your
        > reality—the airplane, the environment, and the
        > situation. The question is: How many different levels
        > of technology do you want to place between your brain
        > and the control surfaces? The plane is never going
        > somewhere on its own without you. It’s always going
        > where you tell it to go. A computer can only do what it
        > is told to do. The choice is: Do I tell it to do
        > something by pushing on the control stick with my hand,
        > or do I tell it to do something by using some
        > intervening technology?” 
    -  Sully: My Search for What Really Matters by Chesley B.
       "Sully" Sullenberger III, Jeffrey Zaslow
       https://a.co/2iSmRDH 

### Useful apps from a Vim user
    - https://news.ycombinator.com/item?id=33349871
    - Another thing: I use VS Code more because I spend less time
      in the terminal than I did 5, 10, or 20 years ago.
      Everything happens in the browser now. 
    - I used to write lots of tools and commands for myself in
      the terminal, but now web-based tools have replaced most of
      them. Things I'd have done the terminal a decade ago:
        - Gmail            : email (must switch to Fastmail)
        - IRCCloud         : ask NetHack questions recently
        - CyberChef        : exploring binary data
        - Pixlr            : image tweaking
        - Google Sheets    : notes & databases
        - Airtable         : notes & databases
        - Notion           : notes & databases
        - Pinboard         : bookmarks
        - NextDNS & PiHole : DNS settings
        - Postico (Mac)    : Postgres (not web-based, but I'm way
          more productive with it than with psql)

### fastai 
    - source code is all written in jupyter notebooks(!)
    - https://github.com/fastai/fastai/tree/master/nbs

### The bane of programming (maintenance)
    - Great post - the one word missing, "maintenance." 
    - Most programming is done maintaining/enhancing existing
      code. The greenfield work is a piece of cake by comparison.
    - You want to do the hard stuff? Maintain existing code
      you're not familiar with.
    - The problems around maintaining unfamiliar code are huge,
      largely unsolved, expensive and risky. 
    - There's a little branch of CS called "Program
      Comprehension" and no one pays any attention. Though most
      programming money is spent on maintenance. 

### Linters
    - Code linters support developers by catching errors and
      stylistic issues in code, such as bad formatting or
      keywords in the wrong places. 
    - The term comes from lint traps in _dryer machines_, which
      capture tiny bits of fiber that separate from cloth.

### Text figures (.fig)
    - https://news.ycombinator.com/item?id=31637910
    - Since everybody talks about the format for figures, I feel
      the need to mention the .fig format [0] that was made
      exactly for that use case (human-editable textual
      description of simple line figures). 
    - It is also the native file format of the venerable Xfig
      figure editor [1].
    - [0] http://linux.math.tifr.res.in/manuals/html/xfig/fig-format.h...
    - [1] https://en.wikipedia.org/wiki/Xfig

### Importance of Data Sturctures
    - (In Clojure Workshop book)
    - "Data dominates. If you've chosen the right data structures
      and organized things well, the algorithms will almost
      always be self-evident. Data structures, not algorithms,
      are central to programming." - Rob Pike's Rule #5 of
      programming.

### Immutability (Clojure)
    - Computer hardware has evolved dramatically in the last few
      decades. Typically, storage and memory have increased
      a millionfold compared to the early 1980s.
    - But mainstream ways of programming and standard industry
      practices haven't changed that much over the same period.
    - Programming languages such as C++, Java, Python, and Ruby
      still typically encourage you to change things _in place_,
      and to use variables and mutate the state of a program,
      that is, to do things as if we were programming on
      a computer with a _minimal amount of memory_. 
    - However, in our quest for efficiency, better languages, and
      better tools, we reach for higher-level languages. We want
      to get further away from machine code. We want to write
      less code and let the computers do the tedious work.
        - Performance: Intuitively, we might think that
          a persistent data structure would negatively impact
          performance, but it's not as bad as it seems. They are
          optimized for performance, and techniques such as
          structural sharing bring the time complexity of all
          operations close to classic, mutable implementations.
        - In other terms, unless you're programming an
          application that requires extraordinarily high
          performance (e.g. video games) the benefits of
          immutable data structures far outweigh the small loss
          in performance.

### CS Fundamental Concepts
    - Good books:
        - Pattern on the stone
        - Nand2tetris: The elements of computer systems
        - operating systems 3 easy pieces

### Virtualisation 
    - What is a hypervisor          https://www.youtube.com/watch?v=LMAEbB2a50M
    - Xen Virtual servers           https://xenproject.org/
    - Basics of hypervisors         $MY_IMAGES/cs/what-is-hypervisor-01.jpg
    - Type 1 and type 2 hypervisors $MY_IMAGES/cs/what-is-hypervisor-02.jpg


### Pattern on the stone (imagination machine)
    - These days, computers are thought of as multimedia devices-
      incorporating and combining all previous forms of text,
      graphics, sound, moving pictures.
    - I think this is an underestimation of the computer’s
      potential. It can incorporate and manipulate all other
      media, but the true power of the computer is that it is
      capable of manipulating not just the expression of _ideas_
      but also the ideas themselves. 
    - The amazing thing is not that a computer can hold all the
      books in a library but that it can notice relationships
      between the concepts described in the books; not that it
      can display a picture of a bird or a spinning galaxy but
      that it can imagine and predict the consequences of the
      physical laws that create these wonders. 
    - The computer is not just an advanced calculator or camera;
      rather it is a device that accelerates and extends our
      processes of _thought_. 
    - It is an imagination machine, which starts with the ideas
      we put into it and takes them farther than we ever could
      have taken them on our own.

### Ultorg
    - SQL programming, but visually
    - Presentation                                $MY_IMAGES/cs/Ultorg-Visual-Query-Tool-db.jpg
    - Ultorg General purpose UI for databases     http://www.ultorg.com/
    - Ultorg General purpose UI for databases: HN https://news.ycombinator.com/item?id=29647880


### Love to Learn Languages? Coding May Be Right for You
    - Learning how to code resembles learning a language such as
      Chinese or Spanish more closely than learning math, a 2020
      study found, upending the conventional wisdom about what
      makes a good programmer.
    - In the study, young adults with no programming experience
      were asked to learn `Python`. Then they took a series of
      tests assessing their problem-solving, math, and language
      skills. 
    - Researchers discovered that mathematical skill accounted
      for only 2% of a person’s ability to learn how to code,
      while language skills were almost nine times more
      predictive, accounting for 17% of learning ability.

### Devs: Background Processing
    - Creative Procrastination https://news.ycombinator.com/item?id=29581125

### Hardware
    - CPU: Central Processing Unit
        - the electronic circuitry, which work as a brains of the
          computer that perform the basic arithmetic, logical,
          control and input/output operations specified by the
          instructions of a computer program.

    - GPU: Graphics Processing Unit
        - a specialized electronic circuit designed to render 2D
          and 3D graphics together with a CPU. GPU also known as
          Graphics Card in Gamer culture. Now GPU are being
          harnessed more broadly to accelerate computational
          workloads in areas such as financial modeling,
          cutting-edge scientific research etc

    - TPU: Tensor Processing Unit
        - a custom-built integrated circuit developed
          specifically for machine learning and tailored for
          Googles TensorFlow. TPU’s have been powering Google
          data centers since 2015, however Google still uses CPUs
          and GPUs for other types of ML

### ports
    - are LOGICAL connections!
    - are just _NUMBERS_ inside a TCP packet!
        - when the network card and OS receives a packet
        - it checks the port number inside the packet
        - then checks a table if a program is listening or
          waiting for a packet on that particular port
        - netstat -nlp -t

### The Speccie
    - The Spectrum and ZX81 are (rightly) the computers for which
      Clive Sinclair is remembered. But it was his unsuccessful
      follow-up, the QL, which inspired a certain Linus Torvalds
      to write Linux:
        - https://en.wikipedia.org/wiki/Sinclair_QL#Legacy 

### Code comments
    - HN https://news.ycombinator.com/item?id=28416269

### Semantic Versioning 
    - https://semver.org/
    - v1.2.3
    - Given a version number MAJOR.MINOR.PATCH, increment the:
        - MAJOR version when you make incompatible API changes,
        - MINOR version when you add functionality in a backwards compatible manner, and
        - PATCH version when you make backwards compatible bug fixes.
    - Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

### Zip
    - Can read a Zip file forwards and backwards
    - The fact that merging zip files with cat and do not produce
      error is amazing by itself. Now we'll wait until someone
      find / use a way to distribute hidden files using this
      method.

    - What will really blow your mind is that you can cat a png
      and a zip together and the resulting file is both a valid
      png that looks identical to the image and a zip that
      contains the same contents as the archive.
        - Mind. Blown. Only works if the PNG is first and the ZIP
          second though, because PNG reads front to back and ZIP
          reads back to front.

    - This may be also the trick used by the fantasy console
      PICO-8[0] which games run by png-based cartridges[1].
    - [0]: https://www.lexaloffle.com/pico-8.php
    - [1]: https://www.lexaloffle.com/bbs/?cat=7&carts_tab=1#sub=2&mode...


    - This is how these self extracting archives work, it’s just
      an exe (that allows adding random data to the end) and
      a zip (that allows random data to be prepended) added
      together. reply
        - more specifically the executable part contains the
          logic to decompress the remainder of the file, while
          still allowing a decompression program to be able to
          open and decompress the file (ignoring the executable
          portion of that file).

    - You might enjoy PoC||GTFO issue #10:
    - > The polyglot file pocorgtfo10.pdf is valid as a PDF, as
      a ZIP file, and as an LSMV recording of a Tool Assisted
      Speedrun (TAS) that exploits Pokémon Red in a Super GameBoy
      on a Super NES. The result of the exploit is a chat room
      that plays the text of PoCkGTFO 10:3.
    - https://www.alchemistowl.org/pocorgtfo/pocorgtfo10.pdf


### Apollo programming
    - Don Eyles' book "Sunburst and Luminary" has a chapter on
      this, and Don was primarily responsible for the Apollo 14
      workaround. The book is also generally just a fantastic
      account of what it was like to develop software for the
      Apollo Guidance Computer.

### RSS Tips
    - https://news.ycombinator.com/item?id=26014344
    - I think my digital life would be a mess without an RSS feed
      reader. Because of its existence I do not need to touch
      Twitter, Reddit, YouTube[^1], or any Mastodon instance, for
      example, as I can just have the updates that interest me
      from these networks in the comfort of my Feedbin[^2] feed.
    - While Hacker News does not provide an interface that
      notifies you when someone replies to you, hnrss.org
      provides an RSS feed for that[^3], so I know when I get
      a reply. I also have a separate feed for Ask HN[^4] and
      Show HN[^5], so I never miss anything that may interest me,
      even if other people do not care about it. Heck, I found
      this post because it showed up on my feed reader!
    - As a system administrator, I can use RSS to keep up to date
      with security issues in Ubuntu Server[^6], WordPress[^7],
      and CVEs in general, but also to follow commits in
      SourceHut repositories[^8] and releases for pieces of
      software I use daily, but do not have repositories for my
      Linux distribution.
    - I sure as heck hope it never go away.
    - [^1] In the YouTube case, with RSS, mpv, and youtube-dl,
      I never even have to see their web interface.
    - [^2] https://feedbin.com/
    - [^3] https://hnrss.org/replies?id=${YOURUSERNAME}
    - [^4] https://hnrss.org/ask
    - [^5] https://hnrss.org/show
    - [^6] https://usn.ubuntu.com/usn/rss.xml
    - [^7] https://www.exploit-db.com/rss.xml
    - [^8] https://git.sr.ht/~${USERNAME}/${REPO}/log/rss.xml 


### Good code
    > Good code is code that can be understood by a junior
    > engineer. Great code can be understood by a first year CS
    > freshman. The best code is no code at all.
    - This a thousand times. Having empathy for future devs,
      maintenance, and bug fixes is so important. 
    - (Yes Amen to that)

### DB clients
    - Dbeaver
    - sqlitestudio
    - Sqldbx - fast lightweight!

### Audio Resources for Disabled
    - Services I get access to (no-ads):
    - US National Library Service 60,000+ audio books 
    - Bookshare (50 per year)           https://www.bookshare.org/
    - LearningAlly audio (135 per year) https://learningally.org/
    - Internet archive open library     https://openlibrary.org
    - Blinkist                          https://www.blinkist.com/
    - audm longform journalism          https://www.audm.com/
    - curio listen news articles        https://curio.io/

 	
### The interview / leetcode grind
    > Being a self taught software developer who has been
      programming since I was 12, I had no idea how to reverse
      a binary tree.

    - It can be done. As a self-taught developer, and after years
      of startups and consulting, I got my first FAANG job at age
      40. I hadn't done any real kind of interview in 15 years.
      I spent 90% of my time preparing for CS questions, and
      struggled at the first one, but ended up at FB, and Google
      a few years later.

    - My mindset wasn't that they really cared that I could do
      these obscure programming exercises that I hadn't used once
      in 20+ years of real-world programming, but rather that
      I could prove that I could learn and adapt.

        - sanderjd 3 hours ago | unvote [–]
        - Yeah it sucks to have to study stuff that's mostly
          irrelevant to your job in order to get that job - it
          truly does, I despise the system! - but it is
          worthwhile to shift your perspective to considering the
          ROI of doing that study. 
        - The dirty secret is that CS-y interview questions are
          easy compared to the job. It's just much much harder to
          debug some novel bug that crops up in the cracks
          between the myriad components that uniquely make up the
          system you work on, or to figure out what your users
          want and how to build that, or to respond to having the
          good problem of scaling more quickly than expected, or
          tons of other things successful professionals in the
          field regularly do as part of their day to day work.
        - It's deeply lame that experience with these much more
          difficult things is not expressed through the typical
          CS-y interview process, but if you can do those things,
          you can definitely learn to do the CS-y stuff.
          Reversing a binary tree is easy; look it up. 
        - Yes, you have to learn how to traverse a tree, and no,
          that's not likely to be very useful knowledge in your
          work, but it's not very hard to learn. You can spend
          100 hours studying and nail pretty much all the CS-y
          questions, and that could literally have a return of
          a million dollars over five years; I don't know of many
          opportunities that offer such a good possibility of
          returning 100k per hour. 
        - It sucks, I hated studying elementary stuff after I was
          already a successful professional, and I was a nervous
          wreck during the interviews, but it is very hard to
          argue with it from a purely ROI standpoint.


### Lexically scoped
    - when functions are nested inside each other, the symbols
      are resolved "inside out"
    - there are 3 uses of "x" here; all refer to a different "x"
        - $MY_IMAGES/cs/clojure/lexical-scope-example.jpg
    - Another definition: Lexical Scoping defines how variable
      names are resolved in nested functions: inner functions
      contain the scope of parent functions, even if the parent
      function has returned.
        - The last part: "even if the parent function has
          returned" is called Closure.
    - Lexical (AKA static) scoping refers to determining
      a variable's scope based solely on its position within the
      textual corpus of code. 
        - A variable always refers to its top-level environment. 
        - It's good to understand it in relation to DYNAMIC
          scope.
    - Extra:
        - The lexical part means that you can derive the scope
          from reading the source code. 
        - Lexical scope is also known as STATIC scope.

### referentially transparent: pure / impure funcs
    - If a function doesn't reference any mutable state, then
      it's "referentially transparent"
    - this means it always does the same work and returns the
      same values, when invoked with the same arguments
        - also called: a 'pure' function
    - 'impure' functions might do DIFFERENT things with the SAME
      arguments. 
        - It may rely on mutable state outside the function 
            - (eg a global variables)
        - the caller of an impure function can't just concentrate
          on the values returned, but must be mindful of any
          side-effects... eg mutable state changed outside the
          function (e.g. a global variable set)
    - conclusion: 'pure' functions are truly modular because they
      can be understood in isolation, without consideration of
      how it might affect / be affected by other functions

### Functional programming
    - how can we program without mutable state? 
        - solution: we can create new data ...
        - instead of modifying an existing object,  we can create
          a new copy that is just like the original but with the
          modification
    - but is this very expensive? Imagine copying a list with
      1 million elements
        - solution: old and new lists share in memory the common
          elements  
        - e.g. Clojure uses "persistent collections" 
    - but what about I/O. Files, network resources, user
      interactions are all inherently mutable 
        - Haskell and Scala use a _monad_ 
        - A monad encapsulates state changes while appearing
          stateless to the rest of the program 
        - Clojure doesnt use monads, it doesn't enforce
          functional "purity" 
        - any Clojure function may do stateful work (may be
          "impure") 
    - functional programming is more about constraining mutable
      state, not eliminating it entirely 
    - another problem: sharing mutable data across multiple
      threads 
        - Clojure solution: reference types 
        - a reference type is like a mutable collection that
          stores one element. The operations that access and
          replace the element ensure coordination across threads. 
        - references allow threads to be synchronised without
          using locks (cumbersome and error prone) 

### Hickey talk: clojure.core.async
    - there comes a time (in all good programs) when sub-systems
      stop communicating DIRECTLY with one another
    - conveyance must become first class 
    - Good programs organised around `processes` and `queues`


### tail call recursion, TCO
    - TCO: Tail Call Optimisation
    - TCE: Tail Call Eliminiation 
        - re-use the current stack frame, 
        - saves memory, no stack overflow
    - compiler notices you have a recursive call in the final
      position in a function
    - TCO: tail call optimisation 
    - ./topics/misc/tail-recursion-TCO.txt
 	
### CS: loops
    - from college: you might remember that loops can be
      considered  a special case of recursion (!)

### HN: USB 3.0* Radio Frequency Interference on 2.4 GHz Devices 
    - This is so strange, this happened to me last week too!
    - I'm surprised this isn't discussed more widely (though even
      vendors know about this [0]). My wireless Logitech mouse
      didn't work properly when I had a hub connected to bring
      some connections to the front of my iMac (both with
      Bluetooth and the dongle the mouse had a significant lag).
    - It's hard to believe that there is a standard and devices
      are widely deployed that mess so so much with their
      environment.

### Symbols, variables, values
    - interesting
    - Clojure is a language that dearly wants to separate
      identity, state and values.  
    - Identity is what names a thing, state is a value at
      a moment in time, and values are...well, values :) 

### OO programming
    - Hickey clojure talk
    - Each object instance is like a "masterminder" controlling
      a marionette puppet
    - but if you have _shared references_ passed around then you
      have multiple masterminds all controlling the same little
      puppet  
        - $MY_IMAGES/cs/oo-programming-as-marionettes.jpg

### Backups failed, terrible situation
    - https://news.ycombinator.com/item?id=26539495
    - HN Comment: "No keyboard found, press f1 to continue type
      of situation."

### Clojure has strong dynamic typing
    - A _strongly typed_ language has stricter typing rules at
      compile time, which implies errors and exceptions are more
      likely to happen during compilation.
    - `Dynamically` typed languages (where type checking happens
      at `runtime`) can also be strongly typed. 
    - A _weakly typed_ language has looser typing rules and may
      produce unpredictable or even erroneous results or may
      perform _implicit_ type conversion at runtime.

### arity, arities
    - number of arguments to a function 
    - variadic: function accepting a variable number of arguments 
    - arity stems from "ary" in these contexts:
        - unary 
        - binary 
        - ternary
    - Etymology
        - Is a back-formation from 'unary' and similar, from
          Latin adjective suffixes -aris and -arius; compare
          related -arian, and -adic. Doublet of -eer. 

### Distinction
    - object oriented: thinking in nouns
    - functional:      thinking in verbs 

### Packt Publishing
    - Clojure book has free sample of: 
    - "How the Bible is an Irish Book Altered and Adapted by
      British-Roman Transcribers, by Conor MacDari."
    - (!) 

### Hal Abelson
    - "Programs must be written for people to read and only
      incidentally for machines to execute."

### Pandas non-intuitive
    - It has happened that I’ve searched StackOverflow with
      Pandas questions and found an answer written by me.
    - Also: Pandas is really a DSL 

### Demoscene
    - The demoscene is an international computer art subculture
      focused on producing demos: self-contained, sometimes
      extremely small, programs that produce audiovisual
      presentations. 
    - The purpose of a demo is to show off programming, visual
      art, and musical skills. Demos and other demoscene
      productions are shared at festivals known as demoparties,
      voted on by those who attend, and released online. 

### Ted Nelson alternative internet
    - A core technical difference between a Nelsonian network and
      the modern online web is that [Nelson's] network links were
      two-way instead of one-way. 
    - In a network with two-way links, each node knows what other
      nodes are linked to it. ... 
    - Two-way linking would preserve context. It's a small simple
      change in how online information should be stored that
      couldn't have vaster implications for culture and the
      economy.[16]
    - In 1965, he presented the paper "Complex Information
      Processing: A File Structure for the Complex, the Changing,
      and the Indeterminate" at the ACM National Conference, in
      which he coined the term "hypertext".[2]
    - In 1976, Nelson co-founded and briefly served as the
      advertising director of the "itty bitty machine company",
      or "IBM", a small computer retail store that operated from
      1977 to 1980 in Evanston, Illinois. 
    - The itty bitty machine company was one of the few retail
      stores to sell the Apple I computer. In 1978, he had
      a significant impact on IBM's thinking when he outlined his
      vision of personal computing to the team that three years
      later launched the IBM PC.
    - Ted: "They changed the meaning of cut and paste and
      pretended it was the same thing"

### History Regex
    - regular expressions have interesting roots. They are
      "regular" because they were originally examples of
      a "regular" language, the lowest rung within the Chomsky
      hierarchy. 
    - The hierachy is a grammar classification developed by
      Chomsky, who also wrote _Syntactic Structures_, the
      pioneering work searching for the formal grammar underlying
      human language. 
    - This is the one charm of computing: it may be the hammer
      you reach for every day actually came from a spaceship.

### Jeremy: function composition
    - take the result of one function and pass it to the next...
    - take the result of that one, and pass it on to the next
      again... 
        - (That definition just struck me a bit different...) 

### Scientific Research programming
    > Research output is reliable where it is actively relied on
    > by engineers -- and not elsewhere.
    - I'd word it this way: if the person producing the output is
      not responsible for it really working, it almost certainly
      won't. 
    - Even innocently this will be the case with anything
      complex, people get things backwards, miss a scale factor,
      etc. 
    - Finding that last bug can take more work than the rest of
      the project combined, much easier to publish what appears
      to work and move on. 
    - Much more so when there's direct career benefits to
      "hacking" the system over competing honestly. Especially
      considering the internet is awash with people trying to
      cheat through every other competition (exam questions,
      interview questions, etc.) 

### Programming Joke (HN)
    - At a recent Java conference, participants were given a hard
      question: "If you just boarded an airliner and discovered
      your team of programmers had been responsible for the
      flight software, how many would disembark immediately?" 
    - Among the forest of raised hands only one man sat
      motionless. When asked what he'd do, he replied he would be
      quite content to stay aboard. 
        - With his team's software, the plane was unlikely to
          even taxi on the runway, let alone take off. 
    - :) 

### HN writing code tips
    - https://news.ycombinator.com/item?id=25500671
    - If you just keep in your head, “Can I see exactly enough on
      this page to know what it does? Not more, not less?“ 
    - It’s an impossible ideal but that concept is a fantastic
      mental guideline for maintainable codebases. 

### "Core" explanation
    - Core: 
        - the functional processing unit, which actually runs the
          code. It may span virtual cores, where the physical
          core duplicates architectural state allowing for
          multiple threads (SMT, Symmetrical Multi-threading such
          as Intel's Hyper-threading).
    - Processor: 
        - nowadays, an enclosure for one or more cores. This is
          what you can actually handle, physically, when you buy
          a processor.
    - Node: 
        - the physical server where the processors and memory are
          installed, or virtual when the same node emulates more
          than one node.
    - Cluster: 
        - a collection of nodes, physical or not (virtual).
          Organizes the system as a whole, implementing
          resource-sharing across nodes, which includes shared
          memory. NUMA (Non-uniform Memory Access) used to come
          from here; these days it happens at the processor
          level.

### RAM
    - _any_ piece of stored data can be retrieved at any time
    - hence the term 'random access'!

### Endian byte order
    - $MY_IMAGES/cs/endian.jpg
    - big Endian: (normal)
        - How we naturally write numbers;
        - start with biggest / most significant digit on the left
        - put the most significant byte in the smallest
          (starting) address
        - (_most_ significant byte is the leftmost byte, and its
          put in the leftmost address)
        - IBM 360/370, Motorola 68k, MIPS, Sparc, HP PA

    - little Endian: (inverted)
        - put the least significant byte in the smallest
          (starting) address
        - (_least_ significant byte is the rightmost byte, and
          its put in the leftmost address)
        - Intel 80x86, DEC Vax, DEC Alpha, SuperH

    - Note about byte order
        - Having bytes appear in reverse order is a common
          occurrence when reading machine-level program
          representations generated for little-endian machines
          such as this one.
        - The natural way (?) to write a byte sequence is to have
          the lowest-numbered byte on the left and the highest on
          the right, but this is contrary to the normal way of
          writing numbers with the most significant digit on the
          left and the least on the right.

### 'holy wars and a plea for peace'
    - 2 schools of thought when writing data into memory
    - Big-Endians:    high-order bytes written first
    - Little-Endians: low-order bytes written first
    - Difference depends on hardware:
        - Motorola processors:    big-endian
        - Intel-based processors: little-endian

### Memory Segmentation
    - Each process (executing program) needs its own memory
    - dont want one process overwriting the anothers data!
    - memory is broken into small segments and handed out to
      processes as needed
    - registers are used to store and keep track of the current
      segements a process maintains.
    - offset registers are used to keep track of where in the
      segment the critical pieces of data are kept

### Programs in Memory
    - when a process is loaded into memory, it's broken into
      6 sections
        - days later: Ah these 'sections' are the main parts of
          an assembly program!! An 'asm' file literally has
          a '.text' section.
    - The sections inside a process:
         1. '.text'
         2. '.data'
         3. '.bss'
         4. 'Heap'  ---> _dynamic_ variables inside functions
         5. 'Stack' ---> _static_  variables inside functions
         6. 'Environment/Arguments'

    - '.text' Section
        - Code segment, also known as text segment contains
          machine code of the compiled program.
        - The text segment of an executable object file is often
          read-only segment that prevents a program from being
          accidentally modified.
        - corresponds to the .text portion of the binary
          executable file
        - contains machine insturctions to get task done
        - marked as read-only and will cause seg fault if written
          to
        - size fixed at runtime when process first loaded

    - '.data' Section


### Address space
    - Address space is a range of addresses. Two types:
        * _Physical address_: used to access the bytes on the
          real hardware.
            - There is a certain memory capacity a processor
              cannot exceed. It is based on addressing
              capabilities.
            - For example, a 32-bit system cannot address more
              than 4GB of memory per process, because 2^32
              different addresses roughly correspond to 4GB of
              addressed memory.
            - However, we could put less memory inside the
              machine capable of addressing 4GB, like, 1GB or
              2GB. In this case of the physical address space
              will be forbidden, because theres no real memory
              cells behind them.

        * _Logical address_: the address an application sees:
            - programmer has illusion they are sole memory user.
            - Whatever memory cell they address, they never see
              data or instructions of other programs, which are
              running with his own in parallel.
            - Physical memory holds several programs at time,
              however.
            - In our circumstances _virtual address_ is
              synonymous to logical address.

    - Translation between the two address types is performed by
      a hardware entity called _Memory Management Unit_ (MMU)
      with help of multiple _translation_ tables, residing in
      memory.



### CPU video (Scott CPU)
    - CPU is connected to RAM via 2 buses:
        1. "address bus"
        2. "data bus"

    - part of the RAM is filled with instructions which is called
      the 'program memory'. It's just like other memory but the
      CPU knows it has instructions.

    - registers
        - are just like RAM but are _inside the CPU_ so much
          faster
        - are like "working memory"
        - CPU usually has 32 registers?

    - instruction address register
        - to say where next instruction is coming from

    - instruction register:
        - holds actual current instruction

    - memory address register

    - can have another register underneath the ALU (Arithmetic
      Logic Unit) to store results of an arithmetic operation

    - "set" wire
    - "enable" wire
    - flags


### RAM:
    DRAM: (old)
        - Dynamic RAM, has capictors which must be recharged,
        - Operates Asynchronously with system clock

    SDRAM
        - Synchronous Dynamic RAM
        - Operates synchronously with the system clock
        - faster than DRAM, all signals tied to system clock for
          better controled timing

    DIMM
        - dual in-line memory module

    Data Paths
        - 64 bit data path: 64 bits transferred per clock cycle

    DDR
        - double data rate

### Object File formats
    - _ELF_         Linux and other Unix-like operating systems
    - _Mach-O_      OS X systems
    - _PE_          MS Windows (Portable Execution)
    - History and context: ...all object file formats that exist
      today are successors to the old `a.out` (assembler output)
      object file format. 

### Interesting points: API and ABI
    - API: Application Program Interface (API is what humans use)
    - ABI: Application Binary  Interface
    - Key point: System V ABI is the most widely used ABI
      standard among Unix-like operating systems. 
        - ELF: Executable and Linking Format is the standard
          object file format used in the System V ABI.

    - Background: Every library or framework, regardless of
      programming language, exposes a set of functionalities,
      known as its Application Programming Interface (API).

    - If a library is used by another code, then the consumer
      code should use the provided API. Nothing other than the
      API should be used because its the public interface of the
      library and everything else is designated a black box,
      hence cannot be used.

    - Suppose after some time, the library's API undergoes some
      modifications. In order for the consumer code to continue
      using the newer versions of the library, the code must
      adapt itself to the new API; otherwise, it won't be able to
      use it anymore. 

    - The consumer code could stick to a certain version of the
      library (maybe an old one) and ignore the newer versions,
      but let's assume that there is a desire to upgrade to the
      latest version of the library.

    - Put simply, an API is like a convention (or standard)
      accepted between two software components to serve or use
      each other. 

    - An `ABI` is similar to API, but at a different level. 

    - While the API guarantees the compatibility of two software
      components to continue their functional cooperation, the
      ABI guarantees that two programs are compatible at the
      level of their `machine-level instructions`, together with
      their corresponding object files.

    - For instance, a program cannot use a dynamic or static
      library that has a different ABI. 

    - Perhaps worse than that, an _executable file_ (which is
      actually an _object file_) cannot be run on a system
      supporting a different ABI than the one that the executable
      file was built for. 

    - A number of vital and obvious system functionalities, such
      as dynamic linking, loading an executable, and function
      calling convention, should be done precisely according to
      an agreed upon ABI.

### Memory sizes
    - In the computer industry, the symbols `K` (kilo) and `M`
      (mega) don’t always mean 1,000 and 1,000,000; 
    - sometimes they mean 1024 and whatever 1024 squared is:
      `2^10` and `2^20` . 
    - “64K” is actually somewhat more than 65,000. Technically
      K is always 1000, and M is always 1,000,000, while there
      are other suffixes KiBi for 1024 and MeBi for 1048576

### "big O" notation
    - its an approximation of algorithmic complexity
    - it deals with the "worst case" complexity ie something
      could be o(n) but an "n" list could be empty

    - o(n)
        - for loop
        - scales linearly with number of items

    - o(log n)
        - binary search

    - o(n^2)
        - doubly nested 'for' loop!

    - subtle point: o(n^2) actually means `constant•o(n^2)` > `o(n^2) + const + const ...`

    - philisophical point:
        - o(n) is also an o(n^2) function in the sense that its
          graph will never go higher than o(n^2)... but its not
          the "best" answer

### HN comment
    - Idle thought: imagine if Newton examined modern programming
      and said "let me show you a new approach I've been thinking
      about for a while ..."

### Hacker comment
    - "To iterate is human, to recurse is divine"
    - [not sure who I am quoting]

### Sussman
    - Nothing brings fear to my heart more than a floating point
      number. Numerical analysis is the blackest art I know.
    - Lambda calculus: its just naming. 
    - As one mystic said, if you have the name of the Spirit you
      have power over it.

### Logic programming
    - Logic Programming (LP) is one the three major programming
      paradigms - along with procedural & functional.
    - It emerged in the 1970s, from the work of Kowalski and
      Colmerauer in automatic theorem proving.
    - Guy Steele calls it "relational programming" rather than
      "logic programmingl"
        - ./lisp/Scheme/reasoned-schemer.md

### Ask HN: Why did you leave tech industry?
    - I've loved computers since I can remember, and started
      coding when I was still in basic school. This lead me to
      think the tech industry was the obvious career for me.
      During my time in the industry, I felt miserable. I would
      say that the main reasons for that were:
    - Meaninglessness 
        - Most of the projects are simply not necessary, they do
          not help society in anyway, they just exist to make
          someone else wealthy.
    - Tedium
        - The intellectual challenges aren't there after a while.
          There are countless intellectual challenges in the
          field of computing / computer science, but they are
          usually the ones industry has no interest in.
    - Micromanagementk 
        - "Agile" and similar management practices (yes, I know,
          you're not doing it right, blah blah blah) are
          downright humiliating and infantilizing. 
        - Almost no other highly skilled professional has to
          tolerate such level of intrusion on their day-to-day
          activities. I love deep thinking and creative
          expression. The modern corporate setting prevents this
          by design.
    - Open-spaces. 
        - See above.
    - Idealism. 
        - I was so excited about the possibilities that the
          Internet opened for humanity. Now we have ad-tech and
          horrible exploitation of "gig-economy", warehouse
          workers and the like. This is definitely not what
          I have in mind when I started.
    - Conformism. 
        - The tech industry is extremely conformist. Monetary
          consideration always wins. Deference to power always
          wins. "Hacker" used to mean something completely
          different. Almost opposite to the current definition.
    - I realized what I always loved about computing was the
      endless creative and intellectual possibilities allowed by
      the medium. This is more or less the opposite of what the
      industry values, despite what they might advertise
      endlessly. There is nothing cool about it. It is stale and
      anti-intellectual.
    - I don't need a lot of money to be happy. You probably don't
      either. Time on this earth is the most valuable thing we
      have, and I would rather spend it waiting tables than
      enduring one more stand-up meeting.
    - I think creative nerds are the life-blood of the industry,
      but they tend to be shy and not assertive, so they have
      their life controlled by the "business types". 
        - I honestly believe that if the nerds told them to fuck
          off and started spending their time working on things
          they think are relevant, the world would become much
          better quickly. This won't happen, I know.

### UI Design - Peripheral vision
    - I think the UI change is not merely ugly, but actively
      harmful. When the user's attention is elsewhere, but the
      focus of the urlbar changes there's a nasty UI animation
      that occurs in the user's peripheral vision. 
    - As any real UI designer should know, human peripheral
      vision is primarily for motion detection, directly tied to
      fight-or-flight stress reactions and triggers an adrenal
      stress reaction which in this case is not merely
      "undesirable" but downright harmfully misleading. 
    - The last thing the world needs is more stress just because
      some delusional UI designers thought an animation upon
      receiving/losing focus was a good thing to implement.

### Microservices
    - key: glue/pipes connecting modules are just as important.
    - Microservices have been a disaster. Most implementations
      are brittle/buggy/convoluted. Complexity previously managed
      in code has been pushed to infrastructure -- and no one
      knows how to do infrastructure!
    - Most people I talk to don't understand what made the Unix
      philosophy work. Everyone cites "programs that do one thing
      and do it well".
    - That's certainly the fun part, but it's not what makes Unix
      programs great. It's how programs do I/O (text and pipes).
    - In other words, it's not enough to build tiny modular
      single-use programs. You need an equally elegant system
      that _combines_ the programs together. 
    - The programs need to strictly adhere to this system
      otherwise everything breaks down. Containers are not it.
      K8s is not it.
    - Another comment: This is an important point, and I'll
      (re)state it: the pieces have to be modular, AND the "glue"
      has to afford that modularity.

### Difference
    - A Class is
        - a blueprint from which you can create the instance, (ie
          the object)
        - used to bind data as well as methods together into
          a single unit.
        - Classes have logical existence.
        - A class doesn't take any memory spaces when
          a programmer creates one.
        - The class has to be declared only once.

    - An Object
        - is the instance of the class 
        - helps programmers use variables and methods from inside
          the class.
        - acts as a variable of the class.
        - has a physical existence.
        - takes memory when a programmer creates one
        - can be declared several times depending on the
          requirement.

### DCI paradigm
    - Data, context, and interaction:  
    - a paradigm to program systems of communicating objects. 
    - Its goals are to:
        - improve the readability of OO code by giving system
          behavior first-class status;
        - cleanly separate code for rapidly changing system
          behavior (what a system does) versus slowly changing
          domain knowledge (what a system is), instead of
          combining both in one class interface;
        - help software developers reason about system-level
          state and behavior instead of only object state and
          behavior;
        - support an object style of thinking that is close to
          programmers' mental models, rather than the class style
          of thinking that overshadowed object thinking early in
          the history of object-oriented programming languages.

### Jim Coplien: true OO
    - Object orientation was originally about engaging end users
      through the operational models they held in their head
    - "Object": computer representation of a _human_ operational
      model
    - Since then there's been a lot of misunderstanding and
      programming language wars and we've ended up doing class
      oriented programming instead.
        - Class oriented programming:
            - abstract data types with polymorphism!
        - but this is not OO programming!
            - true OO is deeply human
    - and it seems no-one understands OO programming anymore.
      It's mental model elicitation - the user mental model.
    - Also we divide things up so we have control. Rather than
      doing systems thinking...
    - Scrum routes: 
        - TPS - Toyota Production System.
        - Japenese phrase: `Quality without a name`. 
        - That this feels right! That it adds value to society...
    - World Scrum team: 
        - should fail 50% of its sprints. 
        - Daily scrum meeting is for _re-planning_ the sprint.
          Also: fix all bugs now - don't put them in JIRA.
    - YouTube comments: 
        - Jim said: Java cannot create objects? What?
        - Answer: In Java you program with classes. Not with
          objects. read *program*. In true OO environments like
          Smalltak you are in an IDE and simply can say `w = new
          JWindow()` (I use Java speak).
        - And inside the IDE a new empty JWindow pops up. Now you
          can add properties and methods to the variable `w` ...
          the object. And more important: when you quit the IDE
          an restart it, that variable `w` is back, the window is
          on the screen etc. When you are finished programming
          you have a soup of objects, partly visible, partly not.
        - Then you "strip" the IDE from that running environment
          and what is left is the running soup of objects (and
          classes).
        - Other languages like SELF are more explicit as they
          simply only have objects, they don't have classes. Same
          for JavaScript, but javaScript is hiding that a bit.
    - YouTube comment: i think classes are the interface that
      individuals uses to interact with their computers
        - No, they are not. Objects are. Regardless if you have
          classes in the language or not. To nitpick: classes are
          only text in a programming language. You can only
          "interact" with them by opening a text editor and
          changing that text.

### Computer Science and DATA
    - ... "so the data is central to the subject" (meaning
      computer science in general"
    - to which he replied "the data IS the subject"!
    - That was a lightbulb moment for me. 
    - From then on I saw CS as the study of how data is
      represented, and how those representations are transformed
      and transported — that's it, that basically covers
      everything. It's served me well.

### HN comment about GIT
    - To me the beauty of GIT is that it's an implementation of
      a functional data structure. 
    - It‘s a tree index that is read-only, and updating it
      involves creating a complete _copy of the tree_ and giving
      it a new name. 
    - Then the only challenge is to make that copy as cheap as
      possible: for which the tree lends itself, as only the
      nodes on the path to the root need to get updated. 
    - As a result, you get lock-free transactions (branches) and
      minimal overhead. 
    - And through git‘s pointer-to-parent commit you get full
      lineage. It is so beautiful in fact that when I think about
      systems that need to maintain _long-running state_ in
      concurrent environments, my first reaction is ”split up the
      state into files, and maintain it through git(hub)“.

### stripe documentation
    - Besides your product, I thank you all at Stripe for setting
      an example of what real API/SDK documentation is.

### scientific programming
    - Take time to learn some good programming practices. 
    - If you're lucky and fall in love with scientific
      programming, your programs will grow to a point where they
      are unmanageable without some techniques borrowed from
      computer science and software engineering.
    - Have someone show you the "out of order execution" and
      "hidden state" failures.

### Godel, Escher Bach
    - https://news.ycombinator.com/item?id=17461506
    - I'd owned this book for many years and had a similar
      experience to OP. But one day someone gave me `I am
      a Strange Loop`, which I started reading and enjoyed way
      more. After getting in a little bit Hofstadter makes some
      apologies for GEB saying it was the sum of work of a very
      young person. I think he was 24? I think it's pretty
      incredible considering his age. The things that lead him to
      thinking critically about consciousness because of his
      disabled sister I found to be something that changed not
      only how I interacted with people that were differently
      abled, but also changed how I saw my own disabilities. Sure
      it's more than a bit full of itself, but I can't for the
      life of me think how I would edit it any differently. It's
      honest from the place he was standing. With a lot of
      thought, a desire to share, and a perspective that no one
      else could just stumble on. IMO, it really does kind of
      have to be what it is.

    - So, I decided to put down IAASL and try to really get
      through GEB first.. like for real this time... and found an
      Open Courseware[0] on the book to follow hoping that would
      help me really cut through it. It did! The trick that did
      it for me was the prof's suggestion that you just skip the
      first 300 or so pages and he picked up from there.

    - I'd thumbed through it and much like op had "looked" at
      every page, but once I skipped the first 300 and followed
      along with the course, it was like butter. There is
      something funny about all the intro dialogs that can
      fatigue by the time you get to the meat.

    - That said, I really enjoyed his reflection on GEB in IAASL
      and enjoyed the read of IAASL a lot more. Regardless of
      what you think about what Hofstadter proposes, I think his
      contribution to critical exploration of the consciousness
      is artful and invaluable. I think it's fun, compassionate,
      and beautiful, and it really changed how I see myself and
      my environment.

### floating point rounding problems!
    >>> 1.1 + 2.2
    >>> assert 1.1 + 2.2 == 3.3

### factory function
    - function that creates a new CLASS
    - eg: 'namedtuple' is a factory function
    ```
    Person = collections.namedtuple('Person', ['name', 'age', 'status'])
    p = Person('gerard', 43, 'married')
    ```

### lisp macros
    http://www.gigamonkeys.com/book/macros-defining-your-own.html
    https://news.ycombinator.com/item?id=17036497

### Raymond Hettinger python talk
    - Adapter class pattern
        - He took some python classes originally written in JAVA
          and wrapped the functionality up into a single Python
          (adapter) class
        - ie Adapter class, transform one API to another...
    - Function arguments: always use keyword arguments
    - Use namedtuple for all tuples!
    - 'val' can introduce some simplifications (Guido and Raymond
      used it in the Python source)
    - bad:  `def get_quotes(*args)` ... for arg in args
    - good: `def get_quotes(*symbols)`... for symbol in symbols
    - comparing strings: if status.lower() = 'up'

### statements v expressions
    - lisps: EVERYTHING is an expression.
    - Most programming languages are a combination of
      2 syntactically distinct ingredients:
        1. expressions:  evaulate (a computation) to produce a VALUE
            - expression: `(x + 1)`
        2. statements:   express an ACTION
            - statement:  `x = 1`

### 7 ineffective code habits
    - noisy code - too much comments!
    - spacing: stay under column 80
    - spacing: argument lists: keep them together
    - long names: JavaLongClassNameChecker
    - redundant naming:
        - bad:  ArgumentException
        - good: InvalidArgument
    - under-abstraction: 
        - bad   
        - `if portfolioIds.get(trader.ID).hasKey(portfolio.ID)`
        - good  
        - `if trader.canView(portfolio)`
    - encapsulation: 
        - the user interface of the object!
    - 'getters' and 'setters'
        - dont have to automatically create both for every field!
        - and for 'getters' you don't need "get" in the variable
          name (because 'get' in English always has a side
          effect)
          - bad:    public int getUnits;
          - better: public int Units;
    - a test case should be a _single_ case!

### Python talk
    - https://www.youtube.com/watch?v=o9pEzgHorH0
    - dont (over)use classes so much
    - Namespaces are for preventing name collisions
    - Namespaces are not for creating taxonomies 
        - (esp. if you're a Java programmer)

### post-mortem of post-mortems 
    - (Velocity Conference 2017 London)
    - "pagerduty" https://www.pagerduty.com/
    - 50% of post-mortems dont mention names
    - UI issue: how ever many default textboxes you give in your
      app, users will just go with that, and not customise more
      or fewer
    - Classes of post-mortems: eg "poison deploy"
    - only 1% contain the phrase "human error"
    - Read: "The field guide to human error"
    - incident timeline: most organisations record 3-10 events
    - Sue Lueder: finding order in chaos
    - Takeaways:
        - use classes of incidents to look for patterns
        - Look at the "shape" of an incident 
        - (start -> detected -> raised -> resolved)

### Object Oriented
    - COMPOSITION:
        - Creating objects with other objects as members.
          Composition should be used for a "has-relationship".
        - Zed Shaw has nice Python example in my code folders.
    - INHERITANCE:
        - The concept of classes automatically containing the
          variables and methods defined in their supertypes.

### Understand how hardware executes code instructions
    - Code: The Hidden Language (Petzold)

### testing (distributed) databases
    - Kingsbury and Jepsen distributed DB testing writeups are
      wonderful for understanding failings of distributed
      systems.
        - https://aphyr.com/tags/Jepsen https://jepsen.io/analyses

    - Yes those write ups the best writeups I've seen that focus
      on the distributed databases. If I had to list the things
      you can learn from them:

        - Efficient, intelligent testing of distributed systems
          (check out his clojure libraries)
        - Introduction (and re-introduction, which is IMO one of
          the best ways to learn) of distributed system
          guarantees (linearizability, serializability, and
          lesser guarantees), in the context of database system
          guarantees
        - how to write good information dense blog posts
        - how to deftly and openly navigate the ethics of paid
          testing of a product by a corporate entity
        - critically think about distributed database hype trains
        - Also, plug for RethinkDB, the document store database
          that got it just about right the first time he tested
            - https://aphyr.com/posts/329-jepsen-rethinkdb-2-1-5
            - and re-configured
            - https://aphyr.com/posts/330-jepsen-rethinkdb-2-2-3-reconfiguration

### why hex begins with '0x'
    - I don't think `0x` over `00` was preference/awkwardness. 
    - `00` would break existing code. 0010 as octal is 8, while
      0010 as hexidecimal would be 16. They couldn't use any
      number as a second digit indicator (except 8 or 9, and
      neither holds any significance related to hexidecimal) so
      a letter is a must. 
    - That leaves either `0h` or `0x` (`h`e`x`idecimal). 
    - From this point it seems it's truly back to preference.

### reflection
    - where an object is able to introspectively examine itself
      at runtime to inform you of it’s methods and properties.
    - useful for debugging. 
        - eg. PHP `get_class()` and `get_class_methods()` when
          working with an ambiguously named object.
    - Reflection can automatically generate the documentation. 
        - It inspects each method, constructor and class to
          determine what goes in and what comes out.

### kubernetes
    - a platform for working with containers (docker)
        1.  deployment
        2.  scaling
        3.  monitoring - if container goes down, it's recreated

### SSH port forwarding
    - nice explanation https://blog.trackets.com/2014/05/17/ssh-tunnel-local-and-remote-port-forwarding-explained-with-examples.html
    - black magic ssh https://vimeo.com/54505525

### line endings delimiters linefeed
    - CR: \r  carriage return 
    - LF: \n  line feed       

    - Windows:     CRLF   \r\n
    - Linux:       LF     \n
    - Apple Mac    CR     \r

### first class functions
    - finally understand this!
    ```
    def transform(n):
        return lambda x: x + n
    f = transform(3)
    f(4)
    # returns 7!
    ```

### Relational Algebra
    - Relation  = table
    - Attribute = column
    - Tuple     = row

### Diff
    - Sometimes people run diff with the new file FIRST instead of SECOND.
    - This creates a "reversed" diff.
    - Don't do that. Put the NEW FILE SECOND.

### HN comment: LoSboccacc
    - No. The hard part was never programming but mapping the
      ever-mutating "quirks" of the real world into regular
      structures


### What is Software Engineering
    > The equivalent of a car being assembled is a compiler
    > building an executable from source
    - I think the equivalent of a car being assembled is copying
      the binary executable from one storage medium to another;
    - building an executable from source would be the equivalent
      of building the production process for a single car model, 
    - while coding is the equivalent of _designing_ and testing
      that model. 
    - Also: "Software takes a long time to build because it's
      always new"

### why is software engineering hard?
    - Two key reasons: 
        - the output is purely digital, 
        - and incredibly abstract. 
        - Code is very unique in this regard.

    - As a purely digital artifact, it is highly malleable. 
    - Yet its deeply abstract nature, and the complexity enabled
      by those abstractions, make software very difficult to
      inspect and understand, compared with the vast majority of
      things humans make.

### why is software engineering hard? 2
    - Some more reasons:
    1. Software is easy to fix. Compared to other construction
       disciplines, software is the cheapest to fix.
    2. The consequences of failure are typically minimal. Most
       software is not mission critical. Failure means minor
       inconvenience for a lot of people. Moreover, since your
       competitors are no more reliable than you are, you don't
       even stand to lose customers by having an occasional
       failure. (This is the one the article discusses.)
    3. Software has more degrees of freedom. Unlike physical
       building disciplines where the types of materials are
       limited and generally well known, and where the number of
       physical dimensions is at most three, software takes place
       in an extremely complex and multidimensional operation
       space. Moreover, we have no evolved intuition about how
       things behave in that space.
    4. Comparatively minor errors result in comparatively major
       failures. If you forget one rivet on a building, the
       engineering tolerances will make it such that the building
       will not fail as a result. But it is not really possible
       to make a server resilient to null pointer exceptions. It
       either works or it doesn't. Software fails partially much
       less often than physical things.

    - Another answer:
    - One of my favorite quotes from my old data structures
      professor in college was this: "_software is non-linear_"
    - If you're laying bricks for a house, there really aren't
      any cheap tricks or shortcuts. Building two houses takes
      twice as many bricks as a single house, and so on. We could
      say brick usage scales linearly with house construction.
        - This is a bit of a bummer for bricklaying enthusiasts,
          but on the other hand, a single brick out of place is
          probably not going to bring your roof crashing down.
    - Software is different. Often, the distinction between
      processing 100 files and 1,000 files is minimal at best.
      This ability to scale effortlessly is often the best thing
      about software, but the same non-linearity is also the
      price we pay for power. 
    - A single subtle programming error can cause millions of
      dollars' worth of damage and bring massive systems to
      a grinding halt.
    - Overall, I think this is what makes software interesting
      and exciting to work with, but I can understand how it can
      pose a steep challenge to reliability and security. 
    - The way I see it, much of research and development into
      better programming languages and tools has been to see how
      we can systematically mitigate these kinds of propagating
      errors and make our systems more robust to mistakes

### Simple SQL?
    - Comment:
        - A lot of apps are just read/write/update to a database,
          and binding the data to views. I think "programming"
          such apps could be simplified, eg SQL++ where you make
          queries by talking to the computer ...

    - Reply:
        - Not a chance. You just described the surface area. The
          complexity is in the _business rules_ and logic behind
          those IO interfaces.

        - We could develop tools that build those interfaces from
          words you speak, but until you can speak deterministic
          logic/rules to define the behaviors you need, you still
          need programmers.
          - In fact, I would argue that the programmer/developer
            is less a person who types code and more a person who
            _helps a user decide the rules_ of the systems they
            have requested.

### Reverse Engineering
    - disassembler: generate ASSEMBLY LANGUAGE from a compiled binary (eg. objdump)
    - decompiler:   generate SOURCE CODE       from a compiled binary

### Mike Croucher - Testing
    - Just a reminder: you can have unit tests with 100% code
      coverage, everything type-checked, and your app could still
      be broken.

### why "mount" a drive...
    Why not directly access '/dev/cdrom'??

    - Because '/dev/cdrom'   is a _device_,
    - but     '/media/cdrom' is a _filesystem_.

    - /dev/cdrom is a low-level device, the operating system functions
      wouldn't know how to access it. /dev/cdrom is just RAW pointers
      to devices known as Device Files. It doesn't know that an EXT4
      file-system sits on top.

    - Network control: Unix was born in an environment where the
      administrator needed to control mounting; from the dozens of
      storage devices on the network the admin must decide what is
      mounted where and when.

    - Same name: Imagine you have some partitions on your drive
      '/dev/sda2'. Later that drive isnt big enough and add a new one
      to the system. All of a sudden, that becomes /dev/sda and your
      current drive becomes /dev/sdb. Your partition is now /dev/sdb2.

      Without mounting you'd have to change all scripts, applications,
      settings, etc. that access the data on your old partition to
      reflect this change in names.

### socket:
    - listen on a specific port for incoming traffic. When
      traffic arrives the related service will be started
      automatically.
    - Sockets are defined as the binding of a _port_ and an _IP
      address_ to a process

### bootloaders
    - The bootloader starts before any other software on your
      device, meaning it's very processor specific and every
      motherboard has it's own bootloader.

    - A boot loader is entirely optional, since there is no
      contract/standard requiring it.
    - Its possible to put a Linux kernel in the first partition
      and it would run like a bootloader. However, most hardware
      providers still use bootloaders so its easier to de-brick
      the device.

    - ROM is Read-Only Memory, so why can BIOS contents be
      rewritten?
    - _answer 1_: its a misnomer caused by convention.
    - _answer 2_: flash memory is not an actual ROM
    - _answer 3_: Erasable and Programmable ROM
        - the BIOS software is stored in an Electrically Erasable
          and Programmable ROM (_EEPROM_) which enables firmware
          updates to be performed electronically.
        - Very old BIOS chips were actually _UV-EPROM_ chips
          which required erasing with UV light exposure before
          they could be reprogrammed.
        - _answer 3 extra_: Even earlier than that, single use
          Programmable ROM (_PROM_) chips were sometimes used
          which could not be reprogrammed at all once configured
          and required complete replacement to upgrade (although
          this was rarely required).

    - The BIOS itself is stored in an EEPROM (which can be
      Electrically Erasable and Programmable) or "flash-memory".

        > So the "read-only" here is about the chip being NON-VOLATILE.
        > The contents of the memory stays when the power is cut off,
        > unlike volatile RAM.

    - The ROM being EEP helps the BIOS be re-written or updated.
      Long ago, You had to remove the BIOS chip from the board,
      put a new one (if its not PROM or EPROM), or if its EPROM
      you have to get it to the manufacturer and let them
      re-program the chip and re-attach it to the board.
    - Current advances, thanks to EEPROMs, mean you dont have to
      remove the chip, you just make the computer do the job
      electrically.

    - _CMOS_ contains system settings [BIOS settings] that can be
      modified by a user [in the BIOS screen]. So, according to ...
      "[calling that screen you enter] CMOS setup is more appropriate
      than calling [it] BIOS setup." !!


### Firmware
    - special class of software not intended to change once shipped.
    - An update requires either a swap of chips or a special process
      to reload the flash memory containing the software.
    - This type of software powers things like your TV, microwave,
      home router, BIOS (boot code) of your PC ...etc...

### What is an expression
    - any piece of code that returns a *value*

### predicate:
    - In LISP, any combination that returns `TRUE` or `FALSE`

### great lecturer:
    safaribooksonline: Sander Van Vugt (Linux)

### NASA code indentation
    Allman style bracketing

### Great overview of basic CS education
    - Compiled by specialist teachers:
        * Bradfield online school (high quality - 2021 searched for this) https://bradfieldcs.com/
        * Teach Yourself CS                                               https://teachyourselfcs.com/

    - Or a MOOC based curriculum
        * https://www.infoworld.com/article/2614635/application-development/-200k-for-a-computer-science-degree--or-these-free-online-classes-.html
        * Computer Science 101                                            Stanford University
        * Introduction to Logic                                           Stanford University
        * Learn to Program: The Fundamentals                              University of Toronto
        * Algorithms, Part I                                              Princeton University
        * Algorithms, Part II                                             Princeton University
        * Introduction to Systematic Program Design, Part 1               University of British Columbia (no Part 2 yet)
        * Programming Languages                                           University of Washington
        * Pattern-Oriented Software Architectures (Concurrent+Networked)  Vanderbilt University
        * Algorithms: Design and Analysis, Part 1                         Stanford University
        * Algorithms: Design and Analysis, Part 2                         Stanford University
        * Operating System Engineering                                    MIT (Coursera has nothing)
        * Introduction to Databases                                       Stanford University
        * Introduction to Compilers                                       Stanford University

### How to identify any image / picture
    - Upload the image to Google images.... it should point
      you to the website(s) it came from!  [We use this for
      student work all the time]

### Internal/External DSL
    - External DSLs have their own syntax instead of being
      built on top of a language.
    - All you need to make it work is a parser that
      interprets the language or that translates it to
      another one.

### hn comment
    - Succinct comment about _error handling_:
    - Handle the codes you know what to do with and anything else
      that remains means your program should EXPLODE immediately!

### MongoDB quirk
    mongodb queries dont always return all matching documents!!

### grep inefficiency
    * grep always has to 'touch' all of the data
    * ie full scans

### columnar databases
    - How do columnar databases work? The defining concept
      of a column-store is that the values of a table are
      stored contiguously by column.
    - Thus the classic supplier table from CJ Date's
      supplier and parts database:

    ```
    SNO  STATUS CITY    SNAME
    ---  ------ ----    -----
    S1       20 London  Smith
    S2       10 Paris   Jones
    S3       30 Paris   Blake
    S4       20 London  Clark
    S5       30 Athens  Adams
    ```

    - would be stored on disk or in memory something like:
    - S1S2S3S4S5_;_2010302030_;_LondonParisParisLondonAthens_;_SmithJonesBlakeClarkAdams

    - This is in contrast to a traditional rowstore:
    - S120LondonSmith_;_S210ParisJones_;_S330ParisBlake_;_S420LondonClark_;_S530AthensAdams

    - From this simple concept flows all of the performance
      differences, for better or worse, between a column-store
      and a row-store.
    - For example, a column store will be excellent at
      `aggregations` like totals and averages, but inserting
      a single row can be expensive,
    - while the inverse holds true for row-stores. This should be
      apparent from the above diagram.

    - How do they differ from relational databases?
    - A relation database is a _logical_ concept.
    - But columnar dbs, or column-store, is a _physical_ concept.
    - Thus both terms are not comparable in any meaningful way(!)
    - Column-oriented DMBSs may be relational or not, just as
      row-oriented DBMS's may adhere more or less to relational
      principles.

### challenge-response system:
    - dont send whole password over the wire.
    - System issues a series of challenges and user must reply.
    - its a sort of "dot-product" of the password and the key.

### From NAND to tetris
    - Clock: (on/off, 1/0) breaks continuous time into discrete
      units
    - Sequential logic, one after the other in sequential integer
      time steps
    - note: it make take a few milliseconds for the voltages to
      settle down but we ignore that as long as everything is
      "stabilised" into a new logical state by the end of the
      time step...
    - Whats "sequential" logic? The output at "t" depends on the
      input at "t-1"
        - `out[t] = function(input[t-1])`

    - The other option for logic is "combinatorial" logic.
      Happens instantaneously inside a single time unit.
        - `out[t] = function(input[t])`

    - Apparently "sequential" logic allows us to hold "state" in
      a single bit... ie always building on our previous result
      in that bit...
      - TIMESTEP  STATE
      - 1         a
      - 2         b = f(a)
      - 3         c = f(b)
      - 4         d = f(c)

    - DFF: Clocked Data Flip/Flop gates (has a little "Δ" to show this
      chip has state). Note DFF's can be built from NAND gates.
      (flip flop chips remember the previous state - so how can
      you get NAND gates to remember anything??!)

    - RAM: think of it as millions of little registers, each one
      with an address

    - Clocked register: its logic is:
        note: 'in'  = input pins
        note: 'out' = output pins
        // Let 'M' be the state of the register
        if load then {
            M = in
            // from next cycle onward:
            out = M
        }
        else
            out = M
            // no change cos 'load' bit wasnt set (or asserted)

    - PROGRAM COUNTER:
        - The computer needs a chip to keep track of which instruction
          should be fetched and executed next
        - this control mechanism can be realised by a 'Program
          Counter' (PC)
        - The 'PC' contains the address of the instruction to be
          fetched and executed next
        - 3 possible control settings:
            - Reset: fetch 1st instruction  `PC = 0`
            - Next:  fetch next instruction `PC++`
            - Goto:  fetch instruction 'n'  `PC = n`

### dll libraries
    - Windows:  .dll
    - Linux:    .so (shared object)
    - Solaris:  .so (shared object)
    - AIX:      .so (shared object)
    - HP-UX:    .sl (shared library)

### Dominic Cummings: CS Recommendations
    - Artificial Intelligence (Russell & Norvig 2009)
    - One can imagine many pupils preferring to study this online
      course of than any existing options available to them
      16-18.

    - Machine intelligence: Thrun (Udacity) and Ng (Coursera)
    - Schools should replace many of their traditional courses
      with pupils and teachers doing these courses, and providing
      the necessary background maths.

    - MIT Course 6.893 Philosophy & Theoretical Computer Science
    - Scott Aaronson, one of the leading authorities on quantum
      computers, has an interesting course teaching basics of
      computer science and computational complexity theory.

    - Wired for War, Peter Singer
    - (for the general reader, on robots, AI and war).

    - The Information. Gleick
    - history of information theory and computation

    - Dyson: the story of Turing, von Neumann and the computer.

    - Introduction to the Theory of Computation, Sipser (2005).
    - Classic text, university level, partly accessible to
      someone doing A Level Maths.

### Code interviews
    - Python tricks                  https://www.amazon.com/Python-Tricks-Buffet-Awesome-Features-ebook/dp/B0785Q7GSY
    - Impractical python             https://www.amazon.com/Impractical-Python-Projects-Programming-Activities/dp/159327890X
    - Python interview questions     https://www.amazon.com/Elements-Programming-Interviews-Python-Insiders/dp/1537713949
    - leetcode                       https://leetcode.com/
    - Hacker rank                    https://www.hackerrank.com/interview/interview-preparation-kit
    - Hacker rank answers            https://programs.programmingoneonone.com/
    - Cracking code interview python https://github.com/careercup/CtCI-6th-Edition-Python/tree/e6bc732588601d0a98e5b1bc44d83644b910978d

### handy links
    - Field Guide to Human Error                                       https://www.amazon.co.uk/Field-Guide-Understanding-Human-Error/dp/1472439058
    - GOF Design Patterns                                              https://www.gofpatterns.com/index.php
    - Fun at the unix terminal                                         https://news.ycombinator.com/item?id=14047463
    - Computer Systems: A Programmer's Perspective                     http://www.cs.cmu.edu/~213/schedule.html
    - Computer Systems: A Programmer's Perspective                     https://scs.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx#folderID=%22b96d90ae-9871-4fae-91e2-b1627b43e25e%22&view=0&page=1
    - QueryStorm Excel SQL thing                                       https://news.ycombinator.com/item?id=16772276
    - learn electronics                                                https://news.ycombinator.com/item?id=16775744
    - HN best talks 2017                                               https://news.ycombinator.com/item?id=16045859
    - agile or not agile                                               https://arxiv.org/abs/1704.07469
    - LLVM                                                             https://arxiv.org/abs/1704.05551
    - Swarm Intelligence                                               https://arxiv.org/abs/1704.00795
    - compiler course                                                  https://www.udacity.com/course/programming-languages--cs262
    - compiler course                                                  https://www.udacity.com/course/compilers-theory-and-practice--ud168
    - The art of assembly language                                     https://news.ycombinator.com/item?id=16710214
    - setup chromebook dev environment using Termux:                   https://news.ycombinator.com/item?id=14863580
    - self taught cs                                                   https://github.com/ossu/computer-science
    - Nand to Tetris: Build a computer                                 http://nand2tetris.org/
    - CPU                                                              https://www.youtube.com/watch?v=cNN_tTXABUA
    - memory                                                           http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory/
    - virtual memory diagram                                           https://gabrieletolomei.wordpress.com/miscellanea/operating-systems/virtual-memory-paging-and-swapping/
    - (Good!) Black-Schaffer - Linux Virtual Memory                    https://www.youtube.com/playlist?list=PLiwt1iVUib9s2Uo5BeYmwkDFUh70fJPxX
    - RTFM: Red Team Field Manual                                      https://www.amazon.de/Rtfm-Red-Team-Field-Manual/dp/1494295504
    - Windows Linux Subsystem (WSL)                                    https://news.ycombinator.com/item?id=15243202
    - Linux networking commands                                        https://news.ycombinator.com/item?id=15242982
    - unix "dd" is like "jcl"                                          https://news.ycombinator.com/item?id=13896675
    - Hachoir (Python) view/edit binary streams                        http://hachoir3.readthedocs.io/
    - Sqlite wth torrent filesystem                                    https://news.ycombinator.com/item?id=14130280
    - SQLites 'Virtual' tables:                                        https://sqlite.org/vtab.html
    - expose Redis as an sqlite table:                                 http://charlesleifer.com/blog/extending-sqlite-with-python/
    - Concurrency is not parallelism                                   https://www.youtube.com/watch?v=cN_DpYBzKso
    - BDD with cucumber                                                https://youtu.be/nW59B2szPIQ
    - Advice for new developers                                        https://codeburst.io/number-one-piece-of-advice-for-new-developers-ddd08abc8bfa
    - audience response for presentations                              https://www.sli.do/
    - Tips on teaching students CS..                                   http://varianceexplained.org/r/teach-hard-way/
    - floating point visually explained                                https://news.ycombinator.com/item?id=15359574
    - Life in Code: A Personal History of Technology                   https://www.amazon.co.uk/Life-Code-Personal-Technology-International/dp/0374534519
    - Python packaging guide:                                          https://packaging.python.org
    - Python sample project: (best practices)                          https://github.com/pypa/sampleproject
    - Python reproducible environments:                                https://github.com/pypa/pipfile
    - Godel Escher Bach course                                         https://ocw.mit.edu/high-school/humanities-and-social-sciences/godel-escher-bach/
    - use the terminal for everything                                  https://news.ycombinator.com/item?id=17889300
    - First rule of Excel: Dont tell anyone you're good at it          https://news.ycombinator.com/item?id=18150833
    - You suck at Excel (Joel Spolsky)                                 https://news.ycombinator.com/item?id=12448545
    - good book about designing data apps                              https://dataintensive.net/
    - what things has a self-taught programmer missed                  https://news.ycombinator.com/item?id=19900955
    - relational databases                                             https://news.ycombinator.com/item?id=21060866
    - Secret Recipes of the Python Ninja, by Cody Jackson
    - Programming books you wish you had read earlier                  https://news.ycombinator.com/item?id=19225964
    - What Sql analysts should know about Python (cursors)             https://news.ycombinator.com/item?id=21442485
    - Petzold - Annotated Turing                                       https://www.amazon.com/Annotated-Turing-Through-Historic-Computability/dp/0470229055/
    - Assembly: Still Relevant Today (2015)                            https://news.ycombinator.com/item?id=21924591
    - Windows little snitch firewall alternatives                      https://news.ycombinator.com/item?id=22206116
    - Aaronson: Automata, Computability and Complexity                 https://www.youtube.com/playlist?list=PLmUkKyGlHupqtANK5Pmo1gjLlmW1pF1q7
    - Compiler Superoptimisers                                         https://github.com/StanfordPL/stoke
    - Compiler Superoptimisers                                         https://github.com/google/souper
    - List of good Youtube programming channels                        https://github.com/JoseDeFreitas/awesome-youtubers
    - There are only four billion floats, so test them all (2014)      https://news.ycombinator.com/item?id=24745563
    - Pair programming interviews                                      https://codeinterview.io/
    - Iverson Notation is a tool for thought                           https://www.eecg.utoronto.ca/~jzhu/csc326/readings/iverson.pdf
    - I still use RSS                                                  https://news.ycombinator.com/item?id=26014344
    - Elements of Computer Systems (nand2tetris)                       https://news.ycombinator.com/item?id=26036790
    - Architecture file: Birds Eye view of source code                 https://news.ycombinator.com/item?id=26048784
    - Rich Hickey: Simplicity matters                                  https://www.youtube.com/watch?v=rI8tNMsozo0
    - Haskell design but generic                                       https://algebradriven.design/
    - Epic Corporate jargon                                            https://news.ycombinator.com/item?id=26606410
    - Learn x in y minutes (whirlwind tours)                           https://learnxinyminutes.com/
    - Brian Will, great tutorials, videos (eg Clojure, hardware)       https://brianwill.github.io/
    - Jackson Structured Programming! (JSP) Irish Life 1990            https://news.ycombinator.com/item?id=28154890
    - Hacker news recommended books                                    https://hacker-recommended-books.vercel.app/category/0/all-time/page/0/0
    - Hacker news recommended books                                    https://news.ycombinator.com/item?id=28595967
    - How Linux Works, 2nd Edition (Preptorial recommends)             https://www.amazon.com/How-Linux-Works-2nd-Superuser/dp/1593275676
    - Sinclair spectrum games                                          http://torinak.com/qaop/games
    - HN: The Book that did it for you in Math/CS                      https://news.ycombinator.com/item?id=30485544
    - GOOD teaching: CS 361 (Linux) systems programming                https://www.youtube.com/playlist?list=PLhy9gU5W1fvUND_5mdpbNVHC1WCIaABbP
    - _GOOD_ CS Videos: Fireship (funny)                               https://www.youtube.com/c/Fireship
    - My Course: IEE/NCC Software Engineering Certificate              https://web.archive.org/web/19990825043200/http://www.gcd.ie/SW%20Eng.html
    - My Course: IEE/NCC Software Engineering Certificate              https://ieeexplore.ieee.org/document/182060
    - Dos deck old PC games                                            https://dosdeck.com/game/doom
    - Light Years Ahead | The 1969 Apollo Guidance Computer            https://www.youtube.com/watch?v=B1J2RMorJXM
    - Apollo programming                                               https://www.amazon.com/Sunburst-Luminary-Apollo-Don-Eyles/dp/0986385905
    - Gerald Jay Sussman: The Role of Programming (Dan Friedman's 60th https://www.youtube.com/watch?v=arMH5GjBwUQ&t=236s
    - Tsoding Youtube: niche programming channel                       https://www.youtube.com/@Tsoding






### My files:
    - ./datasci-ml.md
    - ./topics/misc
    - ./lang/lisp/lisp_advantages.md
    - ./lang/python/Raymond-Hettinger.md
    - ./topics/misc/weird_errors_bugs.md
    - ./topics/misc/believed-falsehoods.md
    - ./topics/data-eng-devops/data-eng-tips.txt
    - ./topics/misc/sussman-we-cant-compute.txt
