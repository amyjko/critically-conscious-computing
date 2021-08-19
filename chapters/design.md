=
@keyIdeas
* Design is deciding what to make, for whom, and why.
* Engineering is deciding how to implement a design.
* Computer science is often seen popularly as blending design and engineering, but it is mostly an engineering discipline.
* A teacher’s choice of how to address the relationship between design and CS can have profound pedagogical and learning implications on how students see CS and learn its skills.
=

The 1960’s in the United States was a time of immense cultural change and political fear. After multiple wars across the world, and the growing power of Russia, many in the country and in government were concerned about the security of the country’s information and communication technologies<leiner09>. At the time, these fears mostly concerned telephones: the U.S. government worried that foreign agents could too easily intercept phone calls, or worse, disrupt the telephone networks, preventing military and civilian communication across the country. These fears surfaced a *design problem*: how could the United States enable information exchange that was faster and more secure than telephones?

J.C.R. Licklider, a psychologist and computer scientist who worked for the U.S. Department of Defense’s "Advanced Research Projects Agency", had been tackling many problems like this, trying to imagine futures of computing that might achieve these goals of speed and security. One of these futures he imagined described a world in which the world’s computers (there were just a few at the time at universities and in government) would be connected to each other through a common interchange format, allowing information to be exchanged securely and quickly. He called his design vision the "Intergalactic Computer Network" and described it as:

"
... an electronic commons open to all, the main and essential medium of informational interaction for governments, institutions, corporations, and individuals.
" J.C.R. Licklider<licklider63>

