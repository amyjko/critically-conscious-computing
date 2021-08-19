=
@keyIdeas
* Tools are essential to creating software because they automate tasks that would be prohibitively time consuming and error prone to be done manually.
* Tools are created by specific people, for specific people, for specific tasks, and thus have their own values, expectations, assumptions, and community norms
* It is not always apparent who a tool is for or for what tasks it is defined, as tool designers do not make their assumptions explicit
* Teaching tools to students can benefit from providing context about the community who created the tool and why, helping students to view friction they encounter in learning and use as poor design choices rather than personal failures.
=

Creators of all kinds rely on tools. Painters need paint, paintbrushes, canvas, palettes, and many other specific tools to create what they imagine in their minds. Writers may need pencils, pens, ink, a word processor, dictionaries, thesauri, and other tools to write. Bakers may need measuring cups, spoons, knives, dishes, ovens, thermometers, and other instruments to create the perfect cookie. Like these professionals and others, computer scientists, professional software developers, and anyone making software for any reason, needs tools. In CS, these include things like editors, compilers, debuggers, issue trackers, documentation, and more to create, maintain, and evolve what they are creating in collaboration with other people.

But it is easy to take tools, and their designs, for granted. For example, we might imagine that a pencil has always existed, that everyone knows how to use one, and that everyone can use one equally; but when we’re think carefully about tools like a pencil, we know that they were invented, that learning to use them takes practice, that not everyone has learned use one, and that not everyone can use one equally. Pencils, in fact, are full of bias, in that they assume their user has a hand, can comfortably grasp a long thin piece of wood, that they have access to paper and a pencil sharpener, that they can see what they are writing, that they have stable control of their motor movements, and--perhaps most importantly--that they can read and write in a natural language. Few tools might be more simple, and yet assume so much about the social, physical, political, development, and economic circumstances of a person. All tools, pencils included, are designed by specific groups, for specific groups, assuming particular contexts of use, and these choices inevitably exclude.

