=
@keyIdeas
* Many people program, not just professional software developers.
* Programming consists of many distinct activities--design, planning, reuse, implementation, verification, debugging--each with their own challenges.
* Orchestrating these activities requires self-regulated problem skills that many programmers lack.
* The many challenges encountered in programming often leaves little room for critical reflection on the role of code in injustice; slowing down can make room.
* Teaching programming as a skill requires several challenging decisions; teaching it as a means to critical consciousness can relax these constraints.
=

Throughout this book, we have often talked about computation, computers, and code as if they simply exist in the world, fully formed and full of power and bias. Our focus has been primarily on reasoning about what code is, how it works, and what it does, technically, socially, and politically. To the extent that we've talked about _writing_ code, it's usually been in the context of small, subtle design choices, and how those choices often have unintended impacts.

Of course, writing code is far from small, subtle activity. In practice, ~programming~programming<blackwell02> (or often *coding*) is a complex, creative, and often challenging activity that for many can also be consuming, riveting, and greatly rewarding. Many forms of art and creativity such as music, illustration, and dance, can feel the same, but there is perhaps something particularly magical about making with code: in a way, it is like bringing something to life, one instruction at a time. The joy of creating interactive, intelligent things is at the heart of why so many{This includes the first author of this chapter. She fell in love with programming in [7th grade|https://medium.com/bits-and-behavior/computer-science-information-science-and-the-ti-82-2b810e68d333] when she discovered that her TI-82 graphing calculator could be used to program games and animations. To her, programming was social, creative expression.} pursue computing education: learning to code can bring together craft, creativity, and challenge in ways that let us express ourselves in personally and socially meaningful ways.

Programming, however, is also a particular kind of creative activity that differs from other media. In essence, programming is writing and revising instructions that control what a computer will do in response to input in the future. Each of the words in this definition is key:

* Programming is _writing_, in that it is authored, by people, with some intent.
* Programming is _revising_ in that the first drafts of a program rarely do exactly what someone intends, and so programs are often changed, to fix defects, or add new functionality.
* Programming involves writing _instructions_, telling a computer what to compute, and often how to compute it, expressed in some programming language notation.
* Most programs respond to _input_ such as mouse clicks, keyboard presses, taps and swipes, speech, or data or documents from a database or the internet.
* Programs are ultimately concerned with what computers will do in the _future_, in that writing a program isn’t about what a computer is doing now (unlike with most modern graphical user interfaces, which respond to input immediately), but what it will do later, when the program is executed, possibly by the programmer, but maybe someone else, and maybe even millions of other people.

Programming, then, unlike most of the technical concepts we’ve discussed thus far in the book. It is not so much a technical idea as it is a creative human activity that uses and is constrained by the technical ideas in computer science. Throughout the rest of this chapter, we’ll discuss who engages in programming and why, then deconstruct the key activities and skills necessary for successful programming of these various kinds. We will then turn to one teaching method for developing these skills through targeted scaffolding of self-regulation, while centering the social responsibility of programmers as they make.

|Chapter16_Figure01_DiversityCode.png|Four people of different races and genders, set in front four different contexts, each creating computational things.|Everyone codes, when they need to or want to.|@jessie|<

# Who codes?

Because programming is something that people do, it is important to convey the diversity of people that do it. The stereotype one might first think of is a ~professional software developer~dev. Developers might work for a for-profit organization, programming for pay, to create software that others will either buy a license to, or use as a service on a website. They might also be volunteers, adding features and fixing bugs in ~open source~oss projects. Many imagine developers programming all day (and maybe all night), fully absorbed in their world of code. Of course, developers in these settings do some of this, but because they work on teams, they also collaborate with other developers and coordinate with designers, managers, and other experts who aren’t programming for pay. They are people like anyone else; they are just writing code for their job. "Developers", therefore, are not something that people are born to do, but rather a role that someone learns and pursues professionally.

But developers aren’t the only people who program<ko11b>. In fact, a radical diversity of people have begun to use code as a means to all kinds of work, play, and creative expression:

* Children code, using languages like [Scratch|https://scratch.mit.edu], and an increasing variety of programmable toys<clarkemidura19>; parents, guardians, and teachers often engage youth in this play, sometimes with questionable motives about "future-proofing" young children’s career prospects.
* Teachers, accountants, and various kinds of information workers code, often using spreadsheet languages like [Excel|https://www.microsoft.com/en-us/microsoft-365/excel] to organize data and calculate grades and other learning analytics<nardi93>.
* Musicians code, often using languages like [EarSketch|https://earsketch.gatech.edu/landing/#/] and [Sonic Pi|https://sonic-pi.net] to generate electronic music in real-time live performances<magnusson11>.
* Artists code, often using languages like [Processing|https://processing.org] to computationally create interactive and dynamic visual art<pearson11>.
* Scientists code, often to analyze data using languages like [Matlab|https://www.mathworks.com/products/matlab.html], [R|https://www.r-project.org], or [Python|https://www.python.org]. For example, oceanographers have installed sensors across coastlines, gathering large amounts of data about water temperature, waves, and wind, and use code to build models of global warming<thomson14>.
* Anyone who buys smart home devices like doorbells, thermostat, or other "Internet of Things" devices probably codes in small ways to configure the device to fit their schedule, preferences, and lifestyle<blackwell01>.

These examples are only a small representation of the countless other kinds of programming activity engaged in by hundreds of millions of people using code for work and play<scaffidi05>. Programming is therefore far from a niche, expert activity of paid developers at Silicon Valley technology companies, but a universally applicable skill like reading, writing, and arithmetic.

While programming is like these activities in its universal relevance to society, it is an activity unlike any other. The experience of many creative activities -- activities that involve creation -- are strongly influenced by their medium, and programming is no different. Writing, for example, is often shaped by challenges like word choice, sentence construction, argumentation, and audience. Sculpting is shaped by the moldability of the particular material such as clay or glass, the size of the piece, the complexity of the form one is trying to capture, the tools that are used to carve and shape it, and even the atmospheric control of the studio in which it is molded. Programming, in contrast to these other creative activities, is constrained by logic, abstraction, programming language notations, the existence and limitations of other code that has been shared for reuse, and the learning materials such as documentation and tutorials that are often necessary to understand the endless complexities of other software systems with which a program might interact. Each of the kinds of programming above, along with the particular languages and tools used to do it, has its own unique creative constraints, and culture that grows around it.

Programming is also social, but in varying ways. For example, when programming is done alone, it can be quite an immersive experience, with one’s whole consciousness consumed by a set of source files, their interdependencies, and a vision for how they might be changed that drive revision after revision. And yet even in that isolation, it is an activity that relies on the knowledge of others, often in the form of documentation, help forums online, and code that others have written to be reused, as we discussed in @abstractions. And so no one ever programs alone: they always do it in the context of a larger community of support and resources. (These communities just vary in how supportive they are of learners and newcomers, as is true for any community.)

But when programming is done in a group -- as it almost always is in all but the smallest of projects -- it can also be rich with communication, coordination, collaboration, compromise, and even conflict around design choices. Pair programming, for example, engages the complex interpersonal dynamics of who controls the keyboard, who monitors the work, and the subtle power imbalances that emerge in the disparities between expertise<williams03>. Larger team projects involving multiple people, or even multiple teams interacting, have even greater social demands, including critical challenges in planning, process, and even politics<ko21>. Thus, whether programming by oneself, a large organization, or somewhere in between, programming is inherently social.

|Chapter16_Figure02_ExerciseBall.png|A woman in many positions working with an abstract hot pink circle.|Programming requires a diversity of skills.|@jessie|>

# Programming skills

Dominant stereotypes about programming often pose conflicting narratives. Some companies market coding as if it's trivial to learn -- complete this one hour tutorial, or play with a toy for a few hours, and you can get a high paying job. Some communities, in contrast, project the elist idea that programming as something people are "born" to do<mccartney17>. Of course, neither of these are true: programming is not something quick to learn, nor is it something only available to only certain people. Rather, it is a constellation of creative problem solving skills that require deliberate practice, high quality feedback, and motivation and encouragement to learn{The same is true of any skill: we wouldn't say that people can learn to play guitar in an hour, nor would we say that anyone is born unable to learn. Rather, learning to play guitar takes time, good teaching, and persistence. Programming is no different.}. Let’s consider some of the skills required.

## _Design_: Deciding what to make

Early in this book, we considered @design, which we distinguished from engineering as an activity of deciding _what_ to make, rather than _how_. Design decisions are inherent to programming in that, before a person ever starts writing a program, they have to decide what it should do and why. As we discussed, that choice isn't about code at all. Rather, it's fundamentally about people: their lives, their social world, their values, and their needs. And yet, too often, people start programming by thinking about the specific thing a computer will do rather than thinking about whether it should do it at all and why.

Consider the numerous examples we have discussed in prior chapters -- the design of the internet, the data structures of the U.S. Census, the eligibility for poverty aid -- each of these computer programs did not have to be built the way that it was. In fact, they did not have to be built at all. Rather, before programming something, someone decided that they would meet particular design goals, and those goals determined what program was written. Because design is where many of the unjust choices are made, it is critical that students recognize design as a distinct activity in programming, and proceed with it separately from writing code<oleson21>. This is just as true for a professional software developer as it is for a student practicing with a simple game or app, because even the simplest of programs can do harm.

To illustrate the role of design in programming, consider a simple example of an idea for a program that will compute someone’s age from their birthdate:

=
_A program that, given someone’s birthdate, computes their age in years._
=

This description of a program might seem innocuous. But if it’s considered from a social context, there are many critical design questions:

* _Who will use this and why?_ When would someone need a calculator to get a precise age? For example, cashiers and bartenders probably wouldn’t need it, as they only need to do some rough mental arithmetic to verify that someone is over 21. Perhaps the user is a child and has not yet learned arithmetic, but if so, do they know how to enter dates? Whoever it is, each group has their own motivations, goals, and constraints that should shape how and whether the program functions.

* _What abilities do the users have?_ If someone is sighted, can perform fine motor skills, is literate, and knows how to operate a keyboard, entering a date into a prompt will likely not be a problem. But what if one of those abilities is missing? Designing for diverse abilities can require substantially reconsidering the inputs and outputs to a program. 

* _What cultural knowledge does the program assume?_ For example, is the birthdate on the [Gregorian|https://en.wikipedia.org/wiki/Gregorian_calendar] calendar, or can it also be in one of the many other calendaring systems used throughout the world, such as the [Chinese Minguo|https://en.wikipedia.org/wiki/Republic_of_China_calendar] calendar?

* _What personal knowledge does the program assume?_ In some cultures, for example, people may not know their precise birthdate, as many cultures do not track birth dates or celebrate birthdays.

All of these considerations fall broadly under the word "design", and engage the rich discipline of *human-computer interaction*, which is an entire field of practice that intersects with CS, but goes well beyond it. In fact, in industry, there are entire roles that investigate these questions, often with titles such as ~user experience researcher~uxresearcher and ~user experience designer~uxdesigner, all focusing on what to make, for whom, and how to ensure that what is being made will meet an actual need without creating new problems.

## _Reuse_: Finding existing solutions

Once one has decided what to make, one important programming skill for making it is ~reuse~reuse. In some sense, reuse is always necessary: programming involves reusing programming languages, APIs that come pre-packaged with those programming languages, and tools for constructing programs in those programming languages (as we shall discuss later in @tools). But reuse skills are also about making informed choices: should one create a program from scratch, or build it out of existing programs that others have created and shared? Since the earliest days of programming, the risks and benefits of reuse aren't always so clear<standish84>.

But as we discussed in @abstractions, reuse requires knowledge of what already exists in the world, the patience to learn how it is built, and skills for doing tha learning<thayer21>. Consider our age calculator design: calendaring systems can be complicated, and doing arithmetic on dates can be even more complicated. Is it worth the effort to write code to account for all of the complexities of the world’s calendaring systems such as leap years, or has someone already written code to do those calculations? Once one chooses to reuse someone else’s code, the task can become immense: [Python|https://docs.python.org/3/library/datetime.html] and [JavaScript|https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date] have multiple libraries for doing date arithmetic, but only support the [Gregorian|https://en.wikipedia.org/wiki/Gregorian_calendar] calendar. Libraries that do support non-Gregorian calendars are few and poorly supported. Therefore, opting for reuse might either require changes to the design to avoid excluding particular communities, or entail much more programming than one originally planned{It might also involve learning about non-Gregorian calendars!}. Similarly, if a student has designed something that will involve computer-based speech recognition, they might have to search for existing APIs that support that functionality, and perhaps even learn a new programming language to use that existing functionality. Even simple additions to an existing program -- for example, adding a new feature to an age calculator app -- might require understanding everything the program already does, finding any existing functions and data structures that might be helpful in building that new feature. Despite common stereotypes that developers know everything about computers, what developers primarily know is how to patiently learn about code that might be reused.

Once one has found something to reuse, there are an entirely different set of skills in using it. For example, before deciding to use something that someone else has written, one needs to learn how it works, which may require substantial time, and pose its own unpredictable challenges, as other people’s programs aren’t necessarily designed for reuse, or designed well or designed to meet the needs one might need<ko04>. If one is reusing someone else’s code for something important in the long term, it might also be necessary to learn who wrote it, why they wrote it, how well supported it is, and how much longer it might be supported. For example, finding an API online that hasn’t been updated in several years might suggest that no one is actively using or improving it; in contrast, if a large wealthy company like Facebook offers an API, and uses it in their own products, it might be less risky to rely on later.

Reuse is also an activity rife with potential for accidental injustice. Reusing other people’s programs means inheriting any biased or unjust choices they might have made (e.g., using a speech recognition library that only works well for particular English accents, or using a web user interface library that only works with people who can use a mouse). Without an explicit reflection on what those choices were, people risk reusing code that perpetuates systems of oppression. Unfortunately, because programmers of all kinds often treat reuse as a way to accelerate the implementation of their design idea, they often do not pause to reflect on the potential for perpetuating algorithmic bias. Reuse, as a skill, therefore requires not only an openness to searching, discovery, and learning, but also the will to slow down, reflect, and analyze, resisting the urge to speed ahead with a project at the risk of exclusion.

## _Planning_: Organizing the work

Once it is clear what code can be reused and what functionality needs to be created from scratch, effective programmers *plan* their implementation, imagining all of the code they will have to write, how it will interact, and how it will be organized in source files. Professional software developers will often call the resulting plan a ~software architecture~softarch<bass03>, composed of all of the different functionality and data, the organization for them, how they will interact with each other, and a blueprint for how they will be implemented. These architectural plans are much like the plans that a building architect would design before a building is constructed: the plans reveal all of the materials needed, imply particular stages of production, and ensure that the building meets all building codes and client preferences, before it is built. 

Unfortunately, when most people program -- even many developers -- they often overlook planning, instead focusing on building. The result is often much like one would expect from a physical building built without a blueprint: a cluttered mess of materials, patched together, without much coherence. Not only are such programs brittle, failing in many cases that were not carefully considered, but they are also hard to change. For example, in our calculator example, without planning, one might make choices that make it difficult to add support for non-Gregorian calendars later, or might make it hard to support blind users who rely on screen readers to use a computer. When software is being built for use by others, this has an indirect impact on injustice, because any demands for change that come from an oppressed group will be harder to make due to the tangled collection of program elements.  When software is built by students for personal expression, the consequences might be that their program is harder to change, curtailing their creative vision.

For our date computation example, a plan might entail some simple ~pseudocode~pseudocode, which describes the algorithm, but without using a particular programming language notation:

`
Function
    given birthdate
    let today = today’s date
    let birthyear = birthday’s year
    let thisyear = today’s year
    return thisyear - birthyear
`A pseudocode representation of the age calculator.

The value of this plan is that it allows us to see how the program might work, what kind of data it will need as input, and what kind of data it will produce as output without doing all of the work to write an actual program. Therefore, pseudocode is much like a sketch in other design disciplines: something that is provisional, intended to support communication, and much faster to create than an actual implementation. In fact, professional software developers will sketch as well, collaboratively drawing pictures on whiteboards, writing pseudocode, and talking about possible implementations before ever writing code<cherubini07>. Of course, like any sketch, this pseudocode plan is a bit vague, because it doesn’t say precisely what format the dates are in or how their years will be obtained, but it provides some clarity about the algorithm that will be used. But this is the point of planning: it helps reveal what is vague about a plan, so the plan can be improved before doing the more substantial work of implementing the plan. It also helps slow down the work, making space for questions about how the plan might be biased in some way, or fail to serve a marginalized stakeholder group equally.

## _Implementation_: Writing code

Once one has a design, a sense of what can be safely reused, and a plan for how to build it, *implementation* is next. In the ideal case, where all of those upstream activities are thoroughly considered, implementation involves translating each of the plans into functions, algorithms, and data structures in a programming language. And because this process inevitably involves mistakes and misunderstandings, a central part of implementation is also *verification* that the program does what was intended, and *debugging* code when it doesn’t behave as intended, understanding what went wrong and finding a way to fix it. (We discuss more about these activities in the [next chapter|verification]).

Implementation of our age calculator plan above might produce a first draft of some Python code like this:

`python!
import datetime

def computeAge(birthdate):
    # Figure out today's date
    today = datetime.datetime.now()
    # Subtract the given date from today's date
    difference = today - birthdate
    # Divide the number of days difference by 365 to compute years.
    # Round it to the nearest year.
    age = difference.days
    return age

# Compute the age of a person born on July 11th, 1980
print(computeAge(datetime.datetime(1980, 7, 11)))
`A draft implementation of our age calculator, using the Python `datetime`python API.

Embedded in this example are many forms of knowledge specific to Python and its [datetime|https://docs.python.org/3/library/datetime.html] library; the only way to understand it is by reading it’s documentation<thayer21>. For example, the `now()`python function returns a special data structure that contains the current date and time; the `-`python symbol is a specific operation on these `datetime`python objects. And the resulting difference includes a property named `days`python. And all of the logic is based on the Gregorian calendar. There’s no way any programmer, no matter how knowledgeable, would know any of this without very carefully reading Python’s documentation. Therefore, implementation necessarily involves some of the skills involved in reuse: finding an API to use, learning it, and reusing it correctly, but combining that knowledge with knowledge of Python.

Because of the overlooked design details, missing requirements, or defects that emerge from implementation, programs end up full of defects, each deviating in some way from the intended design, or revealing some aspect of the design that was not considered. For example, if you executed the program above, you probably noticed an issue: it returns the difference in days, not years. If you did notice that, it's because you were engaging in one kind of ~verification~verification: reading a program for errors<myers11>. As we shall discuss in @verification, this is just one way of knowing if a program is correct; another way is testing it: for example, if we gave the program a date 10 years prior to today, it would return `3650` instead of `10`. In our age computation example above, there are also other defects that verification would help us detect. For example, what if `birthdate` is `None`? The program will throw an error. What if `birthdate` is a number? It will also throw an error. What if the `birthdate` is given as after the current time? It will return a negative age. Verification is the process of identifying all of these possible inputs that lead to unintended outputs, catching all of the problems that weren’t considered in initial planning. Verification is rich with strategies and challenges, and when skipped or rushed, leads people to overlook critical defects before they execute their program. 

If -- or more likely when -- someone finds a failure in a program, another central activity is ~debugging~debug the failure, which means identifying the defective parts of the program that cause the failure, and then devising a way to change the program to remove the defect<zeller09>. Debugging is hard primarily because can programs do so much, so quickly, and so invisibly -- the larger and more complex the program, the harder it is to understand what happened, and find the cause of the problem. For example, in our age calculator, imagine someone using this program inputs a Chinese Minguo date (e.g., `0101-01-01`), not knowing that the program only works for Gregorian dates, and keeps getting extremely large ages (2,000 years old!). In this case, if the person reporting the problem just says "My birthdate doesn't work", the programmer will have a hard time debugging the problem. And even if the person reporting the problem provides the exact input, and we can diagnose the problem (that the algorithm only works for Gregorian dates), how can we detect for non-Gregorian dates and handle them appropriately? This complexity, which ultimately arises from diversity in calendaring systems, makes it a difficult defect to fix.

As we will discuss in @verification, there are many more and less effective ways to debug. Debugging challenges are exacerbated by many things: if the program is complex and hard to understand, it will be hard to identify the cause of a failure. If a failure cannot be "reproduced", then it will be hard to diagnose. And if implementation was poorly planned, even if someone finds the defect, it may be difficult or impossible to fix it without a significant re-architecting of the implementation. Therefore, even when someone is aware of defects in a program that are excluding particular users, they might be deterred by the significant effort involved in making the fix.

Because verification can be so hard to get right, defects are often abundant and remain undetected and unfixed. For example, nearly every website on the internet is full of accessibility defects that make it impossible for people with disabilities that use a screen reader to read and navigate websites<lopes10>. If there is no way for them to report these problems to the person who can fix them, the website will forever remain broken. This is just one example of how implementation is a critical site for thinking about justice, because how a design is built can impose their own forms of oppression, and programmers often do this unknowingly, because they do not verify that programs work for all possible people who might use them.

## _Self-regulation_: Reflecting on action

Throughout all of the programming activities above, there is one clear recurring pattern: programming is about getting countless, diverse details right, and each requires learning. Because of this, programming is an activity that relies heavily on one’s *self-regulation* skills<loksa16,prather20>, requiring people to monitor and reflect on their thinking, decisions, and actions. There are a few specific kinds of self-regulation that are key.

As we noted above, planning programs is a key programming activity, but planning _problem solving_ is also a more generally critical self-regulation activity. Programmers need to plan their design, their program plans, and their implementation, verification, and debugging activities. Without planning, learners are likely to overlook key activities and details, leading to defects and design flaws. There are many ways to scaffold planning, including structuring programming activities into distinct phases using software development methodologies<ambler02>, offering subgoal checklists for predefined tasks<marwan21>, or offering explicit programming strategies, step-by-step procedures for conducting particular programming activities<latoza20>. These can offer prescriptive guidelines for how to proceed with a particular problem. For example, rather than having to remember to test code, programmers might use a strategy such as:

=
*How to test your code*
1. Write down the most important scenarios in which your program will be used.
2. For each scenario, test the program with a variety of expected and unexpected inputs.
3. Each time the program does something unintended, write down the inputs that caused it and what behavior was observed.
4. After testing all of the cases, debug and fix each problem.
=

This is not a flawless testing strategy, but it is better than "try things and see if they’re broken."

Another self-regulation skill is *process monitoring*, which means reflecting on the process one is following to solve a problem. In programming, this might mean reflecting on the plan one is following, whether one is following it, and whether the plan is working. For example, if a programmer were following the example testing plan above, they might pause occasionally and ask themselves:

* "_Did I forget a step?_" This means reflecting on past actions and seeing if they were correct and complete.
* "_Am I on track?_" This means reflecting on whether current activities are the right ones, and are making progress on goals.
* "_What is left to do?_" This means reflecting on past plans and seeing what remains to complete them.

Process monitoring can be a key part of sticking to a plan, and changing the plan if process monitoring reveals some flaws in the plan.

Another critical kind of self-regulation is *comprehension monitoring*. Because programming can require so much learning and so much detailed understanding of program behavior, even expert programmers need to regularly reflect on their comprehension of a program. For example, before fixing a bug, a programmer might ask "_Do I understand what will happen if I make this fix?_" or _"Is there documentation I need to read before trying this fix?_" Because computers have no intelligence, it is only the programmer’s intelligence that can ensure a program is doing what is intended. These questions are essential to ensuring that programmers are basing their decisions on an accurate comprehension of program behavior.

Finally, *self-explanation* is another essential form of self-regulation. When programmers attempt to explain to themselves how a program works, why an algorithm might solve a problem, or what might be causing a failure, they build stronger models of what problem they are solving and how the program is solving it. For example, some programmers will use a strategy of carrying a rubber duck, or some other object or person, and try to explain to themselves the problem they are facing<hunt99>. Questions programmers frequently ask themselves are "_How does this program execute?_" or "_How is the program producing this failure?_"

|Chapter16_Figure03_RecklessDriver.png|A car crashing into an old CRT computer display with several miniature humans running away and one holding his head in disbelief|Coding, like any activity involving power tools, comes with responsibility.|@jessie|<

# Programming and responsibility

Because programming is such a complex, immersive, and challenging activity, thinking about questions of bias, inequity, and injustice while programming can be overwhelming. It’s hard enough to get a program working -- how can we also think about the program’s social impact?

One tactic for infusing issues of justice into programming is to embed them in distinct programming activities. For example, justice issues are abundant in design choices; if there is a distinct design activity that comes before implementation, then many of the justice issues might be addressed there, before implementation ever starts. Similarly, if planning is a distinct activity, it can make space to carefully analyze any algorithms, libraries, or other code that might be reused for justice issues. Similarly, if verification is a distinct activity, one can ensure justice concerns are on the list of things to verify (e.g., accessibility for people with disabilities, inclusion of other cultures which may use other languages or come with different assumptions). For example, many techniques are emerging for conducting algorithmic bias audits<bandy21>, which might be incorporated into routine testing activities. Treating each of these activities as separate and important in their own right makes space for justice considerations, in addition to just leading to better programs.

Another tactic is to simply slow down. Software is an industry and a medium that has a strong bias toward speed: fast computers, fast programs, fast deployment. The same is true if someone is trying to use code to create art or a student is writing code for a class. When everything is about speed, it can feel like programming should also be fast too. But when programming is done quickly, we inevitably miss crucial details, which leads to defects and other problems. And some of those details are ones that systematically exclude or harm oppressed groups. For example, most companies, in a rush to market, often overlook basic compliance with the [WCAG accessibility standards|https://www.w3.org/WAI/standards-guidelines/wcag/], which define a minimum level of accessibility for people who are blind or low-vision navigating the web. Teachers can encourage students to slow down by structuring programming activities in a way that discourages a fast pace, and if time in class is limited, reducing the scope and complexity of the programs that students write to make space for a careful, deliberative pace.

Of course, in the absence of policy and enforcement, all of these tactics require some voluntary action. In most countries in the world, programmers have no legal responsibility for what they make<speed99>, and software companies regularly use software licenses that absolve them of any legal liability for what impact software has on an individual or community<shay04>. This is unlike nearly all other professions: engineers who design buildings and bridges are responsible if they fall down, health care providers are responsible for medical errors, and scientists are responsible for the trustworthiness of their discoveries. Society has not yet broadly decided to make programmers responsible for their code and its impact, and until it does, making room for algorithmic justice will require personal and organizational will.

|Chapter16_Figure04_Classroom.png|A classroom full of youth working at computers, whiteboards, desks, and tables.|Programming is a social and creative skill that should be learned with others.|@jessie|

# Teaching programming

Much of modern computer science education conflates coding with computer science. They are of course related -- programming builds upon concepts in computer science, and advancing computer science often involves programming -- but the two are actually surprisingly disjoint in practice. For example, while many introductory CS courses in post-secondary teach a programming _language_, programming as a skill is often not taught at all: students are given problems and left to organize and orchestrate their own problem solving in isolation. In some ways, higher education views programming skills as something students will learn on their own, and eventually master in industry as software engineers. The rest of the CS curriculum teaches concepts about computing that are often relevant to decisions made during programming -- how to assess the efficiency of an algorithm, how to harness probability to create machine-learned classifiers, how networks are made to operate efficiently, and so on -- but none of these offer direct instruction on how to program, just opportunities to practice.

In secondary education, there is also some question about whether programming skills need to be taught. The [CSTA CS learning standards|https://csteachers.org/page/about-csta-s-k-12-nbsp-standards], widely integrated into U.S. state law, center programming skills, even though many youth will not go on to become CS majors in college or software developers in industry. However, teaching programming can increase interest in those careers to a diversity of students, depending on how programming is taught<sax20>. Some observe that programming isn’t only relevant to software engineering, but also to many other professions, including any profession that analyzes data such as science, business, or other engineering disciplines. It can even be useful in creative disciplines, like arts and entertainment, which are beginning to harness code as a creative medium. 

Some arguments for teaching programming argue that learning to code will transfer to problem solving skills in other settings. Evidence on this transfer is mixed. There is some evidence of modest transfer effects for tasks requiring meta-cognition and creative thinking, but there is no evidence of effects of learning to code on school achievement, literacy, or other outcomes<scherer19>. Moreover, there is no evidence that learning to code has any impact on students’ critical consciousness of computing in society; such skills help students see how software is constructed, but not how software directly or indirectly impacts people’s lives in positive or negative ways.

Choosing to teach students to coding skills, therefore, requires some careful reasoning about why. If the goal is to entice students into pursuing CS in college and becoming software engineers, teaching programming in culturally responsive and sensitive ways may be a good choice. However, if the goal is to help students see the diversity of ways that programming might be applied to a range of professions, it’s not enough to just teach Java, Python, or Scratch; each of those draw upon a particular community of practice that will only reveal some of the ways that computing is applied. And if the goal is to develop students’ critical consciousness about computing, teaching programming alone will likely achieve none of this, as learning languages and APIs doesn't teach youth anything about how computing is used in the world to reinforce systems of oppression<ko20>.

In the rest of this chapter, we’ll consider some of the key methods for teaching programming as a skill, and then share a unit sketch that instead teaches programming as a path to critical consciousness of code in society.

## Developing skills

Programming, like any other skill, requires sustained, deliberate practice<williams18>. There are no shortcuts to helping students master programming skills: students require lots of problems, lots of feedback, substantial encouragement and motivation<robins03>. Orchestrating all of these for a diversity of students is non-trivial, as it requires making many delicate decisions:

* What programming language(s) will students learn? Each language has its own complexities, concepts, and design flaws; most are not designed for learning or teaching<qian17>, and even those that are pose their own numerous learning challenges<swidan18>. CS education researchers argued for decades about which languages are "best" to learning<hadjerrouit98,pears07>, eventually realizing that there is no best: there are just tradeoffs, and limited evidence to make informed choices about those tradeoffs<stefik14>.

* What editors and tools will students use? Editors and tools can make harder tasks easier, prevent errors, and give some forms of shallow feedback, but they also can require learning of their own and can make learning or performing some tasks more difficult<ko04>.

* What kinds of programming problems will students solve? Problems of their own choosing<resnick12>? Problems of a teacher’s choosing<parlante17>? Problems found in the world<ellis07>? The more control students have, the more engaged and motivated they might be initially, but the more complex problems are likely to become. The less control students have, they might be engaged less initially, but scaffolding can help build confidence.

* How will students receive feedback, how frequently, and from whom? Auto-graders, as we discussed in @assessment, automatically check student programs against specifications of correctness, can provide immediate feedback, but feedback that is shallow and leads to gaming behavior that doesn’t reflect authentic practice<hao21>. Teacher feedback can provide deep diagnostic insight into students’ programming skills, but is exceptionally time consuming and requires substantial pedagogical content knowledge.

Because these questions can be answered in numerous ways, there are numerous ways to teach programming skills. One approach is drill-and-practice problem sets with lots of programming, lots of feedback, and a steady march toward mastery. Another approach is project-based, which immerses students in projects that they've envisioned, and situates practice in authentic, personally meaningful problems. Some approaches position students as contributors to open source projects, encouraging them to learn through community engagement and apprenticeship on real problems.

Because this book is focused on critical perspectives on CS education, we won't detail the approaches above here. There are, however, dozens of books that provide guidance on the merits of these different programming education paradigms. For example, Grover’s _Computer Science in K-12_<grover20> assembles many perspectives, methods, and tips on teaching programming in K-12 settings in constructivist ways, revealing the critical PCK that teachers can need when teaching programming that centers student interests. Other works such as Hazzan’s _Guide to Teaching Computer Science_<hazzan15> focuses on scaffolding creative activities, centering project-based learning. Other works focus on carefully designed didactic activities<xie19>, centering problem sets, and systematic direct instruction on programming language concepts, building robust skills incrementally. And an increasing number of methods from research are finding ways to explicitly scaffold self-regulation skills, which are often at the heart of students’ difficulties with programming leading to mistakes, confusion, frustration, and quitting<loksa16b>. Such methods explore explicit prompts for reflection<prather19, loksa16>, and help students to develop independent self-regulation skills, leading to improvements in self-efficacy, growth mindset, and productivity. Each of these approaches have different strengths and weaknesses, often trading off between motivation and mastery. This diversity of approaches is healthy, as teaching computing in culturally-responsive ways requires a diversity of methods. But it also reveals that no single teaching method of developing programming will be superior for all students, community, and settings.

## Unit sketch: Critical, reflective programming

While most research on teaching programming has focused on the skill itself, few methods have viewed programming as a means to other critically conscious insights about computing in society. If a teacher’s goal is to develop skill, this might be okay; but if a teacher’s goal is to develop the kind of literacy that all students need about how computing is shaping society through programming, such methods are likely to be superior to centering programming skill. In this section, we present one possible way to incorporate justice considerations into programming, demonstrating how critical consciousness and programming skill might be achieved simultaneously.

The learning objectives for the unit sketch are:

1. Students will be able to recognize the distinct activities of programming: design, planning, implementation, verification, and debugging.
2. Students will be able to identify opportunities to reflect on equity, inclusion, and justice during each activity.

To achieve these objectives, the unit focuses on a programming problem of small scope, leaving more space to focus on the activities themselves. Over the course of five sessions, it authentically positions students as programmers, while centering justice in those authentic programming activities.

=
### Session 1: Design

* Begin the lesson by explaining that this unit will teach them to organize their programming work so that it is productive, successful, and just.

* Show students an example of where they will start -- an idea -- and where they will end -- a program that implements that idea. The example should be something of cultural relevance to the students, and ideally be modest in scope (e.g., a single function). For example, it might be a function that computes whether a student should be counted as tardy based on a set of inputs or computes the amount of government financial aid a student receives for college.

* Define the five activities involved in programming and how each of them have their own challenges.

* Present a second idea related to the example as the challenge for the unit, fitting the same criteria, and ask the students to break into teams of two or three and to refine the design of the. What aspects of the design might be biased or cause harm? Should the program even be written?

* At the end of the lesson, ask pairs to present modifications they want to make to the design before proceeding with programming.
=

This first lesson does a lot of work, explaining the different programming activities and also asking students to engage critically in the design. Seeding the class with a small idea, particularly one that is rich with potential injustices, can help amplify the difference between design and programming issues. In particular, questioning whether the design should even exist can be a particularly salient design alternative.

After this session, student pairs will have a sense of design as distinct from other activities (see @design for a more elaborate example of how to scaffold distinct activities in design). The next session engages students in planning their implementation:

=
### Session 2: Planning

* Have students reconnect with their partners and restate the design they settled on in the previous session.

* Explain that planning is a critical part of programming and may involve thinking about algorithms and code reuse before ever writing a program.

* *Formative assessment*. Prompt teams to write pseudocode for their design, detailing the algorithm that will be used to do their computation. As part of this, students should write "subgoal" labels<margulieux16>, explaining how each part of their pseudocode helps accomplish the larger design goal. Students should also research code that might be reused to help implement the algorithm. After writing pseudocode, teams should be prompted to reflect on who would be excluded or oppressed because of the algorithm's assumptions. Discuss how they will present their work in later discussion, negotiating the final form of their pseudocode. After reflection, engage the class in a discussion of those assumptions, and how the students’ algorithms might be revised to avoid those problems. 
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
    ** Debug the fix if necessary.

* Throughout the session, work with groups to help scaffold their self-regulation skills, and slowing down their work.

* Before the session ends, regroup as a class, and reflect: What was hard about debugging? What made it easier? What strategies were most effective?
=

This session helps students identify the differences between verification and debugging, and illustrates how the bug fixing part of programming involves the same activities as programming. The last session asks students to reflect on the outcomes of their programming process and the difficulties of integrating judgments about harm.

=
### Session 6: Sharing and reflection

* Have students reconnect with their partners and prepare their final program for sharing.

* Share as negotiated with the students in Session 3.

* As part of sharing, prompt students to share the hardest problem they encountered during programming and why it was hard, describing it in terms of the distinct programming activities.

* Lead a discussion with students about what forms of exclusion or injustice their final solutions might still cause. What was hard about ensuring that they did not do harm while they were programming?
=

Across these six sessions, this unit should help students recognize the distinct activities of programming and identify ways to audit for injustice in each of them. By focusing on a single function, it removes the complexity of building larger programs, but also removes the potential of creating something more personally interesting to students. This unit might be sequenced after another more creative unit, helping students to learn the benefits of more structured programming workflows after having led some less structured -- and likely messier -- projects.

# Conclusion: Critically conscious coding

It's easy to criticize code when we're not the ones that have to make it. Every critique leveled against a powerful Silicon Valley company, every lawsuit, and every little frustration we have with confusing, unreliable software is in some ways cheap: we didn't have to build the things and have no sense of the immense technical difficulties or constraints the developers faced in bringing it to life. When we use software, we have the privilege of ignoring all of that engineering effort, just as when we take for granted bridges and buildings that have yet to fall down.

And yet, effort and difficulty do not absolve developers from responsibility for what they make. Anyone creating software, whether for pay, as a volunteer, or even as a hobby, must consider the potential impact of what they are making on other people, especially those in marginalized groups so prone to oppression by software. The question is therefore not _whether_ people who program are responsible, but how to weave that responsibility into an activity that can be ruthlessly complex and constrained already. Whether it's slowing down decision making, injecting social impact considerations into distinct phases of programming activity, trying to develop a sense of moral obligation, or creating new laws that hold programmers accountable, the key goal is recognizing that programming has consequences, and programmers are responsible for them.

Computing education is central to achieving this goal. However students encounter coding in school, it should never be framed as a purely technical activity. All students, regardless of what work or play they might do in life, should leave secondary studies with a sense that programming is a _moral_ activity, and one to be taken seriously, with responsibility, and with care. That does not mean programming has to be joyless, but it does mean that the many beautiful opportunities for personal expression and challenge embedded within programming have to be balanced with less ego-centric, more empathetic views of what we are making.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaIC
@csta2IC21
@csta3AIC25
@csta3AIC26
@cstaAP
@csta2AP10
@csta2AP12
@csta2AP13
@csta2AP14
@csta2AP16
@csta2AP17
@csta3AAP17
@csta3BAP16
@csta3BAP17

@toleranceHeader
@toleranceIdentity
@tolerance1
@tolerance3
@tolerance4
@toleranceDiversity
@tolerance6
@toleranceJustice
@tolerance12
@tolerance13
@tolerance14

@teacherHeader
@teacher1
@teacher1a
@teacher1e
@teacher1f
@teacher2
@teacher2a
@teacher2b
@teacher2c
@teacher3
@teacher3b
@teacher4
@teacher4c
@teacher4e
@teacher4f
@teacher4g
@teacher5
@teacher5a
@teacher5b
@teacher5c
@teacher5d
@teacher5e
@teacher5f