What Licklider was doing in writing these memos was *design*, which Nobel Laureate [Herb Simon|https://en.wikipedia.org/wiki/Herbert_A._Simon] defined as, 

"
devis\[ing\] courses of action aimed at changing existing situations into preferred ones.
" Herb Simon<simon68>

In this design work, Licklider was driven not by questions of _how_ to realize such a network, but questions of _what_ the network should be, _who_ it should serve, and _why_ it should be created. Design, in this sense, imagines possibilities and the ways that they might reshape the world.

However, because Licklider was one of the directors of the Department of Defense’s offices, he also had the power and resources to investigate _how_ to make this design a reality. He funded research projects across the world, leading to the founding of the first academic Computer Science departments, and numerous private labs. The researchers in these departments, in partnership with the government, began an immense period of investigation to answer many "how" questions that Licklider’s visions raised. How would the computers be physically connected? How would information be encoded? How would information be secured? How would information be transmitted quickly? How would information be stored, searched, and retrieved? The answers to these "how" eventually came, resulting in foundational computer networking ideas like packet switching, transmission control protocol, internet protocol, HTTP, the worldwide web, and browsers. 

Unlike the "what" and "why" questions that concerned Licklider’s design concerns, these were all questions of *engineering*, searching for solutions to well-defined problems<goel92>. Engineering, in contrast to design, isn’t about imagining the future of human experiences, but imagining the technical details of how experiences might be enabled--similar to how an architect might design a building, but have civil and construction engineers figure out how to build it. In that same way, the software _designers_ of today who envision new social media platforms, new websites, and new apps, are often not the people who engineer such software. (Those would be software _engineers_).

|Chapter05_Figure01_Sketching.png|A woman at a desktop computer sketching on a desk with green sketches in the backdrop.|Deciding _what_ software should do is a different skill than deciding _how_ it should do it.|@jessie|

Inside this distinction between design (the "what") and engineering (the "how") are two very important differences in mindset and method. In design, the mindset is one that centers imagination, ideation, values, ethics, humanity, and society<costanzachock20>. Design methods are ones that involve understanding problems in the world, speculating about ways to address them, sketching and prototyping solutions, soliciting feedback, all while engaging with the stakeholders that might be affected if a design idea were to eventually be engineered. In this way, Licklider’s design process was highly exclusionary: it only involved the U.S. Department of Defense and a handful of white male professors at elite universities, with little discussion about how such a network might reshape human civilization and who might be affected. This was an era of design that gave immense power to designers to decide on everyone’s behalf. And it shows, in ways that Licklider’s original "for all" vision of the internet still has not been realized: students living in poverty and students in rural communities are less likely to have broadband internet access or computer hardware sufficient for accessing the modern internet, because the engineers who built the internet, and the policies and businesses that supported their work, weren’t seriously concerned about achieving "for all". People who are blind or low vision often struggle to access the internet because web standards are built assuming sight. 

In contrast, today’s most progressive design methods are increasingly participatory, not only involving intense research with the stakeholders of a design, but often positioning designers not as decision makers, but facilitators who amplify the design ideas of stakeholders who already know what they need. For example, in these design paradigms, designers might go to the most marginalized stakeholders affected by a design--in the case of the internet, perhaps remote rural farmers with no broadband access, youth living in poverty trying to attend school remotely, or blind people with motor disabilities trying to access web services on their smartphones--and find ways reimagining computing to make it work for them (and therefore everyone else).

|Chapter05_Figure02_SoftwarEengineers.png|A group of four people, one in a wheelchair at a computer, all looking at a screen full of green code.|Whereas design is expansive, engineering is narrowing.|@jessie|

In contrast to a design mindset, an engineering mindset is one that centers clarity, precision, verification, correctness, certainty, and feasibility of implementation of a design. Engineering methods are ones that involve invention, specification, formalization, testing, proving, analyzing, implementation, and constraint satisfaction. That is not to say that engineering does not involve design methods of its own ways--many of these activities require a kind of prototyping and iteration of technical solutions--but engineering design is bound by constraints in a way that creative design is not. And the history of computer networking shows this: the decades of networking research that led to the Internet were immensely creative, collaborative, and iterative, but they all stayed within the bounds of the future that Licklider had envisioned, rather than reimagining the vision, as a designer would do.

In popular culture, CS is often seen as having elements of both design and engineering. A software developer might be equally interested in envisioning futures as they might be in implementing that future. And we see blending in the stereotype of the technical entrepreneur CEO: Mark Zuckerberg both imagining Facebook and creating it, Elon Musk imagining Tesla and creating it. But what is lost in these myths is the historical reality that entrepreneurs are often actually doing neither design or engineering. Zuckerberg, for example, did not invent social media: he was merely mimicking designs that had existed long before his particular vision for it. He also didn’t build Facebook himself, he simply prototyped an early version of it; he hired tens of thousands of engineers to build Facebook we use today. Thus, his contribution involved little engineering and little design; most of his contribution was entrepreneurial, seeing an opportunity and harnessing it by gathering capital, organizing teams, and setting business vision. In the same way, Elon Musk did not invent or engineer the electric car (electric motors and cars were invented far earlier, in the 1820’s). Like Zuckerburg, Musk’s contributions were entrepreneurial, seeing an opportunity to translate more than 200 years of research, design, and engineering effort into a manufacturing and sales business.

In contrast to these myths, the reality is that CS is mostly a discipline of engineering, concerned with how to compute things, not _what_ to compute or _why_. And this is clear in the notable absence of conversations about the impact of computing in CS curricula in higher education. Instead, higher education curricula focus on abstract conceptions of computing: algorithms as abstract procedures, not things that automate human processes; data structures as abstract records of information, not encodings of social phenomena; artificial intelligence that mimics human ability, rather than augmenting it; programming languages as expressions of computation, rather than tools that people use to control computers. And yet, despite these framings, every aspect of CS has design considerations fundamentally woven through it: what to compute, what data to store, what intelligence to replace, what notations to use to express computation--all of these are design considerations. Because of the largely narrow focus of CS on engineering concerns, it would be a mistake to empower the discipline as the sole arbiter of what we do with computers. Design, entrepreneurship, ethics, and policy are equally important in ensuring computing serves human needs and values.

|Chapter05_Figure03_PrototypeCollab.png|Five people sitting around and on top of a graphical user interface, with five different large mouse cursors hovering around them.|Doing design requires the abiilty to focus on people, their problems, _and_ the technologies and processes that might help them.|@jessie|

# Design Methods

With this distinction between design and engineering in mind, how does one do design? There are many different methods, far too many to survey here, but we can discuss some of the methods that center critical consciousness, equity, and justice in computing.

One method, which we will call *assumption ideation*, involves analyzing how software excludes and does harm. To do this ideation, one might consider a particular software service, and brainstorm all of the different people, identities, abilities, and contexts in which someone might use it. If this brainstorming is broad, examining a rich diversity of intersectional identities and cultures, the exclusion and harm becomes more apparent. For example, let’s consider the computer mouse, a ubiquitous input device. Who are all of the different people who might use it, and what assumptions does a mouse make that might influence how they use it? We might start off with people with disabilities. For example, can a person who is blind use a mouse? No, they cannot track the mouse cursor on a screen. Can a person who has severe motor tremors due to multiple sclerosis use a mouse? Not really, since most mice and operating systems require precise motor movements. Can a person who does not have hands use a mouse? Obviously not. Even this simple ideation reveals that the computer mouse is intrinsically exclusionary, really only working for people with sight and fine motor control over a hand. A designer that prioritizes disability justice would have rejected the idea of a mouse when Douglas Englebart first invented it in 1961<myers98>.

Design methods can also involve working directly with marginalized people to understand how they use computers. For example, rather than speculating about how people with disabilities use the mouse above, one could connect with people with various disabilities and learn from them. They would find that people who are blind tend to rely on screen reading software, which translates visual content to computer-generated speech<lazar07>, but that such software is often poorly supported and hard to configure. They would find that people with severe motor tremors can use a mouse, but it’s much more error prone; specialized software from research can make using a mouse less error prone<mott14> if only operating system producers would build it in standard. They would find that people who do not have hands do use mice, but would benefit from being able to fabricate their own mouse shapes with 3D printers<chen15>. These methods, while they might take more time, are much more effective at revealing people’s practices and opportunities for design that build on these practices.

These methods, and the many others that designers use, all stem from a basic value of empathy, understanding, and justice. They view the purpose of design as ensuring that everyone, especially those often ignored and neglected in capitalist societies, should have computing that works for them, and they seek out insights about how computing is failing them in order to reimagine it. Engineers need these same values, but as we shall see in the unit plan below and the rest of this book, it can be hard to balance the technical constraints and challenges of engineering with the justice-centered values that should drive design.

% TODO This really needs more grounding in the HCI+Design education literature.
# Teaching CS + Design

Because design and engineering are different activities, teaching CS requires teachers to take a stance on the relationship between design and CS. On the one hand, it is empowering and exciting to position students as visionaries of the future; in fact, many of the CS education reform efforts exploit this rhetoric, describing CS as fundamentally about creativity, creation, invention, and impact. On the other hand, such a framing is inauthentic to the discipline itself, which is far more concerned with how to make things than what to make. Therefore, this choice of framing requires some careful choices, as it has a direct impact on what aspects of CS are taught and how, and what students believe CS is, in relation to other activities and professions, such as design or entrepreneurship<oleson21>.

Let’s consider three ways of framing CS in relation to design and their pedagogical tradeoffs. We’ll then present an example unit plan for the third alternative, which we believe best balances disciplinary authenticity and engagement.

|Chapter05_Figure04_Constructionism.png|A child constructing legos, but the legos are in their own mind|Teaching CS _as_ design has some benefits, but masks design as a distinct skill.|@jessie|

## Teaching CS as Design

One pedagogical option is to _equate_ CS with Design. As we’ve discussed, this is inaccurate, it ignores design as its own independent discipline, and it erases the processional practice and expertise of professional designers, many of whom have more power over what software is created than software developers do. However, treating CS as design has the major advantage of being empowering. For example, one way to position CS is as a fundamentally expressive discipline, in which one imagines futures and creates them, much like a visual artist might have a particular vision for an experience, and then create it, by harnessing technologies like illustration software or digital cameras. Framing CS as an expressive discipline centers students’ creativity and interests, by prioritizing learning contexts that center the students’ creative visions, and by being responsive to your students interests and concerns. These values are largely consistent with constructionist views of learning<papert93>, which embrace student-centered, discovery learning that leads learners to construct knowledge to understand the world around them. Further, prior work around broadening participation in computing suggests that design-related activities help engage diverse groups of learners, such as women and students from underrepresented cultural groups. Emphasizing the creative and social aspects of CS by conflating it with design enables students to engage with computing topics in ways that feel authentic and personally relevant, infusing their creations with their own values and perspectives<kafai14,davis19>. 

There are numerous methods that follow this framing. For example, Kafai’s book, _Connected code: Why children need to learn programming_<kafai16>, describes a range of methods for engaging students in browsing student projects on the Scratch programming platform, copying a project, learning how it is built, and then modifying it to imagine their own vision. With enough skills with Scratch as a tool, students can then feel empowered to envision their own experiences, and create them on Scratch, learning to be resourceful in learning from others both in the classroom and online. These constructionist methods to learning can allow students to express themselves, to build upon their interests, and to learn aspects of computer science that are deeply situated in personally meaningful projects.

While this method can be powerful, it does subordinate many of the foundational ideas in CS. For example, imagine you believe it is critical for a learner to understand how to use a programming language’s while loop (e.g., to help them pass the AP CS A exam, which assesses knowledge of loops extensively). What if the learner doesn’t need to use loops to create their vision? What if they don’t need to program at all to express their vision, instead simply taking someone else’s program and replacing the images and sounds in it? What if a student encounters a need for loops, finds them too confusing, and decides to change their vision to avoid requiring them? As many investigations have shown, this is precisely what happens when design activity is centered over engineering activity<ames19>: students will spend immense time envisioning a software project, creating media for it, and imagining its experience--all fundamentally design activities--but rarely engage in engineering in any depth and thus learn little about CS.

Equating design and CS can also contribute to teaching and learning difficulties if the boundaries between the two disciplines are not recognized and made distinct. Prior work suggests that the pedagogical content knowledge<shulman87> (PCK) educators develop and rely on to teach computing is meaningfully different from PCK for teaching software design, since PCK is domain- and topic-specific. Educators who conflate the two disciplines might struggle to teach either one well due to a lack of clarity on what they’re actually teaching about.

Students may also encounter difficulties separating design and CS if the two are too closely intertwined during instruction. Recall that design questions ask what and why, while engineering (CS) questions largely ask how. Answering these distinct kinds of questions requires different approaches and techniques. However, students who are told that they are learning CS when they are actually doing design tend to apply engineering mindsets to design problems (e.g., slowly building their way to a design, but compromising their ideas in order to workaround technical difficulties). When that doesn’t work, they get confused and frustrated. Sometimes, this frustration leads to backlash: CS students might assert that it’s not their responsibility to consider broader societal and ethical contexts when they’re "only" building technology, refusing to critically consider the ways in which their programs might impact others<oleson20>.

Another risk with equating CS with design is that it ignores essential aspects of design activity. For instance, design is centrally concerned with understanding human experiences and values in the world and envisioning futures that serve them. Consider, for example, the design of a video game, which is a common genre of creative coding projects in Scratch. Game designers need to consider the ethics of video game addiction, the potential for abuse in social games, the stereotyping of race and gender in game characters, the balance between artistic freedom and social responsibility, and the glorification of violence. Framing CS as a fun way to create games both de-emphasizes the engineering depth of CS, while only shallowly engaging the ethical depth of design. This approach might also risk perpetuating conceptions of design that are fundamentally exclusionary, creating things with computing without incorporating the perspectives and needs of diverse stakeholders. When students aren’t prompted to design for users with goals, desires, and contexts that differ from their own, they often implicitly end up creating something that aligns only with their own needs, abilities, and preferences. Teaching CS as design without engaging deeply with design’s foundations discounts the need for creators to think about the broader impacts of their creations.

Finally, equating CS activities and design activities tends to misrepresent the reality of CS-related roles in the workforce, leading students to pursue CS careers when they really might be more interested in design roles. Software engineers typically don’t design software; they build it, based on what designers have designed. User experience (UX) designers, interaction designers, and even business-minded product managers determine what software should do and set requirements accordingly. Clarity around what counts as design and what counts as CS can help students make informed decisions about future education or career choices.

|Chapter05_Figure05_APCSProblem.png|An AP CS A exam question, which includes a class declaration and a question that prompts the student to write a method|Engineering-centered pedagogies focus on problem solving, as in this AP CS exam prompt.|@jessie|

## Teaching CS as Engineering

Defining CS as a kind of engineering is fundamentally more authentic than equating it with design. This framing also creates the least friction with the K-12 CS standards, which are primarily concerned with abstract engineering ideas related to algorithms, data structures, and software verification. It also creates the least friction with common summative assessments, like the AP CS A exam, and the dominant focus of academic CS departments in higher education. Focusing on engineering problems means providing students with well-defined engineering problems, and engaging them in the practice of using CS concepts to solve those problems. This can create an impression of CS as largely one of creative puzzle solving, and systematic engineering problem solving. Curricula that take this stance most include courses like the College Board’s AP CS A. In this way, framing CS as engineering largely supports the status quo.

Conventional methods for teaching CS as engineering, however, are problematic. Most involve the following sequence:

1. Direct instruction on a programming concept. For example, you might provide a lecture on how loops execute in Python, explaining the concept, providing several examples.

2. Problem sets that give students a natural language prompt to write a problem that involves the concept. For example, a teacher might give a problem that says, _Write a Python program that uses a loop to find the smallest number in a list of numbers._

In addition to the numerous conceptual gaps this method fails to address (which we will discuss throughout this book), this framing of CS largely fails to be student centered, following the banking model of which Freire was fundamentally critical<freire68>. While some students might enjoy abstract puzzle solving, many will not, finding it cold, formal, and personally irrelevant. Such abstract characterizations of CS concepts, devoid of design considerations, also make it harder to address issues of social justice in CS, which are largely shaped by design choices, and then unknowingly infused throughout engineered solutions.

Teaching CS solely as engineering also obscures the computing-specific kind of design that arises when programming. Deciding how code should be structured or how best to implement high-level requirements both involve some design work, because they ask students to consider tradeoffs, brainstorm, and come up with creative solutions that fit their contexts<oleson21>. These code-level design decisions introduce opportunities for biases and inequities to be embedded into software--especially if the software operates on data about people, or if it contains an algorithm that determines resource access or allocation. Treating code-level design decisions as pure engineering problems reduces their complexity and risks ignoring the broader social contexts in which software operates.

One method for teaching CS as engineering, while still centering the human concerns that underlie it, is to carefully contextualize engineering problems in their design situations. For example, in the direct instruction above, a critically conscious approach to explaining Python loops might begin by explaining why computers might be used to process long lists of data, and whether having computers process such data is always a good idea. Consider spell checking in word processing software, which has long lists of words that are considered to be spelled correctly; if a word in an essay does not appear in that list, it is underlined with a red squiggly line. The direct instruction could provide examples of where this use of a list is problematic (e.g., displaying warnings on most non-Western names unlikely to appear in a dictionary). This shows learners what lists are for, situates them in issues of justice, and raises questions about design. Then, problem sets might focus less on asking students to write basic algorithms that use loops, and instead ask them to critically analyze algorithms that others have written, and modify them to be more just, or make an argument for why the algorithm should no longer be used. This might involve reading a basic algorithm that does spell checking, and having students understand and critique it. These approaches still center CS concepts, but at least situate them in their application. We will give examples of such approaches in later chapters.

|Chapter05_Figure06_Alternating.png|Two Black girls, both emerging from the two sides of the Chinese yin-yang symbol, one working on hardware and the other on 3D geometries.|Design and engineering is a never-ending duality, and should be taught as such.|@jessie|

## Unit Plan: Teaching CS as Design-Informed Engineering

One way to avoid the tradeoffs of centering either the design or engineering aspects of CS is to engage both as first-class activities, balancing and connecting the two activities, and highlighting their differences. Because this is the approach we recommend, here we give an example unit plan that details the approach, and then discuss its strengths and weaknesses.

In order to complete this unit, students will navigate a series of scaffolded stages of a design process to write and tell a personal story in a computational medium; critically, such stories will have one or more decision points and therefore two or more possible endings, leveraging the combinatorial power of computing. This is student-centered, in that it engages students in connecting their lives and experiences to the concepts, as well as decisions students have had to make in their lives. It develops critical consciousness by exposing students to the diversity of stories and decisions that their peers have had to make, connecting stories to the inevitable issues of social justice in their lives. And it ties these student-centered concerns to the limits of computing, revealing how the stories that students want to tell often must be reduced and simplified to be expressible as computational abstractions.

The learning objectives of this unit are as follows:

1. Students will be able to reason about the positive and negative justice implications of a design choice, recognizing tradeoffs in who software serves.
2. Students will be able to distinguish between phases of a simple design process involving ideation, evaluation, planning, implementation, verification, and deployment.
3. Students will understand how design choices are reflected in and constrained by engineering implications at both the personal and societal level.
4. Students will understand how to use conditionals to make computer programs respond to user input to produce multiple possible outputs.

To achieve the objectives, this unit would be completed across eight sessions. The first session introduces the genre of interactive stories and how computer programs can be used to author them. The unit focuses on a particular type of story, positioning students as designers in a software company, making a design choice with justice implications, and telling two possible outcomes of the design choice to stakeholders.

=
### Session 1: Interactive stories

* Begin the lesson by explaining that this next unit will concern the design choices that software designers make and ask them to tell two possible outcomes of those choices by constructing a computer program that enables the viewer to make a choice.
* Show the students an example interactive story that you have created to reflect a software design decision that affects your life. For example, a story might be a designer choosing a font size for mobile banking. In one case, the font size is 10 pt; in this scenario, the story shows a younger user seamlessly interacting with the site, but an older user with poorer visual acuity, squinting to read their account balance, misreading it, and overdrawing their account. In the other story, the designer chooses a font size of 16pt, the younger user has to scroll more, and mocks the comically large font, but the older user is able to accurately read their balance.
* Engage the students as viewers of the interactive story, asking them to decide which of the paths to follow in the story. After showing one path, restart the story, and follow the other path. Discuss how design choices of any kind can have different implications for people with diverse knowledge, abilities, and lives.
* Share the story’s implementation with the students and guide them through an explanation of how it is constructed. Emphasize not only the program elements that render characters, sounds, and animation, but also the conditional logic that requests an input from the viewer and then uses that input to determine the outcome of the story.
* Encourage students to tinker with the story, changing its characters, animations, and outcomes.
=

The choice of a choose-your-own-adventure story genre is an important one for meeting learning objectives 1 and 4. First, stories can be a powerful motivator to engage, empowering students to share their experiences, perspectives, and values<kelleher07>. However, stories that are purely serial--like those that happen in real life--often do not require much computational complexity, limiting the extent to which students need to engage with control structures, which are a foundational idea in computation. The choose-your-own-adventure story format guarantees at least some logic that involves the program soliciting and responding to user input and acting based on that input. Anything less would limit CS content, but anything more would risk shadowing the design content in this lesson.

After this first session, students should have a sense of the possibilities of the platform and genre. The next session is ideation, the first stage in the scaffolded design process:

=
### Session 2: Ideation
* Have students form groups of 2 or 3.

* *Summative assessment*. Tell the students that you want their group to tell a story similar to the one from session 1, but that they should imagine being designers at a real company, tasked with analyzing the consequences between two alternative designs that have justice implications. Their job is to create an interactive presentation that the broader design team can view to help make a final decision. Examples of scenarios might include 1) Instagram deciding whether to include warning labels on posts with misinformation, 2) whether to use gendered pronouns on Facebook, 3) whether to automatically play the next episode of a television series on Netflix. Scenarios should have a single decision with two choices, each affecting stakeholders in different ways.
    ** This is _responsive_ in that students choose the design choices they are most interested in analyzing.
    ** To ensure this is _participatory_, make space for students to renegotiate the requirements, broadening or contracting them and co-construct a rubric.
    ** This is _educative_ in that the prompt to tell a story and create something to tell it both demand learning.

