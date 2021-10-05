=
@keyIdeas
* Assessments, especially formative ones that help guide future learning, are a necessary part of feedback and learning in CS.
* Grades, and other summative assessments, are not, though most education systems in the world have given them great power to certify, judge merit, and determine who gets resources.
* Because the scope and foundations of CS are evolving, and learning standards are a lagging reflection of CS foundations, selecting assessment goals can be daunting.
* Current CS assessment practices tend not to be formative, and tend to focus only on programming skills, and thus offer little guidance to shaping more broadly-scoped justice-focused assessments.
* Equitable assessments in CS should be responsive to student identities and needs, participatory in their design, and educative in their outcomes. Considering the purposes, processes, places, parts, power, people, and products of assessments can help achieve these principles.
=

In the previous two foundations chapters, we’ve discussed the history of CS education and pedagogy and the conflicting values, motivations, and tensions that have emerged as computing has woven itself through society. However, there is one significant part of this history that we have not yet discussed: how can we help students get feedback about their CS learning, to guide the development of their CS skills, interests, and identity? This question of ~assessment~assessment is not only central to ensuring effective teaching and learning, but also at the heart of ways that assessment has historically been used, often inadvertently, to erode confidence in CS, restrict access to CS learning and careers, and ultimately limit who understands and controls how CS is used to shape society.

Assessment, of course, is not a new phenomenon: people have always assessed learning in some way. Sometimes this is as simple as an individual learner monitoring their own practice of a skill, reflecting on their practice, and using their observations to improve their practice. In informal settings, assessments might take the form of a mentor or coach observing someone’s practice and offering constructive guidance and feedback. And in schools, assessment can be as simple as a teacher observing, encouraging, and affirming understanding and growth. Assessments in CS, in principle, are no different from learning in any other domain, in that learning to write computer programs or reasoning about the impacts of software on people’s lives can benefit from evaluative feedback, whether that evaluation is done by the learner themselves or someone else.

While assessment is not new, modern forms of summative assessment -- namely grades -- are a relatively recent invention. After millennia of assessment of human learning that was fundamentally social, situated, and qualitative, ideas from the industrial revolution began to find their way into schools and universities<durm93>. At Cambridge University in the 19th century, for example, teaching reorganized itself from a culture of mentoring and apprenticeship to systems of courses, degrees, and exams. The popular adoption of statistics in manufacturing in the late 19th century captivated teachers and administrators, leading to early systems of graded ranks at Yale, _Optimi_, _Second Optimi_, _Inferiores_, and _Perjores_. These early experiments in quantifying and classifying student knowledge in the early 19th century eventually grew into elaborate systems of ranking, ultimately resulting in the systems of grades, grade points, and GPAs that systems of education use around the world today<schinske17>.

While formative assessments that offer feedback and guidance can be powerful tools for shaping learning and building confidence<black09>, summative assessments such as grades can be fraught<knight02>. Learners often internalize grades, relying on them to shape their self-efficacy in a subject. Grades are often used to restrict access to future learning or to allocate resources. And when grades are constructed in ways that ignore inequities, they can end up further perpetuating inequities. And despite all of these problems, they aren’t particularly informative for learning: how does a student having a number or label attached to them shape their practice or build self-efficacy?

In the rest of this chapter, we will examine the history and problems above from the perspective of CS, considering different motivations for assessing CS knowledge, the diversity of concepts and skills in CS that we can assess, and ways of assessing CS knowledge. Throughout, we will complicate current assessment practices in CS, identify gaps in what and how we assess in CS, and offer assessment principles to guide critical CS pedagogy

|Chapter03_Figure01_Judging.png|A Scantron sheet with a woman in a cap and gown and a blue bar over her eyes, a magnifying glass over her shoulder, and a 3.5 below her chin.|Why do we assess?|@jessie|<

# Motivations for assessing CS knowledge

Within the context of teaching and learning, the purpose of any CS assessment should ultimately be to support learning. This might mean learning CS skills, CS concepts, or even developing  CS self-efficacy or identity. If we imagine a system of CS education with infinite resources, shaping assessment around this motivation would be highly relational. For example, if every teacher had a single student to tutor, that tutor could spend immense time understanding their student’s identities, needs, and motivations, helping them select things to learn and practice, and using assessment as just one of many tools to help the student identify new opportunities to learn and grow. In fact, in contexts where CS learners lack a formal system of education to support them, this is exactly what happens: learners follow their interests, learn new skills, and build communities of mentorship to help them learn complex ideas in CS, connect to informal learning resources<malmi19>, and get feedback on their learning<ko18>. Teachers and mentors can use formative assessments to help learners decide how to structure future learning activities: whether to re-teach a topic, provide additional practice for a topic, or to move to more advanced topics.

