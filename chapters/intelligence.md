# Key ideas

* The intellectual founders of computer science envisioned computers as mimicking human intelligence
* One type of mimicry is symbolic intelligence, which uses computer memory, arithmetic, lists of instructions, and Boolean logic to process data and make decisions.
* A second and more recent type of mimicry is data-driven intelligence, which uses large datasets of past human behavior to extract patterns for how computers use data to classify information and take actions.
* These two types of mimicry do not capture the full scope of human intelligence, especially in ethical, moral, and social judgement.
* Teachers should help students juxtapose human and computer intelligence, critically analyzing their strengths, weaknesses, and differences.

# Relevant CSTA Learning Standards

Students will be able to:

,Standard, Original Standard, Critically Conscious Revision
,2-AP-12, Design and iteratively develop programs that combine control structures\, including nested loops and compound conditionals., Design and iteratively develop programs that model and critically examine decision logic with control structures\, nested loops and compound conditionals.
,3-AP-15, Justify the selection of specific control structures when tradeoffs involve implementation\, readability\, and program performance\, and explain the benefits and drawbacks of choices made., Examine the tradeoffs in the selection of specific control structures relative to tradeoffs between implementation\, readability\, performance\, ethics\, inclusion\, and justice.
,2-IC-20, Compare tradeoffs associated with computing technologies that affect people's everyday activities and career options., Examine power imbalances in the design of computing techniques that create\, amplify\, and reinforce inequities and injustices in society.

# Relevant Teaching Tolerance Social Justice Standards

Students will:

,Standard, Original Standard, Critically Conscious Revision
,14, Students will recognize that power and privilege influence relationships on interpersonal\, intergroup\, and institutional levels and consider how they have been affected by those dynamics., Students will recognize that computing-based power and privilege influence relationships on interpersonal\, intergroup\, and institutional levels and consider how they have been affected by those dynamics.

Computer science, as a discipline, engages many questions about data, information, process, algorithms, code, and more. But two questions in CS are central: _what is intelligence_ and can _we create intelligence_? Many disciplines have long pondered this first question: the earliest philosophers wondered what knowledge was and how it combined to form wisdom<kim19>; behavioral scientists have long studied how human memory, emotion, and decision making shape intelligence<hunt10>; and scientists have long pondered how intelligence varies across the species<thorndike98>. Computer science has pondered intelligence by investigating how to represent intelligence, independent from our minds, in the form of algorithms. Questions about intelligence are therefore not only central to computing, but to much of the social sciences.

What distinguishes computing from these other disciplines is that it is also concerned with creating intelligence. For instance, one person who imagined this possibility was the son of a banker, Charles Babbage<hyman85>, who first imagined a mechanical machine in 1822 that could automatically calculate mathematical formulas. Later in his life, he met an aristocrat’s teen daughter, Ada Lovelace <essinger14>, who had fallen deeply in love with mathematics, and became enamoured with Babbage’s vision of a machine that could calculate. She extended Babbage’s ideas much further, imagining a more general purpose machine capable of far more than just numerical calculation. She also imagined an idea at the foundation of computer science and how it views intelligence: the algorithm, a series of steps that would operate on abstract symbols. She wrote the first algorithm--to compute a mathematical sum of powers--conceiving of the notion of “loops” in which a machine iterates on a set of data, and “variables” in which to keep track of data. To Lovelace, algorithms were a way of capturing the kind of mathematical intelligence that people have, and encoding it in a repeatable form. These ideas later inspired Alan Turing<copeland04> to generalize the notion of algorithms further, which ultimately led to an even broader community of scholars ultimately creating the field of computer science.

||||TODO Portrayals of Babbage, Lovelace, and Turing.|

# Symbolic Intelligence

The essence of the intelligence that Babbage, Lovelace, and Turing imagined reduced a computer’s intelligence to a few key ideas:

* A “memory” to which abstract “symbols” can be saved and retrieved
* A list of “instructions”, executed in order, each doing one of the following:
    ** Retrieving or saving a symbol from memory. This drew upon a metaphor of how people memorize or recall facts.
    ** Perform an operation on the symbols in memory. This drew upon the metaphor of how people reason about information in their working memories.
    ** Changing which instruction executes next, possibly based on some symbol in memory. This drew upon a metaphor of how people make decisions.
* A memory for which instruction in the list is being executed