* Explain that to tell their story, they will have to do both design and engineering. Design will involve ideation and evaluation, and engineering will involve planning, implementation, verification, and deployment.

* Explain that ideation involves quantity over quality, generating possibilities for what stories they might tell, without worrying about whether they are good enough, or the best choice.

* Ask students to pair up and ideate, creatively generating as many possibilities that they can think of for stories they might tell, while withholding judgement on whether the idea is good or bad. Each time they think of an idea, they should write it down in shorthand, so they can remember. Encourage students to focus on generating many possibilities, not on choosing one yet.

* Encourage students to reflect after class on which design decision stories they are most excited about telling.
=

This second session is a critical part of learning objective 2, helping students distinguish between design and engineering, and showing that the ideation part of design is the one that affords freedom, possibility, and exploration. This can also be the most enjoyable part of design, helping to sustain engagement.

The third session asks students to evaluate and select a story:

=
### Session 3: Evaluation

* Begin the lesson by asking students to bring out the ideas they wrote down from the previous session, and read them to themselves.

* Explain that there are five phases left: evaluation, planning, implementation, verification, and deployment, and that evaluation is next.

* Explain that evaluation is different from ideation is that it is explicitly critical: not all stories are worth telling; some stories might be harmful.

* Share with students the list of ideas you brainstormed when coming up with your own story to tell, and explaining the criteria you used to select one: 1) it should focus on design decisions that have variable outcomes for different users, 2) it should reveal tradeoffs in design decisions, 3) it should illustrate the consequences of a choice on diverse groups.