Of course, there are many things that complicate the idealized scenario above. For example, schools generally don’t have the resources for 1-to-1 tutoring, and so they must deal with problems of *scale*. This leads many CS assessments to be motivated less by intimately understanding the needs of each students’ learning, and more about scaling the limited attention of a CS educator. And scale has many impacts. It can lead teachers to narrow opportunities for learning CS so that they may be more uniformly assessed. It can lead teachers to rely on automation, delegating the subjective process of motivating and encouraging learning to an unknowing algorithm or formula. Achieving scale through automation can also constrain the depth and significance of feedback, transforming what might have been a detailed narrative of opportunities for growth to a single number or letter. In the context of scale, assessments can help direct a teachers’ attention to specific students -- for example, offering additional support to students who struggled, or praise for students who excelled. But this benefit is only a byproduct of a teacher’s limited attention as a class scales. Therefore, even when a teacher’s goals are to help students learn through formative assessment, the problem of scale can quickly warp these original intentions.

As schools industrialized in the 20th century, other motivations crept into learning, such as *credentialing*. Once society decided that the end product of finishing high school or college was a degree, there had to be systems to decide whether someone had earned that degree. Such systems often replaced formative assessments designed to support learning into summative assessments such as tests and exams designed to certify. In CS, these motivations often appear in high stakes exams, such as [Advanced Placement CS exams|https://apstudents.collegeboard.org/courses/ap-computer-science-a] that certify a certain level of CS content knowledge; in professional certifications offered by companies that certify expertise in specific technologies; and even in teacher education, where exams certify a certain level of CS content knowledge. These systems-level ideas of credentialing eventually found their way to classrooms, with teachers shifting their motivation for assessment from learning to credentialing; CS classrooms were no exception.

Another industrial concept found its way into organizations outside of school: *merit*. Colleges and universities began using summative assessments like grades and AP exam scores as predictions about future success, incorporating them into admissions and hiring decisions. Such motivations are fundamentally about solving a particular problem of resource allocation: who should get access to the limited attention of a university, or access to the limited jobs at a company? Software companies like Google have long used particular GPAs or grades in individual CS courses as a threshold for eligibility to even interview at Google, let alone get a job (not to mention excluding all but a few elite universities from eligibility). These applications of assessment often act as gatekeeping by contributing decisions about who is able to pursue additional education, gain employment, or participate in certain communities. And these decisions are frequently inequitable and biased<xie21>, reflecting access to mentorship, support, and basic resources like time to study and access to a computer and the internet. Assessments for the purpose of assessing merit, then, are a fraught idea that has nevertheless become a central concern in CS education practice.

|Chapter03_Figure02_Reflecting.png|A circle with a child peering down inside its contents. Pixelated things and people inside, with code in the background.|There are many things to know about CS and no one can know them all.|@jessie|>

# What is CS knowledge?

Separate from the concern of _why_ to access is _what_ to assess. As with any subject, there is a lot to know about CS. For example, the [K-12 CS Standards|http://k12cs.org] and [CSTA Standards|https://csteachers.org/page/about-csta-s-k-12-nbsp-standards], widely adopted across the United States and world as a collection of concepts and skills that students might learn about CS, covers many things:

* Understanding the hardware that makes computers work.
* Understanding the networks that connect computers and people.
* Understanding ideas about data and algorithms.
* Learning to use programming languages to create computer programs.
* Learning to organize computer programs.
* Learning to create computer programs in teams.
* Reasoning about the impact of computing and society.

These standards are a reflection of what the academic discipline of CS has decided constitutes CS knowledge, after nearly a century of research, invention, and teaching.

But CS knowledge clearly goes beyond the current standards. Not only is there more depth and nuance to all of the concepts and skills above not captured in those standards, but there are new discoveries in CS research every day that broaden the field and new technologies and platforms created in industry that students might want to learn. Unlike many other disciplines, which often have a relatively stable foundation, CS is a discipline that is particularly interested in reinventing its foundations. For example, the standards above include little about the design of software to meet diverse stakeholder needs. What is CS if not a discipline concerned with creating software that is useful, usable, and fair to people? There are an entire fields, such *human-computer interaction* and *artificial intelligence*, largely not represented in the standards, despite being critical new foundations for shaping the world's software. Similarly, researchers are making rapid progress in new fields like *quantum computing*; if this were to become a practical daily reality for computing, many of the concepts in the K-12 CS standards may become less relevant, and even obsolete. Even this book aspires to question the K-12 CS standards, reconceptualizing them in terms of equity and justice, rather than strictly technical terms. For example, what should students know about algorithmic and data bias, about the role of software in creating and amplifying inequities in society, and how even the most basic concepts in CS are complicit in these harms? Therefore, even though these standards are widely accepted, and even encoded into many U.S. state laws and national curriculum around the world, they are already outdated.

This dynamism in CS content knowledge poses unique challenges for assessing CS knowledge. How can a learner know if they are learning a skill or concept well if academic and industry opinions of what constitutes "good" CS knowledge is shifting? And how can teachers keep up with these shifting ideas about what CS is, to help guide students? These challenges position CS teachers less as authority figures in what is right and wrong, and more like cultural arbiters of diverse CS cultures and communities, helping youth understand the eclectic worlds that apply CS knowledge to their work and play. In this way, from an assessment perspective, CS teachers might think of themselves as a blend of humanities,arts, science, engineering, and math: for some aspects of CS, there are single right answers, as in mathematics; and for other aspects of CS, there is no right answer, just many answers with varying qualities.

Of course, CS teachers are free to limit their assessments to the knowledge encoded in standards. After all, that is the purpose of standards: to help teachers focus their teaching and assessments, while ensuring their teaching is grounded in the discipline. Teachers just need to be mindful that standards are only a lagging proxy for an evolving field with competing ideas about what CS is. Teachers will ultimately decide what they help students learn and what they will assess to facilitate that learning.

|Chapter03_Figure03_Measuring.png|Several students at different distances standing straight up on top of transparent rulers at different angles.|Current practices are grounded in notions of measurement.|@jessie|<

# Current CS assessment practices

Across both secondary and post-secondary CS education, CS assessment is currently scoped and constrained by a number of forces. First, most CS teaching focuses narrowly on developing students’ programming skills, limiting most of what is taught and what is assessed to programming languages and programming skills. This focus emerges from the social forces discussed in Chapter 1 and 2, which have positioned CS education as a neoliberal project, training future engineers for industry. Second, most modern CS teaching happens in contexts of scale and credentialing, and so many CS assessment are designed not for formative purposes to support student learning, self-efficacy, and identity development, but rather to efficiently (and often inequitably) measure student learning for the purposes of ranking and credentialing.

Within these contexts, researchers and practitioners have explored several basic genres of assessment designs. One of the most common is simply multiple choice questions that present some computer program and then prompt students to make some judgement about its behavior or how to change its behavior.  For example, to assess a students’ ability to accurately read a program to ~trace~trace the logic of its execution, an assessment might show a short program and ask what it’s output is:

=
What does the following program output?

`python!
a = 2
b = 2
if b > 2:
  print(a + b)
else:
  print(a - b)
`
a) 0
b) 1
c) 3
d) 4
=

