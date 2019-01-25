.so Tmac.mm-etc
.if t .Newcentury-fonts
.ds QUARTER Fall
.ds YEAR 2017
.ds SUBMIT f17
.INITR* \n[.F]
.SIZE 12 14
.RCS "$Id: syllabus-cmps112.mm,v 1.97 2017-09-26 13:27:29-07 - - $"
.PWD
.URL
.TITLE CMPS-112 Syllabus \*[QUARTER]\~\*[YEAR] \
"Comparative Prog.\& Languages"
.H 1 "General Information"
The generic part of the syllabus contains detailed information
about prohibiting cheating, due dates and times, 
submitting assignments, and verification of the submit.
Read it carefully, as you will be held responsible for it.
.VL 18n
.B=LI "Directory\(::"
The directory
.V= /afs/cats.ucsc.edu/courses/cmps112-wm/
and its subdirectories contain all assignments, handouts,
examples, old exams, etc.
.B=LI "Piazza\(::"
.V= https://piazza.com/
is for questions and discussions that are
appropriate in the classroom or lab section.
.B=LI "Assignments\(::"
All assignments must be submitted electronically and must work
on the IC Linux servers
.=V ( unix.ic )
in order to receive a grade.
Submit programs using the submit command\(::
.VTCODE* 1  "submit cmps112-wm.\*[SUBMIT] ..." 
.B=LI "Due Dates\(::"
Due dates are announced in the
.V= README
files in the course directory and in the newsgroup.
You must frequently check the
.V= README .
.E= "Late submissions or makeups will not be accepted except in case of"
.E= "emergency (illness or injury) requiring a physician's attention."
.B=LI "Cheating\(::"
.E= "Cheating will not be tolerated."
.E= "See the secion on cheating in the generic part of the syllabus."
.B=LI "Grades\(::"
In order to pass the course, 
both the programming component and the testing component will
be taken into consideration.
Failing either component may be cause to fail the course.
Your final grade and narrative evaluation will be based on the
following allocation of points\(::
.DS
.TS
tab(|); l r1 r1 r1 r.
Programming assignments\(:)|4 ×|12% =|48%
Midterm test\(:)|||20%
Final exam during exam week\(:)|||32%
.TE
.DE
The final exam will be 
.E= two
hours long,
during the first two hours of the time slot scheduled by
the registrar.
.H 1 "Course Description from Catalog"
.BR CMPS-112.
.BR "Comparative Programming Languages."
Covers several pro\%gram\%ming languages and compares styles,
philosophy,
and design principles.
Principles underlying declarative, functional,
and object-oriented programming styles are studied.
Students write programs emphasizing each of these techniques.
Prerequisite\(::
CMPS-101 or CMPS-109.
.H 1 "Textbook"
.VTCODE* 0 /afs/cats.ucsc.edu/courses/cmps112-wm/Languages/
.VTCODE* 0 /afs/cats.ucsc.edu/courses/cmps112-wm/Lecture-notes/
.VTCODE* 0 https://www.google.com/
.P
No textbook is explicitly listed for this course.
Tutorials for the various languages we will be discussing
can be found for free on the web.
.H 1 "Syllabus"
The course will follow two parallel tracks,
each occupying about half of the lecture time.
One track will consist of programming language principles and paradigms,
and the other will detail some specific programming languages.
.P
.E= Principles.
The following topics will be covered,
with examples taken from various programming languages.
.ALX \[bu] 0 "" 0 0
.LI
Language design principles.
.LI
Syntax and semantics.
.LI
Data types.
.LI
Expressions, statements, and procedures.
.LI
Abstract data types and modules.
.LI
Object-oriented programming.
.LI
Functional programming.
.LI
Logic programming.
.LI
Parallel programming.
.LE
.P
.E= Practice.
There will be four programming assignments,
each in a different language,
each showing a different programming paradigm\(::
.ALX \[bu] 0 "" 0 0
.LI
A dynamically typed functional language.
.LI
A statically typed functional language.
.LI
A dynamically typed object oriented language.
.LI
A logic language.
.LE
.H 1 "Generic Syllabus"
Also read the generic syllabus in the directory
.V= generic-syllabus/ .
.H 1 "Pair Programming"
You may do pair programming if you choose.
You are responsible for choosing a partner with whom you can work.
Read the guidelines in the directory
.V= pair-programming/ .
.H 1 "Submit checklist"
Carefully read the submit checklist in
.V= submit-checklist/
and make sure you understand how to use 
.V= submit .
All programs will be graded on the files you submit before the
due date.
Programs which work in your directory but not in the submit
directory are not relevant to anything and will not be considered.
.P
.ft BI
Forgetting to submit even a single file
or submitting the wrong version of a file
will have a very
significant negative impact on your grade.
.ft P
.FINISH