* Ask students to go through their list and identify their own criteria for which stories they feel meet these criteria.

* Explain this self-evaluation as one form of evaluating a design, but evaluating with other stakeholders can be even more important in understanding the strengths and weaknesses of a design idea.

* *Formative assessment*. Ask students to pair up and tell their chosen story to each other. After sharing, discuss what they liked and did not like about the story, identifying ways to make it better meet the criteria. Conduct this process at least once, more if there is time.

** This is _responsive_ in that it surfaces diverse peer perspectives on the story.
** This is _participatory_ in that students have agency in determining what kind of feedback to give.
** This is _educative_ in that it positions students as evaluators, helping them practice analytical skills useful that they can apply in their later work.

* Ask students to reflect on the feedback they received. Were their self-evaluations in conflict with their peer evaluations? How would they change their story to reconcile them?
=

This third session comes in sharp distinction to the second, showing learners that while ideation is freeing, design evaluation involves critical reflection on and refinement of an idea, further reinforcing the distinct stages of learning objective 2.

The fourth session introduces another design phase, iteration, and focuses students on refining the story they are going to tell:

=
### Session 4: Iteration

* Begin the lesson by explaining that great designs come through iteration: taking ideas, and using evaluations of them to improve the ideas multiple times.

* Engage the class in a discussion of each groups’ story ideas. What kinds of design consequences are they engaging? What are the best and worst case scenarios of the design choices? What other more severe consequences can the class imagine? Who are the groups of users most likely to be harmed by each choice?

