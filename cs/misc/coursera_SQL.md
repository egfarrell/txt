coursera SQL

# Data Definition Language (DDL)
	create table, drop table

# Data Manipulation Language (DML)
	select, insert, update, delete

# Core syntax
	Select Attribute1, Attribute2, Attribute3
	From 
        Relation1, Relation2, Relation3
	Where 
        condition

# Self-Join: joining a table to itself
 	select 	s1.SID, s1.sName, s1.GPA, 
 			s2.SID, s2.sName, s2.GPA 
 	from Student s1, Student s2
 	where s1.GPA = s2.GPA and (s1.SID < s2.SID)

    gives unique rows of all students 
    who have the _same_ GPA score

# union, union all, 


# intersect	
	can be rewritten as a self-join with where clause

# difference
	aka minus, aka except	

# 'in', 'not in'
    sub-queries in the where clause:

	select something from Student
	where SID in 
    (select SID from Apply where major is "something")

    can be re-written using a join aswell but!!!! if you're
    selecting back a number that you need to do statistics
    on, then the join may not return exact same as "in"

# 'exists'
	select name from college c1 where
	exists (select * from college c2 where c2.state = c1.state)

# 'all'
	satisfies relationship with all rows in sub query
	select Name from student where 
	GPA >= all (select GPA from student)

# 'any'
    satisfies relationship with at least one row in the
    subquery

# note 
    any or all queries can always be rewritten using the
    'exists' operator


