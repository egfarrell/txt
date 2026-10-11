A beginners guide to thinking in SQL (sohamkamani.com)
http://www.sohamkamani.com/blog/2016/07/07/a-beginners-guide-to-sql/

Interesting talk about listing table joins with just a comma
search for: (ef: interesting...)


[comment]:
I think this would really beneﬁt from some thoughtful indenting to illustrate the structure. For
example, instead of:

    `SELECT
    members.firstname AS "First Name",
    members.lastname AS "Last Name"
    FROM borrowings
    JOIN books ON borrowings.bookid=books.bookid
    JOIN members ON members.memberid=borrowings.memberid
    WHERE books.author='Dan Brown';`

Do:

    `SELECT
      members.firstname AS "First Name",
      members.lastname AS "Last Name"
    FROM borrowings
      JOIN books ON borrowings.bookid = books.bookid
      JOIN members ON members.memberid = borrowings.memberid
    WHERE books.author = 'Dan Brown'; `

This helps reinforce that there is one FROM statement that combines three tables using joins

         [comment]:
         Some time ago, I settled on a fairly similar idiosyncratic indentation style for SQL:

            `select
              members.firstname as "First Name",
              members.lastname as "Last Name"
            from
              borrowings
              join
              books on borrowings.bookid = books.bookid
              join
              members on members.memberid = borrowings.memberid
            where
              books.author = 'Dan Brown';`

         Normally, I'm a fairly slavish follower of style standards, but almost
         every bit of SQL I come across in my job is an unreadable mess, even
         when whoever wrote it did have the vague idea that consistent
         formatting was good.

                 [comment]:
                    Sometimes with complex queries, it can be tough to adhere to
                    a simple set of style rules while also making clear where
                    things like logical units start/stop. Don't get me wrong I'm
                    not disagreeing with you in principle; but acknowledging
                    that the declarative nature of the language cause you to
                    break style for the sake of readability in some cases. I'm
                    not going to post an example of such a case (I'd have to go
                    digging and I'm too tired). On a different note, I don't
                    like a lot of the styles I do see. I like yours, with the
                    exception of the joins. My convention is a bit different:

                    `SELECT
                        members.firstname as "First Name"
                        ,members.lastname as "Last Name"
                    FROM borrowings
                        JOIN books
                            ON borrowings.bookid = books.bookid
                        JOIN members
                            ON members.memberid = borrowings.memberid
                    WHERE books.author = 'Dan Brown'; `

                    Some of that is old habit (like the comma ﬁrst thing which I know is out
                    of favor with many) which I found useful when working with long column
                    lists. I'd also typically and systematically alias the tables, but that
                    wasn't done in the examples. Outside of tastes, the only real downside
                    I run into is that it's easy to get too far to the right with the
                    indentation style I use. But it's not that often that I get there.

               [comment]:
               I haven't had trouble with complicated queries with this style. I've been
               doing it for ages, though.
               There nothing wrong with comma-ﬁrst, it's sensible; I just never got into the
               habit. My joins are so I can instantly glance over the tables involved in a
               query.
               (And, oh yes, I, too, normally alias the crap out of tables if there's more than
               one in a query.)

[comment]:
One of my favorite tools is a SQL auto formatter, http://poorsql.com/ . Also available as an
add-in for notepad++, Visual Studio and SSMS.

[comment]:
Fully agree.
Why is it, that SQL generally is so poorly commented? Almost every time I see an SQL
script, I cringe for the poor formatting. It's generally not like the writers of these scripts
are poor at formatting other code...

       [comment]:
       SQL has a very large and complex syntax, which makes it hard to come up with a
       set of formatting rules that ﬁt at least most of the statements. I think the only way
       to get readable SQL is to use a DSL-based SQL builder for your language - this
       decouples syntax from meaning and makes good formatting much easier. It also ﬁts
       much better with your main language.

[comment]:
Maybe a little off topic:
- What's the (hi)story behind SQL putting the SELECT clause ﬁrst? What are/were the
beneﬁts?

- What's the (hi)story behind SQL even differentiating between FROM and JOIN? Isn't it in
the end: those are the tables, combine them in this way into one data set?
Any hints? pointers?

       [comment]:
       SQL uses a natural language syntax.
              Regarding your ﬁrst question - In English, most people would agree that "grab the
              beer from the fridge" is more natural than "from the fridge grab the beer". For what
              it's worth I've always considered this aspect of SQL maddening and I always start
              with SELECT * and work my way back later.
              Regarding your second, this is probably because FROM means something different
              from JOIN. FROM indicates you are starting a block of JOINED tables. Technically if
              the syntax wasn't natural it might look like:

              `SELECT * FROM JOIN FOO ON NOTHING JOIN BAR ON FOO.ID = BAR.FooID`
              Given how annoyingly verbose the syntax is already I'm happy to go with what we
              were given.

                      [comment]:
                      Aha! The natural English grammar pointer is a nice one... sure enough I now!
                      remember the "natural language syntax" idea ;)
                      I'm happy too, no doubt... I guess, given how long it already "survived" SQL
                      is quite "successful". Cheers

       [comment]:
       You're right on, this is exactly the styling I use with SQL. Indentation makes all the
       difference in at-a-glance readability.