* Ask students to use the feedback they received in the previous session, and the class discussion, to write a more detailed script for the interactive story they will create.
=

This session engages learning objective 1, modeling how to reason about positive and negative justice implications of a design choice, collectively brainstorming to identify tradeoffs in who software serves, then planning how to communicate those insights.

The fifth session is a sharp pivot into to the first phase of engineering, asking students to translate their story script into a programming plan:

=
### Session 5: Planning

* Explain that planning is the first phase of engineering, taking the hard work of a design process, and identifying ways to express it as software.

* Have groups open your story example and remind them of the critical elements that make the story function.

* Explain that to make this, you didn’t just start coding; you first took your script and tried to translate it to high-level sections of code that would form the basis of the choose-your-own-adventure interaction. Explain that if you had started coding, you might have ended up with something that wasn’t right, creating even more work later to undo and redo the programming.

* Share a version of your Scratch program without all of the implementation, characters, or sounds, just an implementation of the basic skeleton of the interaction.

* Ask groups to compare their script to the skeleton code. Would the skeleton allow them to tell their story, or would the skeleton require modifications (e.g., the skeleton only has one branch, but their story has two, or the skeleton has just two animation sequences before the branch, but their story has four).

* Ask groups to modify the skeleton to match the structure of their story script by the end of class, verifying their work. Encourage them to help each other, while you make rounds, helping students that have difficulty with the Scratch interface.