For example, imagine a computer that has two memory slots, which we’ll name `A` and `B`. Then imagine that there is an operation called `Add` operation, which computes the sum of the values stored in `A` and `B` and then stores the resulting sum in A. An algorithm that uses these basic operations might be:

1. Store `1` in `A`
2. Store `1` in `B`
3. Add
4. End

The result, `2`, which is the sum of `1 + 1`, would then be stored in `A`. That program isn’t too different from basic arithmetic: it just encodes the kinds of mechanical steps we follow as people when performing arithmetic, much like when we teach primary school children how to perform arithmetic. What expands a computer’s intelligence are the instructions that can change which instruction executes next. For example, let’s add a single jump instruction to the program above:

1. Store `1` in `A`
2. Store `1` in `B`
3. Add
4. Jump to instruction 2
5. End

This program, even though it is nearly identical to the previous one, does something remarkably different: after adding `1` and `1` on step 3, it then goes back to step 2, and adds `1` to the value stored in `A`, and then it does that again--and again, and again, forever, with the value of `A` increasing by one each time, to infinity, or until the computer executing it loses power or restarts. This means it will never get to step 5, the end of the program. This idea of a *loop*, which Lovelace first wrote about, transformed the idea of computers from automatic calculators to something profoundly more capable of intelligent behavior: something that could calculate many things by following a basic set of instructions. In fact, the loop above is an *infinite* (otherwise known as an *indefinite*) loop, which can calculate forever, since there are no conditions that would ever make it stop. Such infinite loops are used, for example, in user interfaces, which wait "forever" for a user to click their mouse, type a key, or touch a touchscreen (at least until the device is turned off).  Of course, in many cases, having a loop run forever is a bad idea: if a computer keeps doing the same thing over and over, it will never do anything else. In fact, if you’ve ever seen your computer "freeze," becoming unresponsive to input, an infinite loop might be the cause: a program the computer is running may be stuck in an infinite loop, with no way out other than for you to stop the program or reboot your computer.

To prevent infinite loops like these, Turing needed another kind of jump instruction: a *conditional jump*. For example, imagine we revised the program above as follows:

1. Store `1` in `A`
2. Store `1` in `B`
3. Add
4. Jump to instruction 2 if `A \< 10`
5. End