[comment]:
I have to wonder why a relation algebra language isn't actually algebraic. What about projections
in the form of something like `c := a x b` etc? Nooo, they had to make it look like COBOL.

       [comment]:
       In databases class, they used Pi for projection, bowtie for natural join, and sigma for row
       ﬁltration. They added conditions on the operators with subscripts. SQL is just the
       standardized version of that.

              [comment]:
              "Standardized"...and without the legibility of symbolic notation and the option to
              use intermediate named relvars?

                      [comment]:
                      It's designed to be "natural", meaning that technical symbols were largely
                      avoided. Someone who knows little about formal notation but a decent
                      amount about databases can usually ﬁgure out what's going on. It's also
                      easier to type, seeing how most of the relevant symbols aren't on your
                      average keyboard.

       [comment]:
       I have seen it taught with operators like that.

       [comment]:
       Because one of SEQUEL, and thus SQL's design goals was to create a language that's
       usable by non-programmers of various levels of computer and math ﬂuency. Having to
       remember a set of symbols just to get a jobs report would be a huge turn-off to a huge
       subsection of people that the language was intended for.

[comment]:
What's the canonical reference book one should go to regarding SQL? (ie K&R is the book you go
to for C)
I understand there are differences between DB vendors, but my question is about general
patterns and best practices.

      [comment]:
      SQL Pocket Guide. Thin, small book. No ﬂuff. Just syntax and solutions for all the major
      vendors. If I could only have one book while developing it would be this one.

      https://www.amazon.com/SQL-Pocket-Guide-Jonathan-Gennick/dp/...

      [comment]:
      Chris Date's Introduction to SQL [1], or Edgar Codd's last book [2].
      Actually both are worth reading to discuss differences in philosophy (e.g. "no NULLs" vs
      4-valued logic including "unknown" and "not applicable" NULLs).

      [1] https://www.amazon.com/Introduction-SQL-Mastering-Relational...
      [2] https://www.amazon.com/Relational-Model-Database-Management-...

              [comment]:
              First book [1] is not by C. J. Date. So, is this the book you recommend and just
              mixed up the author's name, or... ?

                     [comment]:
                     Good catch. Too late to edit the comment.
                     Yes, I meant C.J. Date's "Introduction to SQL".
                     I was trying to get a link to the latest edition which appeared to be the 2nd
                     link on an Amazon search for "Date introduction to SQL"... anyway, it is
                     continuously edited so it's worth seeking the latest version which has twice
                     as many pages as some of the earlier ones.

                             [comment]:
                             The thing is, and I probably should have pointed it out in the ﬁrst
                             comment, sorry about that: I can't ﬁnd such a book by Cris Date. My
                             guess is you meant "Introduction to Database Systems".

                                     [comment]:
                                     Yes, you are right. Database Systems.

      [comment]:
      Joe Celko's "SQL for Smarties" ... and then the other SQL books by Celko

              [comment]:
              Great book! Also, go read jOOQs blog: https://blog.jooq.org/

      [comment]:

         >   What's the canonical reference book
         >   one should go to regarding SQL?
         >   (ie K&R is the book you go to for C)
         >
         >   I understand there are differences between DB vendors,
         >   but my question is about general patterns and best practices.

      For 10 years I've looked and never found one. I ﬁnd Chris Date pedantic. The rest are a
      mish-mash of cookbooks, vendor-speciﬁc ones, and some that try to be the general guide
       you're looking for but collapse beneath the weight of hundreds of pages of prose that
       seems to have been written by a committee of robots.

       [comment]:
       As far as I know, you are probably looking for Jeffrey D. Ullman [1]? I think my lecturer at
       my local university basically stole [2] when he taught our course :)

       Just be aware that he is an academic, so I might compare him more to A.S.Tanenbaum
       than K&R :-)
       [1] http://infolab.stanford.edu/~ullman/ [2] http://infolab.stanford.edu/~ullman
       /dscb.html#slides

       [comment]:
       I found that basic courses on relational algebra more useful than most text books. They
       seem to introduce the mathematics in a more clear concise way than most SQL books.

       [comment]:
       Not a book, but Stanford's Intro to Databases by Jennifer Widom is offered for free online
       and I've heard nothing but great things about it.
       https://lagunita.stanford.edu/courses/DB/2014/SelfPaced/abou...

       [comment]:
       I found SQL Antipatterns by Bill Karwin to be a great book on the topic of patterns and
       best practices with SQL. As a bonus, it's relatively platform agnostic if I recall correctly.

