=
@keyIdeas
* Algorithms are step-by-step procedures for completing tasks and exist independent of computers.
* Algorithms can be encoded in programming languages to be executed quickly and reliably on a computer.
* Because algorithms model unjust phenomena in the world, and do so imperfectly, they can reinforce, perpetuate, and amplify those unjust phenomena.
* Algorithm design and implementation is an iterative process that requires both prototyping and evaluation.
* Methods for teaching algorithms have long focused on teaching foundational algorithms, but teaching algorithms critically requires examining how real algorithms are situated in the world. 
=

Throughout this book, we’ve discussed numerous aspects of computing: the difference between design and engineering, the nature of intelligence and information, the history of computers and operating systems, and the major elements of programming languages, including their notations, their decision making features, and their ways of representing information as dta. All of these, while foundational, are all in service of a central idea in computing: *algorithms*{The word algorithm originally came from the name of Persian mathematician Muhammad ibn Musa al-Khwarizmi<berggren86>, who wrote extensively about number systems and algebra in the 8th and 9th centuries. When his work was translated to Latin, his name was translated to "Algorizmi", which the English later changed to "algorism", used to mean "decimal number system". It was this sense that was appropriated by English mathematicians, and eventually Lovelace, who offered its modern usage as "procedure"<essinger14>.}.

Algorithms, in the broadest sense, are simply step by step ways of doing tasks. For example, consider the routine chore of taking out the garbage in a home for pickup. For many people, this task involves the following steps:

1. Gather all of the garbage into the garbage container
2. The the container outside on pickup day
3. Once the garbage container is emptied, bring the garbage container back to its original location.

We might have similar procedures for other routines. For example, each of us likely has an algorithm for how we wake up in the morning, including some combination of eating, dressing, and hygiene. These algorithms become habits, and we follow their steps, with confidence that as long as the conditions are the same--clean clothing, toothpaste, food--the outcome will be the same--we are dressed, clean, and fed.

But algorithms appear in more than just our personal habits. They also appear throughout school. We teach step-by-step algorithms to students in primary school so that they can manually compute addition, subtraction, multiplication, and division problems<carpenter88>. We teach algorithms for balancing chemical equations in chemistry classes<yarroch85>. At the beginning of the school year, we might teach icebreaker games, which are algorithms for efficiently connecting a classroom full of students to share our identities. While we may not call these many skills, procedures, and rules "algorithms," that is indeed what they are.

Of course, today, we most often think of algorithms as something that computers do, or something inside of computers. They are the things that manipulate, transform, and search data; they live in phones, in computers, in smart speakers, in robots, and other devices; they are artificially intelligent, making predictions and recommendations that shape the media we consume and the news we read. And yet, as we have seen throughout this book, the idea that computers execute algorithms is relatively new: for most of history, people have been the ones devising and executing algorithms, passing down procedural knowledge through teaching and apprenticeship. It’s only since Ada Lovelace<essinger14> connected the idea of a calculating machine to the idea of an algorithm in the 19th century that the notion of a computer executing algorithms came to be, and only since the 1950’s that this envisioned future became a reality.

Algorithms then, are not particular to CS, just as information is not particular to information science, and gravity is not particular to physics. What computer science adds to our understanding of algorithms is two things: 

1. _Precise_ ways of expressing and reasoning about algorithms, and 
2. Ways of expressing algorithms in programming languages, so that computers may execute them on our behalf, quickly and reliably. 

The value of the first becomes clear when we try to do the second. And the potential for harm becomes clear when do this translation, and consider what is lost in translating algorithms from human activities full of exceptions, interpretation, and moral judgments to cold, logical, deterministic procedures executed by machines<oneil16>.

In the rest of this chapter, we’ll discuss how CS formalized the idea of algorithms, discriminate between different types of algorithm design and implementation skills, survey some of the foundational algorithms that CS has invented, and then discuss methods for how to teach algorithms and algorithm design.