This program does the same thing as the version before it, with one major difference: it only jumps if the condition `A \< 10` is true. This *inequality* is a comparison of the value stored in `A` to the value `10`. If `A` is `5`, it will jump back to 2, because `5` is less than `10`; if A is `9`, it will jump back to 2, because `9` is less than `10`. But when `A` is `10`, `10` is _not_ less than `10`, so it will _not_ jump, instead going to step 5, the end of the program. This program above still has a loop, but this loop is a *finite* (otherwise known as *definite*) loop, since it has a stopping condition. As long as the calculations the program does eventually result in `A` being `>= 10`, the program will stop. (Note that this isn’t guaranteed: if the programmer had used a different operation, say `Subtract` instead of `Add`, the value stored in `A` would just keep getting smaller, to negative infinity{This is not actually true. As we will explain in the next chapter, it is not possible to represent an infinite number of negative integer values on a computer. Eventually, the number would get so small that the number would flip to become the largest possible integer that can be represented with a fixed number of fits, and then the program would halt!}, and never be greater than or equal to `10`.

What makes a finite loop stop is its *condition*: some statement that, when true, changes the behavior of jump instruction. This idea of a *truth expression* actually came from a mathematician named George Boole<machale14> (1815-1864), who invented the idea of Boolean logic. Boole grew up relatively poor, and didn’t receive much schooling, working at the age of 16 to support his parents. And yet, he was so enamored with philosophy, mathematics, and logic, that he read widely, found several mentors, and eventually earned an appointment as a professor at Queen’s College in Ireland. It was there where he became fascinated in trying to explain human logic in mathematical terms<hargittai16>.

His major insight was that most of the history of mathematics had used numbers as the foundational unit of reasoning, but numbers and their operations (add, subtract, multiple, and divide), did not lend themselves to the kind of logical arguments that people made in philosophy ("I am human, humans eat, therefore I eat"). He contributed the idea of a *truth value*: values are either true or false; there was no room for ambiguity or nuance. Then, he contributed the idea of *Boolean operations*:

* `AND`: This confusingly named operation takes two truth values and computes `true` if and only if both values are `true`; otherwise, it computes `false`. For example: `true AND true` evaluate to `true`, but `true AND false`, `false AND true`, and `false AND false` all evaluate to `false`. This operation, when used in a computer program as a condition, allows a program to take some action if and only if multiple conditions are true. For example, one such condition for a laptop might be "if the battery is critically low AND all data is saved, shut down."

* `OR`: This operation takes two truth values and computes `true `if _either_ of the values are `true`; otherwise, it computes `false`. For example, `true OR true`, `true OR false`, `false OR true`, all compute `true`; only `false OR false` computes `false`. This operation, when used in a computer program as a condition, allows a program to take some action if any of a set of conditions are true. For example, one such condition might be, "if the user has entered a password OR the user has scanned their fingerprint, login."

* `NOT`: This operation is simpler than the above two, taking only a single truth value and engaging it: if it’s `true`, it computes `false`, and if it’s `false`, it computes `true`.

Combining true values, operations, and other kinds of mathematical comparisons allows for the expression of the kinds of complex logical conditions found in society. For example, in the United States, the Medicare program has strict eligibility requirements based on age and other factors. We can encode Medicare eligibility logic in a Python *Boolean expression* like this:

`python
(age >= 65 and yearsWorked >= 10) or 
(age >= 65 and quartersWorked >=30) or
(age >= 65 and quartersWorked < 30 or payingPremium) or
(age < 65 and (hasSocialSecurityDisabilityInsurance or railroadRetirementDisability) 
or hasALS 
or hasEndStageRenalDisease
`

In this ungainly expression above, the parenthesis group subexpressions, just like in algebra, determine the order of operations. That means that the expressions inside parentheses get evaluated first. So what would happen if someone’s age was 62 and they have ALS, but they don’t have social security disability insurance or railroad retirement disability? The first four and last subexpressions would result in `false`, because `age \< 65` and they don’t have either type of disability insurance, or end stage renal disease. But `hasALS` would be `true`. This would evaluate to the following:

`python
False or
False OR
False OR
False OR
True OR
False
`

According to the rules of an `OR` operation, as long as any value is `true`, the result is `true`, so the final expression would evaluate to `true`, meaning they are eligible for Medicare. While medicare employees might be ultimately responsible for making eligibility determinations, using the expression above in a Medicare computer program that determines eligibility would allow the program to take in data about a person’s age, work history, disability insurance, and medical conditions, automatically make a determination of eligibility, without human intervention.

Is any of the above intelligence? Boolean, Lovelace, and Turing wouldn’t go that far. Boole wrote on morality:

"
It is not of the essence of mathematics to be conversant with the ideas of number and quantity. Whether as a general habit of mind it would be desirable to apply symbolic processes to moral argument, is another question.
" George Boole<boole54>

Lovelace wrote on intelligence:

"
The Analytical Engine has no pretensions whatever to originate anything. It can do whatever we know how to order it to perform. It can follow analysis; but it has no power of anticipating any analytical relations or truths.
" Ada Lovelace<hollings20>

Later, Turing wrote on thought:

"
The original question, 'Can machines think?' I believe to be too meaningless to deserve discussion.
" Alan Turing<turing09>

Thus, these three intellectual founders of computing, while fascinated with ways of creating machines that could mimic human intelligence, there had no pretense about the power of computers: they believed that computer programs are only as smart as their creators can make them and they did not see how abstract logical or symbolic reasoning could replicate human morality or judgement. They viewed their creations and ideas as beautiful, but limited in their ability to demonstrate intelligence.

Of course, Babbage, Boole, Lovelace, Turing could not have imagined the kinds of intelligent behavior that programmers have since created. Computers can parse natural language, produce speech, predict our desires, recognize objects in images, drive cars, fly airplanes, diagnose cancer, organize our photo collections, detect fraud, find our bus, and route us home. Aren’t these displays of intelligence something more than the intelligence that Lovelace and Turing imagined? Lovelace and Turing would likely argue no. All of that intelligence reduces to the same basic set of mathematical, Boolean, and logical operations, loading a number, performing some arithmetic, checking a number’s value to decide whether to go to this step or that using truth values, ANDs, ORs, and NOTs. What enables those illusions of intelligence are millions of instructions, each carefully written by millions of people over the course of decades, and assembled together to achieve ever more complex behaviors. And so while computers seem to be ever more capable, it is only because of the ongoing labor of software developers and data scientists to carefully write the instructions that shape algorithms, and to gather and label data used to drive computer behavior. As Lovelace said:

"
[A computer] can do whatever we know how to order it to perform.
" Ada Lovelace<hollings20>

That basic fact has not changed since the dawn of modern computer science.

||||TODO Something that conveys the idea of data transforming into intelligence.|

# Data-Driven Intelligence

As we shall discuss later in our chapter on [AI and Machine Learning|aiml], there is another way that computer scientists have invented to encode intelligence. Rather than having software developers carefully translate human intelligence into reads, writes, arithmetic, and jumps, some kinds of artificial intelligence instead use large sets of data to “learn” intelligence. This method is known as machine learning, and uses data to specify, probabilistically, how to act in particular situations. This idea stemmed from Turing’s original questions about intelligence, but rather than engage them from the perspective of symbolic reasoning, they engaged them from the perspective of human learning, which involves observation, practice, and feedback.

Of course, just as with symbolic intelligence, the kind of learning that computers do looks very little like human learning. For example, one simple but broadly used type of artificial intelligence is called a *decision tree*<safavian91>. Here is an example of a decision tree that attempts to encode a teacher’s classroom management skills:

* Is a student off task?
    ** _Yes_: Is the student usually off task?
        *** _Yes_: Talk to the student about their behavior.
        *** _No_: Take no action, but be more attentive to the student’s behavior.
    ** _No_: Do nothing.

This decision tree, and others like it, are often automatically derived by machine learning algorithms by considering labeled data. For example, consider this hypothetical labeled data that describe several times a teacher observed a student and took an action:

,Off task, Usually Off task, Teacher Action
,Yes, Yes, Talk to student
,Yes, No, Be attentive
,Yes, No, Do nothing
,No, No, Do nothing
,No, Yes, Do nothing

Machine learning algorithms "learns" a decision tree by analyzing the probability of different actions based on these two variables of `Off Task` and `Usually Off Task`, generating a decision tree that maximizes how well a candidate decision tree predicts `Teacher Action` based on the given data. It is, therefore, a kind of mindless pattern matching mimicry.

Is this intelligent? One way to answer that question is to ask whether this is effective classroom management. It isn’t, particularly; clearly whether to intervene is a much more situated decision, dependent on many more variables than just current and past off task behavior, including who the student is, what the activity is, when in the school year it is, whether the behavior is disruptive to others, whether a teacher perceives a learning opportunity from intervention. Thus, the decision tree is only as "intelligent" as the data it is given, and this data is not very "intelligent." The magic of machine learning methods such as decision trees is therefore still limited to its ability to efficiently and effectively learn from data, and to whatever intelligence is encoded into that data—not in its ability to critically question what the data means or what implications the behavior might have on students. That remains something only people can do.

||||TODO Something that conveys the challenge of deciding what intelligence a computer should have and how that intelligence should be used in the world|

# Designing Intelligence

Whether the intelligence a computer has is encoded as an algorithm, or learned from intelligence encoded as data, computers still completely depend on people to have intelligence. In some ways, this alone is one of the greatest achievements in scientific and technical progress in the 20th century: we _have_ managed to replicate some of our intelligence into machines, and these machines can enact this intelligence much faster and more reliably than we can. And it is this speed and reliability is the fundamental source of computing power: when a task needs to be done quickly and reliably, investing the immense human effort into finding ways to have a computer do that work can be well worth the energy. The many ways in which computers have connected us, brought us closer to information, and empowered our expression are examples of the value of that power.

However, this also forces a question: which human labor really needs to be fast and reliable, and at what cost? One might argue, for example, that no person should ever have to suffer the tedium of processing routine tax returns if a computer can do it. But what about these decisions?

* How to parent
* Caring for elders
* Sentencing the convicted in court
* Deciding who gets access to education
* Determining what information people see
* Choosing the friends to which we stay connected

Over the past few decades, many of us have willingly delegated these previously human decisions to algorithms written by software developers or derived from data, and in the process, unintentionally traded human values such as fairness, love, ethics, and wisdom for computational values of speed, reliability, and determinism. Moreover, as we discuss elsewhere in this book, this trade has led to disruptive economic change, shifted even more benefits to those with power and wealth, and further exacerbated racist, sexist, and ableist structures in society by encoding them into algorithms and data<benjamin19>.

This question about when to automate ties directly to the questions in the previous chapter about the difference between design and engineering: who decides what computing intelligence we create, how should they make those decisions, and who should be involved in informing those decisions? Consider, for example, the identities and positions of the intellectual founders of computing:

* Babbage was a White English academic who inherited the equivalent of millions of British pounds from his father, who was a wealthy banker. He is noted in history for his many public campaigns against the nuisances of "commoners," and his fascination with computers was in replacing the many paid "human computers" he staffed to perform arithmetic calculations for his business with machines.

* Boole was a White, English, poor, self-taught mathematician, logician, and philosopher, concerned with trying to uncover formal foundations for logic and the universe, and enamored with a variety of religious traditions<gasser00>. He was more interested in explaining the universe than he was with the people in the universe.

* Lovelace was the white daughter of Lord Byron, who was a poet and politician, and one of the wealthiest British aristocrats of the early 19th century. Lovelace grew up wealthy, and amongst wealthy aristocrats, but was often ill, and was eventually paralyzed by the measles and only mobile with crutches. Her interest was the mathematical beauty of algorithms, not in what unequal effects algorithms might have on society.

* Turing, a mathematically gifted White British child of more middle class parents—who many suggest might have been a Autistic—found his way to university and research. His prolific career was cut short at 39, when he admitted to being gay, which was illegal in 1952. He was put on house arrest, forcibly administered synthetic estrogen for a year to make him sterile and impotent. He was later found dead of cyanide poisoning, apparently by suicide. For him, the theory of computation was an intellectual refuge from society, much like it is for many computer scientists, who view the social world as too complex and too unpredictable.

What do we make of the identities of these four intellectual forces who shaped the abstract, mathematical foundations of computing? Perhaps the common theme is that all four were removed—or removed themselves—from the particular complexities of human and social life. To Babbage, computing was a path to economic efficiency, a way of eliminating the need for human labor and its uncertainty. To Boole, logic was of academic interest. To Lovelace, computing was a mathematical curiosity, divorced from its practical implications on society. And to Turing, the theoretical foundations of computing were both an abstract curiosity, but also a practical tool in World War II. Each of these lives was lived with the abstract ideas of computing separate from the everyday reality of its broader implications on society. Perhaps those implications are only visible in hindsight; or, perhaps how these individuals were situated in society made those implications invisible to them.

Does the potential for harm that may come from encoding intelligence, or the identities of the people who do this encoding, mean that we should stop creating software? Not necessarily. There is certainly work in the world that should be fast, reliable, and safely performed by computers instead of people. If software designers can envision it and engineers can build it, or learn it from data, then perhaps some of these tasks are valuable to automate. But it does mean that we have to much more carefully understand the limitations of software, and think carefully about when to use it, whether we are deciding whether to use a software program, voting democratically on technology policy, or designing software to be used by others.

||||TODO Something that portrays teachers and students debating people and machines|

# Teaching Intelligence
Engaging students in the two fundamental questions of what is intelligence? and how do we create it necessarily requires developing students’ critical consciousness with a third question: should we create it? Posing this question first engages students in reasoning about the ethical, moral, social, and economic implications of technology on society, while also necessarily engaging in questions about what kind of intelligence is and is not possible with software, and what kinds of automation are desirable, and for whom.

Unfortunately, most research on CS education does not engage this third question. The CS learning standards communities have developed largely focus on implications of technology, and how society shapes technology, with no discussion of the possibility that technology might not be built. Educator communities like [AI4All|https://ai-4-all.org] generally focus not on questions about what should be built with software and why, but empowering more diverse youth to build with AI. Even efforts to teach students how to design software that serves direct and indirect stakeholders generally focus on a kind of tech solusionism that assumes that software must be built to solve problems in society<reimer03>. Most efforts to discuss the role of automation in society in CS education contexts are nascent, and leverage pedagogy like guest panels with industry, academic, and government speakers, case studies of ethical dilemmas, and the leveraging of multiple disciplines<reich20>. Most of this work generally shows that the more multi- and interdisciplinary the approach to discussing automation, the more it resonates with students.

A critically conscious pedagogy for discussing automation would likely go beyond engaging youth in designing and engineering software in multidisciplinary ways. Rather, it would engage youth in making decisions about whether and how to automate, and surface the critical individual, organizational, community, and societal tensions in these automation choices. Blending these pedagogies with culturally sustaining ones, teaching methods might help students position themselves within these automation choices, asking them what world they want, why they want it, and what effect getting it might have on others. Because such teaching methods are underexplored, teachers should expect to experiment, reflect, and deeply engage their students in shaping how to discuss automation and computing.

||||TODO Something that portrays libraries and search engines in a war|

# Unit Plan: Libraries vs. Search Engines

In the spirit of critical and culturally sustaining pedagogy, below we describe an example unit that illustrates one way to engage youth in examining questions of automation. Its approach is to take a computing technology that students can encounter and interact with in everyday life--web search engines--and engage students in analyzing and debating the nature and limits of its intelligence and its effects on society. While it focuses on search engines, it could be adapted to any technology that is familiar to students and their teacher.

The learning objectives of the unit are:

-
Learning objectives
* Students will be able to compare human and computer-based intelligence for a particular technology.
* Students will be able to compare the tradeoffs of computer-based intelligence and their impacts on people’s everyday lives.
* Students will be able to explain how the motivations of a computing technology’s inventors affect these tradeoffs and their impacts.
-

To achieve these learning objectives, this unit contains a sequence of five sessions, the first engaging students in analysis and brainstorming, and the last three engaging them in debate with each other. The first session begins the conversation about intelligence:

-
Session 1: Is web search intelligent?

* Begin the lesson by asking students to share their experiences with web search: how much do they use search engines, what do they use them for, what would their life be like without them, etc.

* Ask students to share their experiences with librarians: how often do they talk to a librarian, what do they ask them, what would their life be like without them, etc.

* Students will likely share that they find web search to be much more useful, relevant, and knowledgeable than librarians. Explain that this unit is going to investigate to what extent that is true, and that they are going to begin today by brainstorming things that make web search intelligent.

* *Formative assessment*. Ask students to create groups of 3 to 4 for brainstorming, then brainstorm all of the things they can think of that web search can do that seems intelligent. Someone should be selected to take notes and report back to the class.

    ** This is _responsive_ in that students leverage their own assets in analyzing web search.
    ** To ensure this is _participatory_, encourage students to shape how they capture their ideas and report back.
    ** This is _educative_ in that the prompt will reveal the multiple perspectives of their peers.

* After a period of brainstorming, have the notetaker report to the class some of the most intelligent things they have seen a search engine do. Write some of these down in a shared space, accessible to the class.

* After groups share, go through each example, and interrogate the origins of the intelligence. For example, if a group mentions the way that Google returns Wikipedia articles when they search for topics, explain that the search engine doesn’t write Wikipedia, people do; it just matches words to Wikipedia articles that communities of people have written. 

* Have students reflect after the session on whether they believe a web search engine is smart.
-

This session engages the first learning objective directly, probing into what intelligence a web search engine has and where it comes from, but in a student-centered manner. The next session sets up the contrasting case of librarian, and the many things that they do that search engines also attempt to do:

-
Session 2: Are librarians more intelligent than web search?

* Remind students of the evidence of intelligence they brainstormed in the previous session.

* Explain that web search in the 1990’s began to displace librarians as a central resource for resolving questions about topics. Librarians’ jobs overlap with the web search engine: 1) finding resources, 2) assessing the credibility, accuracy, and value of a resource, 3) organizing indices of resources, 4) archiving resources so that future generations can access them, 5) helping people answer questions with resources, 6) helping people refine their questions, 7) developing information literacy skills with information technologies.