Such questions require students to understand the syntax and semantics of a programming language, to trace the program’s manipulation and computation of data. For example, the item above requires the student to know what variables and conditional statements are, what a print statement is, what the _greater than_ equality symbol means, to have a strategy for tracking the values of variables as the program executes, and to know all of the precise rules of Python that govern this execution.{Curious what the program will print? If you know Python, try tracing it. You can press the play button to check your work.} Different prompts can exercise different skills; for example, the item above could have asked the student to select a line of code to change the behavior of the program, or to identify a line of code that caused incorrect output. All of these exercise a students’ ability to reason as a computer does, which is a key skill in writing computer programs. Such assessments have been used to construct CS ~concept inventories~conceptinv, which attempt to robustly and reliably measure students’ knowledge of basic programming concepts<tew11,parker16>, as well as Advanced Placement CS exams.<lewis13,drysdale05>

Another common genre of assessment is a *writing prompt*, which describes some set of requirements that a program must meet and asks students to write a program that meets these requirements. For example, the free response item below details a few constraints in the context of a scenario:

=
A scientist has a list of more than 10,000 measurements, each a value greater than or equal to 0. They want to find the largest value in the list. Complete the function below, returning the largest value. Assume values contains a list of integers in no particular order.

`python
def max(values):
  # insert your code here
  return
`
=

