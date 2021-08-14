=
@keyIdeas
* Many people program, not just professional software developers.
* Programming consists of many distinct activities--design, planning, reuse, implementation, verification, debugging--each with their own challenges.
* Orchestrating these activities requires self-regulated problem skills that many programmers lack.
* The many challenges encountered in programming often leaves little room for critical reflection on the role of code in injustice; slowing down can make room.
* Teaching programming as a skill requires several challenging decisions; teaching it as a means to critical consciousness can relax these constraints.
=

Throughout this book, we have talked about computation, computers, and code as if they simply exist in the world, fully formed and full of power and bias. Of course, nothing could be further from reality: all computation, all computers, and all code exist because people create them. And most of the work involved in creating code and computation is what we call *programming*<blackwell02> (or *coding*), which we can define simply as writing and revising instructions that control what a computer will do in response to input in the future. Each of the words in this definition is key:

* Programming is _writing_, in that it is authored, by a person, with some intent. 
* Programming is _revising_ in that the first drafts of a program rarely do exactly what someone intends.
* Programming involves writing _instructions_ as we’ve defined them in previous chapters, though those instructions can be of varying levels of abstraction, from low-level machine instructions to high-level programming language statements.
* Most programs respond to _input_, in that their behavior is partially determined by the data they are provided. 
* And programs are ultimately concerned with what computers will do in the _future_, in that writing a program isn’t about what a computer is doing now (unlike with most modern graphical user interfaces, which respond immediately to input), but what it will do later, when the program is executed.

Programming, then, unlike most of the concepts we’ve discussed thus far in the book, is not so much a technical idea, but rather a creative human activity that draws upon and is constrained by the ideas in computer science. Throughout the rest of this chapter, we’ll discuss who engages in programming and why, then deconstruct the key activities and skills necessary for successful programming of these various kinds. We will then turn to one teaching method for developing these skills through targeted scaffolding of self-regulation, while centering the responsibility of programmers as they make.

|question.jpg|TODO|Something that conveys a diversity of people creating a diversity of things, but all with the same tool. For example, someone making music with code, someone playing with code, someone teaching with code, someone analyzing data with code, someone making code to sell.|TODO|<

# Who codes?

Because programming is something that people do, it is important to convey the diversity of people that do it. The stereotype one might first think of is a *professional software developer*. Developers (for short) might work for a for-profit organization, programming for pay, to create software that others will either buy a license to, or use as a service on a website. Many imagine developers programming all day (and maybe all night), fully absorbed in their world of code. Of course, developers in these settings do some of this, but because they work on teams, they also collaborate with other developers and coordinate with designers, managers, and other experts who aren’t programming for pay. They are people like anyone else; they are just writing code for work rather than building bridges, writing marketing plans, or teaching students. "Developers", therefore, are not something that people are born to do, but rather a role that someone learns and pursues.

But developers aren’t the only people who program<ko11b>. In fact, a radical diversity of people have begun to use code as a means to all kinds of work, play, and creative expression:

* Children code, using languages like [Scratch|https://scratch.mit.edu], and an increasing variety of programmable toys<clarkemidura19>; parents, guardians, and teachers often engage youth in this play, sometimes with questionable motives about "future-proofing" young children’s career prospects.
* Teachers, accountants, and various kinds of information workers code, often using spreadsheet languages like [Excel|https://www.microsoft.com/en-us/microsoft-365/excel] to organize data and calculate grades and other learning analytics<nardi93>.
* Musicians code, often using languages like [EarSketch|https://earsketch.gatech.edu/landing/#/] and [Sonic Pi|https://sonic-pi.net] to generate electronic music in real-time live performances<magnusson11>.
* Artists code, often using languages like [Processing|https://processing.org] to computationally create interactive and dynamic visual art<pearson11>.
* Scientists code, often to analyze data using languages like [Matlab|https://www.mathworks.com/products/matlab.html], [R|https://www.r-project.org], or [Python|https://www.python.org]. For example, oceanographers have installed sensors across coastlines, gathering large amounts of data about water temperature, waves, and wind, and use code to build models of global warming<thomson14>.
* Anyone who buys smart home devices like doorbells, thermostat, or other "Internet of Things" devices probably codes in small ways to configure the device to fit their schedule, preferences, and lifestyle<blackwell01>.

These examples are only a small representation of the countless other kinds of programming activity engaged in by hundreds of millions of people using code for work and play<scaffidi05>. Programming is therefore far from a niche, expert activity of professional developers at technology companies, but a universal skill like reading, writing, and arithmetic.

While programming is like these activities in its universal relevance to society, it is an activity unlike any other. The experience of many creative activities--activities that involve creation--are strongly influenced by their medium, and programming is no different. Writing, for example, is often shaped by challenges like word choice, sentence construction, argumentation, and audience. Sculpting is shaped by the moldability of the particular material such as clay or glass, the size of the piece, the complexity of the form one is trying to capture, the tools that are used to carve and shape it, and even the atmospheric control of the studio in which it is molded. Programming, in contrast to these other creative activities, is constrained by logic, abstraction, programming language notations, the existence of other code to reuse, and the learning materials such as documentation that are often necessary to understand the endless complexities of other software systems with which a program might interact. Each of the kinds of programming above, along with the particular languages and tools used to do it, has its own unique creative constraints, and culture that grows around it.

Programming is also social, but in varying ways. For example, when programming is done alone, it can be quite an immersive experience, with one’s whole consciousness consumed by a set of source files, their interdependencies, and a vision for how they might be changed that drive revision after revision. And yet even in that isolation, it is an activity that relies on the knowledge of others, often in the form of documentation, help forums online, and code that others have written to be reused, as we discussed in [Abstractions|abstractions]. But when programming is done in a group--as it almost always is in all but the smallest of projects--it can also be rich with communication, coordination, collaboration, compromise, and even conflict around design choices.

|Chapter16_Figure03_Exerciseball.png|A woman in many positions working with an abstract hot pink circle.|Programming requires a diversity of skills.|@jessie|>

# Programming Skills

One of the things that makes programming difficult as an activity is the diversity of skills that it can involve. Many marketing materials make it seem as if all it takes is a short online coding tutorial, or playing with a toy for a few hours, and yet the broader global culture of computing often projects an elitist sense that great programmers are "born"<mccartney17>. Of course, neither of these are true: programming is not something quick to learn, nor is it something only available to only certain people. Rather, it is a constellation of creative problem solving skills that take deliberate practice, high quality feedback, and motivation and encouragement to master. Let’s consider some of the skills required.

## _Design_: Deciding What to Make

Early in this book, we considered [Design|design], which we distinguished from engineering as an activity of deciding _what_ to make, rather than _how_. Design decisions are inherent to programming in that, before a person ever starts writing a program, they have to decide what it should do and why. As we discussed, that choice is one fundamentally about people, their lives, and their social world, and not about code. And yet, too often, people start programming by thinking about the specific thing a computer will do rather than thinking about whether it should do it at all and why.

Consider the numerous examples we have discussed in prior chapters--the design of the internet, the data structures of the U.S. Census, the eligibility for poverty aid--each of these programs we discussed did not have to be built the way that it was. In fact, they did not have to be built at all. Rather, before programming something, someone decided that they would meet particular design specifications, and those specifications determined what program was written. Because design is where many of the unjust choices are made, it is critical that students recognize design as a distinct activity in programming, and proceed with it separately from writing code. This is just as true for a professional software developer as it is for a student practicing with a simple game or app, because even the simplest of programs can encode values and systems of oppression.

To illustrate the role of design in programming, consider a simple example of an idea for a program that will compute someone’s age from their birthdate:

=
_A program that, given someone’s birthdate, computes their age in years._
=

This description of a program might seem innocuous. But if it’s considered from a social context, there are many critical design questions:

* _Who will use this and why?_ When would someone need a calculator to get a precise age? For example, cashiers and bartenders probably wouldn’t need it, as they only need to do some rough mental arithmetic to verify that someone is over 21. Perhaps the user is a child and has not yet learned arithmetic, but if so, do they know how to enter dates? Whoever it is, each group has their own motivations, goals, and constraints that should shape how and whether the program functions.

* _What abilities do the users have?_ If someone is sighted, can perform fine motor skills, is literate, and knows how to operate a keyboard, entering a date into a prompt will likely not be a problem. But what if one of those abilities is missing? Designing for diverse abilities can require substantially reconsidering the inputs and outputs to a program. 

* _What cultural knowledge does the program assume?_ For example, is the birthdate on the [Gregorian|https://en.wikipedia.org/wiki/Gregorian_calendar] calendar, or can it also be in one of the many other calendaring systems used throughout the world, such as the [Chinese Minguo|https://en.wikipedia.org/wiki/Republic_of_China_calendar] calendar?

* _What personal knowledge does the program assume?_ In some cultures, for example, people may not know their precise birthdate, as many cultures do not track birthdates or celebrate birthdays.

All of these considerations fall broadly under the word "design", and engage the rich and complex discipline of *human-computer interaction*, which is an entire distinct field of practice that goes well beyond CS. In fact, in industry, there are entire roles that investigate these questions, often with titles such as _user experience researcher_, _user experience designer_, and _design researcher_, all focusing on what to make, for whom, and how to ensure that what is being made will meet an actual need without creating new problems.

## _Reuse_: Finding Existing Solutions

Once one has decided what to make, one of the first skills to decide how to make it is reuse: is there any existing code in the world to *reuse* to help build the design. In some sense, reuse is always necessary: programming involves reusing programming languages, any basic APIs that come with those programming languages, tools for constructing programs (as we shall discuss later in [Tools|tools]). But even more simply, some ideas for programs to write might have already been built to meet the exact needs of a design.

Reuse requires knowledge of what already exists in the world, and skills for acquiring that knowledge. Consider our age calculator design; calendaring systems can be complicated, and doing arithmetic on dates can be even more complicated. Is it worth the effort to write code to account for all of the complexities of the world’s calendaring systems such as leap years, or has someone already written code to do those calculations? Once one chooses to reuse someone else’s code, the task can become immense: Python and JavaScript have multiple libraries for doing date arithmetic, but only support the Gregorian calendar. Libraries that do support non-Gregorian calendars are few and poorly supported. Therefore, opting  for reuse might either require changes to the design to exclude particular communities, or entail much more programming than one originally planned. Similarly, if a student has designed something that will involve computer-based speech recognition, they might have to search for existing APIs that support that functionality, and perhaps even learn a new programming language to use that existing functionality. Even simple additions to an existing program--for example, adding a new feature to a calculator app--might require understanding everything the program already does, finding any existing functions and data structures that might be helpful in building that new feature.

Once one has found something to reuse, there are an entirely different set of skills in using it. For example, before deciding to use something that someone else has written, one needs to learn how it works, which may require substantial time, and pose its own unpredictable challenges, as other people’s programs aren’t necessarily designed for reuse, or designed well or designed to meet the needs one might need. If one is reusing someone else’s code for something important in the long term, it might also be necessary to learn who wrote it, why they wrote it, how well supported it is, and how much longer it might be supported. For example, finding an API online that hasn’t been updated in several years might suggest that no one is actively using or improving it; in contrast, if a large wealthy company like Facebook offers an API, and uses it in their own products, it might be less risky to rely on later.

Reuse is also an activity rife with potential for unintentional injustice. Reusing other people’s programs means inheriting any biased or unjust choices they might have made (e.g., using a speech recognition library that only works well for particular English accents, or using a web user interface library that only works with people who can use a mouse). Without an explicit reflection on what those choices were, people risk reusing code that perpetuates systems of oppression. Unfortunately, because programmers of all kinds often treat reuse as a way to accelerate the implementation of their design idea, they often do not pause to reflect on the potential for perpetuating algorithmic bias. Reuse, as a skill, therefore requires not only an openness to searching, discovery, and learning, but also the will to slow down, reflect, and analyze, resisting the urge to speed ahead with a project.

## _Planning_: Organizing the Work

Once it is clear what code can be reused and what functionality needs to be created from scratch, effective programmers *plan* their implementation, imagining all of the code they will have to write, how it will interact, and how it will be organized in source files. Professional software developers will often call the resulting plan a *software architecture*, composed of all of the different functionality and data, the organization for them, how they will interact with each other, and a blueprint for how they will be implemented. These architectural plans are much like the plans that a building architect would design before a building is constructed: the plans reveal all of the materials needed, imply particular stages of production, and ensure that the building meets all building codes and client preferences, before it is built. 

Unfortunately, when most people program--even many professionals--they often overlook planning, instead focusing on building. The result is often much like one would expect from a  building built without a blueprint: a cluttered mess of materials, patched together, without much coherence. Not only are such programs brittle, failing in many cases that were not carefully considered, but they are also hard to change. For example, in our calculator example, without planning, one might make choices that make it difficult to add support for non-Gregorian calendars later, or might make it hard to support blind users who rely on screen readers to use a computer. When software is being built for use by others, this has an indirect impact on injustice, because any demands for change that come from an oppressed group will be harder to make due to the tangled collection of program elements.  When software is built by students for personal expression, the consequences might be that their program is harder to change, curtailing their creative vision.

For our date computation example, a plan might entail some simple *pseudocode*{There is no "right" pseudocode format: it’s just a natural language sketch of a program, which can be more or less precise.}, which describes the algorithm, but without using a particular programming language notation:

`
Function
    given birthdate
    let today = today’s date
    let birthyear = birthday’s year
    let thisyear = today’s year
    return thisyear - birthyear
`A pseudocode representation of the age calculator.

The value of this plan is that it allows us to see how the program might work, what kind of data it will need as input, and what kind of data it will produce as output without doing all of the work to write an actual program. Therefore, pseudocode is much like a sketch in other design disciplines: something that is provisional, intended to support communication, and much faster to create than an actual implementation. In fact, professional software developers will sketch as well, collaboratively drawing pictures on whiteboards, writing pseudocode, and talking about possible implementations before ever writing code<cherubini07>. Of course, like any sketch, this pseudocode plan is a bit vague, because it doesn’t say precisely what format the dates are in or how their years will be obtained, but it provides some clarity about the algorithm that will be used. But this is the point of sketching: it helps reveal what is vague about a plan, so the plan can be improved before doing the more substantial work of implementing the plan. It also helps slow down the work, making space for questions about how the plan might be biased in some way, or fail to serve a marginalized group equally.

## _Implementation_: Writing Code

Once one has a design, a sense of what can be safely reused, and a plan for how to build it, *implementation* is next. In the ideal case, where all of those upstream activities are thoroughly considered, implementation involves translating each of the plans into functions, algorithms, and data structures in a programming language. And because this process inevitably involves mistakes and misunderstandings, a central part of implementation is also *verification* that the program does what was intended, and *debugging* code when it doesn’t behave as intended, understanding what went wrong and finding a way to fix it.

Implementation of our age calculator plan above might produce a first draft of some Python code like this:

`python
def computeAge(birthdate):
    today = datetime.now()
    difference = today - birthdate
    age = difference.days
    return age
`A draft implementation of our age calculator.

Embedded in this example are many forms of knowledge specific to Python and its [`datetime`|https://docs.python.org/3/library/datetime.html] library; the only way to understand it is by reading it’s documentation<thayer21>. For example, the `now()`python function returns a special data structure that contains the current date and time; the `-` symbol is a specific operation on these `datetime` objects. And the resulting difference includes a property named `days`. And all of the logic is based on the Gregorian calendar. There’s no way any programmer, no matter how knowledgeable, would know any of this without very carefully reading Python’s documentation. Therefore, implementation necessarily involves some of the skills involved in reuse: finding an API to use, learning it, and reusing it correctly, but combining that knowledge with knowledge of Python.

Because of the overlooked design details, missing requirements, or defects that emerge from implementation, programs end up full of defects, each deviating in some way from the intended design, or revealing some aspect of the design that was not considered. For example, you might have noticed a problem in the program above: it returns the difference in days, not years. If you did notice that, it's because you were engaging in one kind of *verification*: reading a program for errors<myers11>. As we shall discuss in the Verification chapter, this is just one way of knowing if a program is correct; another way is testing it: for example, if we gave the program a date 10 years prior to today, it would return `3650` instead of `10`. In our age computation example above, there are also other defects that verification would help us detect. For example, what if `birthdate` is `None`? The program will throw an error. What if `birthdate` is a number? It will also throw an error. What if the `birthdate` is given as after the current time? It will return a negative age. Verification is the process of identifying all of these possible inputs that lead to unintended outputs, catching all of the problems that weren’t considered in initial planning. Verification is rich with strategies and challenges, and when skipped or rushed, leads people to overlook critical defects before they execute their program. 

If--or more likely when--someone finds a failure in a program, another central activity is debugging the failure, which means identifying the defective parts of the program that cause the failure, and then devising a way to change the program to remove the defect<zeller09>. This activity is hard primarily because can programs do so much, so quickly, and so invisibly--the larger and more complex the program, the harder it is to understand and analyze. Debugging is the process of figuring out which of those instructions did something wrong, and in what circumstances. For example, in our age calculator, imagine someone using this program inputs a Chinese Minguo date (e.g., 0101-01-01), not knowing that the program only works for Gregorian dates, and keeps getting extremely large ages (2,000 years old!). In this case, unless the person reporting the problem provides the exact input, it will be hard to know how to reproduce the problem. And even if they provide that input, and we can diagnose the problem (that the algorithm only works for Gregorian dates), how can we detect for non-Gregorian dates and handle them appropriately? This complexity, which ultimately arises from diversity in calendaring systems, makes it a difficult defect to fix.

As we will discuss in our later chapter on [Verification & Debugging|verification], there are many more and less effective ways to debug. Debugging challenges are exacerbated by many things: if the program is complex and hard to understand, it will be hard to identify the cause of a failure. If a failure cannot be "reproduced", then it will be hard to diagnose. And if implementation was poorly planned, even if someone finds the defect, it may be difficult or impossible to fix it without a significant re-architecting of the implementation. Therefore, even when someone is aware of defects in a program that are excluding particular users, they might be deterred by the significant effort involved in making the fix.

Because verification can be so hard to get right, defects are often abundant and remain undetected and unfixed. For example, nearly every website on the internet is full of accessibility defects that make it impossible for people with disabilities that use a screen reader to read and navigate websites. If there is no way for them to report these problems to the person who can fix them, the website will forever remain broken. This is just one example of how implementation is a critical site for thinking about justice, because how a design is built can impose their own forms of oppression, and programmers often do this unknowingly, because they do not verify that programs work for all possible people who might use them.

## _Self-Regulation_: Reflecting on Action

Throughout all of the programming activities above, there is one clear recurring pattern: programming is about getting countless, diverse details right, and each requires learning. Because of this, programming is an activity that relies heavily on one’s *self-regulation* skills<loksa16,prather20>, requiring them to monitor and reflect on their thinking, decisions, and actions. There are a few specific kinds of self-regulation that are key.

As we noted above, planning is a key programming activity, but *planning* is also a more generally critical self-regulation activity. Programmers need to plan their design, their program plans, and their implementation, verification, and debugging activities. Without planning, learners are likely to overlook key activities and details, leading to defects and design flaws. There are many ways to scaffold planning, including structuring programming activities into distinct phases using software development methodologies<ambler02>. Another approach is to use explicit programming strategies, step-by-step procedures for conducting particular programming activities<latoza20>. These can offer prescriptive guidelines for how to proceed with a particular problem. For example, rather than having to remember to test code, programmers might use a strategy such as:

=
*How to test your code*
1. Write down the most important scenarios in which your program will be used.
2. For each scenario, test the program with a variety of expected and unexpected inputs.
3. Each time the program does something unintended, write down the inputs that caused it and what behavior was observed
4. After testing all of the cases, debug and fix each problem
=

This is not a flawless testing strategy, but it is better than "try things and see if they’re broken."

Another self-regulation skill is *process monitoring*, which means reflecting on the process one is following to solve a problem. In programming, this might mean reflecting on the plan one is following, whether one is following it, and whether the plan is working. For example, if a programmer were following the example testing plan above, they might pause occasionally and ask themselves:

* "_Did I forget a step?_" This means reflecting on past actions and seeing if they were correct and complete.
* "_Am I on track?_" This means reflecting on whether current activities are the right ones, and are making progress on goals.
* "_What is left to do?_" This means reflecting on past plans and seeing what remains to complete them.

Process monitoring can be a key part of sticking to a plan, and changing the plan if process monitoring reveals some flaws in the plan.

Another critical kind of self-regulation is *comprehension monitoring*. Because programming can require so much learning and so much detailed understanding of program behavior, even expert programmers need to regularly reflect on their comprehension of a program. For example, before fixing a bug, a programmer might ask "_Do I understand what will happen if I make this fix?_" or _"Is there documentation I need to read before trying this fix?_" Because computers have no intelligence, it is only the programmer’s intelligence that can ensure a program is doing what is intended. These questions are essential to ensuring that programmers are basing their decisions on an accurate comprehension of program behavior.

Finally, *self-explanation* is another essential form of self-regulation. When programmers attempt to explain to themselves how a program works, why an algorithm might solve a problem, or what might be causing a failure, they build stronger models of what problem they are solving and how the program is solving it. For example, some programmers will use a strategy of carrying a rubber duck, or some other object or person, and try to explain to themselves the problem they are facing<hunt99>. Questions programmers frequently ask themselves are "How does this program execute?" or "How is the program producing this failure?"

|Chapter16_Figure04_RecklessDriver.png|A car crashing into an old CRT computer display with several miniature humans running away and one holding his head in disbelief|Coding, like any activity involving power tools, comes with responsibility.|@jessie|>

# Programming and Responsibility

Because programming is such a complex, immersive, and challenging activity, thinking about questions of bias, inequity, and injustice while programming can be overwhelming. It’s hard enough to get a program working--how can we also think about the program’s biases?

One tactic for infusing issues of justice into programming is to embed them in distinct programming activities. For example, justice issues are abundant in design choices; if there is a distinct design activity that comes before programming, then many of the justice issues might be addressed there, before programming ever starts. Similarly, if planning is a distinct activity, it can make space to carefully analyze any algorithms, libraries, or other code that might be reused for justice issues. Similarly, if verification is a distinct activity, one can add justice to the list of things to verify: the program shouldn’t just work as specified, but it should also consider other requirements, like accessibility for people with disabilities, or inclusion of other cultures which may use other languages or come with different assumptions. For example, many techniques are emerging for conducting algorithmic bias audits<bandy21>, which might be incorporated into routine testing activities. Treating each of these activities as separate and important in their own right makes space for justice considerations, in addition to just leading to better programs.

Another tactic is to simply slow down. Software is an industry and a medium that has a strong bias toward speed: fast computers, fast programs, fast deployment. When everything is about speed, it can feel like programming should also be fast too. But when programming is done quickly, we inevitably miss crucial details, which leads to defects and other problems. And some of those details are ones that systematically exclude or harm oppressed groups. For example, most companies, in a rush to market, often overlook basic compliance with the [WCAG accessibility standards|https://www.w3.org/WAI/standards-guidelines/wcag/], which define a minimum level of accessibility for people who are blind or low-vision navigating the web. Teachers can encourage students to slow down by structuring programming activities in a way that discourages a fast pace, and if time in class is limited, reducing the scope and complexity of the programs that students write to make space for a careful, deliberative pace.

Of course, in the absence of policy, all of these tactics require some voluntary action. In most countries in the world, programmers have no legal responsibility for what they make, and software companies regularly use software licenses that absolve them of any legal liability for what impact software has on an individual or community. This is unlike nearly all other professions: engineers who design buildings and bridges are responsible if they fall down, health care providers are responsible for medical errors, and scientists are responsible for the trustworthiness of their discoveries. Society has not yet decided to make programmers responsible for their code and its impact, and until it does, making room for algorithmic justice will require personal and organizational will.

|Chapter16_Figure05_Classroom.png|A classroom full of youth working at computers, whiteboards, desks, and tables.|Programming is a social and creative skill that should be learned with others.|@jessie|

# Teaching Programming

Much of modern computer science education conflates coding with computer science. They are of course related--programming can benefit greatly from concepts in computer science--but they are actually surprisingly disjoint in practice. For example, while many introductory CS courses in post-secondary teach a programming language, programming as a skill is often not taught at all: students are given problems and left to organize and orchestrate their own processes for designing algorithms, systematically verifying their code, debugging it, and so on. In some ways, higher education views programming as something students will learn on their own, and eventually master in industry as software engineers. The rest of the CS curriculum teaches concepts about computing that are often relevant to decisions made during programming--how to assess the efficiency of an algorithm, how to harness probability to create machine-learned classifiers, how networks are made to operate efficiently, and so on--but many learning contexts do not explicitly teach programming as a skill.

In secondary education, there is also some question about whether programming skills need to be taught. The [CSTA CS learning standards|https://csteachers.org/page/about-csta-s-k-12-nbsp-standards], widely integrated into U.S. state law, center programming skills, even though many youth will not go on to become CS majors in college or software developers in industry. However, teaching programming can increase interest in those careers to a diversity of students, depending on how programming is taught<sax20>. Some observe that programming isn’t only relevant to software engineering, but also to many other professions, including any profession that analyzes data such as science, business, or other engineering disciplines. It can even be useful in creative disciplines, like arts and entertainment, which are beginning to harness code as a creative medium. Others argue still that learning to code will have other indirect benefits on problem solving skills; evidence on this is mixed, showing some transfer effects for tasks requiring meta-cognition and creative thinking, but no effect on school achievement, literacy, or other outcomes<scherer19>. Moreover, there is no evidence that learning to code has any impact on students’ critical consciousness of computing in society; such skills help students see how software is constructed, but not how software directly or indirectly impacts people’s lives in positive or negative ways.

Choosing to teach students programming, therefore, requires some careful reasoning about why. If the goal is to entice students into pursuing CS in college and becoming software engineers, teaching programming in culturally responsive and sensitive ways may be a good choice. However, if the goal is to help students see the diversity of ways that programming might be applied to a range of professions, it’s not enough to just teach Java, Python, or Scratch; each of those draw upon a particular community of practice that will only reveal some of the ways that computing is applied. And if the goal is to develop students’ critical consciousness about computing, teaching programming alone will likely achieve none of this<ko20>.

In the rest of this chapter, we’ll consider some of the key methods for teaching programming as a skill, and then share a unit plan that instead teaches programming as a path to critical consciousness of code in society.

## Developing Skills

Programming, like any other skill, requires sustained, deliberate practice<williams18>. There are no shortcuts to helping students master programming skills: students require lots of problems, lots of feedback, substantial encouragement and motivation<robins03>. Orchestrating all of these for a diversity of students is non-trivial, as it requires making many delicate decisions:

* What programming language(s) will students learn? Each language has its own complexities, concepts, and design flaws; most are not designed for learning or teaching<qian17>, and even those that are pose their own numerous learning challenges<swidan18>.

* What editors and tools will students use? Editors and tools can make harder tasks easier, prevent errors, and give some forms of shallow feedback, but they also can require learning of their own and can make learning or performing some tasks more difficult<ko04>.

* What kinds of programming problems will students solve? Problems of their own choosing<resnick12>? Problems of a teacher’s choosing<parlante17>? Problems found in the world<ellis07>? The more control students have, the more engaged and motivated they might be initially, but the more complex problems are likely to become. The less control students have, they might be engaged less initially, but scaffolding can help build confidence.

* How will students receive feedback, how frequently, and from whom? *Autograders*, which automatically check student programs against specifications of correctness, can provide immediate feedback, but feedback that is shallow and leads to gaming behavior that doesn’t reflect authentic practice<hao21>. Teacher feedback can provide deep diagnostic insight into students’ programming skills, but is exceptionally time consuming and requires substantial pedagogical content knowledge.

There are dozens of books that provide guidance on these choices. For example, Grover’s Computer Science in K-12<grover20> assembles many perspectives, methods, and tips on teaching programming in K-12 settings in constructivist ways, revealing the critical PCK that teachers can need when teaching programming that centers student interests. Other works such as Hazzan’s Guide to Teaching Computer Science<hazzan15> focuses on scaffolding creative activities, centering project-based learning. Other works focus on carefully designed didactic activities<xie19>, centering problem sets, and systematic direct instruction on programming language concepts, building robust skills incrementally. And an increasing number of methods from research are finding ways to explicitly scaffold self-regulation skills, which are often at the heart of students’ difficulties with programming leading to mistakes, confusion, frustration, and quitting<loksa16b>. Such methods explore explicit prompts for reflection<prather19, loksa16>, and help students to develop independent self-regulation skills, leading to improvements in self-efficacy, growth mindset, and productivity. Each of these approaches have different strengths and weaknesses, often trading off between motivation and mastery. This diversity of approaches is healthy, as teaching computing in culturally-responsive ways requires a diversity of methods. But it also reveals that no single teaching method of developing programming will be superior for all students, community, and settings.

## Unit Plan: Critical, Reflective Programming

While most research on teaching programming has focused on the skill itself, few methods have viewed programming as a means to other critically conscious insights about computing in society. If a teacher’s goal is to develop skill, this might be okay; but if a teacher’s goal is to develop the kind of literacy that all students need about how computing is shaping society through programming, such methods are likely to be superior to centering programming skill. In this section, we present one possible way to incorporate justice considerations into programming, demonstrating how critical consciousness and programming skill might be achieved simultaneously.

The learning objectives for the unit are:

1. Students will be able to recognize the distinct activities of programming: design, planning, implementation, verification, and debugging.
2. Students will be able to identify opportunities to audit for injustice during each activity.

To achieve these objectives, the unit focuses on a programming problem of small scope, leaving more space to focus on the activities themselves. Over the course of five sessions, it authentically positions students as programmers, while centering justice in those authentic programming activities.

=
### Session 1: Design

* Begin the lesson by explaining that this unit will teach them to organize their programming work so that it is productive, successful, and just.

* Show students an example of where they will start--an idea--and where they will end--a program that implements that idea. The example should be something of cultural relevance to the students, and ideally be modest in scope (e.g., a single function). For example, it might be a function that computes whether a student should be counted as tardy based on a set of inputs or computes the amount of government financial aid a student receives for college.

* Define the five activities involved in programming and how each of them have their own challenges.

* Present a second idea related to the example as the challenge for the unit, fitting the same criteria, and ask the students to break into teams of two or three and to refine the design of the. What aspects of the design might be biased or cause harm? Should the program even be written?

* At the end of the lesson, ask pairs to present modifications they want to make to the design before proceeding with programming.
=

This first lesson does a lot of work, explaining the different programming activities and also asking students to engage critically in the design. Seeding the class with a small idea, particularly one that is rich with potential injustices, can help amplify the difference between design and programming issues. In particular, questioning whether the design should even exist can be a particularly salient design alternative.

After this session, student pairs will have a sense of design as distinct from other activities (see [CS & Design|design] for a more elaborate example of how to scaffold distinct activities in design). The next session engages students in planning their implementation:

=
### Session 2: Planning

* Have students reconnect with their partners and restate the design they settled on in the previous session.

* Explain that planning is a critical part of programming and may involve thinking about algorithms and code reuse before ever writing a program.

* *Formative assessment*. Prompt teams to write pseudocode for their design, detailing the algorithm that will be used to do their computation. As part of this, students should write "subgoal" labels, explaining how each part of their pseudocode helps accomplish the larger design goal. Students should also research code that might be reused to help implement the algorithm. After writing pseudocode, teams should be prompted to reflect on who would be excluded or oppressed because of the algorithm's assumptions. Discuss how they will present their work in later discussion, negotiating the final form of their pseudocode. After reflection, engage the class in a discussion of those assumptions, and how the students’ algorithms might be revised to avoid those problems. 
    ** This is _responsive_ because it centers students’ own designs and cultural competencies.
    ** This is _participatory_ because it enables students to decide what media they want to work in to produce their pseudocode mockup.
    ** This is _educative_ because it both surfaces ambiguities in plans, but also makes visible a diversity of potential biases surfaced by other students.
* Ask students to revise their pseudocode based on the discussions.
=

After this session, students will have a concrete plan for writing their program, but also a sense of how their particular design solution might systematically exclude or harm people. This will also reinforce how algorithms can exist independent of code. The next session will build on this, engaging students in implementing their algorithm: 

=
### Session 3: Implementation

* Have students reconnect with their partners and find the pseudocode they wrote in the previous session.

* *Summative assessment*. Prompt teams to translate their pseudocode into the programming language of their choice. As they encounter difficulties in this translation, have them note any discrepancies between their plan and the code they write, including any parts of their implemented program that they may not understand, promoting comprehension monitoring. When students ask for help, ask them about their plan, their process, and their comprehension, to ensure that their decisions are grounded in an accurate understanding of their program’s behavior, but also to promote independent self-regulation skills. Negotiate how their programs will be shared at the end of the session, helping them imagine the context of how their work will be seen.
    ** This is _responsive_ because it centers students’ own design goals.
    ** This is _participatory_ because it enables students to decide what level of fidelity and sharing they feel comfortable with.
    ** This is _educative_ because throughout implementation, students will encourage new things to learn, practicing resourcefulness and self-regulated problem solving skills, 
=

After this session, students will have a draft program that implements their plan, and a concrete example of how a plan helps with implementation. They will also develop self-regulation skills through your prompting. The next session will help students evaluate their plan:

=
### Session 4: Verification

* Have students reconnect with their partners and find the code they wrote in the previous session.

* Provide students with an explicit testing strategy that prompts them to 1) generate a range of likely and unlikely inputs to their function, 2) predict the program’s behavior for each of the inputs, 3) test the program with each of the inputs, noting any wrong predictions and failures.

* Prompt students to return to the potential injustices noted in their design and their plan and see if any of them persisted into their implementation. If they did, add them to the list of problems to fix in the next session.
=

After this session, students will have the results of a systematic test, and see how verifying a program is a distinct activity from implementing it. This will also show how to interleave an algorithmic justice audit into a verification activity. The next session will help students debug their implementation:

=
### Session 5: Debugging

* Have students reconnect with their partners and find the problems they identified in the previous session.

* Provide students with an explicit debugging strategy that prompts them, for each problem, to follow the same programming activities in the unit: 
    ** Identify the cause of the problem by analyzing how the program executes, but without modifying the program, identifying if redesign is necessary, 
    ** Write pseudocode plan for a fix, 
    ** Implement the pseudocode fix, 
    ** Verify the pseudocode fix, and 
    ** Debug it if necessary.
=

This session helps students identify the differences between verification and debugging, and illustrates how the bug fixing part of programming involves the same activities as programming. The last session asks students to reflect on the outcomes of their programming process and the difficulties of integrating judgements about harm.

=
### Session 6: Sharing and reflection

* Have students reconnect with their partners and prepare their final program for sharing.

* Share as negotiated with the students in Session 3.

* As part of sharing, prompt students to share the hardest problem they encountered during programming and why it was hard, describing it in terms of the distinct programming activities.

* Lead a discussion with students about how unbiased they believe their final solutions were. What was hard about ensuring that they did not do harm?
=

Across these six sessions, this unit should help students recognize the distinct activities of programming and identify ways to audit for injustice in each of them. By focusing on a single function, it removes the complexity of building larger programs, but also removes the potential of creating something more personally interesting to students. This unit might be sequenced after another more creative unit, helping students to learn the benefits of more structured programming workflows after having led some less structured--and likely messier--projects.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaAP
@csta2AP10
@csta2AP12
@csta2AP13
@csta2AP14
@csta3AAP17
@csta3BAP17

@toleranceHeader
@toleranceJustice
@tolerance13
@tolerance14

@teacherHeader
@teacher1
@teacher1a
@teacher1e
@teacher1f
@teacher3
@teacher3b
@teacher5
@teacher5a
@teacher5c
@teacher5d
@teacher5e