* Explain that in today’s session, students will once again form groups, but this time instead of brainstorming, they will analyze which of the 7 tasks above a search engine does, and how it differs from how a librarian does it.

* *Formative assessment*. Ask students to form groups of 3-4, and ask each group to select a particular question that they’ve wanted to answer. Ask them, for each of the seven roles, to discuss whether a web search engine can do what a librarian does, and if so, imagine how a librarian does it differently from a web search engine.

    ** This is _responsive_ in that students will bring their own knowledge of libraries to bear on their analysis.
    ** This is _participatory_ in that students are choosing their own question of interest.
    ** This is _educative_ in sharing will reveal the multiple perspectives of their peers.

* Bring the class back together, then go through each of the 7 roles: ask the class to share their judgements about whether it can be done by a search engine, and if so, how they are done differently.

* Summarize the discussion, asking students to reflect after the session on whether they believe web search engines are more intelligent at search than librarians.
-

This second session challenges students’ conception of web search as superior to other forms of information retrieval, engaging the second learning objective. The third session goes deeper, helping students to reflect more fundamentally on the fundamental tradeoff between web search and librarians:

-
Session 3: Speed versus accuracy

* Remind students about the results of the past two sessions’ analysis: there are things that make web search intelligent, but more limited than librarians.

* Explain that today’s session will focus on the two major differences: speed versus accuracy. Speed is the time it takes to get an answer and accuracy is the correctness of an answer. To analyze these two aspects, divide the class into two sides: the pro-librarian side and the pro-search engine side.