|Chapter13_Figure02_Sortinglist.png|Several horizontal purple bars and blurry hands trying and failing to put them in a column|CS likes to sort things.|Jessie Huynh [CC0|https://creativecommons.org/publicdomain/zero/1.0/]|

# Searching and Sorting Data

In general, treating algorithms as tacit, casual knowledge is usually sufficient. We don’t necessarily need to write down our bedtime algorithm to remember how to do it. However, writing it down does have benefits: if we were to write down, and post it on the wall near where we get ready, we might be less likely to forget important medication, we might get less distracted by other responsibilities, and we might be able to get ready for bed faster. These potential benefits are the same reasons why computer scientists began working on computer algorithms: by writing down explicit steps for completing common tasks, we might be able to teach machines to do them quickly, reliably, and without error. And by writing them down, we might be able to reason about their steps, finding ways of improving the algorithms.

## Searching
Some of the earliest and simplest algorithms focused on searching and sorting data. For example, consider this algorithm, which we’ll call *position-of*. It takes some number stored a variable named target, and some list of numbers stored in a variable items, and tries to find the first position in the list that matches that number (if it can’t find it, it returns -1, indicating that there is no position with a value that matches):

`python
index = 0
for item in items:
    if item == target
        return index
    index += 1
return -1
`An algorithm we'll call *position-of*, which finds which position the value in `target` is in a list, if any.

This algorithm works by just stepping through each item in the list and checking to see if it is equal to target. To keep track of which position in the list it is, it uses a variable called `index` to remember the position, incrementing it by one after checking each item.

A similar algorithm, which we might call *occurrences-of* might count the number of times the number in target appears:

`python
count = 0
for item in items:
    if item == target
        count += 1
return count
`An algorithm we'll call *occurences-of*, which counts the number of times `target` appears in a list.

This algorithm uses a similar loop, but instead of stopping when it finds a match, it adds one to a variable named `count` to keep track of the number of times the number appeared.

We can use a similar pattern to implement an algorithm we might call *maximum*, which finds the largest number in the list:

`python
max = None
for item in items:
    if item is None or item > max
        max = item
return max
`An algorithm we'll call *maximum*, which finds the largest value in the list, if there are any values.

This also uses a loop, but instead of returning or tallying when there’s a match, this algorithm scans the list from beginning to end and tries to find the largest value in the list. It does this by using a variable `max` to keep track of the largest value it's found so far; if there isn’t a largest value yet, or the next value is larger than the largest one so far, it updates the variable to store the largest value.

What if we had two lists and wanted to see if they have any values in common? We could implement algorithm we might call *intersecting*, which takes two lists, list1 and list2:

`python
for item1 in list1:
    for item2 in list2:   
        if(item1 == item2)
            return True
return False
`An algorithm we'll call *intersecting*, which determines if two lists have a value in common.

This algorithm is different from the others in that it uses two loops, one inside the other. The first is responsible for going through the items in the first list. And then, for each item in the first list, it searches the second list to see if there’s a matching item. If there is, it returns true. If it goes through every item in the first list, and compares each of those items to every item in the second list, and none of them are equal, then those two loops will finish and the algorithm will return false.

These various abstract examples show that even a basic pattern of stepping through the items in the list can accomplish very different tasks, depending on how variables are used and what kind of conditions are tested. You can also see how many of the most basic features in software applications--counting things and searching for things--only require the very basic combination of a few programming language features to achieve.

# Sorting

Of course, none of the algorithms above are used in a vacuum; they all are used for some purpose, and those purposes can vary in their utility and their potential for harm. To explore this, let’s consider a more complex class of algorithms frequently explored in CS: sorting, which is about taking sets of data and putting them in some kind of order. We’ll consider this in the context of schools: imagine a learning management system has a gradebook, with a list of students in rows and a series of columns representing some homework assignment. Each cell in this grid is a grade, representing a summative assessment of student work. Already, this particular data structure comes with the potential for injustice that we’ve described in the [Data Structures|data] chapter, with the reductionist ways that it represents student knowledge. However, here we’ll consider one seemingly innocuous aspect of this gradebook: the order in which the students appear.

The ordering of students might not seem like a problem at all. Alphabetical, A-Z by family sorting is ubiquitous, conventional, and perhaps even expected. But when we consider the algorithm by which the gradebook does this ordering, we realize that this ubiquitous convention is full of questionable assumptions. Consider this basic algorithm, which takes as input a list of `students`:

`pseudocode
until not swapped
  swapped = false
  for each s in students
    if family name of student before s > family name of s
      swap s and student before s
      swapped = true
`The bubble sort algorithm, applied to a list of student family names.

The behavior of this algorithm becomes visible when we test it with an example list of names; each line below represents one loop of the `until` above:

* `[Smith, Jackson, Lee]` Start of 1st pass; two swaps, so `swapped` is true
* `[Jackson, Lee, Smith]` Start of 2nd pass; no swaps, so `swapped` is false
* `[Jackson, Lee, Smith]` Start of 3rd pass; `swapped` is false, so done

This algorithm, which is called *bubble sort* (for the way that out of order elements slowly "bubble up" to their right position), uses a fairly simple approach: it scans the list of students, swapping any students that are out of order based on their family names, and does this repeatedly until it finishes a complete scan of the list in which no students were out of order. It uses the `swapped` variable to remember if any students in the list were `swapped` on a given pass. This basic algorithm is something that any person could follow mechanically, much like they follow arithmetic steps for addition (e.g., summing digits, carrying numbers, moving from right to left). Sorting a list of names using these steps might take a person a few minutes. The key insight in CS is that by being precise about these steps, as the algorithm above does, we can have a computer execute the steps quickly and without error. In fact, on a modern computer, the sorting algorithm above could sort a list of 30 student names in less than 10 milliseconds, tens of thousands of times faster than a person.

But what if there were 100,000 names? For example, some school districts have hundreds of thousands of students, and may have a list of grades for every student. This is where bubble sort starts to become a problem: because it does so many comparisons, it can be quite slow for larger lists. In fact, with a little bit of mathematical proof, we can show (but will not show here) that the speed of bubble sort is _O(n^2^)_, a notation that computer scientists use to indicate that the speed of an algorithm is proportional to the square of the number of operations it completes. That means that while a list of 30 students might require 30x30=900 comparisons, operating on a list of 100,000 students might require 100,000 x 100,000=100 million comparisons. If we imagine each comparison taking 1 millisecond, 30 students would take less than a second, but 100,000 students would take more than a full 24 hour day. As fast as computers are, that is simply not fast enough to be useful. And so computer scientists have spent decades inventing faster sorting algorithms, such as *insertion sort*, *quick sort*, *merge sort*, and *selection sort*, each a little bit faster than bubble sort<cormen01>.

While *efficiency* is a classic consideration of algorithms in CS, it is not the only important consideration. Let’s analyze it from a different perspective: *inclusion*. Consider, for example, the family name, otherwise called a "last name" or "surname". What counts as one? For people with a European or Western heritage, this might be straightforward, as most people in Western countries have a single family name spelled with letters from the Roman alphabet<hey06>. But exceptions are not hard to identify. For example, what if another student in our example above has a hyphenated name, such as "Jackson-Bowles". In this case, what comes first, "Jackson-Bowles'' or "Jackson"? And what if a student has an umlaut, such as "Jöhanson"? Is the "o" treated the same as an "ö" or differently, and if so, how should they be ordered? Or perhaps the student has a Spanish compound name, such as "Sonsoles Espinosa Díaz de Rodríguez''. Which of those names is the surname--all of them or just one of them, or perhaps just the shortest valid version, "Sonsoles de Rodríguez"? And then, of course, there are students with Eastern surnames, such as 高, which is the Chinese character for "tall", and the first author’s surname, rendered in Chinese. When the first author’s grandfather emigrated to the United States via Los Angeles, he spoke this name in his Cantonese dialect and the border official heard "Ko". Today, however, the official Mandarin transliteration to Roman characters is "Gao". So should 高 be treated as a "g" surname or a "k" surname? Or perhaps the sorting order should sort Eastern characters differently, translating European names into Chinese, Korean, or Vietnamese, or just placing Western names at the end of the list?

We can further question the choice of surname for sorting altogether. Why not sort by given name, since that is what teachers use to address students? Or, we can consider the potential harms of sorting, for example, biasing teachers toward attending to students at the beginning or end of the list, giving their full attention to grading students at the top of the least, leaving those at the end to subject to a teacher’s grading fatigue. We could also question the value of sorting altogether: the likely goal of sorting is to facilitate visual indexing, helping a teacher to find a student of interest. Why not organize the students by their faces in a dynamic collection of headshots, with sizes varying by who’s received the least attention recently?

These considerations question the algorithm by questioning the problem that it presumes to solve, rather than questioning the algorithm itself. And while sorting a list in a gradebook might have modest implications, it’s easy to imagine different contexts in which sorting students by their identities becomes problematic: the order in which parent-teacher meetings happen might disadvantage those at the end of the list; the order might determine whose names are most frequently seen in the gradebook, with those at the top being seen every day, and those later in the last only seen when a teacher scrolls down. Names, as it turns out, are prone to many kinds of bias, with those appearing earlier in lists getting measurable advantages as voting ballots<wood11>, citations in academic publications<stevens18>, and academic success<einav06>. Devising a sorting algorithm to order a list of students by name, therefore, is no simple task.

Of course, all of the considerations above still have nothing to do with computers. All of the same issues would apply, for example, if we stepped back into the pre-digital era in the 1950’s with paper gradebooks: the difference was that teachers were making the judgement of how to order students in the list. With the computer-based gradebooks of today, the decision of how to order students is no longer the teachers’, but that of software designers and developers, writing some code, and making choices about how to order students. These choices, which may be done without consultation with any teachers, are done privately, meaning that no one can inspect the logic used to order students; they are made uniformly for all teachers of the school with no ability to control the ordering without advocating to the private company. And then, because the developer is writing instructions to be later executed, the decision about how to order students is ultimately made by an algorithm, without consideration for the specific students in the class, the rich diversity of their names, and the implications of a particular ordering in the social context of the classroom. The algorithm, executed automatically, frees the teacher from having to do the labor of re-sorting students every time a student joins or leaves a class, but at the expense of their agency in determining the semantics of that ordering. Algorithms, thus, are rich with value judgements, even when considered outside the context of a computer executing them, but the implementation of algorithms as code, executed on a computer,  is full of value judgements as well.

|Chapter13_Figure03_Efficiency_Ethics.png|A man in front of a laptop pondering markets on the left and people on the right.|Designing algorithms is social _and_ technical.|Jessie Huynh [CC0|https://creativecommons.org/publicdomain/zero/1.0/]|

# Algorithm Design and Implementation

The example above demonstrates that devising algorithms is rarely straightforward, even when computer scientists have already invented an algorithm for a particular computational problem. One facet of this difficulty is deciding what an algorithm should do. As we discussed in the [CS & Design|design] chapter, design is an iterative and often creative process of understanding a problem in the world, and then imagining solutions that might address that problem. To illustrate this process in the context of algorithm design, imagine a learning management system (LMS) company that wants to help teachers "proactively identify students who might be struggling." A designer has to consider many things about this problem:

* What does it mean for a student to be "struggling"?
* What if the computer misidentifies "struggle"?
* Who does the computer notify about "struggling"?
* What types of surveillance does the computer have to do to notice "struggling", and how is that different from the monitoring of learning that a teacher does?
* Do teachers actually need help identifying "struggling" students? What kind?

Note that all of these questions are about the nature of teaching and learning, and the social role of the LMS in the classroom, and not really at all about technical considerations such as the procedure by which the struggling might be detected. Designing algorithms, just as with any design, requires a careful consideration of the nature of a problem before trying to develop solutions to it. Unfortunately, computer scientists are generally not educated to ask these questions critically before they identify solutions; instead, they are trained to build something that is technically efficient and sound, but not necessarily socially or ethically sound, with considerations to implications on people in the world.

Suppose we answered the above questions, and wanted to begin imagining algorithms that could detect struggling. The creative process of algorithm design requires brainstorming, prototyping, and evaluation, and iteration. For example, let’s start with the idea of detecting struggle by noticing _inactivity_ and _poor grades_: the algorithm could watch for missing submissions in the gradebook and grades that were a standard deviation below the average, then highlight the student in the gradebook, bringing them to the teachers’ attention. Let’s evaluate this brief written sketch for how well it addresses the problem:

* How good of an indicator are _inactivity_ and low grades of struggle? Might those indicate other things, like illness, depression, and instability at home?
* How often would these indicators lead to "false negatives," where a student is struggling, but these indicators don’t reveal that struggle, and so the LMS doesn’t notice?
* Will teachers notice a highlight in the LMS?
* Would teachers become dependent on the highlights, and lower their vigilance towards other indicators of struggle?
* Would this provide any information that teachers don’t already have?
* Do these indicators have any racial, gender, or disability bias that might make them systematically highlight certain groups of students over others?

We could take this feedback, revise our algorithm, and continue iterating until we were confident that we had an idea that would ultimately help. A good designer might continue for some time, understanding the implications of a design idea, and perhaps even abandon a project if it seemed like the idea might do more harm than good. However, because algorithm design often occurs in the context of for-profit businesses driven by sales and marketing, not by design, companies usually advance products independent of their social impacts.

Algorithm design skills are therefore not only about creatively devising the precise technical details about algorithms, but also skills in analyzing algorithm ideas against the context in which they would be used, reframing the problems that algorithms claim to "solve," and iteratively imagining alternative algorithms that avoid any issues found in analysis. These are all skills that require time, patience, and practice, and that many software engineers are never taught or asked to do.

Let’s imagine that after much iteration in design, we arrived at this simple algorithm: the LMS looks for sequences of multiple missing assignments within a two week period, and sends an email to the teacher highlighting the sequence of missed assignments, suggesting they check in with the student if they don’t already know what’s up. Imagine that the design process found that this lightweight check was accurate enough, simple to understand by teachers, and might help teachers notice some students who are falling behind that they might not notice otherwise, without making them too dependent on the limited, proactive checks.

Algorithm *implementation*, in contrast to design, is the process of writing code to automate this algorithm as code. What programmers usually find in the process is that the design, as envisioned, can’t be perfectly expressed as code, and that they have to make choices to simplify handling of *edge cases*--situations that cannot be easily handled by an algorithm’s approach to handling common cases. Consider, for example, this pseudocode--a term that refers to an implementation of an algorithm written as relatively formal natural language, rather than a specific programming language--of the design above:

`pseudocode
each morning at 5 am
  for each student s
    if the number of assignments due in the past 2 weeks with no submission by s >= 3
      email the teacher: "We noticed that " + (full name of s) +
        " has not submitted 3 or more assignments in the last two weeks. " + 
        " If you don’t know why this might be, perhaps check in on them?"
`A draft of an algorithm, in pseudocode

In the process of translation the algorithm design idea to pseudocode, we’ve had to make a few crucial decisions:

* _When are the emails sent?_ This programmer chose 5 am every day. Is that a reasonable frequency? Including the weekends?
* _What counts as a missing assignment?_ This programmer defined it as an assignment with a due date in the past two weeks with no submission.
* _What text does the email contain?_ This programmer kept it extremely brief, and made particular choices about tone (e.g., using the word "we", which vaguely refers to the LMS, or perhaps the software team).

In the process, the programmer also noticed a few other possible behaviors that may not have been intended by the designer:

* Should this be sent every day of the week, even weekends?
* Should this be sent for the same student every day, for as long as they have missing assignments in this two week window, even after the teacher checks in?
* What if multiple students meet this condition, or a due date is wrong, and an entire class meets this condition? Should the LMS still send dozens of emails to the teacher?
* Should there be a way to disable these notifications? For all students, or for specific students?
* Should this happen the two weeks after the end of the school year?

Writing this implementation of the algorithm, then, surfaced new design considerations. A design-minded programmer would bring these back to the design experts, asking them to make informed choices, perhaps by consulting with teachers directly about the implications of these choices. However, if the programmer does not realize that these implications might occur, or does not realize that designers might be better suited toward making these decisions, they might just decide unilaterally and ship the LMS feature, without consulting stakeholders at all.

Of course, even if a programmer does consult with designers, and designers do consult with teachers, it’s not necessarily the case that any of these individuals will anticipate all of the unintended consequences of the design that arise from edge cases. Consider, for example, a student that has been struggling with a new bipolar II diagnosis, with debilitating depression, nights of mania, months destabilizing medication trials, and social stigma from the new diagnosis. Their parents know, but they haven’t told the school out of stigma; the student has told their friends but not the teacher. The student hasn’t submitted assignments for the past two weeks, and the teacher receives the automatically generated email. Concerned, they talk to the student after class to see if anything is wrong, and the student lies to avoid stigma, saying they’ve been sick and they’re catching up. They do, but because they haven’t caught up yet, the system keeps sending emails to the teacher, but since the teacher thinks they’ve checked in adequately, they get in the habit of just deleting the emails it keeps sending. Eventually, the student catches up to be outside the algorithms window, the emails stop, and the teacher stops worrying about the student. They ultimately forget about the incident until the parent-teacher conference, when they review the student’s record, and notice the chronic lateness, and raise it with the parent at the meeting. The parents disclose the diagnosis, and the teacher realizes that she put too much faith in the LMS to notice "struggle" and should have been checking in more directly with the student.

Would a programmer imagine this edge case? Would a designer? Would a teacher, when consulted about the hypothetical impacts of this algorithm? And is this scenario better than a world in which there was no algorithm helping the algorithm monitor students’ submissions? Ultimately, all algorithms, even simple ones like the above, when implemented on a computer, are a way of delegating tasks to a computer. In every case, we should imaginatively and inclusively consider the implications of delegating that work to something with so little intelligence and context. Edge cases, therefore, are not merely a technical term for some exceptions for algorithms to consider, but rather the inevitable fact of diversity: people on the margins, if not designed explicitly into an algorithm core behavior, will be ignored, and likely underserved or even oppressed by its actions.

|Chapter13_Figure04_Algorithms.png|Fourth, all engaged in different activities, one sorting, one analyzing text, one scanning a map, one querying data.|Common problems and common solutions (with unintended consequences).|Jessie Huynh [CC0|https://creativecommons.org/publicdomain/zero/1.0/]|

# Canonical Algorithms

Thus far in this chapter, we’ve focused on algorithms that are situated in the specific social context of school. Algorithms in CS, however, are often studied in isolation from specific social contexts. For example, the first algorithm we discussed earlier, _bubble sort_, was one instance of a class of sorting algorithms, each of which takes as input some list of elements, some way of comparing elements, and produces a list that orders the elements according to the method of comparison. All of these algorithms are canonical in that they were some of the first algorithms to be invented and studied in the abstract, independent of society; they are also canonical in that they are frequently useful and necessary for implementing other algorithms, as sorting data arises so frequently in the world.

Sorting is just one class of canonical algorithms. Others include:

* *Searching*. Algorithms for searching lists, trees, and other data structures for particular data (e.g., to implement search and filtering features found in modern software).
* *Pathfinding*. Algorithms for finding paths through networks of nodes and edges (e.g., to find directions while driving, and find potential new friends on a social media platform).
* *Parsing*. Algorithms for parsing text (e.g., to translate code in to machine instructions or find patterns in text).

Because these algorithms are so ubiquitous, they have been studied heavily. However, as with sorting, the focus of this study has primarily been on how _efficient_ they are: how quickly algorithms of each kind can compute something and how much computer memory they require to compute something. Efficiency is clearly important: if it took two weeks to get a Google Search result or a route from work to home on Google Maps, we wouldn’t find these services nearly as useful, because they would be slower than going to the library or asking someone for directions. The algorithms above enable computers to be faster than humans at many tasks, which is what makes us willing to replace human labor with computer labor.

However, efficiency is not the only important consideration when evaluating these canonical algorithms. Each of these canonical algorithms make particular assumptions about the world, which has consequences when they are wrong:

* *Sorting*. These algorithms, as we noted earlier in this chapter, embrace the assumption that everything can be ordered, promoting ideas such as ranking and winning. Of course, not everything can or should be ordered. For example, sorting algorithms can be used to compute who is the "best" student in a class, but should they? By making sorting fast and easy, we are increasing the prevalence of such sorting.

* *Searching*. These algorithms embrace the assumption that the information being searched is all the information to be found and that it is organized in a way that will make it findable. Of course, this is rarely the case. Google doesn’t have all of the world’s information, and it isn’t always organized in ways that make it discoverable. In fact, Google has racially biased information, and different choices of queries can produce racially based results<noble18>.

* *Pathfinding*. These algorithms make the assumption that only valid paths are those that are encoded in data, and often emphasize shortest paths. But these things are often not true: taking a walk to school through unmapped back woods might bring peace and tranquility; taking the longer path home from school might promote mindfulness.

* *Parsing*. These algorithms assume that there is structure to text, and in fact require structure to make it work. But human use of language is rarely so formal; this leads computers to only productively engage with text that has such structure, erasing creative, unconventional uses of language that deviate from parsing rules.

A central question in CS education is whether students should learn these canonical algorithms: how they work, how efficient they are, and what kinds of problems they can be  used to solve. One argument is that because they are so ubiquitous, everyone that writes software should know them; another argument is that while most software uses them to write software, students don’t necessarily need to know how they work; a third argument, and the one we imply here, is that everyone should know how they work because they are the basis for the many ways that algorithms and data oppress: one cannot critique and resist algorithms that one does not understand.

Whether it is algorithms designed for a particular problem, or canonical algorithms emerging from CS foundations, the same basic pattern of algorithm design, algorithm implementation, and unintended consequences has played out over and over since we began automating algorithms digitally. Someone imagined the benefits of automating shift work scheduling, implemented it without consulting affected communities, and inadvertently caused single mothers to never see their children<oneil16>. Google thought it would be a good idea to apply face recognition discriminating between people and animals, implemented it without testing it on a diversity of faces, and ended up [classifying Black people|https://www.theverge.com/2018/1/12/16882408/google-racist-gorillas-photo-recognition-algorithm-ai] in photos as gorillas. Over and over, algorithm designers make the same mistake of meticulously analyzing algorithms for their overall correctness, efficiency, and accuracy, but overlooking the impact on the margins of diversity. And the public, still enamored with the power of algorithms to automate human tasks, freely delegate critical human activities to algorithms, in the hopes of saving some time, but often at the expense of justice. Understanding algorithms from these perspectives not only gives us a greater appreciation for their power, but also their peril.

|Chapter13_Figure05_Steps.png|A group of students at the foot of purple stair steps that a teacher is beginning to climb.|Talking about steps.|Jessie Huynh [CC0|https://creativecommons.org/publicdomain/zero/1.0/]|

# Teaching Algorithms

Because algorithms are so ubiquitous in life, both conceptually and technically in the software that we use, there are many ways to engage students in understanding them. We’ll discuss some of the dominant methods here, along with their limitations, and then present an alternative to these methods that centers values, bias, and society.

## Algorithms as Canon

Perhaps the most common approach to teaching algorithms is as a canon: students in higher education CS courses, including [AP CS A|https://apstudents.collegeboard.org/courses/ap-computer-science-a], will often learn the specific differences between sorting and searching algorithms, study their efficiency characteristics, and practice re-implementing them<skiena20>. This method centers mastery of key discoveries in CS, while also offering programming practice, and creates a sense of membership in the CS community, where most members had to learn the same ideas. And for some students, especially those who might go on to become professional software developers, knowing this canon can be an important foundation for engineering robust, scalable software systems.

Learning algorithms in this way, however, is hard. Students demonstrate an abundance of misconceptions about how canonical algorithms behave<danielsiek12>, including difficulties with data structures and how canonical algorithms manipulate them. Teaching algorithms in the abstract (or with lightweight problem contexts, such as situating search algorithms in a specific problem domain), can make algorithms feel separate from the world. The result is that students often struggle to develop self-efficacy with algorithms, especially with algorithm design and analysis<toma18>.

Some methods, such as those in the [CS Unplugged|https://csunplugged.org] family, try to address issues of self-efficacy by literally embodying the behavior of an algorithm<nishida09>. The basic concept of these methods is to have individual students work together to mimic the behavior of an algorithm with their physical bodies. For example, in a sorting algorithm, a set of students might arrange themselves in a line to represent a list, each student one data element in the list. Another student might play the role of an index counter variable, tracking where in the list the algorithm is. Another student might represent the role of the comparator, deciding if two values are out of order. These methods can be engaging ways of visualizing algorithm behavior, but some evidence suggests that the older students are, the more awkward they might find the physical interaction with their peers, and the less likely they are to view these visualization activities as authentic practice<feaster11>. Other results with middle school students suggest that the physical embodiment involved is hard for students to link to the substantially different representations of algorithms they find in code, and that they actually decreased students’ desire to further study CS<taub12>.

## Algorithms as Infrastructure

While teaching the canon of algorithms can be valuable to some students, there are many reasons not to: post-secondary CS curriculum already teaches the canon, and even students who might become software developers will rarely implement the canonical algorithms, instead reusing implementations that someone has already carefully built. Perhaps more critically, however, spending significant time teaching students to understand algorithms that have already been invented takes time away from the very different challenges of designing algorithms to solve problems in the world, and evaluating how well algorithms might solve problems. These are just as, if not more important to students who eventually pursue CS careers, but also critically important to those who won’t, as critically evaluating the quality of algorithms is something everyone that interacts with computers must do.

Teaching people about algorithms, especially as they relate to society, poses different challenges than a purely technical approach. For example, one study that taught several adults from historically marginalized groups in the United States about algorithmic fairness elicited fear of harm, mistrust in companies, and even a sense of existential threat about racial injustice and economic inequality<woodruff18>. Thus, while teaching algorithms as a canon poses comprehension and transfer challenges, teaching algorithms as designed phenomena may raise questions about identity, power, and justice.

## Unit Plan: The YouTube Rabbit Hole

In this example unit plan, we attempt to balance the two methods above, alternating between technical and social perspectives on algorithms, and evaluative and creative stances toward algorithms. It does so in the context of recommendation algorithms found in popular social media sites, especially YouTube, as for many youth, YouTube is a central part of their media consumption and social sharing. 

The unit’s learning objectives are as follows:

1. Students will be able to accurately comprehend the behavior of an algorithm that uses variables, control structures, and logic.
2. Students will be able to evaluate an algorithm’s correctness, efficiency, and unintended consequences.
3. Students will be able to imagine how an algorithm might be reused in other settings.

The first lesson begins by examining the domain of YouTube video viewing, building off of students’ lived experience as YouTube consumers.

=
### Session 1: YouTube recommendations

* Begin the session by opening YouTube.com while not logged in, showing the videos that YouTube recommends to new users.

* Solicit students’ YouTube watching habits. What do they like to watch? How do they use YouTube’s recommendations? How do they share on YouTube? How much YouTube do they watch per day? Capture the diversity of habits in a shared, publicly visible space, so that students can see the diversity.

* Select an appropriate short video to watch, and then bring attention to the recommendations. Ask students to speculate about how YouTube decides what videos to recommend. Capture the diverse theories.

* Present a simplified version of a YouTube recommendation algorithm in pseudocode, and describe it as a simplification of how YouTube’s algorithm actually works. For example, here is a hypothetical JavaScript function:

`python
def getRecommendations(currentVideo) 
  videos = getAllVideos()
    for video in videos
      # Similarity between 0 and 1
      titleRelevance = getSimilarity(currentVideo.title, video.title)
      # Popularity between 0 and 1
      popularity = getPopularity(currentVideo.title)
      # View likelihood between 0 and 1
      viewLikelihood = getViewLikelihood(currentVideo, video)
      # Ad revenue between 0 and 1, where 1 is most
      adRevenue = getPredictedAdRevenue(video)
      # Compute an interest prediction between 0 and 1
      video.interest = 0.1 * titleRelevance + 
                       0.4 * popularity + 
                       0.2 * viewLikelihood +
                       0.3 * adRevenue
  if video.viewed
    video.interest = 0
  # Sort videos by increasing interest, then reverse it.
  videos.sort(video -> video.interest).reverse()
  # Return the top three videos
  return videos[0:2]
`A hypothetical JavaScript example of video recommendations.

* Step through with an example in a CS Unplugged manner, tracing the code to explain the logic of each of its steps, nominating students to represent a list of videos, each of the functions called. Solicit questions, pose questions, or think-pair-share each line to assess comprehension.
* End class by posing a question: who wrote this at Google and why? Surface the different beliefs, reinforcing that a person wrote it to solve a particular problem. What problem?
=

This first session makes a major pivot, shifting students’ perspectives from YouTube passive consumer to active consumer. Students should leave class wondering if this is how YouTube really works and wondering what additional factors YouTube might consider.
The next session builds on this by examining the algorithm's potential impacts on students’ lives by critically analyzing its behavior.

=
### Session 2: Examine recommendation bias

* Bring up the algorithm discussed in the first session, and remind students of it’s behavior by more quickly tracing through its logic.

* Open debate about the algorithm’s potential strengths and weaknesses by presenting a critique of the algorithm (e.g., it doesn’t account for how long someone has been watching; maybe it shouldn’t recommend anything if someone has been binging for two hours late at night).

* Begin a snowball discussion in pairs, prompting students to generate their own critiques in their groups, then joining with other groups, having students write down their critiques as they generate them.

* Once the class has reunited, solicit students’ most salient critiques and write them down in a shared space.

* Reflecting on the collection of critiques, pose the question: who does the algorithm serve? Who benefits and who is harmed? Remind students of who created it and why, raising the role of advertisements as YouTube’s primary source of revenue.

* Ask the class to abstract: what values does YouTube’s algorithm serve? (e.g., profit, entertainment).

* Return to the class’s critiques and ask what values underlie the students’ critiques (e.g., values such as wellness, surprise, connection might emerge).
=

This second session once again shifts students’ perspective, from active consumer to critic, challenging them to analyze the algorithm’s potential harms, underlying values, and how those values may not align with their own values. The next session once again shifts students’ roles, this time positioning them as designers.

=
### Session 3: Redesigning recommendations

* Ask students to bring out their list of values, and choose a single most important value that they wish the YouTube algorithm expressed.

* *Formative assessment*. Organize the class into teams based on their value priority, ensuring teams no larger than three. For example, there might be teams that focus on health and wellness, teams that focus on surprise, or teams that focus on laughter. If a team chooses YouTube’s value of profit, challenge the team to improve upon how the algorithm tries to achieve that value. Negotiate how teams will report their progress.
    ** This is _responsive_ in that the assessment centers students’ own values.
    ** This is _participatory_ in that students shape how they’ll present their work.
    ** This is _educative_ in that students will see how a diversity of values shape algorithms in different ways.

* Prompt each team to analyze their chosen value and try to think of a way of quantifying that value based on YouTube video metadata and watching behavior, or changing the logic of the algorithm in some other way. As they brainstorm, someone should capture notes about the ideas. As they develop ideas, encourage them to act out their algorithms with their bodies, prototyping the logic to test it.

* Have each team report out their current idea using the format agreed upon, giving students’ a sense of the diversity of values that teams are addressing and how they might change the algorithm to reflect it.
=

After this session, students should recognize that the algorithm could be designed to do anything, and that all that would be required to change it is an idea, and some different code. This should give students a sense of agency, but also a sense that algorithms reflect their designers’ values. The next session shifts students’ perspectives again, having them take the role of an engineer, charged with expressing the redesign as code.

=
### Session 4: Revising the recommendations

* Ask the students to bring out their notes from their redesigned algorithm, and remind themselves with their idea.

* Provide the recommendation code discussed in the first session, and prompt students to revise its logic to reflect their redesign. What needs to be removed? What needs to be changed? What needs to be added? They should make edits directly on their copy of the algorithm, asking for guidance when they need help expressing their idea.

* When teams arrive at a revision, prompt them to analyze its correctness. Just as you traced the algorithm in the first session, they should trace through its logic, verifying that it does what they intend, line by line. If it does not, they should revise and test again.

* Before the end of the session, have students reflect: what was hard about expressing their values as code? Reinforce that most of the difficulties they faced are not due to their limitations, but rather the limitations of code.
=

After this session, students should see that values are hard to express in code, especially in ways that retain the nuance and complexity of their values. This should temper students’ agency, showing them that while they can revise algorithms, they may not be able to fully express their values in code.

=
### Session 5: Unintended consequences

* Prompt teams to prepare to present their revised algorithms to the class, showing the code that they changed, and tracing through an example.

* After teams are ready, begin presentations, prompting the audience to identify the consequences of the team’s redesign, both intended and unintended: what would happen if this is how YouTube worked? As teams identify them, write them down in a shared space, accumulating a list of unintended consequences.

* After presentations, review the list of unintended consequences, noting that it’s possible to write code that does what is intended, but still has unintended consequences in the world.
=

After this session, students should understand that the role of a designer and engineer is powerful, but also full of implications that cannot be easily observed without getting feedback from stakeholders. In the last session, students shift back to consumers, and consider the broader role of algorithms in the world.

=
### Session 6: Algorithms and responsibility

* Recap the YouTube example, reminding students that algorithms are designed with particular values in mind, that code cannot always capture those values perfectly, and that even expressing one’s values perfectly in code can have unintended consequences in people’s lives.

* Give other examples of algorithms with consequences (e.g., Facebook recommending misinformation, Twitter amplifying cyberbullying, loan eligibility decisions, etc.).

* *Summative assessment*. Pose two questions: 1) are algorithm designers responsible for the algorithms they design?, 2) should there be laws that enforce consequences for algorithm designers? Discuss with students how they would like to convey their opinion (writing, presentations, etc.), and discuss a rubric for evaluating them. Encourage students to discuss their arguments with their peers as they develop them.
    ** This is _responsive_ in that the assessment centers students’ own position on this ethical issue.
    ** This is _participatory_ in that students shape how they will present their work.
    ** This is _educative_ in that students will have to present their arguments with peers to help develop them, anticipating opposing viewpoints.

* Run the presentations as negotiated.

* End the session and unit by reminding students that in a democracy, these decisions are collective ones, shared amongst everyone who votes, but also the companies that apply pressure to voters and politicians to preserve capitalist gains as the primary value.
=

By shifting students’ perspectives each day, students’ critical consciousness of algorithms as designed artifacts should improve, helping them see the impact of algorithms on their lives, but also the opportunities for changing the behavior of algorithms to achieve a diversity of goals. Embedded in these activities are more conventional CS learning activities, including learning how to trace an algorithm’s behavior to comprehend or test it, how to translate an algorithmic idea into code, and how to examine potential unintended consequences through feedback.

The limitations of this method are clear relative to teaching the algorithm canon: students will not learn about canonical algorithms, will not struggle through their technical implementation, and will not learn to formally analyze algorithm correctness or efficiency. It trades these learning objectives for a broader literacy that is hopefully more pertinent to students who will interact with algorithms every day, but likely not be engaged in designing or implementing them.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaIC
@csta3AIC26
@cstaAP
@csta3AAP15
@csta3BAP15
@csta3BAP10
@csta3BAP11

@toleranceHeader
@toleranceJustice
@tolerance14
@toleranceAction
@tolerance20

@teacherHeader
@teacher1
@teacher1a
@teacher1d
@teacher1e
@teacher1f
@teacher3
@teacher3b
@teacher5
@teacher5a
@teacher5c
@teacher5d
@teacher5e