Tools in computer science are no different. Consider, for example, one kind of tool that we’ve already discussed: [programming languages|languages]. As we’ve noted, most programming languages are designed by very specific groups or individuals, for specific purposes, and these design goals can often result in programming languages precluding particular groups from using them. Consider [Python|http://python.org], for example, one of the most popular languages in use, and widely used for web applications, scientific computing, data science, and AI. As we discussed earlier, it was designed by Guido van Rossum, a White, Dutch, cis man who had worked at a range of software companies throughout the 1980’s. When he created Python, he wasn’t creating a language for all people of all abilities and knowledge, he was just trying to create a language for programmers that was simpler than other widely used languages at the time (Java, C, C++). The result was a language that was indeed simpler in many ways, but really only for experienced programmers. Choosing to use Python in a classroom is therefore about far more than just choosing a language: it’s choosing an entire history of design decisions, a design philosophy, and an intended community of users (primarily professionals and not students) with particular values, and an ecosystem of related tools that share those values. Just like choosing to use pencils, choosing Python is fraught with historical and social baggage, little of which is visible in tutorials or documentation.

To help reduce this complexity, the rest of this chapter discusses various kinds of tools in CS and the skills they require to use, and then frames tools critically, showing how a choice of tool is actually a choice of values, about inclusion, equity, and community. We will then discuss one method for teaching tools that centers these critical views of tools, helping students to see their relationship to tools with more agency.

|Chapter18_Figure01_Tools.png|An overhead x-ray of several carpentry tools, with a large pixelated mouse cursor hovering over the toolbox.|Making computing requires many distinct tools.|@jessie|

# Kinds of programming tools

The simplest way to view tools is to just think of them as a monolith, named by the programming language for which they work. When we say [Scratch|http://scratch.mit.edu], for example, we might refer to all of the various features of the Scratch application, including its website, its tools, its community, and the various books and documentation that support it. Or, when we say [Java|https://www.java.com/en/], we might refer to the many different implementations of Java compilers, Java runtimes, Java documentation, and communities of people who support each other in writing Java code. We call each of these broad aggregations of tools and communities *programming systems*<ko04>, in that they combine together many distinct, evolving tools, people, and practices to support the creation of software with a particular language. In some cases, programming systems might appear to be a single application: the [Scratch website|http://scratch.mit.edu], for example, appears to be a fully self-contained system with all of the tools necessary to use it. In contrast, some programming systems are decentralized; there is a [Python website|http://python.org], for example, where Python can be downloaded and its features are documented, but the broader ecosystem of Python tools are scattered across thousands of websites, maintained by thousands of people, with no inherent central organization. However, because not all programming systems are centralized, it can be helpful to distinguish between the different types of tools that exist in programming systems, and how they come to exist. 

|Screenshot-PyCharm.jpg|A screenshot of the PyCharm IDE showing code, a breakpoint, a search dialog, and a call stack.|[PyCharm|https://www.jetbrains.com/pycharm/] is an IDE for writing Python applications, integrating many other tools into one window.|JetBrains ©|<

# Integrated Development Environments 

Let’s first consider *integrated development environments* (or *IDEs*). IDEs aggregate many kinds of tools together in a single place, to make it easier to write programs without having to switch between different tools. Scratch has an IDE, integrating several distinct tools together into a single page: the editor, the output of a Scratch program, tools for customizing the appearances of Scratch characters, as well as access to Scratch documentation. The Scratch IDE was designed explicitly for youth to express their creativity. Similarly, there are IDEs for Python as well: a company named [JetBrains|http://jetbrains.com], based primarily in Russia, creates the [PyCharm IDE|https://www.jetbrains.com/pycharm/], which attempts to make it easy to quickly write code and identify and resolve basic errors. This is an IDE designed for experienced Python programmers. Microsoft, based in Redmond, Washington in the United States, makes an IDE called [Visual Studio Code|https://code.visualstudio.com] (VSCode) which has similar goals, but also supports other programming languages. In contrast, the [trinket.io|https://trinket.io] website is an IDE that allows learners to write and test simple Python programs, making it suitable for classroom contexts, which may not need the complex features of PyCharm or VSCode.

|Screenshot-VSCode.png|A screenshot of Visual Studio Code, showing a source file, an autocomplete window, and a list of files.|[Visual Studio Code|https://code.visualstudio.com] focuses on efficient, customizable code editing|Microsoft ©|>

## Code Editors

One of the most salient tools in an IDE is its *code editor*<roberts82>. Editors are how we write and edit computer programs, and can be as simple as a text editor or word processor. Editors designed specifically for writing code, however, can do many more things. They can color the different parts of a program based on whether they are keywords in a language, data values, or variable names (this is called syntax highlighting). They can highlight mistakes like syntax and compiler errors. They can make it faster to copy, modify, and restructure code. 

This variation in features is most apparent when comparing the Scratch editor to editors typically used with Python code: rather than having Scratch users edit code as text, it is edited by dragging and dropping "blocks" from a menu (*block-based* editors). As we discussed earlier in the [Programming Languages|languages] and [Verification and Debugging|verification] chapters, this has two advantages: students don’t have to remember what kinds of code can be written, because the menu lists them, and students cannot produce programs with invalid syntax, because the drag and drop operation will not allow blocks to be dropped in invalid places. 

In contrast, most Python editors are edited as text (*text editors*), which require programmers to remember Python keywords and allow programmers to write syntactically invalid code. Programmers prefer to use text editors over block-based editors because they make it so easy to edit code; block-based editors make it quite difficult to change programs, because stacks of blocks have to be disassembled to restructure them, whereas editing a few lines of text might be enough to restructure a program. Moreover, for people who are blind or have low-vision, it may be impossible to use a block-based editor, because they may not be able to use a mouse to drag and drop blocks, since this requires vision.

It’s important to note that there are block-based Python editors, and if the Scratch team wanted to, they could create a text-based Scratch editor. In fact, there are some editors that combine blocks and text<kölling15>, and in countries where computers are scarce, most code might be written on chalkboards or whiteboards, which are technically also code editing tools! Editors, therefore, are another site for exclusion, excluding people without money to purchase computers on which to run software-based code editors, and excluding people with vision disabilities from writing code altogether. This also shows that editors are orthogonal to language: languages aren’t inherently block-based or text-based; it just tends to be that programming system designers choose one or the other.

`java
App.java:14: error: invalid method declaration; return type required
`An example of a Java compiler error, confusingly noting that a method was declared without any indication of the type of data it returns.

## Compilers and Interpreters

Another critical programming tool is called a *compiler*. As we noted earlier in the [Programming Languages|languages] chapter, these tools take a computer program that is written in some high level language and translate it into machine instructions that a computer can execute automatically. A similar kind of tool is an *interpreter*, which doesn’t translate a program into machine instructions, but rather executes the program as it reads it. Without these tools, people would have to either write programs in machine instructions, or manually translate code in high level languages into machine instructions. This would be extremely laborious, and so compilers and interpreters are essential (much like it would be quite difficult to build houses without hammers).

Another value of compilers and interpreters is how they help find defects in programs. As we noted above, editors can help prevent many kinds of errors, but they cannot prevent all of them. A compiler might find some inconsistency in the data type of a variable and a value assigned to that variable (e.g., a Boolean variable assigned a text string). It might find a reference to a function that doesn’t exist (e.g., defining a function named `load`, but accidentally calling it by the name `laod()`). It might discover that an argument is missing from a function call, making it impossible to execute the function without it (e.g., using a max() function to find the largest value in a list, but forgetting to provide the list). 

The kinds of errors that a compiler or interpreter might find depend on the programming language, and so their ability to find errors, and clearly explain them, can vary considerably. Scratch, for example, prevents many errors with its block-based editor, but the language itself is also designed to have a small number of possible errors, so there are very few occasions where the Scratch interpreter will give an error. When it does--for example, if a program tries to create an infinite number of objects, consuming all computer memory--the error messages occur when the program runs. Of course, none of this means that errors are impossible in Scratch; instead, all of the errors that someone might make in a Scratch program are those where the logic of the program is unintended. Python, in contrast, can produce many possible errors when interpreted, and the error messages can be hard to understand unless someone is deeply familiar with the semantics of Python programs. And, of course, the same kinds of logic errors possible in Scratch programs are possible in Python too. Finally, because error messages are written in natural language, but often refer to technical ideas, many can be hard to comprehend, and even misleading, depending on who is reading them and what knowledge they have<becker19>. Error messages are therefore another place in which the values and intended audience of a community behind a programming system become apparent and can exclude.

|Screenshot-Xcode.png|A screenshot of the Xcode IDE showing a running program paused on a line, a call stack, and a lis of variables within the call stack.|The [Xcode IDE|https://developer.apple.com/xcode/] for developing Apple applications, and it's breakpoint debugging view, which allows developers to inspect an executing program's behavior|Apple ©|<

## Debugging Tools

Because errors are always possible, *debugging* tools can also be essential. As we noted in the [Verification and Debugging|verification] chapter, debugging is fundamentally about understanding what happens when a program runs. Because programs might execute hundreds, thousands, even millions of instructions per second, finding the one or two things that when wrong amongst thousands can be hard. Debugging tools can help with this search. These can be as simple as a way of producing some output--like text to a log of messages or even a sound--when a particular part of a program executes, so that you know it did (or didn’t happen). 

A more sophisticated tool is a *breakpoint* debugger, which allows one to specify particular parts of a program on which the program will pause, allowing you to inspect its state. Even more sophisticated tools will allow one to record the entire execution of a program and search it, or even select a part of program output that was wrong and get a report on what caused it. Unfortunately, debugging tools are often an afterthought in many programming systems. Scratch doesn’t provide one at all, despite the fact that most learners who write their first program make some mistake that requires debugging. And Python only provides the most basic of breakpoint debugging tools. There is substantial research on significantly more helpful debugging tools, but most of it has not been built into commercial tools.

Much of the lack of support for debugging comes from a longstanding culture in computer science of viewing debugging as a "dark art" that only the "best" programmers can do, while simultaneously viewing errors as something only less experienced programmers make. Perhaps this kind of gatekeeping prevents many from prioritizing strong tool support for finding the causes of mistakes.

|Screenshot-GitHub.png|A screenshot of a GitHub Issues page, showing several issues in a table, each with colorful tags.|GitHub is a site for managing change to code. This page shows its issue tracker, which helps teams keep track of defects, feature ideas, and other future work.|GitHub ©|>

## Evolution Tools

There are of course many other tools that people who write code use. As code changes, they may rely on version control tools to track changes, allowing them to revert to previous versions if there’s a mistake and combine their work with others’ edits. They may use issue trackers to keep track of failures that haven’t been debugged and fixed, or ideas for features they might add. They may use tools for writing and generating documentation about the program they are writing, so that others can more easily learn how to reuse it or change a program. They may use project management tools to keep track of programming tasks, to divide up work and collaborate with other people.

|Chapter18_Figure02_Soup.png|A bowl of green soup with several utensils covering over it, and the spoon about to be selected.|"The right tool for the job" applies in CS too.|@jessie|

# Comparing and Selecting Tools

Because tools can vary so widely in their function, community, and values, it’s important to consider how they compare, so that you might consider these factors when searching for, evaluating, and ultimately selecting a tool for teaching. As we shall see, many of the most critical dimensions are not easily discoverable.

Let’s consider the most basic dimension first: *device requirements*. After all, programming tools require computers to run, and each tool may require different capabilities of student and school devices. Consider, for example, Python: most Python tools must be downloaded and installed onto a desktop or laptop computer and cannot be installed on mobile devices like tablets or phones. If students don’t have access to such hardware, or do not have permissions to install these things, the set of tools available to them shrinks dramatically (e.g., there is only one website that runs Python code without installation, and it’s only a small subset of Python). Scratch, in contrast, can be run in a web browser without installation, though it cannot be installed or run on many tablets or smartphones. Choosing a programming system therefore requires not only knowing what tools you might use in that system, but also exactly what device requirements those tools have, and how those requirements might interact with a school’s IT policy. In a world where gaps in technology access are broad, deep, and inconsistent, this can be a major constraint in identifying viable tools for classrooms.

Tools also vary in what *prior knowledge* they assume. Programming languages might make broad assumptions about what people know about computer science, for example: Scratch, even though it is intended for beginners, uses the word "variable" with the assumption that someone external to the system will explain what variables are. Compiler and interpreter errors might require knowing more than the programming language, referring to details about how the compiler or interpreter works; for example, if a Python program violates the Python syntax, it will simply say `SyntaxError: invalid syntax`, assuming that every Python user knows all the Python syntax rules, and the error does not need to elaborate or instruct on what this means. Debugging tools might require robust knowledge of not only how programs execute in a particular language, but also how programs manage things like memory. The barriers to learning a tool, therefore, can be immense--so immense that many professional developers, even those with a formal education in computer science, might spend days, weeks, or months learning concepts that the tool uses before they can use the tool in even basic ways. Of course, if we think back to the first time we learned to use a pencil or a paint brush, this shouldn’t be surprising: every tool takes time to learn, and in learning it, reveals other important knowledge that wasn’t clear from the outset. Programming tools are just often more complicated than pencils and paintbrushes. Therefore, rather than approaching programming with trepidation, it’s best approached with the expectation of a long period of learning--for students and teachers alike.

Another dimension along which tools vary is their *learnability*. The best tools will provide carefully designed and written learning materials, helping teachers and students understand the core concepts the tool builds upon, learn it’s features and intended use cases, all while hiding or scaffolding the more advanced features support so that learners can focus their attention on the basics first. Of course, because most programming tools are created by communities with no instructional design expertise, most tools do few of these things, if any. There might be a minimalist "getting started" page, or blogs or YouTube videos created by the community with more guidance. Again, because communities of programmers tend to value self-reliance, tinkering, and independent learning, many view offering any form of learning support, or designing the tool in a way that it can be learned more easily, as counter to their values. This can result in an unhelpful kind of gatekeeping, where only those with the motivation, resources, and self-efficacy to "tinker" their way to understanding a tool will ever be able to use it.

Tools can also vary in their *accessibility*. Consider two major categories of disability: vision and motor abilities. If a student cannot see, or has low visual acuity, they can’t use a tool that assumes that a person is sighted. And yet most tools assume sight. For example, Scratch, even though it is widely used, assumes that students can see, since it requires someone to use a mouse to drag and drop blocks in its editor. This is despite the fact that there are millions of blind or low vision students worldwide. Scratch also assumes particular motor skills of being able to grasp a mouse, click and hold its button, and move a block to a particular place in the editor. Even if a student can see, if they can’t perform this action reliably, they cannot edit Scratch code. In contrast to Scratch, which relies on block-based editors, most other programming languages that use text-editing _are_ accessible to blind, low vision, or motor-disabled people, via the use of keyboards are screen readers. However, programming languages themselves can also pose accessibility problems, as screen readers can struggle to read programming language syntax. Programming languages like [Quorum|http://quorumlanguage.com], which are designed to be inclusive to people who are blind or have low-vision, are the only languages designed to be inclusive to all. Basic accessibility of tools can therefore be a major source of exclusion in CS education. It’s up to teachers to select tools that everyone can use.

As we’ve noted throughout this chapter, tools are shaped by communities and their values, and these values can shape the learning experiences heavily. And so understanding the *community* that produces and maintains a tool can be critical to understanding what experiences students might have when using its tools and interacting with its community. Consider, for example, Scratch, which is a community that prioritizes creative expression, learning through making, sharing and remixing, and play. The tools that the Scratch creators create, as well as the broader community of Scratch scratch users, will fundamentally be oriented towards social creativity. This might be the exact set of values and goals you want for your class. On the other hand, if you want a classroom that reflects the values of the broader professional community of software engineers--independence, self-reliance, precision, speed--Scratch would be a bad choice, as its tools often reflect the opposite of those values--collaboration, social support, and creative play. A programming system like C, Python, or Java might be a better choice in that case. Of course, it’s also possible that none of the programming systems share your values. For example, if you wanted a programming language and ecosystem of tools that prioritized global inclusion, equity, and justice, you would not find one. This sometimes leads educators to create their own communities around tools, centering values that other communities do not.

If we consider these four dimensions across many programming systems, it becomes easier to make choices about which tools might best align with the goals of our teaching. Consider the systems below, for example, which are some of the more popular and notable systems used in CS education:

,Programming System|Prior Knowledge|Learnability|Accessibility|Community
,[Scratch|http://scratch.mit.edu]|One of the supported natural languages; based animation|Willingness to tinker; ability to read and follow tutorials| Assumes sight and ability to perform precise motor movements| Youth and teachers engaged in creative expression\, sharing\| play
,[MIT App Inventor|https://appinventor.mit.edu]| One of the support natural languages; smartphone app conventions| Willingness to tinker; ability to read and follow tutorials| Assumes sight and ability to perform precise motor movements| Teachers interested in creating mobile applications
,[Quorum|http://quorumlanguage.com]| English| Willingness to tinker; ability to read and follow tutorials| Fully accessible| Teachers committed to including students with disabilities in CS education
,[MakeCode|http://makecode.com]| One of the support natural languages; sensor terminology| Willingness to tinker; ability to read and follow tutorials| Assumes sight and ability to perform precise motor movements| Youth and teachers interested in tinkering with hardware/software
,[Bootstrap|https://bootstrapworld.org]| English; arithmetic| Assumes learners will be scaffolded heavily by teacher guidance| Assumes ability to use keyboard| Teachers interested in connecting CS to math and data science
,[Python|http://python.org]| Basic CS data structures and algorithms| Assumes learners will search for and learn from materials independently\, teaching themselves| Assumes ability to use keyboard| Programmers concerned with readable code; data scientists concerned with analyzing data.
,[Java|https://www.java.com/en/]| Basic CS data structures and algorithms| Assumes learners will search for and learn from materials independently\, teaching themselves| Assumes ability to use keyboard| Programmers concerned with creating reliable\, maintainable\, portable code
Examples of different programming systems and their various assumptions.

The table above has many caveats. First, programming systems are always changing, and so the details above may change as well, as communities and their tools evolve. Second, it is very hard to discover the details above, because most communities do not make their assumptions clear to newcomers, and they only become clear as you attempt to learn and use the tools from the community. Third, there is no centralized list of programming systems and their various assumptions and values, and so finding information about communities can be difficult. Perhaps as CS education matures, support for selecting, evaluating, and using various tools for CS education will mature as well.

|Chapter18_Figure03_Writing.png|Several students learning to use a pencil to write, and a teacher helping over the shoulder of one student.|Learning tools is part of learning, like learning pencils is a part of learning writing.|@jessie|

# Teaching Tools

All of the above might seem like an incredible amount to learn just to be able to make software. And it can be intimidating: with so many programming languages, so many kinds of tools, and so many options for each kind, how does one even begin to decide and begin to learn?

The reality is that the decision isn’t easy, even for a professional software developer. Consider, for example, high-demand skills for applying machine learning in software development. A study of more than 600 professional developers found that they wanted to learn all of the tools for using machine learning, but they struggled to find meaningful resources to learn the statistics, the APIs, the tools, and the ubiquitous, incomprehensible jargon; they wanted collections of best practices, conceptual tutorials, learning materials, practical tips, and more usable tools, but often found none of these<cai19>. Other studies have found that many developers feel like they are overwhelmed by the number of new tools, and rely on their social communities to learn about new tools<murphyhill19>. Other studies still show that documentation is rarely complete, and then efforts to supplement it with community contributions can result in a complex web of accurate and misleading information<parnin11>. Across CS, the trends are the same: large investments in new tools, small investments in materials and opportunities to learn them.

Much of this comes from the overarching dominant values in CS of self-reliance and elitism<turkle90>: there is a pervasive sense that it is up to individual developers to teach themselves, and that if they cannot, then they should not be writing code. This view, while no longer ubiquitous in CS cultures, results in tool ecosystems that are often impenetrable to newcomers, preventing tool learning, and thus eroding the diversity of who is welcome to contribute and participate in making.

Within this landscape, CS educators have a few major options for how to engage tools. We’ll discuss the two dominant options, and then propose a third, which centers critical consciousness of programming tool communities and their values.

## Teaching Professional Tools

In all disciplines, there is a key educational decision to make about how to engage the discipline’s tools and technologies: should classrooms use the authentic tools of practice, or use educational technologies designed for learning, at the expense of authenticity? For example, in chemistry labs, should students learn to use real bunsen burners, or something less explosive? In physical education, should students learn to shoot on NBA regulation basketball hoops, or something shorter and adjustable? These basic questions about scaffolding are at the heart of whether school is intended to prepare students for professional practice by introducing them to its communities of practice<li09>, or is the purpose a different kind of literacy?

There are strong arguments for the former. For example, in many CS learning contexts, the explicit framing of CS education is career and technical education (CTE). In that context, using the tools of practice seems entirely appropriate, as that is what students might expect, especially if the course is intended to prepare students for jobs after graduation. Similarly, when students perceive tools of practice as authentic, they may be more motivated to learn them, since there is evidence of many others who have invested in learning them<guzdial06>.

And yet, if a teacher chooses professional tools, there can be some severe tradeoffs. Tools will be more complicated to learn, they will expect greater depth in students’ prior knowledge of CS, they may have fewer resources to support tool learning, and they may encounter people in the community that supports the tools that at best ignore learners and at worst, view them as explicitly unwelcome. After all, not all communities in CS are welcoming, nor are they all inclusive or equitable.

One way of overcoming some of these challenges is to use modified versions of professional tools. For example, there have been many efforts to make educational versions of professional tools, selectively removing or reframing features to reduce complexity<reis04>. In fact, some modern IDEs are configurable enough that teachers can implement these customizations themselves, removing features that won’t be used, and customizing error messages to help reduce complexities.

## Teaching Educational Tools

The primary alternative to using professional programming tools is to use ones explicitly designed for learning, or at least for non-professional programmers. Modern options abound, often created by CS educators in higher education<kelleher05>, and include notable systems such as:

* [Scratch|https://scratch.mit.edu/], a programming system for making 2D interactive animations
* [Alice|https://alice.org], a programming system for making 3D interactive animations
* [Processing|https://processing.org], a programming system for making interactive visual art
* [AgentSheets|https://agentsheets.com], an programming system for making rule-based simulations
* [BlueJ|https://bluej.org] and [Greenfoot|https://www.greenfoot.org/door], IDEs for learning Java and object-oriented programming
* [Gidget|https://helpgidget.org], an educational game for learning debugging
* [Android App Inventor|https://appinventor.mit.edu], a programming system for making Android applications
* [Swift Playgrounds|https://www.apple.com/swift/playgrounds/], an educational game for learning the Swift programming language

Some of these include authentic elements (such as professional programming languages), while others offer entirely unique programming languages that can only be used within the system. Some offer the ability to share programs, whereas others are intended to integrate with other tool platforms.

Choosing an educational programming system has the opposite tradeoffs to professional ones: they are much less likely to pose unhelpful complexities, they will scaffold hard concepts, and they will often have features explicitly designed for learning environments, including being designed to some degree for equity, including slower computers, mobile devices, and accessibility. But students motivated by career learning may perceive them as inauthentic toys, disengaging some of them from wanting to create. Strategies for overcoming inauthenticity can include creating a sense of authenticity by demonstrating a broader community of use; for example, Scratch achieves some sense of authenticity through it’s community features, where there are countless other youth sharing their creations remixing others’ creations<dasgupta16>.

## Unit Plan: Critically Conscious Tool Learning

While both of these approaches have their strengths, neither addresses the core underlying issue with tools: they emerge from particular communities and values, and until those values and the teacher’s rationale for choosing the tool is visible, students will not know how to interpret whatever difficulties they encounter in tool learning. Choosing tools that reflect students’ values, but then also helping students become critically conscious of the tool they are using, who made it, and why, may help them persist in learning a tool, regardless of what tool a teacher has chosen.

To illustrate how this might be done, consider the example unit plan below, which teaches students about the [VS Code IDE|https://code.visualstudio.com], an IDE used by many developers to create web applications and build data science pipelines.

The learning objectives of this unit are:

1. Students will be able to explain why VS Code was created
2. Students will be able to edit, compile, run, and debug programs in VS Code
3. Students will be able to pull, commit, and push changes to a Git repository
4. Students will be able to self-regulate troubleshooting when the above activities are derailed by errors and configuration issues.

To achieve these learning objectives, the unit’s approach is to focus on tool learning specifically, and not writing a new program as well, as that would introduce considerable cognitive load. The first session begins by setting the stage for the tool learning.

=
### Session 1: Why does VS Code exist?

* Tell the origin story of VS.Code, starting with the very beginning of early digital computers: 

`
Long ago in the 1950’s, computers filled rooms. To program them, one had to take a rectangular piece of cardboard, printed with instructions on rows and columns, and punch holes in the instructions one wanted. The machine would read them, follow the instructions based on the holes, and then print out an answer. In the 1980’s, this changed: instead of punching holes, computers had displays and special apps called Integrated Development Environments (IDEs) that allowed people to write programs. Instead of having to physically insert the instructions into the computer, a person would just write their program in the IDEs, tell the IDE to run the program, and then the IDE would show the output on the display. Many people and companies created many versions of these apps, but none more than Microsoft. For many years, they worked on a product called Visual Studio, which millions of software developers have used to create software. Recently, they tried to create a simpler IDE, one that was less complex, and allowed for extensions that other people in the world would write, adding functionality like spell checking, or support for new programming languages. That IDE is called VS Code (VS being short for Visual Studio). This is now used by millions of developers in the world, and is one of the most beloved editors, because it is fast, flexible, and customizable.
`

* Explain why you’ve chosen it for learning, and the caveats of that choice (e.g., it is free; it is the least complicated way to edit Python code; it prevents many errors; however, it is also a tool made for professionals, and so it has many features and complexities that may be distracting, confusing, or irrelevant to learning).

* Have students open VS Code in pairs on their computers and ask them to report what they see, and guess what each part is. Write their observations in a shared space.

* Go through each of the observations and describe the purpose of each view in the IDE: the toolbar helps navigate between views, the Explorer shows files in a project, Search finds content in files in the project, Source Control keeps track of changes that have been made, Run and Debug shows the results of program executions, Extensions shows ways of enhancing the functionality of the IDE, and the tabs in the center show files. Students may notice things you have not; share that you don’t know what they are, but that you know how to find out, and will teach them to find out themselves.

* Remind them that one of the goals of VS Code was to be customizable. Show them how to open the settings and then have them search for "Color Theme", having them change the theme to the colors that they like. Reinforce that this doesn’t change the behavior of the IDE at all, but might make the IDE more pleasant to use, or make their eyes hurt less.

* Provide a simple Python program (e.g., `print("Hello World!")`python) and show them how to run it, pointing them to where the output appears.
Have them introduce a syntax error in the program (e.g., print("Hello World!), with no closing double quote) and show them how it will highlight errors when it finds them before you run the program.

Have them introduce a logic error in the program (e.g., `prin("Hello World!")`, an undefined function). Show them how the editor doesn’t know that there’s an error until the program is run, and that those errors appear in the Console.
Return to the origin story. What do students think about this app? How does it compare to other applications they use? Do they trust it? Why or why not? Does it seem intimidating? Why or why not? Is it accessible? Why or why not? Is it learnable? Why or why not? Throughout the discussion, reinforce that all of these impressions emerge from its history: for whom it was made, what problems it was trying to solve, and how well they were solved.
=

This first session introduces VS Code and its basic functionality, but it does so in a way that frames the functionality not as some singular, authoritative fact, but as a set of choices made by people. This is key in empowering students to see that tools are not infallible creations that come from some unquestionable authority, but rather a group of people, possibly at a business, or possibly in a community, that wanted to make something easier to do.

The second session repeats this, but for a tool integrated into VS Code: the Python debugger.

=
### Session 2: Why do debuggers exist?

* Have students open VS Code again in pairs, this time providing a more sophisticated program that draws ASCII art. Have them run it, refamiliarizing them with its features and organization.

* Pose the problem to them: how does this program work? What is it doing to print the art? Solicit guesses.

* Explain that this problem of program understanding is one that people have dealt with since the first programs were written in the 1950’s, and that the central challenge is seeing programs run, step by step, so they can be inspected. Explain that IDEs make this possible, and that VS Code makes it possible for Python programs.

* Have the students set up a debugging configuration for the program and then debug the ASCII art program. They should see that nothing different happened. Explain that this is because the concept of a debugger is that the programmer tells the IDE where it wants the program to stop. Since they didn’t tell it where to stop, it didn’t stop.

* Show them how to set a breakpoint by selecting a line of the program, and then debugging the program. Show how the program has stopped on the line they selected, and show them the buttons that have appeared to step the program, line by line, or to run the program until it reaches the same line again. Have them play with these buttons, and highlight how this lets them see the ASCII art be rendered one character or line at a time.

* Have them read the program, set breakpoints on places of interest, and see if they can understand how the program works. After some investigation time, prompt for theories of how the program functions and write them in a shared space. Using the debugger, step line by line through the program and check each of their theories, building up a valid understanding of how the program works.

* Step back to consider the debugger. What do they like about it? What’s confusing about it? Did it help them understand the program? What would make it easier to use? Throughout the discussion, reinforce that any sources of dislike or confusion are due to choices that the VS Code designers made; perhaps since it was designed for experienced programmers, some of its features work well only with certain prior knowledge.
=

This second session, mirroring the first, adds a second dimension to understanding VS Code, showing students how the IDE can be used for both reading and writing programs, and how many of the ways that tools support this reading and writing make many assumptions about what they already know.

The third session repeats this one more time, but for [Git|https://git-scm.com]:

=
### Session 3: Why does Git exist?

* Have students open VS Code again in pairs, opening the same ASCII art program. This time, however, encourage them to change the program, having it draw something else, whatever they are inspired to do.

* As students encounter errors, help them interpret the messages, reinforcing that the messages were not written for students, and that they might require extra learning to understand.

* After this period of play, pose the question: how do they save their results? Solicit guesses.

* Note that if it were an app or website, this saving might happen automatically, or there might be a save button. And while there is a save button for each file, those changes are saved on the computer they are using, and they may not be using the same computer.

* Explain that programmers in the 1980’s had the same problem: 

`
If they wanted to save their work, and share it especially, they needed a way to combine their edits with other people’s. They also needed a way to revert changes that accidentally broke the program. And so they invented something called version control, which tracks changes to a file, stores them in a centralized place, and merges changes with other people. Many early version control systems stored all of the files in a central database, but some developers in the 1990’s found that this prohibited experimentation locally, so they created a different kind of version control called Git. Git leaves copies of everything on every computer, and merges them together in some central place. The key idea is of a repository, which stores files and changes to them, and that these changes can be "pushed" to and "pulled" from a centralized place. Changes to the local repository are called "commits", which come with messages about what was changed.
`

* Show students how to initialize a repository, creating one for their edits. Show them how to commit their changes to their local repository. And then pose the question: how do they get the local repository to a centralized place to store it?

* Show them how to create a GitHub account, and how to log in to their account with VS Code, and how to publish their repository to their GitHub account. Throughout, as students make mistakes, reaffirm that even professionals have a difficult time using Git correctly, because it wasn’t designed to be easy to use or understand.

* Once everyone’s repositories are saved in GitHub, reflect: What is their opinion of Git and GitHub? Who does it seem like it’s built for? What is confusing about the tools and services? Throughout, reaffirm that CS often involves learning new tools, because new tools are always being created and existing tools are always being changed. Also reaffirm that not feeling like one understands how the tools work at the beginning is a normal feeling: it can take weeks or months of practice to feel confident with a tool, much like learning to ride a bicycle, swim, or play an instrument.
=

This third session completes the key tools in the VS Code ecosystem: the editor, the debugger, and the version control system. Students would likely leave these three sessions feeling like they just barely understand how the tools are working, but also hopefully having a sense that this is okay and expected.

=
### Session 4: Intended use, actual use

* Have the students open VS Code, download their repository, and open their changed programs.

* Recap the editor, debugger, and version control tools, explaining that all of them are integrated into this one IDE with a particular intended use in mind: users will load their programs, edit their programs, run their programs, debug their programs, and repeat until they have changes that they want to save, then they will commit those changes, and continue, until they have changes they want to share beyond their computer. All of the tools are designed assuming this basic flow, and they’re generally designed assuming that everything works as intended.

* Note that things rarely work as intended. Even very experienced developers might use a tool in an expected way, get an error message they do not understand, accidentally change some setting that makes the tool behave differently. Explain that all of these problems arise because many tools in CS are designed poorly, making them error prone and confusing.

* Describe a strategy for managing these problems as they arise:

  ** When something goes wrong, stop, observe, and answer the following questions: 1) What is the IDE saying? 2) Do you understand what it is saying? 3) How might you fill gaps in your understanding?
  ** Address any comprehension gaps by consulting resources like teachers, documentation, content on the internet. These resources may or may not have the answers; some of them may even have wrong answers. And finding the right answer may take a long time, more than you expect.
  ** When you have a possible answer, try to follow its guidance and then carefully observe: 1) Did the problem go away? 2) Are there any new problems? The answers to these questions might dictate returning to a previous step.

* Note that the troubleshooting tools can completely derail the work one is doing and that this is a normal part of programming.

* *Formative assessment*. Prompt students to work in their pairs to create an ASCII work of art and commit and push their changes when they are ready to save them. As they encounter problems, have them practice the troubleshooting strategy above, demonstrating resourcefulness and comprehension monitoring. Discuss what they want to share at the end of the session.
    ** This is _responsive_ because it centers students’ own artistic visions. 
    ** This is _participatory_ because it enables students to decide what kind of sharing they would like to do of their art.
    ** This is _educative_ because it will help them practice troubleshooting tool configurations and functionality in the context of a personally meaningful task.

* Prior to the end of the session, step back and reflect. What problems did students encounter? When did the strategy work? When did it not? What surprised students about the kinds of problems they encountered? Reflect on students’ experiences, reaffirming that all of them are things that arise when professionals use tools as well.
=

By the end of this session, students should have some confidence in a cycle of editing, debugging, and committing, and a sense that the cycle is often interrupted by problems with tools that require their own unpredictable amount of troubleshooting.

In the last session, students turn their experience into action.

=
### Session 5: Demanding change

* Have students reflect on their experience using the tool for the first time. Discuss what they liked and didn’t like.

* Turn the conversation to what they would like to see changed to make it more inclusive to newcomers and learners. Gather a list of possible changes in a shared space.

* *Summative assessment*. Prompt students to choose an issue that they would most like to see changed and cluster in groups around a shared interest. Prompt the groups to draft and submit an issue to the open Microsoft [GitHub VS Code repository|https://github.com/microsoft/vscode], ensuring that it follows the guidelines posted in the repository about reporting issues. Discuss how they would like to have their issue summatively evaluated, surfacing what kinds of qualities Microsoft wants to see in reported issues, and what other qualities students might believe are important to achieve.
    ** This is _responsive_ because it centers students’ own experience with the tool.
    ** This is _participatory_ because it enables students to shape what criteria they should use to judge their issues.
    ** This is _educative because_ it will help them see the work of VS Code developers, and participate in it, observing how others demand change.
* After groups submit their issues, discuss what responsibility they have to answer questions and respond to requests for clarification in the issues. What does it mean to participate in the broader VS Code community? Do they feel like they belong?
=

These four sessions are a minimalist way to both engage students in learning core tools in CS, while also helping them examine tools critically as designed artifacts. Of course, because it is so short, it will not develop robust skills in any of these tools. Students might also leave with an impression that learning CS tools requires an immense amount of patience, persistence, and practice (which they do). This surfaces a key trade off in selecting tools: focusing on authenticity can bring with it intimidation, as the volume of things to learn will be so immediately visible. Using educational tools that remove much of this complexity can overcome this, but only at the expense of authenticity. Exposing the flawed design choices behind tools can reduce some of this intimidation, but still leaves the complexity. Which trade off to make depends greatly on who is in the classroom and why they are there.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaAP
@csta3BAP19
@csta3BAP20

@toleranceHeader
@toleranceIdentity
@tolerance5
@toleranceDiversity
@tolerance10
@toleranceJustice
@tolerance11
@toleranceAction
@tolerance17
@tolerance18

@teacherHeader
@teacher1
@teacher1a
@teacher1e
@teacher1f
@teacher2
@teacher2e
@teacher3
@teacher3b
@teacher3e
@teacher5
@teacher5a
@teacher5c
@teacher5d
@teacher5e