Such questions require all of the reading skills that the multiple choice questions above require (because students must be able to read any code they write and understand what it will do). But they also require many program _writing_ skills, including designing an algorithm to compute the maximum value of a list, translating that algorithm into a programming language using valid syntax, and verifying that the program works correctly by testing different inputs. And, of course, the question requires a student to know many of the features of a programming language, as well as all of the non-programming concepts used in the English description, along with English itself. Such free response programming prompts have been used, for instance, to compare the CS learning outcomes of students across multiple universities<mccracken01>, to assess knowledge about CS in the context of science and engineering applications in high school<weintrop14>, or to measure programming skills in middle school CS storytelling courses<werner12>.

A variation on free response questions are *Parson’s problems*<ericson17>, which offer students the lines of code necessary for writing a correct program, but out of order, challenging a student to determine the order of the program that would produce the intended behavior. For example, here is the item above as a Parson’s problem:

=
A scientist has a list of more than 10,000 measurements, each a value greater than or equal to 0. They want to find the largest value in the list. Order the lines of code below, which are in random order, so that the resulting program returns the largest value in the list. Assume `values` contains a list of integers in no particular order.

`python
def max(values):
  •   if not top or value > top
  • for value in values:
  • return value
  •      top = value
  • top = None
`
=

This item still requires students to know English, understand the concepts in the prompt, and know how to read a program in the programming language, but it does not require them to creatively devise an algorithm to solve the problem. Instead, they merely need to rearrange the lines given until they recognize it as a solution to the problem.