[comment]:
Could you write their example

        SELECT members.firstname || ' ' || members.lastname
        AS "Full Name"
        FROM borrowings
        INNER JOIN members
        ON members.memberid=borrowings.memberid
        INNER JOIN books
        ON books.bookid=borrowings.bookid
        WHERE borrowings.bookid IN (SELECT bookid
            FROM books
            WHERE stock>(SELECT avg(stock)
            FROM books))
        GROUP BY members.firstname, members.lastname;

more simply as

        SELECT @avgstock = avg(stock) from books;

        SELECT members.firstname || ' ' || members.lastname
        AS "Full Name"
        FROM borrowings, members, books
        WHERE members.memberid = borrowings.memberid
        AND books.bookid = borrowings.bookid
        AND borrowings.bookid IN
            (SELECT bookid
            FROM books
            WHERE stock > @avgstock))
        GROUP BY members.firstname, members.lastname;

- Are those explicit INNER JOIN clauses necessary? 
- By now, most SQL query optimizers can ﬁgure out on their own how to join tables.

      [comment]: (ef: interesting...)
      - My impression was that few people use the comma syntax
        these days, it's old fashioned, harder to read, harder to
        change, harder for the query plan optimizer, etc.
      - I know this is an appeal to authority, but the consensus
        is pretty clear if you search SO and programmer
        stackexchange:
      - http://stackoverﬂow.com/questions/1018822/inner-join-on-vs-...
      - http://programmers.stackexchange.com/questions/78225/using-j...
      - You're also introducing a lot more concepts by adding
        variables, and that code wouldn't work on SQL Server, for
        example, as you need to declare the variable ﬁrst. 
      - Then again the `||` doesn't work on SQL Server either.

             [comment]:
             - As an active DBA I would tell you that most of the
               time I would expect the comma join syntax to come
               from someone with grey hair, its an older format
               that once was standard.
             - I would also say that if you are suggesting style,
               you might ommit that INNER from the JOIN (if you
               are targeting sql server its redundant.)

                    [comment]:
                    - I tend to mix and match the two. The comma
                      join looks way more natural to me. 
                    - One thing I do habitually which I don't see
                      other people do much is use aliases.
                    - I learnt SQL through SAS which is where the
                      excessive aliases came from and it kind of
                      stuck with me.

                           [comment]:
                            - The "comma join" disconnects the
                              join from the condition. 
                            - It is hard to ﬁnd the actual join
                              condition between all the "where"
                              conditions. 
                           - By using JOIN ... ON .., you
                             explicitly link tables with their
                             join condition and also separate
                             join conditions from other ﬁlter
                             conditions on the "where".

                                    [comment]:
                                    > The "comma join" disconnects the join from the condition.

                                    - Yes, because it's more
                                      important to ﬁrst know
                                      what's being joined, then
                                      traverse that list looking
                                      for how it's being joined.
                                    - You get the full name in
                                      the conditionals, so it's
                                      not like it's a mystery
                                      what they attach to.
                                    - But I have grey hair, so
                                      there you go.... :)
                                    - Comma syntax makes much
                                      more sense to me. 
                                    - But now I know that this is
                                      not The Way Things Are
                                      Done. 
                                    - I also learned from the
                                      comments that comma-ﬁrst
                                      isn't recommended. 
                                    - So now my code will be more
                                      legible. It's all good.

                                           [comment]:
                                           I'm 45. I'm so old that I'm proﬁcient using (+) to code
                                           outer joins in oracle :) Comma-join was the standard for
                                           me, and I had a hate-phase towards LEFT/RIGHT JOIN.
                                           But I must admin that once I've really tried the "new"
                                           join-on syntax it has great advantages that outweighs
                                           the pain of change.
                                            [comment]:
                                            Thanks. Good to hear!
                                            I'm 51, and I'm a "full stack" programmer, which
                                            used to just be a regular programmer before
                                            everybody started overspecializing. When I
                                            learned programming, you met a guy, he told you
                                            what he wanted, and you made the computer do
                                            that. You didn't say "But I'm just the Java guy"

                                            It wasn't that you were an expert in a dozen
                                            things, you just ﬁgured out whatever the heck you
                                            had to do.
                                            I've kept with this philosophy and it's served me
                                            well.
                                            So I dive in and out of SQL. I picked up my habits
                                            on SQL intensive projects in the 80s and 90s.
                                            It'll be diﬃcult for me to switch until I get into a
                                            spot where I'm using it heavily for a week or two.
                                            Hopefully I'll remember this thread then and give
                                            the new way a shot. Sounds freaky, but hell, I
                                            wasn't crazy about pointer arithmetic when I ﬁrst
                                            heard about it either. :)

                     [comment]:
                     If you write any decent amount of SQL and you dont alias, I will ﬁnd
                     you, and I will ... teach you a better way to code.
                     Most people don't have to do stuff in highly normalized systems, so
                     when you write code that can have dozens of joins and potentially
                     more predicates, you would go insane NOT using aliasing.

              [comment]:
              > I would expect the comma join syntax to come from someone with grey
              hair,
              Dammit.
              (This is like being told by my doctor last week that an injury was "common in
              older athletes.")

                     [comment]:
                     My right knee sends its condolences. :)