* Seed the debate with two claims to focus students’ attention on issues of justice: 1) librarians can be trained to avoid retrieving harmful, racist, or incorrect information, but search engines cannot, 2) librarians, while they might not be as fast as computers at retrieval, are less likely to give misinformation or disinformation.

* Ask each side of the class to form smaller groups of 2-3 within the sides, and have them brainstorm additional claims for why librarians or search engines are faster or more accurate than the other. For example, students might argue that librarians are faster because they can help you get the correct answer to hard questions more quickly than using Google to research; the search team might argue that it's more accurate than librarians because it has access to more knowledge. Teams should write their claims in a shared place so everyone in class can see them.

* After a period of brainstorming, have students nominate two students to debate their side, one for speed and one for accuracy. Then conduct a debate on speed, with the search engine side starting, with a librarian side rebutting, then the reverse for accuracy.

* After the debate, ask students to reflect on which questions a web search engine is best suited to help answer, and which a librarian is best suited to help answer.
-

Having deepened the tradeoff analysis to support learning objective 2, the next session turns to the consequences of those tradeoffs.

-
Session 4: Consequences of speed over accuracy

* Explain that this session will turn to the question of the consequences of the tradeoffs between speed and accuracy.

* Describe what the world was like before web search, when people had questions, but the only way they could get answers was from authoritative sources, like librarians, teachers, and experts. Web search made it possible to get answers quickly and easily without having to rely on experts.