Another major genre of CS assessments are projects in which students are not only asked to write programs, but also asked to devise their *design*. For example, the [AP CS Principles Exam|https://apcentral.collegeboard.org/courses/ap-computer-science-principles/exam] has a summative assessment that asks students to write any program they like, to address any problem, but requires that it use a particular programming language and particular programming language features like variables, loops, and functions<chipman20>. Such items give students more agency in creating something personally meaningful.

Within traditional CS education practices, there is little beyond these four types of assessment items<xie19>. Most of the complexity in designing programming assessments therefore lies not in their format, but in their design, validation, and scoring. For example, even for the simple multiple choice tracing questions, there are innumerable considerations to ensure that items are equitable, valid measurements that give students a fair chance of demonstrating their knowledge<nelson19>: if students’ conception about how a programming language works is right in all but one way, it might result in them getting a question wrong; if programs use names that carry semantic meaning in a natural language, but no meaning in a programming language, it may mislead some students make untrue assumptions about a program's behavior. Designing equitable and valid assessment items often requires careful evaluation of assessment items by someone with expertise in educational assessment; such labor is often infeasible for teachers, given time constraints.

Another consideration is *policy* around the conditions of assessment. Many current CS practices prohibit collaboration of any kind, prioritizing the need for summative assessments to reflect an individual students’ knowledge, often at the expense of students learning from peers. Such policies often lead to elaborate plagiarism policies, some of which are used to exclude students from future CS learning. The effort to enforce these policies often erodes other aspects of CS classroom cultures, creating a sense of competition, isolation, fear, and unfairness<sheard02>. They also result in cultures that are in stark contrast to how CS skills are practiced in the broader world, where knowledge sharing and collaboration are abundant.

Finally, even scoring items can pose learning challenges. Multiple choice question scoring can be automated, but offering meaningful individual feedback and ensuring that students understand it can’t be. Parson’s problems can be scored automatically, but without a teacher talking to a student about their reasoning for their answer, it is hard to offer constructive diagnostic feedback. Program writing questions pose even greater challenges as there are an infinite number of possible programs that a student might write, and often many possible correct answers. Many researchers and companies have worked on *auto-graders*, which are software that automatically read the programs that students write, identifying ways in which the program is correct and incorrect<keuning18>. These systems require teachers to write tests for each problem that define what constitutes correct and incorrect output. While these automate scoring, and can communicate to students what their program’s output is doing right and wrong, they are also not diagnostic: it still requires the student or a teacher explaining what part of their program is incorrect, and resulting in incorrect output. Moreover, auto-graders can also encode tacit assumptions about the style and purposes of "correct" code, assumptions that may not be made clear to students. For example, how an auto-grader is incorporated into assessment can privilege certain ways of writing code. Students often experience auto-graders as a [regime that dictates their success|https://www.insidehighered.com/news/2018/11/30/autograder-issues-upset-students-berkeley]. Research has shown that some students write code by making several small changes and then rerunning it to see if it works as intended, leading many students to avoid the self-explanation needed to understand why their program isn’t working<hao21>.

While automated scoring can save teachers some assessment labor, they have yet to replace the importance of detailed, individualized feedback about student work. This can lead to summative assessment practices that efficiently produce grades, but little learning. And because they do not produce learning, many of these scoring practices also erode students’ self-efficacy in programming, leading them to believe that they cannot learn<murphy08,gorson19>, with some studies showing that students engaging in these systems of learning and assessment actually started with growth mindsets about their ability to learn new skills, but left with fixed mindsets, not only about programming, but _all_ skills<quille20>.

Of course, all of these limitations of current CS assessment practices are even more greatly limited in their scope: there has been little effort in research or practice to develop equitable practices for assessing much beyond programming skills. Even within the scope of the [K-12 CS standards|https://www.csteachers.org/Page/standards], we do not yet know how to assess students’ conceptual understanding of computer hardware and networks, their creative skills in devising algorithms, their ability to organize more complex computer programs, or their ability to productively collaborate. And there has been effectively no research on how to use assessment to develop students’ moral and ethical reasoning skills to understand the impact of computing on society and individual lives. CS teachers are therefore on the forefront of creatively exploring ways of using assessment to guide student learning of the ever expanding scope of CS knowledge.

|Chapter03_Figure04_CaringFeedback.png|A woman on the right, looking left, holding out her hand, looking into the eyes of a very tiny child sitting cross legged on her hand.|CS assessments should be about care and support, not judgment.|Jessie Huynh|>

# Equitable CS assessment

While CS assessments are still very much in their infancy, there are two ways this book will try to guide teachers’ use of assessments in CS classrooms. The first, and what we offer in the remainder of this chapter, are a set of principles and considerations for designing CS assessments that attempt to overcome the history, warped motivations, and limitations of current practice. Second, throughout the remainder of this book, we will offer concrete examples of CS assessments that follow these principles and reflect on these considerations; these examples will hopefully support your own creativity in designing CS assessments.

To begin, we propose three principles for equitable and just CS assessments.

* CS assessments should be *responsive*. This means that assessments should adapt and change in response to students, the course, goals, community, and more. This responsiveness works on a few different timescales: there should be adaptation within a given assignment (for example by providing accommodations like extra time), as well as across the length of the course (for example by varying assessment types), and across repeated teachings of the course (for example by reflecting on whether assessments met goals, were helpful in understanding student's knowledge and skills, or were a useful learning activity for students). Assessments should also adapt to student needs, interests, and funds of knowledge, as well as student and teacher goals. This requires that teachers are in dialogue with their students about assessment. Responsiveness requires CS teachers to consider their students’ contexts. For example, does an assessment require them to write code on a computer? Do all students have access to computers on which to write code? Do they have the prerequisite knowledge of an assessments’ prompts? Unresponsive assessments, like many of those described in the previous section, ignore student context.

* CS assessments should be *participatory*. This means recognizing the social context of assessment, including both the teacher’s role in shaping them, students’ agency and right in shaping them, but also the interaction between students in interpreting an assessment and its results. This means that student voice is incorporated in the design and deployment of assessments, including discussions of rubrics, deadlines, what students have to produce, and more. It may also mean creating contexts for group discussion about the results of an assessment, to develop shared understanding of what they do and do not mean. There may be situations where the teacher has to use their power as teacher and determine, for example, that a rubric cannot be modified -- this should be acknowledged by the teacher and explained to the students, with justification for why the student voice is not allowed, if it's not. For example, using the AP rubric on a practice AP test would probably not have much chance for student input, but should nonetheless be discussed with students. This would give students the opportunity to question the fairness of the AP rubric and its application on this specific assessment, and whether all students are able to demonstrate their learning within the boundaries of the rubric.

* Finally, CS assessments should be *educative*. This means that assessment has an explicit learning purpose as well as an assessment purpose. For example, assessments that strictly assess a student’s skill in reading code, when designed to promote self-explanation, can help students identify gaps in their comprehension of a programming language or an algorithm. And even if the process of completing an assessment does not lead to learning, the feedback produced by the assessment should help students diagnose gaps in their knowledge and offer feedback for how to structure their future practice. Such assessments should also be equitable in the learning opportunities they offer. For example, if two students are given the same assessment, and one has access to an IDE with helpful error messages and another does not, those students do not offer the same opportunity to learn. Moreover, any comparisons made between those students, or decisions made on the basis of those scores, will be based on flawed information.

To follow these principles, there are a number of considerations that can generate ideas and provoke questions about how to design a CS assessment. Like other aspects of pedagogy, assessment considerations interact with many aspects of teaching. Therefore we borrow from Inoue the idea of assessment as an *ecology*<inoue15>. By ecology we mean the following: assessment is a complex system that has many interrelated individual parts, and the whole of the ecology is greater than the sum of its parts. A change in one of the parts likely requires a change in other interrelated parts. Therefore, when designing assessment for your class, it should be thought of as a system. Inoue describes many assessment considerations; we’ve adapted them for CS.

## Purposes: why are you assessing?

This consideration questions the purpose of assessment in your classroom, ensuring that the reasons for assessment are responsive and educative, and shaped in participatory ways. Purposes can be considered broadly, as in the purposes of all assessments in your classroom, or narrowly, as in the purposes of a specific assessment activity. For any given assessment activity, teachers should describe why that kind of assessment is taking place and why they think it is valuable. Students should express their own thoughts about those assessment activities, ways they think the activity is valuable or not, including how they view the activity as related to their learning. Ideally, any activity could be modified as a result of what students voice, though there are some situations where this is not possible or advisable (e.g., an assessment on the very last day of a school year, or one mandated by a district).

Not every assessment activity will be intimately connected to the long-term goals of either the teacher (for example, to help students meet the learning standards for the course) or the students (for example, become a software engineer). As an example, some types of assessment may be used because they are good preparation for later assessments like standardized tests: these types of activities are unlikely to be relevant to longer-term goals related to learning, but may still have some justifiable purpose. Regardless of the purpose of any specific assessment, the teacher should be explicit about its purpose and allow discussion about it. Making these often implicit purposes for assessment explicit will help students to develop a critical and questioning stance toward assessment activities and to articulate and advocate for their interests and needs as learners.

Among the specific purposes for assessment, within the context of CS, this book argues that most, if not all assessments should have a justice-oriented purpose. Some examples of justice-oriented purposes for assessment might be:

* That students develop skills to critically evaluate whether a piece of software encodes bias.
* That students see themselves as powerful and capable of using and shaping computing, rather than simply being subject to the designs an choices of corporations and governments.
* That students can articulate ways that computing can be used to address inequities and injustices in their communities and in broader systems.

Any justice-oriented purposes of assessment should be discussed with students, and moments to reflect on those purposes should be provided as well. We provide examples of these throughout the rest of this book.

## Processes: how are you assessing?

This consideration asks you to consider what processes both you and students engage in to create and inhabit your assessment ecology, including what assessment processes are completed by which people in the classroom and why. To ensure assessments are responsive, participatory, and educative, consider how you decide what kinds of questions students have to answer on a test or quiz, how students submit their work, how you go about scoring work, and what happens with the feedback. For example, if you choose to use an auto-grader to automate the grading process, is it being used formatively or summatively? Are students aware of the rationale for your choice? How will auto-graders support learning?

Often, processes around providing feedback are about telling students whether their answers were correct. When assessing judgments about justice issues, which might touch on ethics and morality and their interactions with code, how should those processes change? For example, imagine students are evaluating the extent to which an algorithm is used unfairly. Feedback might be focused on how students arrived at their answer, and how they could improve future evaluations, rather than whether their judgement was "correct."

Processes also include scoring guides such as rubrics. How do you create the rubrics for evaluating student work?  Have you involved students in a meaningful way in this process? While it is typical for rubrics to be created with standards in mind, what do CS standards not cover that is nevertheless important and belongs in a rubric? One way to think of a rubric is a means of directing attention: the teacher’s while reviewing student work, and the student’s while producing that work. What aspects of student work are worth directing your attention to? What aspects of the work do you want to direct students’ attention to? And how will you share scoring guides with students and explain their purpose and process?

## Places: where are you assessing?

When considering the places in an assessment ecology, you should reflect on both _physical_ places, like a classroom or a computer lab, and _figurative_ places, like the social context for an assignment. Responsive, participatory, and educative assessments recognize that different parts of the assessment ecology may inhabit different physical and figurative spaces. For example, when giving feedback to students, where does this take place? Is it a public place like the classroom or a small group, or a more private place like email? Likewise, certain ways of reviewing or assessing code are associated with, for example, development work as a software engineer (e.g. unit testing), while others might be associated with social justice work (e.g. evaluating for algorithmic bias).

Consider what places your assessment activities inhabit, with particular attention to which communities and cultures you’re asking youth to engage. For example, both [GitHub|http://github.com] and [Scratch|http://scratch.mit.edu] are platforms where people share code. But they are very different places, serve different communities, embody different values, and support people with very different goals and life experiences: Scratch is often used for creative expression and identity building, while GitHub is used for software development both by for-profit companies and open-source projects. Which of those spaces are welcoming and open to marginalized and minoritized students in CS, such as girls, gender non-conforming students, students with disabilities, and students of color? What places do students have control over, and why? The places that students inhabit in an assessment ecology teach them what their knowledge is for, where and how it is to be used, and whether they belong.

## Parts: what pieces make your assessment’s larger whole?

In an assessment ecology, the parts are the individual pieces that make up the whole assessment. For example, in a CS programming assignment, a prompt, a rubric, or an example program would all be parts, along with any feedback you provide to students. To ensure that assessments are responsive, participatory, and educative, consider the following:

* What parts make up the ecology? 
* What parts of the ecology are exchanged?
* Which parts are manipulated? 
* Who is involved in exchanging and manipulating the parts? 
* Who creates which parts? 
* Do students and teachers agree on parts?

For example, one part of a CS assessment might be a rubric. Will you create the rubric alone, or will students participate? How much agency will students have in shaping the rubric? How will you explain the rubric to convey what you find valuable, and how those values are related to other parts of the assignment? For example, does the rubric prioritize the correctness of the program, how it is composed, the process by which it was produced, or perhaps how the program addresses or contributes to oppression? Rubric discussions are a good time to discuss students' expectations and to invite collaboration with students about whether discourse around feedback and assessment is relevant to their learning. But they are also a time to connect rubrics to all of the other parts, whether they are learning materials, classroom or school policies, or future summative assessments.

## Power: how will the assessment influence choices, opportunities, and agency?

Classrooms are laden with power. They derive institutional power from schools’ existence, especially in public schools as mandated by the government, and the activities that occur within them are often bound to government learning standards. Teachers are also granted power in the classroom, charged with the duty to make sure their students learn the assigned knowledge and skills. This is particularly true in a CS classroom, where the experience(s) students have will shape who pursues CS in higher education and/or careers, and therefore who gets access to power and technology and policy, shaping software for the rest of the world. An assessment ecology lives in and creates these power dynamics, and should be consciously designed for. 

To ensure an assessment accounts for power by being responsive, participatory, and educative, think about what power relations are produced:

* Are power relations aligned with your goals for the course? 
* Are they aligned with how the students in your class learn best? 
* Do they account for imbalances in power in students' families and communities?

In CS assignments involving programming, power often arises when helping students debug their programs. What kinds of help from you or other students are allowed? Who sets that policy? If you exercise your power to fix students' code for them, will students miss an opportunity to develop self-efficacy? If, on the other hand, students are left to fend for themselves, will they have the support they need to learn? Assessment ecologies shape the answers to these questions, largely through power.

One way to relax power tensions is to be participatory: how and when can you include student voices in shaping assessments? Which parts are directed by students, which do students have input on, and which do they not have input on? How can you ensure that all students have a voice, especially those who might be disempowered in and outside of the classroom? How can you engage students and using the power you share, especially when students’ past experiences with computing can vary not only in terms of their familiarity or skill with it, but also in terms of what technology represents to a student, what it is for, and how it has been used by, against, or for them.

## People: who are the stakeholders of the assessment and what are their positions?

Designing responsive, participatory, and educative assessment ecologies requires recognizing the full, complex, and ever changing humanity of the individuals involved. Who are your students, what is happening in their lives, and what are their greater needs in and outside of class? What are your students’ preconceptions about CS? What are the attitudes of students’ families and communities about CS and how will your assessment ecology indirectly shape their perceptions of CS and your students? Are there teachers or other stakeholders who might be impacted by your assessment choices? What are your students’ abilities and disabilities? What natural languages are your students fluent in? All of these aspects will likely influence how students interpret the purposes of CS assessments, and CS education more broadly, and what kind of learning is possible.

When considering all the individuals involved, also consider their roles. For example, does the teacher always provide feedback to students? Is the teacher the one who sets all of the assessment tasks? Are some of the assessments designed by other people in other organizations? Are other students sources of feedback? These considerations all interact with who has power over assessment and their impacts.

Considering individuals in CS assessments can also mean considering positionality in relation to computing. For example, you may choose what students make as part of an assessment. Does that choice of what students make take into account who your students are, what they know, what they value? Does it ask them to engage with a system that they feel harmed by, or left out of? Opening discussions about the judgments made within the assessment ecology can help call attention to the ways that rubrics or other evaluative tools are shaped by structural forces outside of the classroom.

## Products: what will assessments produce?

Products can include the work products of students (e.g. programs, reflections, or essays they have written), as well as the products of the assessment ecology (e.g. grades, feedback, evaluations). Designing responsive, participatory, and educative assessments means consider:

* What products are created by the different people in the ecology? 
* How could these change in response to local diversity or student interest? 
* What kind of discussion is there around feedback? 
* Is feedback an end product of the ecology, or one step towards student learning?

Unique to CS is that student products may take on life outside of the classroom. For example, if students create projects on a public platform like Scratch, they may share their work with friends, family, and even the entire internet, creating evolving meaning for themselves, their families, and their communities. Assessments should anticipate these potential cascading impacts that come long after their role in classroom learning.

Products like grades can also have indirect consequences. For example, if students submit a project, and get lots of critical feedback, what should the tone, framing, context, and timing of that feedback be? How will those choices affect how students interpret and act upon the feedback? How will those influence their self-efficacy, interests, and identity?

# Closing: student-centered CS assessments

Clearly, there’s a lot to think about when shaping CS assessments -- so much, in fact, that it would be reasonable to feel a bit lost in how to proceed! The phrase _analysis paralysis_ seems appropriate here, given the numerous considerations that can shape CS assessments. However, we can account for all of history of assessment and grading, all of the various motivations for assessment, and all of the shifting ideas about what CS is, with a few simple CS assessments guidelines, grounded in our three principles:

* Be *responsive*. Make room for students’ identities, interests, needs, and assets. This likely means using open-ended projects, discussions, and reflections rather than narrowly scoped, highly constrained assessments that focus on programming alone. CS is not separate from students’ individual humanity, it is part of their experiences, families, communities, and culture in surprising and diverse ways.

* Be *participatory*. Give students substantial voice in shaping your assessment ecology. This might mean deferring preparation until you know what feedback they need, and spending time in class to discuss and negotiate the purpose, process, place, parts, power, people, and products involved. Learning a toolbox of CS assessment genres and practices will position you to creatively co-construct assessments with students that serve their needs.

* Be *educative*. Envision assessments that compel reflection, self-explanation, and analysis, and synthesis, and position assessments to students as formative, helping them to make their learning visible, and reveal opportunities for what they might learn next. In CS, this likely means not just writing programs, but situating programs in a broader context of their purpose and use--or perhaps not even writing programs at all, just critically examining them and how they are deployed in society. Eschew summative assessments that warp and constrain these educative goals.

Throughout the rest of this book, we will give examples of how one might achieve these goals for a variety of CS content knowledge. Try them, build upon them, and go beyond them with creative and thoughtful confidence.

# Related CSTA teaching standards

This chapter prepared you to...

@teacherHeader
@teacher1
@teacher1a
@teacher1f
@teacher2
@teacher2a
@teacher2b
@teacher2c
@teacher2d
@teacher2e
@teacher3
@teacher3b
@teacher3c
@teacher4
@teacher4a
@teacher4b
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