[comment]:
> Are those explicit INNER JOIN clauses necessary?
Explicit INNER JOIN is clearer than comma joins, which combine join conditions with ﬁlter
conditions.
> By now, most SQL query optimizers can ﬁgure out on their own how to join tables.

Clarity, rather than eﬃciency, is the reason to prefer explicit INNER JOINS over comma
joins.
Though in this case, the conditions for the explicit INNER JOINS could be simpliﬁed by
using USING (and, also, eliminating the unnecessary subquery):

     SELECT members.firstname || ' ' || members.lastname
     AS "Full Name"
             FROM borrowings
             INNER JOIN members
             USING memberid
             INNER JOIN books
             USING bookid
             WHERE books.stock > (SELECT avg(stock) FROM books)
             GROUP BY members.firstname, members.lastname;


               [comment]:
               Thanks for explaining a use of using!

        [comment]:
        There's so many ways to accomplish the same thing in $SQLEngine that a lot of it comes
        down to style and clarity/rereadability. I'd prefer keeping the join conditions as USING or
        ON in most cases because it keeps them close to the statements related to it. Where I
        work I have to read through a lot of older code that hides them in the where clause and
        uses 3 letter abbreviations almost exclusively for table aliases which can be pretty tedious
        to sift through. Again it's mainly down to personal choices though (or in some cases
        institutional guidelines).

        [comment]:
        There are dozens of different ways you could write the given query, e.g.,

           Select members.firstname + ' ' + members.lastname as "Full Name"
           From members
           Join borrowings on members.memberid = borrowings.memberid
           Join (
             Select bookid
             from books
             where stock > (Select avg(stock) from books)
           ) books on borrowings.bookid = books.bookid

        Using comma syntax precludes many of these other forms, and therefore I would not
        recommend teaching it to beginners (or in fact ever using it), as it limits your options.

        [comment]:
        I was taught the second style of joins in the WHERE clause, but moved to the ﬁrst style as
        I saw it was recommended.
        Having used both, the INNER JOIN style makes more sense to me, as you are describing
        the JOINS when you are adding the tables and keeps it separate from the WHERE clause
        which is really a ﬁltering step.
        The second style combines the two and makes and makes it less clear what you are trying
        to achieve in my opinion.

[comment]:
This is a very naiive and simple question:

I really love the idea of SQL and am looking for a project to use it. It seems like a great way to
encapsulate most of the state of your program so you can make your code more decoupled. For
crunching logs or other data-dumps it seems like a no brainier, but for everything else I don't
really have a a sense for the performance characteristics. Like would it make sense to keep
objects' data in an SQL table (like a pImpl) ? is going over the rows of SQL table instead of
std::vectors a different order of magnitude performance wise (I assume with something like
SQL-Lite I can keep the tables in memory and not on disk).
I guess when is it appropriate to use a database and when is it not?
EDIT:
For context - I'm working almost exclusively in C++ and am usually pretty performance
sensitive. In my last job we did radar simulations with lot of entities (radar platforms, aircraft,
ballistic missiles etc.) that just lived in STD containers. Decoupling state from the simulation was
always a bit of a struggle. Would keeping something like that in an SQL database make sense?
Another example. At the moment I'm working on an art project and I need to keep track of
vectors and polygons which will be later used by a ray tracer. I'd also like to keep the state
decoupled from my program. Would a SQL database be a bottleneck?

       [comment]:
       It really depends on your performance characteristics as you mentioned, you can certainly
       make a database fast as hell but most of the time I would recommend SQL for when you
       need ACID characteristics(Atomicity, Consistency, Isolation, Durability), not performance
       per-se because while SQL can be insanely fast, if you do not understand the abstraction it
       can get slow real fast.
       If you ﬁnd yourself storing large tables of information that is vaguely relational and you
       value the consistency of your data over raw performance I would generally recommend
       SQL engines.

              [comment]:
              I guess i'm more envisioning something like a SQL container. So if you have
              multiple instances of a pImpl class you would keep the actual state-
              variables/implementation in a DB. When you want to say do some complicated look
              up (ex: which objects ﬁt some criteria) you would express that operation in terms of
              SQL queries