* At the end of class, ask the students to finish their skeleton, and reflect on what was hard to express about their story using Scratch.
=

This session demonstrates how planning is different: ideation is generative, evaluation is critical, but planning is about getting organized to prevent later problems. This supports learning objective 2, distinguishing between different design and engineering activities, but it also supports learning objective 3, highlighting the aspects of their free form story that were difficult to express as code.

The next lesson moves into implementation:

=
### Session 6: Implementation

* Praise the students for focusing on high-level planning in the previous session, reassuring them that it will have saved them time on implementation.

* Explain that implementation is about figuring out the details and expressing them correctly, in a way the computer will understand. Warn them that part of computer science is recognizing that design ideas can’t always be perfectly translated into code, and that engineers have to make choices about how to reduce their ideas into something expressible.

* Ask groups to bring out their scripts and open their Scratch projects. Explain that their goal for the session is to translate each step of their script into Scratch animations. Provide the link to your finished project for them to use as a guide, but that they shouldn’t just copy your code without understanding what it does.

* As students work, help them with inevitable debugging challenges, and encourage them to help each other.

* As homework, ask students to finish translating their scripts.
=

This session demonstrates that planning is different from implementation (learning objective 2), in that planning resists the details, but implementation engages them directly. It also further reinforces learning objective 3, revealing the many ways in which ideas cannot be perfectly translated into code. It also directly engages learning objective 1, requiring students to demonstrate understanding how to use and combine imperative programming language constructs to express their story.

