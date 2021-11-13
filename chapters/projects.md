=
@keyIdeas
* Software engineering is creating software for a particular purpose, for particular people.
* Project phases include design, requirements, implementation, verification, and release, but these are iterative, not linear.
* Each phase poses distinct moral and ethical questions that can be easily ignored as technical concerns dominate.
* Project teamwork requires shared values, communication, and trust and respect.
* Challenges in project-based learning mirror those in professional practice, but at a smaller scale, and with more opportunities for scaffolding.
=

Throughout this book, we have discussed foundations of CS that span data, algorithms, hardware, software, programming languages, abstraction, and the many programming skills required to express ideas with these computational tools. While our discussion of these foundations of programming have been situated in topics of diversity, equity, inclusion, and justice, helping students critically examine computing in society is about more than just programming. After all, "programming" is just a generic term for a kind of human activity: it doesn’t imply any particular goal for that activity, any particular person or people, or even a particular process for doing it.

What’s missing from our narrative thus far is the bridge between programming and the software that gets used in the world: software engineering<sadowski19,winters20>. This phrase was first coined by programmer [Margaret Hamilton|https://en.wikipedia.org/wiki/Margaret_Hamilton_(software_engineer)]<robbins17> when she worked on the Apollo flight automation software that helped humanity reach the moon. At the time, programming wasn’t really taken seriously by anyone: it was women’s work, and because of the pervasive sexism of the 1960’s in the United States, it was not considered a serious discipline, unlike other established engineering disciplines. Hamilton, deeply immersed in the complexities of not only creating software that would help automate the flight path of the Apollo’s trajectory toward the moon, and provide critical information to astronauts about in-flight problems, kept encountering problems that were not strictly technical in nature, but sociotechnical: 

* How could her team come to agreement on what they were making? 
* How could they coordinate with the other engineering disciplines at NASA? 
* How could they ensure that the software worked in tandem with the many hardware components of the Apollo? 
* How could they ensure there were no critical defects? 
* How could the team ship on time? 

Computers and programming languages, while they were a powerful medium for flight automation, offered no solutions to these questions, hence the phrase software engineering. Hamilton, recounting the origin of the term:

"
When I first came up with the term, no one had heard of it before, at least in our world. It was an ongoing joke for a long time. They liked to kid me about my radical ideas. It was a memorable day when one of the most respected hardware gurus explained to everyone in a meeting that he agreed with me that the process of building software should also be considered an engineering discipline, just like with hardware. Not because of his acceptance of the new 'term' per se, but because we had earned his and the acceptance of the others in the room as being in an engineering field in its own right. Verne, 2014
" Margaret Hamilton, [2014|https://verne.medium.com/margaret-hamilton-the-engineer-who-took-the-apollo-to-the-moon-7d550c73d3fa]

Just as with Hamilton and the Apollo project, when students engage in CS projects, they are not only engaging in programming computers, they are also engaging in all of the challenges posed by software engineering: what to make, for whom, why, and how. In the rest of this chapter, we will discuss these challenges, connect them to issues of social justice, and then discuss and illustrate teaching methods that can develop students’ critical consciousness of software in the midst of project-based learning.

|Chapter19_Figure01_Phases.png|An overhead view of a diagram showing product definition, research, analysis, design, and validation, with two hands collaborating to move between different phases.|Projects have phases, but they rarely occur in order.|@ashley|

# Project Phases

The central difference between programming and software engineering is that "programming" does not imply a particular goal. People code to reach personal goals, to play, to simulate, to experiment, to save themselves time through automation, and many other reasons. Programming itself prescribes no particular objective. 

Software engineering, in contrast, is making programs _for a particular purpose, for particular people_. Consider, for example, the numerous city, county, state, and federal websites that were created to help monitor, analyze, and predict COVID-19 infections: that was not just programming, that was software engineering, aimed at informing the public and policy makers about the real-time risks, trajectories, and spread of the virus. Whether those websites were "successful" depended entirely on a decision about what and whom they were for, and whether stakeholders could use those websites to achieve their goals. "Stakeholders" in this case, included everyone, and yet the software teams that created COVID-19 websites often excluded many people, including those without internet access, those with disabilities, and those who could not read<fan20>.

Of course, sometimes, the particular purpose or people we design for are ourselves. For example, consider students working on a programming project where they have their own particular vision and ideas, and the software they are making isn’t for anyone but them? One example might be a student creating an animation in [Scratch|https://scratch.mit.edu] because they are bored, or playing with [Google App Inventor|http://appinventor.mit.edu] because they want to see what’s possible. In these cases, there’s no software engineering happening, because the purpose of the software might be emergent and personal. But the moment these projects begin to impact other people--whether that is a collaborator or some hypothetical user or stakeholder of the software--it becomes software engineering. If the Scratch animation above, for instance, was meant to make an audience laugh, or the App Inventor project was meant to provide some useful functionality for a family member, or a project is simply posted online for others to play with--those personal programming projects suddenly engage the many challenges of software engineering.

Once programming has a purpose, there are several distinct phases of software engineering activity--design, requirements, implementation, verification, deployment--each with its own technical and ethical challenges{ For many decades, these phases were treated as sequential, and described with a "waterfall" metaphor, with each phase leading to work for the next phase until a project was complete. Scholars and practitioners quickly realized that most projects involved returning to earlier phases repeatedly, as each successive stage revealed new insight that required earlier decisions to be reconsidered. A better metaphor is a "spiral", where a project spins around in circles, returning to different phases iteratively, converging towards a central milestone of completion<boehm88>}.

## Design

And these challenges are many. First and foremost is the challenge of software *design*<petre16>: deciding what the software should do, for whom, and why. We discussed design in @design, but it’s worth mentioning here in the context of projects, because design is so often overlooked as a critical consideration. Students and professional software engineers alike have a tendency to immediately think about code when starting a software engineering project, without first thoughtfully and critically examining what software should do. Consider, for example, in 2018, when Google announced [Project Dragonfly|https://en.wikipedia.org/wiki/Dragonfly_(search_engine)], an effort to build a search engine that complied with China’s strict censorship laws. It was conceived primarily as an engineering project, adapting Google’s existing search technology to be compliant with China’s laws. But as soon as Google announced it, a letter signed by 1,400 Google employees soon emerged, demanding that Google reconsider its plans. Their core concerns were design concerns: 

* Should Google support China’s censorship and surveillance practices? 
* Is profit more important than resisting the human rights abuses that emerge from China’ authoritarian surveillance? 
* What do the Chinese citizens want? 
* What are the international implications of supporting China’s policies on democracy, free speech, and other values? 

These are questions of not only _how_ Google might design a search engine for China, but also whether it should at all, and what sociopolitical implications it would have. (Google eventually canceled the project after significant backlash from its employees and the public). Software engineering projects are therefore inherently design projects first and foremost, and too often, the word "engineering" erases the critical examination of design goals.

## Requirements

Another challenge of software engineering is defining *requirements*<pohl10>, which are essentially a shared, written agreement about what the proposed software will do. For example, consider again the Dragonfly project. One of its requirements might have been: 

=
_The Chinese government must be able to examine the search history of any resident of China at any time._
=

That single sentence does a lot of work. For examine, it recognizes the legitimacy of the Chinese government and its powers to surveil; the phrase "any time" suggests that Google’s services would need to be highly reliable and available, with no outages; it suggests that any agent of the Chinese government would have access to any resident’s search logs; and it even implies that this must be true for anyone who "resides" in China, citizen or not. Requirements, therefore, are essential to making a project work for many reasons. They offer teams a shared understanding of what is being made, helping to ensure that the work will be in sync and coherent. They convey a promise to stakeholders of the software about what it will do and how well it will do it. Requirements also determine the *scope* of a project, dictating what the software must do, while implying that all other possible behaviors are not required. This scope also determines how long a project will take to complete: the more requirements, the more time it will take to build, verify, and deploy.

Because of the great power that requirements have to structure a project, they are a central site of debate, discussion, and dissent in any project. For example, imagine a student project, in which three students have designed a mobile app that will help them create new memes to send to their friends. Most arguments that students might have about the app’s functionality are really about design considerations, and requirements are the way to capture those decisions:

* Which phones should be supported? A requirement might declare that _iOS 14 and higher must be supported_, but this excludes anyone that does not have access to a relatively new iPhone.

* What fonts should be available? A requirement might declare that _the app must allow the selection of any fonts made available by the iOS operating system_, but this requires the app to be designed so that it is versatile to many different font sizes, creating development complexity.

* What services should be supported for sharing? A requirement might keep this narrow, declaring that _the app must support sharing on Instagram_, but this excludes many other ways of sharing.

* Should there be a way to credit the creators of reused content? A requirement might be that _the app must provide an optional place to credit creators of source materials_, but by making it optional, few will likely give credit.

* Which natural languages should be supported? A requirement might be that _the app must be available in English_, but this will exclude anyone fluent in another language.

* What happens if someone creates and spreads hate speech with the app? A requirement might be that _the app must allow anyone to report content as hate speech and hide content that is reported by more than one distinct user_, but this could be weaponized, leading people to censor others.

The concerns above are just a few of the many design considerations that emerge when trying to make a project’s requirements explicit. And just as with a thousand-person team at Google, a three-person team in a classroom debating the requirements of a simple mobile app is necessarily going to create conflict and disagreement about what software should do. And the decisions will not only determine the scope of work, but also the many ways in which the resulting software might oppress, exclude, amplify, or empower different people or groups in society.

Of course, if a project team is not encouraged to state their requirements, examine their unstated requirements, critically evaluate the ethics of a software project or its intersections with policy, power, and justice, they can still create software. They will just engage those conflicts later in the process, when they are writing code, or after they have shipped it. Ignoring the sociocultural and sociopolitical complexities of making software for a particular purpose and for particular people  doesn’t make these complexities disappear; it just ensures they will be more difficult to address, since the software will already be built.

## Implementation

While no set of software requirements is ever complete, at some point, a project team may agree on what software should do, and can begin *implementing* it, writing code that meets requirements. But this simple word hides other challenges. For example, consider ongoing debates about Section 230 of the U.S. Communications Decency Act, which states that:

=
_No provider or user of an interactive computer service shall be treated as the publisher or speaker of any information provided by another information content provider._ [Section 230|https://en.wikipedia.org/wiki/Section_230]
= 

This is a protection, imposed by law, on all social media websites operating in the United States, and its implications are broad: if someone posts on Facebook, for example, calling for people to organize online to send millions of hateful, racist messages to a racial justice activist, Facebook is not responsible for that message or its consequences. From an implementation perspective, this frees Facebook from having to consider any of the potential harm from content that it’s users post online--whether death threats, hate speech, or misinformation about elections or vaccines. This freedom from responsibility allows Facebook’s teams to engineer social features without regard to their consequences.

Some lawmakers and activists are challenging this law, however, and considering revisions to this policy. For example, imagine the law was revised to say this:

=
_No provider or user of an interactive computer service shall be treated as the publisher or speaker of any information provided by another information content provider, *unless that information leads to physical or psychological harm to individuals or groups*._
=

While many designers and engineers at Facebook might actually want this to be the law morally, they would also have to face an implementation challenge: how would they detect such information? It’s certainly not feasible to detect it automatically. It’s not yet clear whether humans can adjudicate such harm. For example, after many years of public demand and protest, Facebook created a content moderation "[supreme court|https://www.newyorker.com/tech/annals-of-technology/inside-the-making-of-facebooks-supreme-court]", including nine law professors, a Nobel Peace Prize laureate from Yemen, and journalists, to make decisions on particularly notable Facebook posts that may have done harm. But the court does not moderate content as it is being posted in real time; it only resolves disputes between Facebook users and Facebook’s content moderation teams, which include both algorithms and people making rapid judgements as billions of people post on Facebook each day.

These challenges of content moderation provoke a central question in software engineering projects: should implementation difficulties drive design, requirements, and policy, or should design, requirements, and policy drive engineering decisions? Some things are impossible to build with code--for example, we cannot mandate that search engines correctly answer all queries, because that is not possible--but many things _are_ possible to code, just with more effort.

Even small projects engage this tension. Returning to our meme app example, imagine that the students have agreed that it should be possible to post memes created in the app on WhatsApp with a single click. One of the students, however, after many days, cannot figure out how to use the WhatsApp API to create a post from within their app. Should the team let this engineering difficulty change their requirement, or should the student persist, trying to meet the requirement the team set? In a student project, it might be okay to change or drop a requirement, because it might still be possible for students to learn without it. But in a professional setting, dropping a requirement might mean shipping software that is less useful, less accessible to people with disabilities, less compliant with a legal contract, or even unlawful.

Because many engineering constraints are novel, it is not always clear whether they are feasible to overcome. This necessarily means that students and professionals who encounter them will have to learn before they can make a judgement about the feasibility of a requirement. They might need to learn a new programming language, a new API, a new concept in computer science, how to interact with a new community, and how to build something they have never built. To students, this lack of knowledge might be read as inability or failure, but to professional software engineers, learning is an inescapable and authentic part of software engineering projects. No requirements, however clear, can fully detail all of the knowledge that will be required to achieve them, and so most projects require engineers to acquire new knowledge to complete them.

Because of the rich complexity of many engineering decisions and their implications for software stakeholders, an important practice is capturing *design rationale*. One of the most common practices is to write rationale inside of code comments, to annotate a choice in code with the reasoning behind the choice and its implications. For example, one can imagine the part of facebook.com that verifies whether a new post will be posted:

`python
def submitPost(user, text)
    # We haven’t figured out how to detect hate speech yet
    # Nor are we required to
    hateSpeech = false 
    if not hateSpeech:
        record(user, text)
` Hypothetical Facebook code

This hypothetical code shows how a decision can be documented in code in a comment, while also acting as a placeholder for future modifications. It also makes it transparent that there is an unmet requirement that faces an engineering constraint.

Another challenging aspect of implementing software is reusing code that others have written<markus01>. As we noted in the chapter on [Abstractions|abstractions], the great power of abstraction is that it can hide details, simplifying the use of computation, and freeing a programmer from having to understand how it works. But in hiding these details, it is also possible to hide ethical choices that other engineers have made, without ever having awareness of those choices. For example, the `submitPost()`python function in the example, above, when called, would just look like this:

`python
submitPost(user, content)
`

Nothing about that function call suggests that it will or won’t moderate hate speech content; knowing weather it does either requires reading the code that implements it, reading any documentation about that code that might explain any ethical considerations behind its design, or if no code or documentation is available, testing it to see how it behaves. And at least at this moment in history, APIs and frameworks that have been built for easy reuse have often not been built to expose their assumptions or ethical considerations. Reusing code ethically in a project therefore requires intentional effort to examine the assumptions underlying code that will be reused.

Students, just like professional software engineers, may also find themselves in a position of _writing_ code for reuse. For example, if a team has divided up some implementation work, and one student is writing a function for others to use, it is their responsibility to expose the assumptions in the function they write, so that their teammates can examine those assumptions. That might mean writing design rationale comments or documentation that analyzes the ethical implications of their choices, or reviewing the code with their teammates before they use it, to see if there are ethical considerations that they overlooked.

## Verification

The skill of @verification is not one to underestimate: finding all of the ways that software fails and trying to prevent it from failing is detail-oriented, time-consuming, and difficult technical work. But in the context of a software project, these activities can take on several additional technical and sociotechnical difficulties.

For example, once software has a purpose, it’s not good enough that software seems to work for it’s creators. It also has to meet requirements, and that means more than just running a few tests or reading one’s code for errors. It means comprehensively verifying an implementation to ensure that all of the requirements have been met, and re-verifying it every time something about the implementation changes. This is laborious work, and so many projects benefit from automating this verification, writing software tests for each of the project’s requirements, and then running all of these tests each time an implementation changes. Creating such *test suites* is its own kind of software engineering, as each test is a program of its own, which runs the program being created with particular inputs, verifying that it produces expected outputs. Creating new tests, maintaining tests as implementations and requirements change, and ensuring that test suites cover all key requirements<inozemtseva14>, and ensuring that test suites can run quickly (so that developers are not constantly waiting for tests to finish), are all unique challenges in their own right.

But verification also carries with it other moral and ethical considerations. For example, what if a program meets a requirement based on a test, but doesn’t really meet it in spirit? One common example is the U.S. federal law, the [Americans with Disabilities Act|https://en.wikipedia.org/wiki/Americans_with_Disabilities_Act_of_1990]. This law generally requires that software is accessible to people regardless of their disabilities, and gives rights to people with disabilities to sue companies that do not comply. The [Web Content Accessibility Guidelines|https://www.w3.org/TR/WCAG21/] (WCAG 2.1) standards are one set of requirements that specify what makes a website accessible. Verifying that an application is WCAG compliant is one way of meeting the federal requirement. But there are several ways to "game" compliance, causing WCAG compliance tests to pass, even though an application isn’t really accessible<kelly05>. Verification strategies like tests can thus become a shield, leading projects to "satisfice", rather than really achieve accessibility requirements. 

## Release

When project teamwork is successful, software might become ready for *release*, which is sometimes also called *deployment*. This can be a great time for celebration for project teams, and a major technical milestone. However, it can also be a great time for learning.

For example, the moment others use software, there will be failures. Users will find problems that didn’t surface in testing<li11>. Users might not agree with the requirements a project had agreed upon, and propose new or different requirements, or even requirements that a project had overlooked<lee12>. This process of receiving feedback from the world can be an emotionally challenging one for software project teams, as all of the hard work they put into creating their vision might be criticized, or even worse, ignored.

But release can also reveal that however the world worked when a project’s requirements were being set might have changed. For example, in the early 2000’s, Microsoft set out to create a powerful new way to create applications for the Windows operating system, called [XAML|https://en.wikipedia.org/wiki/Extensible_Application_Markup_Language]. It promised entirely new ways of quickly building and releasing applications, accelerating time to market by maximizing reuse and letting application developers focus on their content. But by the time it was released in 2008, the world had moved on, focusing application development for the web and smartphones. All of those many years of careful design, requirements definition, implementation, reuse, and verification ultimately led to nothing, since the world and its markets had changed.

Software, therefore, is never done. In this way, software engineering projects are not something that start and stop, but rather, an ongoing shared discourse about what computation should do, for whom, and how. The more that anyone engaged in making software--whether students or software engineering professionals--can see it as that, the more likely they are to critically examine what they are making before, during, after they’ve made it.

|Chapter19_Figure02_NASCAR.png|Several NASCAR pit crew workers working in tandem to prepare a car to re-enter a race; the car glows blue with bits.|Software engineering requires diverse people combining diverse social and technical skills to a shared goal.|@jessie|>

# Teamwork

Through design, requirements, implementation, as well as the many challenges with verification and debugging that will emerge in any software project, teamwork is another source of challenges. And this should not be surprising: software engineering teamwork is inherently social, and so it comes with all of the social challenges of any collaboration.

One central challenge is who is in charge. In most professional software engineering projects, there is a *project manager*<kalliamvakou17> who is responsible for ensuring that everyone on a team understands the requirements, that everyone’s work helps move closer to meeting those requirements, that everyone has the resources and guidance they need to make progress, and that everyone’s work is seen and valued. Of course, this is an idealized picture of software project management: too often, managers fail to clearly communicate requirements, fail to ensure a team’s work moves toward requirements, fail to provide necessary resources, and fail to ensure that everyone on a team feels valued. This results in endless difficulties, with code that can’t be integrated, requirements that are missed, deadlines that are missed, and teammates losing motivation to contribute. Is it any surprise that professionals struggle to address moral and ethical considerations in software when they are struggling to write software at all?

Another challenge is *communication*<herbsleb03>. Whether a project team is two people or two thousand people, the sheer volume of decisions to make about design, requirements, implementation and verification means that teammates must constantly share information about their progress, discuss key decisions, and communicate future plans. All of this communication is in service of coordination, which is a necessary part of dividing project work across multiple people, and in service of collaboration, which is a strategy for helping multiple people come together to work on a problem in tandem. And for any communication to happen, projects need *trust*<calefato17> and *psychological safety*<lenberg18> in order to feel safe being vulnerable about challenges, questions, and other difficulties. All of these communication challenges are fundamentally social problems, not technical ones.

There are countless strategies for trying to address these management and communication problems. For example, pair programming<williams03> is a kind of collaboration paradigm that brings two developers together to write code in front of one shared display. This practice provides clear guidance on who is "driving"; it helps developers see the logic of their decisions, because a peer is monitoring, analyzing, and discussing their logic; and it makes conflicts and disagreements more visible, as they will surface synchronously, rather than asynchronously as students work independently. Such strategies help clarify management roles, though they assume that a pair already has trust and safety.

Another strategy for mitigating teamwork challenges is ensuring that software engineering projects have simple, narrowly scoped requirements. After all, since requirements broadly shape the scope of a project, the fewer there are and the less complex they are, the fewer programming and project management challenges that will emerge as well, because there will be less need to communicate, collaborate, and coordinate work.

Of course, none of these strategies address the potential for conflict when engaging issues of justice in a project. Returning to our example of Project Dragonfly, for example, executives at the top and developers at the bottom weren’t just facing communication and management challenges, they had radically different politics and values. The executives were prioritizing profit and winning in the global search engine marketplace; the developers were prioritizing free speech, and to an extent humanitarian values in opposition to the Chinese Communist Party’s long standing commitments to surveillance, silencing, and violence. Some argued that the Dragonfly project was a purely technical and business endeavor, but others saw the project clearly for what it was: a capitalist goal at the expense of U.S. values in the freedom of speech. This conflict between executives and developers ultimately led to Project Dragonfly being canceled in 2018. 

|Chapter19_Figure03_Software.png|Several groups of students working behind laptops and in front of whiteboards, some being supported by a teacher.|Projects can promote CS learning, but require careful planning and scaffolding to make room to engage equity and justice.|@ashley|<

# Project-Based Learning

Because much of our discussion in this chapter has focused on professional software development projects, it might be tempting to imagine that classrooms are sheltered from many of the high stakes challenges that larger projects face. After all, projects in classrooms might only involve a few students on a team, and they may not have the explicit goal of releasing software into the world for broad use. Project-based learning in classrooms<boss18> might be thought of as a safe space, sheltered from all of the sociopolitical complexities of making software for a purpose.

In practice, however, all of the same issues in professional projects occur in classroom projects, just at a smaller scale:

* Student projects still involve design decisions. They may just be freed from having to consider the consequences of their design, or be put in a position of designing for themselves instead of others.

* Student projects still involve requirements. They may just define requirements implicitly, and deal with the implementation, verification, and release challenges that arise in being unclear about requirements

* Student projects still face tensions between implementation constraints and design. They may just be free to change their requirements to conform to implementation constraints.

* Student projects still face verification difficulties. They may just not be expected to verify at the level of correctness that professional developers achieve.

* Student projects still face release challenges. But their users might just be more forgiving or supportive, especially if the users are their classmates and teacher.

* Students still face teamwork challenges. But teachers can help scaffold teamwork like project managers do, helping to manage conflicts.

While the list above might make it sound like student projects are easier than professional ones, in some ways they are harder<cohen14>. Students may have less self-awareness about their needs in a project. If a peer is assigned as project manager, they may struggle with the tension between being a leader and being a classmate. If a teacher acts as project manager for all teams, they may struggle to scale the management of so many teams; and teams’ requirements are less likely to be clear, because writing requirements is a challenging skill to learn. And, of course, students are still learning how to code, which complicates all of these issues, creating uncertainty.

Project-based learning can also be in tension with other learning concerns. For example, engaging youth in creative expression might mean allowing students to explore wide ranging, complex requirements from their imaginations, which will necessarily impose engineering and teamwork complexities. But if students are given requirements to build, the simpler and narrow they are, the less likely they are to be engaging to a diversity of students.

In the rest of this chapter, we discuss strategies for navigating these tensions, and then present an example unit sketch that illustrates some of these strategies, while also centering questions of diversity, equity, inclusion, and justice.

## Scaffolding Project-Based Learning

Simply asking students to "go make something" does not provide enough scaffolding, and yet providing too much scaffolding can leave students with fewer ways to connect their assets and identities to project work<grover20>. Researchers have identified many strategies for balancing these concerns by engaging students in shaping this balance.

One central challenge is in determining students’ project *scope*. Allowing students to simply build anything might best enable them to express their interests and identities, but facilitating such a broad scope as a teacher will likely be intractable, and students will quickly find themselves in areas of computer science and software engineering for which neither they or you have sufficient expertise to make progress. For example, a group of students might decide they want to build something with virtual reality; but if they don’t know anything about them and the teacher doesn’t either, they might quickly reach insurmountable and counterproductive barriers (such as the need for expensive hardware, or a cloud service that requires a monthly subscription). But defining a project scope that is so narrow that a teacher is certain they can address every problem that arises isn’t likely to be culturally responsive either: students will likely see the project as the teacher’s and not theirs, with little voice in shaping its constraints or goals. For example, suppose a teacher has a lot of expertise in bird watching, and proposes a project scope based on bird cataloging: the teacher would be well-positioned to offer domain expertise, but many students might find the topic doesn’t resonate. Being culturally responsive while balancing these tensions can therefore require making time for students to contribute project scope ideas, giving them agency in shaping topics and goals, while still accounting for a teacher’s ability to support a topic with their knowledge and skills. This does not mean avoiding all barriers in a project scope--that would preclude learning--but rather being aware of what barriers students might encounter within a scope and being confident that they aren’t insurmountable.

Another scaffolding challenge is carefully choosing *tools*. As we discussed in the [Tools|tools] chapter, choosing tools also means choosing a community of support and its values. But in the context of software engineering projects, it also means choosing what knowledge students will require to make progress on a project, what knowledge they will have to learn, what kinds of "accidental" complexities baked into tools and tool ecosystems might create friction during student work, and what kinds of projects are possible at all. For example, choosing the Scratch programming system necessarily means projects focused on animations and storytelling; students who are excited about robotics or AI would have to look to other platforms. Choosing Python, the PyCharm editor, and the Pandas API necessarily means focusing on data science; students who are excited about creating games would have to look elsewhere.

Within a certain project scope, scaffolding *requirements definition* is also key. When students find a project theme resonant, they will understandably want to dream big. And they should: design ideation is an essential part of envisioning software, including highly divergent, imaginative, and creative possibilities. Scaffolding this might mean creating space and time for this imagining, encouraging it and supporting it. Software requirements, of course, must be achievable, and so balancing student ideation with separate activities that take creative ideas and whittle them down to manageable, feasible requirements is key. This can mean supporting students in focusing their attention on the most meaningful or impactful features, and thoughtfully discarding ideas they might be deeply attached to in service of progress. This can be an emotional process for anyone, but students especially, as they may view creative ideas as hard won and rare. This can be especially challenging when students have developed ideas collaboratively: deciding to abandon an idea might mean shifting a whole group of students away from one path, which might require new agreements, shifts in power and engagement, and therefore new group dynamics.

Once students have requirements in mind, scaffolding *teamwork* is key. In professional software engineering context, common practices include clearly defining ownership over components, highly structured procedures for writing, reviewing, and verifying code, and elaborate processes for combining work from multiple people into a larger whole, through version control systems and build processes. Designing these workflows is challenging, complex work that is often done by experienced project managers, vice presidents of engineering, or chief technology officers at companies; it would be unreasonable to expect students to design these on their own, and perhaps unreasonable to expect a teacher to have time to devise them either. And yet, there’s a reason that professionals use these practices: when they don’t, collaborators miscommunicate, overwrite each other’s code, and introduce defects, slowing down progress. And so some degree of workflow scaffolding is necessary, giving students policies for where they will store source code, how they will collaborate on it together, and how and when they should communicate their progress with each other.

*Implementation* also requires scaffolding. When students are working on personal projects that no one else will use, the primary challenges are programming ones: can they express the behavior they want, and when they make mistakes, can they find out what’s gone wrong? But when students write code collaboratively, to achieve particular requirements, it's more important to ensure that what’s being written achieves particular quality goals. Professional pair programming practices can be adapted for youth<denner14>,having one student at the keyboard and another observing, critiquing, and guiding, and occasional swapping of roles, both to help each student learn different skills, but also leverage the unique perspectives and assets that each student brings. This can not only help define roles to structure their collaboration, but it can also scaffold self-regulation, allowing one student to monitor and evaluate the work of the other, helping them to notice problems in either code or their comprehension.

Inevitably, students will introduce defects and identify gaps in their knowledge, and they will need help *learning* practical knowledge. Professional software engineers face the same challenges; they address these by being resourceful, working with collaborators to solve problems, consulting documentation and resources on their project and on the broader internet, and even stepping away from the project to learn new skills before proceeding. Self-regulated learning is actually an essential and authentic skill in software engineering. Supporting students in such resourcefulness requires scaffolding. For example, one successful help protocol told students that they should ask for help from the instructor at any time, but before they would receive help, they needed to report what the problem was, what they had tried to address, and why it didn’t work<loksa16>. This had several effects: it led students to ask those questions of themselves, leading to more self-regulated learning; it resulted in students being more prepared to ask for help; and it led them to independently examine and evaluate their programming strategies. All of this resulted in students having greater programming self-efficacy, demonstrating more independence in programming, and even reporting a stronger growth mindset toward learning.

Finally, throughout all of these scaffolded activities, there are some classroom norms that can be essential to facilitating teamwork. One study observed student teams and found ten particular norms that were associated with project success<brennan19>:

* *Tinkering*. Students needed to feel like tinkering and trying things was an acceptable way to learn and make progress.

* *Planning*. Students need encouragement and time to plan in all phases.

* *Compromise*. Students needed support finding compromise on teams to resolve design and implementation conflicts.

* *Persistence*. Students need to feel like encountering major difficulties was normal, and that persisting was part of authentic making.

* *Breaks*. Students felt that many aspects of projects required time to creatively recharge.

* *Help*. Students felt that they needed encouragement and support in asking peers and teachers for help.

* *Learning*. Students felt that there was great value in spending time learning through tutorials and reading other people’s code.

* *Reuse*. Students reported needing explicit support for reusing and remixing others’ work.

* *Collaboration*. Students reported needing social interaction throughout all project phases, and that it should be valued.

* *Support*. Students reported needing space to support their peers’ learning, taking time to create their own tutorials or teach their peers.

While these norms emerged from secondary classrooms, they are not unlike the types of work cultures necessary for professional projects to thrive<ko17>.

## Unit sketch: Critical Project-Based Learning

While the scaffolding described in the previous section can be key to engaging students in meaningful project-based learning, none of them address the inescapable interweaving of projects with issues of diversity, equity, inclusion, and justice in software. These "neutral" pedagogies can give an impression to students that making software is purely an engineering concern, and not a social one. In fact, such neutral framings in education are likely what has led to a software industry full of engineers who see software projects similarly: as purely technical endeavors, separable and separate from the world.

We end this chapter by examining project-based learning approaches that integrate questions of diversity, equity, inclusion, and justice into project planning. One approach is to focus on project scopes that engage computing as a tool for dismantling systems of oppression; the other is to integrate examinations of diversity, equity, and inclusion into the workflow scaffolding of project work, helping students to see diversity concerns as integral to software engineering. Below we describe an example unit sketch that uses both of these approaches.

The learning objectives of this unit are:

1. Students will be able to debate the merits of building something in relation to who software might serve and who it might oppress.
2. Students will be able to define requirements that structure and scope their project work.
3. Students will be able to structure both collaboration and coordination to make progress on a project.
4. Students will be able to relate their technical decisions to social impacts, both positive and negative.

The unit begins by engaging students in identifying a form of oppression that they believe software might be able to help, setting the scope of the projects.

=
### Session 1: Scoping injustice

* Begin by sharing a story of activism that somehow involved the creation of software. For example, one notable history is that of NationBuilder, a platform that was built by community organizers to facilitate community building and activism in ways that  generic social media tools like Facebook were not. Illustrate the types of features that the solutions have (e.g., fundraising support), and why those features meet needs better than generic tools.

* Explain the scope of the project in the unit, in which students will create their own projects to meet a community need that centers justice, finding small, tractable software projects that might help create change.

* Open a brainstorming discussion with the class about the kinds of problems they see in their community--including their school--that they might like to address. After gathering several ideas, identify a scope of problems that resonate with all students, agreeing upon language to describe the problem. For example, imagine students converging toward problems related to unfair grading practices by teachers; the students might collaboratively craft a goal "Transform teacher assessment practices to be more equitable at our school."
=

This first session opens a broad conversation about the kinds of oppression in students’ lives and communities, centers those experiences, but intentionally separates this discussion from how software might support change. The next session brings software into the conversation.

=
### Session 2: Examining computing needs

* Remind students of the problem statement from the previous section.

* Frame brainstorming and ideation to students as about quantity, not quality, creatively identifying opportunities for later elaboration and evaluation. Have them break them into small groups of roughly four, then prompt them to ideate ways that computing might play in achieving their goal.

* After groups have generated ideas, have them report their idea in a shared space, allowing everyone to see them.

* Examine each idea and engage the class in a critical discussion of each major idea: would the software actually help? Who would it help? Might it cause harm? Who would it harm? Do they have the skills to build the idea yet? Could they learn them? Is the idea too complex to build in the time remaining? Could it be simplified? As each idea is evaluated, annotate which ones might hold promise to actually impact the problem identified by the goal.

* After identifying a subset of promising ideas, have students cluster around the ideas that they are most excited about building. Break clusters into groups of 2, or 3 at most, and declare them teams.

* In the remaining time, have students share their preferences around how they communicate (e.g., preferred messaging services).
=

This second session shifts students’ attention from examining the injustice to identifying their role in helping to address it, while also practically forming teams. This sets up the third session, which engages teams in elaborating on their idea, and reexamining its merits.

=
### Session 3: Envisioning solutions

* Gather students into their teams.

* Prompt each team to begin detailing how their idea might work. What exact features would it need? What would the user experience be like? Challenge them to develop a storyboard that details a use case for the software that they are willing to share with classmates at the end of the session.

* Halfway through the session, have students nominate someone to rotate to other groups to gather insight, and one to stay back and explain the idea. Prompt students to visit a team they have not talked to, listen to a description of their idea, and then provide critical feedback on how well it would address the problem. Remind students to capture feedback. Rotate through several teams, allowing each visitor to see a diversity of ideas and each presenter to gather a diversity of feedback.

* Prompt teams to discuss the other ideas they saw and the feedback they received.

* Have teams report out about the most surprising feedback they received.
=

This third session shifts students from design ideators to design evaluators, helping them gather community-based insight about the unintended consequences of their design. This session can be repeated multiple times depending on the time available, having students iterate on their designs and get further feedback. This prepares them for the next session, which translates designs into requirements:

=
### Session 4: Defining requirements

* Gather students in their teams and have them bring up their prototype.

* Explain the concept of requirements, noting that they are a form of contract, detailing the things that must be true about software for it to be considered complete.

* Prompt teams to work together to begin detailing requirements for the design. What must be true about the software? Which things are optional and do not need to be requirements? Remind students that the more requirements they have, the more time it will take to create their solution.

* Halfway through the session, have students evaluate their requirements against an equity checklist. Will their design exclude people with disabilities? Will it exclude people because of their race, ethnicity, or gender? Will it support some people differently based on their knowledge or experiences? Encourage students to talk to classmates if they are not sure, gathering feedback from their community to verify their requirements.

* At the end of the sessions, normalize excluding things from scope by having teams report which aspects of their design that they removed in order to keep scope manageable. Celebrate their decisions to make the project more tractable and focused.
=

This fourth session shifts students from evaluators to engineers, requiring them to decide in great detail exactly which kinds of functionality their system will have, and which functionality they will exclude. This shift continues in the next session, when students begin planning their implementation.

=
### Session 5: Planning implementation

* Gather students in their teams and have them bring up their requirements.

* Demonstrate an example of a program plan, which includes source files, comments to describe what code needs to be written and why.

* *Formative assessment*. Prompt teams to build a similar plan, sketching out the code they will need to implement their project. Suggest a strategy of finding projects that have similar functionality, and mimicking their design, rather than inventing their own skeleton. Encourage them to work together, having one drive the keyboard and other teammates driving decisions, evaluating planning choices, and getting help. Negotiate how teams might share their plans for feedback.
** This is *responsive* because it centers students’ projects.
** This is *participatory* because it enables students to determine how they get feedback.
** This is *educative* because it motivates and scaffolds planning, which will reveal other questions.

* As teams work, offer feedback, resources, encouragement, and validation of their implementation plans.

* Before the session ends, prompt all teams to check their plan against their requirements. Are all of the requirements met? If not, which ones are missing, and what aspects of the plan need to change to incorporate them?
=

This fifth session prepares teams to begin programming, reinforcing the importance of planning and verifying that requirements were not missed. The next session (or sessions) engage teams in implementing their requirements.

=
### Session 6: Implementation

* Gather students in their teams and have them bring up their program.

* *Summative assessment*. Prompt students to work together, pair programming each part of their program, verifying their programs by reading and testing them, and seeking help when they get stuck. Explain the help protocol, where to get help, students must describe their goal, what they had done to achieve it, and why it wasn’t working, scaffolding their self-regulation. Discuss how the final programs will be shared and evaluated.
** This is *responsive* because it centers students’ project visions.
** This is *participatory* because it enables students to determine how demonstrations will run.
** This is *educative* because it facilitates practice in help seeking.

* Before the end of the session, have teams step back from their implementation work, and evaluate their progress: have they met some of their requirements? Which ones remain? Are they still confident that the project will actually address the injustice? Have each team report the accomplishment their proudest of to the class.

* Repeat this session as many times as necessary to help teams implement their project.
=

This session centers programming, and inevitably debugging, helping students build their implementation, while helping them center their requirements, and celebrating their progress. This mirrors the kinds of daily sprints that many software engineers do, making steady incremental progress on projects, moving toward release. Critically, however, it also challenges students to consider their work at two levels: the level of code, but also the level of the code’s impact on the world.

After a series of implementation sessions, the next session celebrates the students’ work, and then challenges them to pivot back to their role as community members.

=
### Session 7: Demos and critical reflection

* After the series of implementation sessions are complete, organize a demo day, in which students demonstrate their implementation to the class, celebrating their accomplishment.

* After demos are complete, gather students together for a discussion. Reaffirm their accomplishments in coding, but then challenge them to step away from their roles as developers, and return to their role as community members. What actual impact do they think the various solutions might have on the problem? What other action might be necessary? What are the limits in technical solution to solving problems of injustice?

* Reaffirm students’ hard work and accomplishments, and challenge them to carry forward their work to make change.
=

While the unit above reflects the general structure of any kind of project-based learning in CS, it centers equity and justice in multiple ways. It situates the project work in a community and social context, giving voice to students’ lived experience. It ties computing solutions to broader efforts to make change. It challenges students to reflect daily on whether the work they are doing to build software will be part of making that change. And it challenges them to reflect broadly when completing their work on the limits of computing. Therefore, the scaffolds embedded throughout do not only structure the technical aspects of the work, but the sociocultural and sociopolitical aspects as well.

While this sketch portrays an ideal, there are many ways that it might be limited or constrained. If there is limited time, students might feel compelled to rush or disregard the social parts of the project, and focus purely on the technical parts. After all, this is the same pressure that professional software engineers feel, as there is always endless engineering work that can feel necessary for progress, whereas critically examining impact can feel optional. To reinforce the importance of these examinations, teachers have to make the time for students to step away from the engineering role, and explicitly remind students to take different perspectives on their work, as they work.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaIC
@csta2IC22
@cstaAP
@csta2AP18
@csta2AP19
@csta3AAP13
@csta3AAP16
@csta3AAP22
@csta3AAP23
@csta3AIC27
@csta3BAP14
@csta3BAP17
@csta3BAP22

@toleranceHeader
@toleranceIdentity
@tolerance4
@toleranceAction
@tolerance16
@tolerance17
@tolerance19

@teacherHeader
@teacher1
@teacher1a
@teacher1f
@teacher3
@teacher3b
@teacher3e
@teacher4
@teacher5a
@teacher5c
@teacher5d
@teacher5e