[comment]:
Is there any open-to-everyone SQL database on the net that I can query to try out some simple
operations after reading this tutorial?

       [comment]:
       You can try http://sqlﬁddle.com/, although I've not used it.

       If you don't object to running one locally, SQLite Manager [1] is a good Firefox addon that
       lets you visually manage local SQLite databases.
       [1] https://addons.mozilla.org/en-US/ﬁrefox/addon/sqlite-manage...

       [comment]:
       Data from Stack Overﬂow (and other Stack Exchange sites):
       http://data.stackexchange.com/
       Also, you will see many other examples (other people's queries).

       [comment]:
       Yes, there is: http://sqlﬁddle.com/#!15

       [comment]:
       there's one on your machine called SQLite.

[comment]:
Anyone have a resource for mysql 5.6/5.7 about geoqueries and storing json? Also, resources
about how people should build their table schema? It seems like what I've learn from school
might be very different on how you should do it industry.
      [comment]:
      You'll need 5.7 to make full use of JSON features; ditto for geo. MySQL 5.7 is still
      considered pretty new (GA for ~9 months) so many companies haven't upgraded yet.
      Amazon RDS and Google Cloud SQL do offer 5.7 though, if you want to try out these
      features.
      Best MySQL resources are generally the manual [0],[1] and Percona's blog [2],[3]      As for MySQL table schema best practices, deﬁnitely a broader topic, but yes it tends to
      differ greatly from what's taught academically. Baron's book [4] is probably the best
      starting place -- it's a few versions old by this point, but most of the core
      recommendations around InnoDB tables and indexing in there still apply.
      [0] http://dev.mysql.com/doc/refman/5.7/en/spatial-extensions.ht...
      [1] https://dev.mysql.com/doc/refman/5.7/en/json.html
      [2] https://www.percona.com/blog/2016/02/03/new-gis-features-in-...
      [3] https://www.percona.com/blog/2016/03/07/json-document-fast-l...

      [4] http://shop.oreilly.com/product/0636920022343.do

[comment]:
Aside from using temp tables is there a way to assign sub-queries as a variable and refer to
them later on?
completely simple and contrived for example purposes only, something like:

     active_users = select * from users where user.login > 0;

     select * from active_users where active_users.country is not null;

seems like that would clean up the query nesting quite a bit. Might need some kind of begin /
end blocks like with transactions so the query planner would know the scope of those
sub-queries.

      [comment]:
      Yep, a few.
      1. Temporary views. This one's my favourite but not everything supports it and sometimes
      DBMSs have weird limitations, not like allowing parameter binding in them.

      2. Temporary tables, as you mention
      3. CTEs ("with expressions"). These would be my favourite if they weren't an optimisation
      fence in postgres.

            WITH active_users
                AS (select * from users where user.login > 0)

            select * from active_users where active_users.country is not null;

      4. If you're only using it once, a subselect lets you add a name to it if that's all you're after

            select *
            from (select * from users where user.login > 0) AS active_users
            where active_users.country is not null;

      5. If you're using active_users frequently and want it to be globally accessible, a regular
      view. Often you can make a DB much more useable with a few well placed views like this
      and you'll need a few less abstractions as well.
              [comment]:
              Thanks for the options. can you expand on why CTEs are a postgres optimization
              fence?

              as for 4: I am aware of the named subselect but once you add a few of those to the
              main select statement you start to get into unreadable territory.
              back to CTEs, it seems like it should be an easy substitution problem for the
              postgres query planner. I am not a DB developer so I am probably not aware of all
              the issues. The CTE seems like the thing I was trying to describe though. Do you
              think that the optimizations would be more possible with begin and end scopes? It
              seems like they are part of the same select statement so i doubt scopes would help
              it.

                      [comment]:
                      In practice optimization fence is not normally a problem, and can even be an
                      advantage. The general rule is - just use CTEs. And the speciﬁc rule is - learn
                      to proﬁle and optimize using EXPLAIN ANALYZE

       [comment]:
       Yes, you can do this using CTEs, i.e. WITH clause, pretty much exactly how you suggest.

       [comment]:
       Or in the case of your simple query, you may also create and use a view or a user deﬁned
       table valued function, in addition to a CTE. SQL Server also supports table variables in
       T-SQL, some other dbs may as well.

       [comment]:
       You can wrap that ﬁrst part into a INNER JOIN statement or use a CTE like someone else
       mentioned

[comment]:
Thank you for this. It may be too basic for most of the HN crowd but for me it is a good read for
my further development.

[comment]:
Every article that makes it clear that JOIN are effectively operating on tables and thus informally
part of the FROM clause (rather than being independent clauses) deserves upvoting.

[comment]:
The one thing I've always wanted to be able to do is to be able to control the projection part of
the query. So in other words, I'd love to be able tell the select to display all attributes that are
like '%name%'.

       [comment]:
       Have you tried using CASE with HAVING?

              SELECT
              ...,
              CASE WHEN attributes LIKE '%name%' THEN name
                   ELSE null END AS name
              FROM table
              HAVING name IS NOT null

       Or did you mean selecting by the column's name speciﬁcally?
              [comment]:
              I think GP means "SELECT all columns that have %foo% in the name of the
              column". It's not possible directly though you can do it with dynamic SQL by
              querying the data dictionary and dynamically creating the columns retrieved in the
              SELECT clause.

                        [comment]:
                        I think you can search for column names by querying the
                        information_schema to the table schema (at least in postgres)

                           select
                             table_name
                           from
                             information_schema.columns
                           where
                             column_name ilike '%foo%';

                        see https://www.postgresql.org/docs/devel/static/infoschema-colu...
                        For searching for items with '%foo%' in all tables and columns, yeah i think
                        that you're probably right. http://stackoverﬂow.com/questions/5350088
                        /how-to-search-a-s...

                               [comment]:
                               > "For searching for items with '%foo%' in all tables and columns"
                               To do this you could perform two queries of the information_schema
                               (one query for '%foo%' in tables, one query for '%foo%' in columns)
                               and join them together with a UNION statement (or if you didn't mind
                               duplicates you could use UNION ALL in this case as it's faster and the
                               results from both queries can have the same ﬁelds).

                               [comment]:
                               You can do this in Hive SQL, too.
                               https://cwiki.apache.org/conﬂuence/display/Hive/LanguageMan...

[comment]:
I love this guide and will probably steal ideas from it when writing my own SQL tutorials. That
said, I don't think SQL is that hard to read compared to other computer languages, at least for
non-programmers.
I say this as someone who learned object-oriented programming far before I learned about SQL
or its declarative model. SQL was "hard" for me because the declarative style is so functionally
different than OOP, and to this day I still haven't ventured to ﬁgure out the SQL equivalents of
functions, variables, and other mainstays of general programming; I'm satisﬁed with using a
scripting glue language like Python to automate simple SQL SELECT statements.
But I love teaching SQL to non-programmers. You can do a lot of important real-world things with
it without having to jump deep into the logical puzzles of "regular" programming. By "deep", I
mean things like for-loops; it never fails to surprise me how befuddled beginners are about how
for-loops work -- not just the syntax, but the concept of a "block" of code, that for-loops can exist
inside of for-loops...or more fundamentally, you can run more than one line of code inside a
for-loop.
With SQL, you don't have to worry about any of that. You simply declare what columns you want
from a table, what values to ﬁlter by, and optionally, how to aggregate it or join it with another
table -- concepts that have much clearer analogies to everyday thinking about information (or, at
least spreadsheets).
SQL gets complicated when you try to do complicated things. In the OP's opening query, there's
a joining of three tables. But without reading it closely, I can already kind of describe the
real-world information-need that it fulﬁlls: List the people who have borrowed books that have
been borrowed something something to do with `stock`. If I spent a few more minutes, I could
ﬁgure out what the fuck that subquery, `stock > (SELECT avg(stock) FROM books)` is all about,
but the diﬃculty there is just my ignorance of the domain and/or particular conventions in this
hypothetical problem. If I, or even the average novice, wrote this query line-by-line, its purpose
would not be so opaque (as writings rarely are to their own authors). The point is that it's much
easier for a beginner to author their own SQL without fucking things up in the way you can easily
do so with even just a for-loop. I can't imagine that the Python or Ruby equivalent would be
nearly as clear as this SQL statement, even for a far simpler kind of join.

My main complaint about SQL is that it seems more logical that the `FROM` clause should come
before the `SELECT` statement. Though my initial guess is that that hampers the declarative-
clarity of the statement when `JOINS` are involved.
edit: If I could make one suggestion to the submitted article, it would be that the ﬁrst "Simple
Query" is not simple at all:

      SELECT bookid AS "id", title
      FROM books
      WHERE author='Dan Brown';

I'd argue that this is a simpler statement, and one in which the results are immediately
recognizable to every spreadsheet user:

      SELECT * FROM books;


The default behavior of Excel is to show all columns of a data ﬁle. When you get more advanced
as a SQL user (and more advanced in understanding the fundamentals of computation), then you
start being selective about SELECT and realizing that, as an end user (nevermind the cost of
computation), it's not always ideal to see everything by default:

      SELECT title FROM books;


      [comment]:
      I would agree except for that once you start adding joins into the mix people get easily
      confused, while you can certainly express the concept in english (and we often use these
      sets while thinking) that after teaching 50+ people how to use SQL "well" that visualizing
      and understanding joins with more than 2 tables that can throw people for loops for years.
      Even when correctly writing the syntax to accomplish the goal the underlying connection
      to everything being a CROSS JOIN with a predicate is not clear to many people who I know
      who can write SQL effectively.

             [comment]:
             I agree that JOINS can be complicated, even at their most basic. One very common
             error is doing a JOIN on what is assumed to be a unique foreign key:

                    SELECT *
                    FROM restaurants
                    INNER JOIN inspections
                      ON inspections.restaurant_name = restaurants.name

             (Ideally, `inspections` would not have `restaurant_name` as a ﬁeld...but we're
             talking about legacy government data, in which anything could happen...)
             In the best case scenario, the user realizes that the result contains more rows than
             in `inspections` and, furthermore, realizes that that's an illogical result because
             (again, ideally) the user realizes that `inspections` has a many-to-one relationship
             to `restaurants`, and then realizes that `name` shouldn't be used as the foreign
key.
The worst case scenario is that the user understands none of those concepts -- the
need for foreign keys (in this case) to be unique, what "many-to-one" is -- and also
is ignorant of the domain -- e.g. that there may be more than one restaurant with
the name "MCDONALDS". And then throw in a few data integrity errors, e.g.
`inspections.restaurant_name` contains typos/mistakes/nulls, such that the number
of rows in the result set is fewer than number of rows in `inspections`.

But this worst-case user is just satisﬁed/relieved that the SQL interpreter didn't
throw an error and goes on to conduct further erroneous analytical queries on this
nonsensical result.
But none of that is the fault of SQL itself. And I have hard time thinking of how
exactly SQL, or any programming construct, can make such logical (but not
syntactical) errors evident to the novice. At least SQL makes this error fairly evident
to subsequent readers of the code.

       [comment]:
       > And I have hard time thinking of how exactly SQL, or any programming
       construct, can make such logical (but not syntactical) errors evident to the
       novice.
       SQL could do one (or both) of these to make that easier:
       (1) have a preferred syntax for joins that leveraged declared relationship (FK)
       that required the referenced column(s) of the FK relationship to be a
       declared candidate key (either PK or subject to a Unique constraint) -- which
       would make other joins automatically suspect.

       EDIT: Incidentally, I've seen proprietary RDBMS languages and visual
       interfaces (usually, for systems that also supported SQL) that did this
       exclusively -- you could only join via declared FK relations. This is safer, but
       probably overly restrictive for general use.
       (2) in something otherwise like the existing join syntax, require an explicit
       modiﬁer to do a join without a constrained-as-unique column on one side.

              [comment]:
              Ah, I hadn't thought about teaching the novice user to declare their
              own foreign keys (assuming that the data workﬂow starts with
              importing a plaintext CSV into a database) before doing a JOIN. Such a
              process would force the user to think about what a foreign key column
              should contain.
              (in the past, I've generally avoided teaching table/data altering
              statements, such as CREATE/DROP/UPDATE, until after thoroughly
              covering SELECT)
              I use SQLite exclusively for teaching, but one thing I miss from
              PostgreSQL (in my limited usage of it, at least), is how it throws an
              error when the user attempts to select columns not referenced in a
              GROUP BY clause:

                  SELECT id, last_name, COUNT(1) AS people_with_that_name
                  FROM people
                  GROUP BY last_name;

              `id` is the problematic column here. But in SQLite and MySQL, the
              interpreter will dutifully include the column even though it has no
              meaningful interpretation. Come to think of it, SQLite's simpliﬁed data
              types (including implicit type casting) is kind of a pain when it comes
              to teaching.
              [comment]:
              What will the id become in that query when you got multiple
              people with the name? Null?

[comment]:
The solution is very simple. If when you're starting out you don't understand
that the 'details' table should be your primary table instead of the 'header'
table, then there's a simple trick you can pull... For any inner/left join you
create, try altering the query to use a right join and check you don't return
more results. That way you can be sure you're targeting the appropriate
table.
I'd also recommend using LEFT JOIN over INNER JOIN when starting out
exploring data, as the rows with null values can be a useful prompt to check
your query logic.
Also, as another SQL tip... always use table aliases. Not only do table aliases
make it clear which table you're pulling from, they also help you ﬁll in the
right ﬁelds if you're using a decent editor that has IntelliSense or something
similar.

There's very little reason not to use table aliases, especially if your query is
pulling from more than one table.
So the query becomes...
`SELECT r., i. FROM restaurants r LEFT JOIN inspections i ON r.name =
i.restaurant_name`
...and when checking results, just swap LEFT for RIGHT...
SELECT r., i. FROM restaurants r RIGHT JOIN inspections i ON r.name =
i.restaurant_name
This last step is unnecessary when you know to target the 'detail' table in the
FROM clause.
EDIT: The HN comment system is removing the asterisks after r. and i. .
Would just need to add those back in for the queries to work.

       [comment]:
       I like that idea of teaching LEFT JOINs before INNER JOINs...I've always
       done the opposite because that's how I learned it (via some book
       about Microsoft Access) and maybe because INNER JOIN is the default
       kind of join if you use only "JOIN".
       I teach table aliases but only out of necessity when doing nested
       queries...they aren't hard to grasp but I've assumed it to be less of a
       priority when students are still struggling with vanilla SELECT/FROM
       /WHERE. (Also, I learned aliases somewhat late...they didn't seem
       useful until working in a production environment...just as proper
       naming conventions in any language seem like trivia until you have to
       work with someone else).

              [comment]:
              Glad you like the LEFT JOIN idea. Thank you for being open to
              new ideas.
              Regarding table aliases, I understand the reluctance to overload
              your students with too much information, but in my experience
              they really do make writing SQL a lot easier (when coupled with
              an IntelliSense-capable environment such as SSMS).

              Every time a student wants to reference
              a speciﬁc ﬁeld they type one or two letters
              (ideally a name that is easy to remember, so
              if there was an ObjectType table a good alias
              would be OT, for example), a full stop, then
              all the available ﬁelds from that table are
              shown in a list. Nothing else is in that list,
              which makes the decision simpler to make. In
              SSMS, the IntelliSense usually displays
              automatically. Sometimes you experience
              a brief delay from building the cache, but
              manually toggling IntelliSense usually gets
              around this (it can be toggled manually with
              Ctrl + Space, which is an easy shortcut to
              remember).

                                       On a side note, I tend to use the AS
                                       keyword when creating table aliases as
                                       I like making them explicit, perhaps that
                                       habit will also be beneﬁcial to your
                                       students as it's the same keyword used
                                       for renaming ﬁelds in the SELECT clause
                                       also, so in a student's head they can
                                       think of AS as rename.

      [comment]:
      Ironically most programmers I know have no trouble with loops but struggle with SQL. The
      most common SQL error they make is trying to use loops. (RBAR: Row by Agonizing Row)

              [comment]:
              As an amusing anecdote, my friend was working with a _really_ slow query (it took
              literally days to run a query), and their consult/software vendor/whatnot that had
              written the query kept telling that your data is so large/complex that you really
              need to look into big data systems like Hadoop.
              Turns out the SQL query was running on for-loops. With some tinkering my friend
              got rid of the loops, and after that the query run in less than three minutes. No
              more talking about Hadoop there.

              [comment]:
              If a programmer is struggling with SQL in the way you describe, I'd suggest they
              learn how to perform MapReduce in the programming language of their choice.
              That should help give them a better understanding of how to approach SQL. If their
              language doesn't have good support for the MapReduce approach, a quick
              introduction in any functional language should help.

                     [comment]:
                     I teach SQL to students who may have no programming experience at all,
                     unfortunately

                             [comment]:
                             The MapReduce advice was only meant for programmers who had to
                             unlearn imperative programming habits. Non-programmers won't
                             have imperative programming habits to unlearn.

[comment]:
Some of the tables don't work in Safari, but otherwise a good intro.