The next session distinguishes testing as a distinct activity from implementation:

=
### Session 7: Verification

* Praise the groups for their hard work on their implementation, and reassure them that it’s okay that their projects might not work exactly as intended yet.

* Explain that all software developers face this same challenge, trying to express something, but only getting it partially right. Explain that verification is about figuring out which parts are right and which parts are wrong.

* Open your project and demonstrate how to test, showing that because there is at least one choice in the story, there are at least two paths to verify. Step through your first path, documenting each problem you observe, then step through the second path, and do the same. After documenting the problems, rank them according to how important they are to the story.

* Ask students to follow the same process with their own projects, stepping through each path, and documenting the problems they observe, then rank them. Once they have a list of problems, fix them in order, working with you and the peers to debug.

* As homework, ask groups to finish verifying and debugging their stories in preparation for the final session's storytelling.
=

This session, as the previous, supports learning objectives 1-3, since verification necessarily forces students to understand the logic in their program because it will inevitably have gone wrong in some way (learning objective 1). It differentiates verification from all of the previous activities (learning objective 2). And, even more so than previous stages, it forces students to confront the limitations of code as an expressive medium (learning objective 3).

The last session, finally, returns to where the unit started, engaging students once again in stories. This time, however, they are telling their own stories, and hearing the stories of their peers:

=
### Session 8: Deployment

* Congratulate students on reaching storytelling day, explaining that this is an exciting day for any designer or engineer who has worked hard to envision or implement a software idea. Remind them that rarely is any software perfect upon launch, but that it just has to be good enough to do what it is intended for, while gathering feedback about what to improve.

* Remind them how you demonstrated your story in the beginning, gathering an audience, and engaging them in viewing the story. Explain that they’ll do the same.

* Ask each group to present to the class, explaining the scenario they chose, and then letting their interactive story tell the rest of the story, letting the class decide which decision to make, and then after seeing that path, demonstrating the other outcome. Encourage them to applaud after each story, celebrating both their engineering, design, and justice work.

* After all groups are done sharing, recap the design process, explaining how ideation is about generating possibilities, evaluation is about critically evaluating them, planning is about charting a course for engineering, implementation is about expressing the details, verification is about getting the details right, and deployment is about sharing your work to provide value, have impact, and learn about how to improve it further.

* Engage the class in a discussion about the interactions between design and engineering: What aspects of their story were they unable to fully express as code? Which aspects of engineering affected the design they ultimately created? How does software compare as a medium for storytelling compared to verbal storytelling or writing?

* Engage the class in a discussion about the design justice issues that surfaced in the stories. Who does software serve? Who should it serve? On what ethical basis should design choices be made?
Summative assessment. Close the unit by evaluating the students’ stories against the co-constructed rubric from the first session and providing feedback about the students’ engagement with issues of software inclusion and marginalization.
=

This unit achieves many things: students learn that CS, as an engineering discipline, is constrained and shaped by design choices, and requires creative ways of meeting those constraints. This gives students a rich, concrete exposure to both disciplines, shows their connections, and demonstrates how designers and engineers have to work together. It also returns to the broader themes of design justice, asking students to make ethical judgments about design choices.

However, while this framing gives students exposure to both disciplines, it also has limitations. Most notably, it takes extra time to address both design and engineering, taking time away from conceptual foundations of CS, which may be important for later assessments or entry into higher education CS. One way to address these tensions is homework, shifting some work outside of class. Another way to address these tensions is course sequencing, finding ways of addressing the breadth of these foundations in one course (e.g., an Exploring Computer Science curriculum), and shifting deeper content knowledge to subsequent electives (e.g., an AP CS A class).

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaIC
@csta2IC20
@csta2IC21
@cstaAP
@csta3AAP19
@cstaCS
@csta2CS01

@toleranceHeader
@toleranceDiversity
@tolerance10
@toleranceAction
@tolerance16
@tolerance17
@tolerance19

@teacherHeader
@teacher1
@teacher1a
@teacher1c
@teacher1f
@teacher3
@teacher3b
@teacher5
@teacher5a
@teacher5c
@teacher5d
@teacher5e