* Repeat the debate format from Session 3, but divide the class into negative and positive consequences of web search on individuals and society.

* After the debate, ask students to reflect on whether the positive and negative consequences of web search have been worth it.
-

By this fourth session, students should have a rich sense of the tradeoffs of web search and their consequences (learning objectives 1 and 2), providing a strong foundation for the final learning objective of understanding the values in society that have caused speed to win out over accuracy.

-
Session 5: Imagining futures

* Pose the question, “Why did web search win?”, and review the answers that the debates have surfaced: speed, accurate enough.

* Then pose the question, “Why did libraries lose?”, and review the answers that have surfaced: low value of accuracy, low cost of misinformation, high cost of retrieval.

* *Summative assessment*. Prompt students to consider these choices that society has made about where they get information, and prepare a short 1 minute speech describing the future that they would prefer to see. Is it one that continues the status quo, leaving people to judge the quality and credibility of information for themselves, or one that somehow engages experts to evaluate information? What consequences can they imagine of their future on themselves, their families, and the world?

    ** This is responsive in that students bring their own perspectives on the debate, from their experiences, but also the previous formative assessments.
    ** To ensure this is participatory, engage students in how they want their speeches to be evaluated, co-constructing a rubric.
    ** This is educative in that hearing multiple speeches will shape students’ perspectives on the issue, even beyond the arguments they formed.


* After students have prepared their speeches, have each present.

* After presentations, synthesize the implications of the students’ different positions and generalize them to other computing technologies. End with a reminder that in a democracy, it is their preferences that shape what products and services exist, and what laws exist to regulate them.
-

Through this series of debates and reflections, students should have a more precise understanding of what kind of intelligence computers do and do not have, of what implications replacing people with computers can have on society, and how the values of inventors shape these implications. This will help shape students' critical consciousness of web search, situating in the history that produced it, while also centering their role in shaping future change.

One limitation of the analytical method above is that it positions students as critics of technology rather than creators. An alternative is to engage students in creating with intelligent assistants, encountering the limitations of machine intelligence as they attempt to create with it. In later units that address the specific concepts in programming, this focus will shift from a critical role to a design role.
