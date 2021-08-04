=
### Key ideas
* Artificial intelligence (AI) is concerned with replicating human intelligence and ability.
* AI has made many advances in replicating specific skills, primarily through using large data sets created through human labor, and using that data to build machine learned classifiers.
* AI perpetuates whatever values and biases were encoded in its algorithms and data, and depending on how they are used, create new systems of oppression.
* Most dominant ways of teaching AI involve positioning students as AI innovators or creators; methods for developing critical consciousness about AI are only beginning to emerge.
=

As we discussed in the chapter [Encoding Intelligence|intelligence], the origins of computing were ultimately about replicating a particular kind of human intelligence: the ability to do basic arithmetic. By any standard, this two century dream was a success: we have billions of computers in the world, each one capable of doing the basic arithmetic and logic that the earliest inventors of computers imagined, but also much more. But that "much more" was all hard won through human labor: we had to find ways of teaching computers all of the other things they can do by carefully translating particular ideas into simple arithmetic and logical instructions. We usually call that translation *programming* or *coding* and it usually involves finding ways of expressing the kind of intelligence we want a computer to have using the ideas from computing we’ve discussed throughout this book: data encoding, data manipulation, conditional logic, loops, functions, and many other abstractions devising algorithms that mimic intelligent behavior.

Artificial intelligence, or AI for short, is a topic in computer science concerned with programming a particular kind of intelligent behavior: _human_ behavior<russell16>. Some researchers dream big, envisioning what some call *strong AI*<frankish14>, imagining a world in which computers are not only capable of automating small human tasks, but also achieve a kind of "general" intelligence, mirroring human intelligence in its greatest forms. These are the kinds of dreams told in both utopian fiction (Her; Star Trek) and dystopian fiction (I, Robot; A.I., The Terminator), depicting embodied software (like robots) and disembodied software (like voice assistants) that participate in society alongside humans, sometimes as partners, sometimes as slave laborers. 

Other computer scientists dream smaller, envisioning what many call *weak AI*, imagining a world in which we create intelligence for specific tasks:

* Speech recognition and production for particular natural languages;
* Grasping and locomotion by robots to help in factories;
* Problem solving in specific games like chess or go;
* Vision, such as detecting and tracking objects in driverless cars;
* Social intelligence, to facilitate human-AI conversations in customer service;
* Even programming itself, automatically generating programs to meet requirements rather than having people program.

After many decades of research effort, progress on strong AI has mostly been in the imaginations of storytellers, and not reality<braga16>. The closest that researchers have come is to create things that can demonstrate what looks like human intelligence, but are so brittle, that people can quickly detect it’s shallow mimicry. Alan Turing described what is now known as the "Turing test" or the "imitation game", in which a human writes text messages to an AI and receives text replies, having a conversation. If the human is fooled for some period of time, one might judge the AI as having achieved some level of mimicry of intelligence. Many have taken the test literally, even creating competitions in which people write AIs and compete to see who can fool the largest number of people; even the best efforts in these competitions and in research reveal seams in strong AI attempts, as most approaches rely on imperfect imitations of human behavior.

In contrast, weak AI has made significant advances on a range of highly specific tasks: computers can recognize and produce human speech, label objects in images, navigate mazes, play challenging games like go and chess. Many of these advances have been through a class of algorithms called *machine learning*, most of which rely on large datasets that describe a variety of situations and what action to take in that situation; these techniques then find statistical patterns that best mirror the data. These data sets are sometimes generated through labor-intensive human efforts to manually label large amounts of data and then use that data to identify patterns that facilitate high accuracy predictions. Sometimes the data is gathered from commercial services without our awareness, such as the way that search engines passively record logs of our queries, labeling the results we select, and using that data set with machine learning algorithms to improve search results.  With the turn of the century, progress on these machine learning techniques started finding its way into products and services, with speech recognition and production being mainstream in smart phones and smart speakers, automated and semi-automated cars reaching the roads, and even more mundane applications, like automatically recognizing information in emails to streamline the creation of events and writing replies.

With the stage set for the dreams and realities of AI, in the rest of this chapter we’ll discuss the emerging limitations of AI, then detail how AI works and how many are beginning to examine it’s biases. We then end with a discussion of several emerging methods for teaching AI to youth.

|question.jpg||A depiction of a courtroom, a defendant, and a human judge, but the judge has a robot companion deciding how long someone will lose their freedom.||

# The Power and Perils of AI

The dreams of Hollywood and the dreams of big tech have been divergent, one aiming to entertain us through visions of strong AI that have yet to become reality; and realities of weak AI that aim to make our lives easier and safer--often for the benefit of the wealthy, and at the expense of marginalized groups. This is because AI, just like any other code, are still just tools: wealthy, dominant groups in society use them to achieve their goals and support their values<birhane21>, and those goals and values are often keeping power, increasing wealth, and maintaining the matrix of oppression that erases diversity, denies equity, and shuns equality. 

AI, perhaps more than any other kind of computing innovation, has great potential to both empower people, and oppress them, depending on how it is used. Consider, for example, the problem of *recidivism*, and the recent application of machine learning to making recidivism _predictions_. Recidivism is the tendency for people who are convicted of crimes to commit further crimes<zamble01>; research on recidivism suggests that repeat offenses are primarily caused by the fragile social supports and stigmas that previously incarcerated people face after release. When judges make sentencing decisions after a jury convicts them of a crime, they often make recidivism predictions, assessing how likely the convicted person is to commit another crime. If they decide the likelihood is high, they may give the person a longer sentence, hoping that separating a person from society will protect society from their crimes; if it is low, they may give a shorter sentence. There’s obviously immense opportunity for bias in these human judgements, as the judge’s prediction of recidivism might be swayed by the color of the convicted person’s skin. And so some software companies saw an opportunity to create software for courthouses that would use machine learning to make these predictions instead, hoping to remove the potential for a judge’s bias by replacing their judgement with supposedly "neutral" AI.

The most popular software, [COMPAS|https://en.wikipedia.org/wiki/COMPAS_(software)] (Correctional Offender Management Profiling for Alternative Sanctions), launched in 1998, used the approach of taking a large data set of past convicted people, gathering 137 different factors about the accused (the degree of the crime, whether it was a drug offense, the offenders’ age), but did not include race as a factor. Machine learning algorithms, as we will describe below, build statistical models that find how much to weigh different factors to make the most accurate prediction possible; they use data on past convictions to "train" a classifier, then use that trained classifier to make predictions about new cases. COMPAS did this same thing, using a historical record of convictions and re-convictions to make predictions about people newly convinced. Despite COMPAS’s insistence that race was not included as factor, the factors that it did include were nevertheless racially biased: Black men are more likely to be arrested for crimes because they are surveilled and policed more than other identities; they are more likely to be convicted of crimes, even when they are later found to be not guilty. The machine learned classifier in COMPAS learned these racially-biased patterns, and reproduced them, without ever explicitly including race as a factor. In fact, research showed that the COMPAS machine learned classifier was just as biased as lay people with little or no criminal justice expertise, and in fact less accurate and more biased than experienced judges<dressel18>. And yet, because of a misplaced faith in the neutrality and objectivity of computers, judges across the United States have deferred to COMPAS and its racially biased predictions to make their sentencing decisions, rather than using their knowledge of the individual accused. The result is that judges using COMPAS give Black men even longer sentences than other racial groups.

Applications of AI like this one, along with the countless other applications to food stamp eligibility, child protective service investigations, loan eligibility assessments, facial recognition deployed by the police, security scanning at airports, and hundreds of other applications, all stem from a few inescapable limitations of data and algorithms<boyd11,illiadis16,broussard19>:

* _Data is a record of the past_, and so any system that uses it to shape the future will perpetuate past injustices. Recidivism prediction does exactly this, using the racially biased outcomes of criminal justice to increase the sentences of Black men more than White men.

* _Data encodes the values, assumptions, and goals of the people who create it_, and so any AI that uses that data will inherit those values, assumptions, and goals. Recidivism prediction did exactly this, as the values underlying criminal judge sentencing decisions reflect the racially biased policing priorities of many parts of the United States.

* _Use of data to shape AI can harm people in unequal ways_. For example, recidivism prediction software might make a judge more confident in their sentencing decision, or might make White people feel safer in their community, but at the cost of an increase in lost freedom of Black men.

* _Prediction relies on aggregate patterns, ignoring individuals_. For example, recidivism prediction assumes that patterns across a whole population--particularly racial patterns--are relevant to making a judgement about an individual person. When someone is an exception to those patterns in one or more ways, the pattern will dominate, "misclassifying" them in trade of optimizing prediction accuracy over a population.

The developers of COMPAS did not evaluate these outcomes before they built it; their priority was selling software to courthouses, and cities’ priorities were reducing perceptions of bias (instead of actual bias, or more importantly, the larger systemic bias in policing, prisons, and poverty). No one actually investigated this bias until the public started demanding audits of these algorithms and researchers conducted these audits, which revealed their ineffectiveness and bias. This application of weak AI, therefore, prioritized certain people’s concerns (judges, politicians, and the White majorities that elected them) at the expense of others (Black men).

|question.jpg||Looking inside the mind of a machine, or a robot, and seeing it’s just barely comprehensible complexity.||

# How AI Works

How does bias get encoded into artificial intelligence? There are three major ways that artificial intelligence is built, each with their own opportunities for encoding and amplifying human values that can lead to bias. The first two ways are *symbolic*, in that they use concrete logic to reason about a situation and take some action; the second is *statistical*, in that it uses patterns in probabilities to make informed guesses.

## Symbolic AI

One example of symbolic AI is an *expert system*<liebowitz19>, which encodes the logic of experts, often in rule based form, to take reasonable actions in a range of contexts. The conversational behavior of modern voice assistants like [Siri|https://www.apple.com/siri/] and [Alexa|https://developer.amazon.com/en-US/alexa] are examples of such AI: developers spent countless hours thinking of all of the situations the voice assistant might be in ("_Hey siri, tell me a joke_", and programmed a reasonable behavior for that situation, such as a range of randomly selected bad jokes). These kinds of artificial intelligence are often so predictable to us that we often don’t think of them as AI anymore; once we’ve heard all of Siri’s bad jokes, we know that it was actually a designer or programmer who made a list of those jokes and decided that this is how Siri would respond.

Other kinds of symbolic AI might use *logic*<minker12>. For example, researchers have designed algorithms that solve mazes or explore all of the possible outcomes of a move in chess, achieving or exceeding the abilities of people to play these games. These "encode" intelligence into an algorithm, just as with any other algorithm. And just as with any algorithm, that intelligence also encodes values, biases, and assumptions too, meaning that the designer and developer of expert systems will inevitably encode the values, biases, and assumptions of the experts being modeled. If those experts are biased, the expert system AI will be biased too.

Another symbolic approach to AI is called *common sense reasoning*<lu04>. Unlike the symbolic approaches above, which encode intelligence for particular tasks, the idea behind common sense reasoning is that humans have all kinds of socially-learned "common sense"--_balls can bounce_, _screams suggest fear_, _darkness is dangerous_--none of which are strictly logical, but are nevertheless critical to mimicking human behavior. These approaches to AI start with gathering large databases of such common sense facts, representing those facts as relations (e.g., balls _can_ bounce indicates a _physical property_ of balls), then using those facts to support logical inferences. For example, AI techniques for recognizing objects in images might detect something spherical and orange, a net, and a group of human bodies but not correctly identify the spherical object as a basketball. Combining these facts together can help AI algorithms make an inference that when something spherical is detected in the presence of a net and people, it is probably a basketball. Of course, just as with expert systems, what is "common" in common sense is culturally and socially determined. For example, it’s only obvious to a person familiar with basketball that the spherical object is a basketball; to children who have never seen the game, or people in cultures unfamiliar with the Western sport, such facts would not be obvious. Therefore, common sense AI, just like expert systems AI, are highly sensitive to the data on which they are based. And because most readily available data about common sense facts are in English, about Western cultures, and authored by wealthier people with access to computers and the Internet, common sense AI is merely modeling a particular subset of human "common sense", ignoring all of the other common sense that less dominant groups have not shared in digital form.

## Statistical AI

Beyond these two symbolic approaches, the majority of other AI approaches are statistical in nature. We will generally call these approaches *machine learning*, which statistically examine patterns in data in order to generate statistical rules that govern a computer program’s behavior. Machine learning, like symbolic approaches, comes in many forms. 

The first major type is *supervised* machine learning. These techniques take a set of "labeled" data, model its patterns, and then use those patterns to make predictions about new data. They are "supervised" in the sense that they learn from examples that someone has labeled, following the metaphor of a teacher "supervising" a student, offering "labels" about whether their behavior was correct or incorrect{Note the direct link here to Freire's banking model of education.}.

Consider, for example, one of the simplest supervised learning approaches, *decision trees*. A decision tree is a flow chart of yes/no questions that lead to some decision, such as this:

`
Is the student late?
	Yes. Do they have a written excuse from an authority figure? 
		Yes. Not tardy.
		No. Tardy.
	No. Not tardy.
`

This simple decision tree uses two factors--what machine learning calls *features*--to make a decision: lateness and whether there is a written excuse. A teacher might use this logic in their class to determine each students’ tardiness. 

However, teachers may have very different criteria for tardiness. Could a learning management system use machine learning to learn each teacher’s unique logic, without someone having to program each specific logic? Machine learning algorithms try to do this by automatically creating these decision trees from probabilistic patterns in labeled data. For example, imagine you kept a log of each of the factors in the table below and tracked the teacher’s tardiness judgement each time a student arrived to class. The resulting log might be:

,Late?, Excuse?, Tardy?, Prediction
,True, True, False, False
,True, True, True, *False*
,False, False, False, False
,False, False, True, *False*
,True, True, False, False
,True, False, True, True
,False, True, False, False
,False, False, False, False
A data set of features, labels, and decision tree predictions.

To learn a decision tree from the data above, the decision tree algorithm would analyze the patterns of `true` and `false` for each feature, computing the probabilities of that they lead to a tardy outcome, and discover that lateness provides the most information about the likely outcome, and excuse provides a little less, and generate a decision tree like the one above. A central question then, is how often the decision tree was correct: two of the eight cases (in bold) above were incorrect: the teacher did not mark a student tardy, even though the decision tree predicted they would. If we trust the teacher’s judgement, then we might argue that this decision tree is missing some critical features (e.g., whether a tardy would result in an unnecessarily harsh punishment, a first time offense, a good excuse). Should the learning management system adopt a machine learning algorithm that gets 25% of its predictions wrong? Is it worth the effort to gather more data about more features to make its predictions more accurate? Is all of this effort worth the time to save the teacher the effort of having to make tardy judgements for all of their students? And if a teacher does adopt it, what kinds of decisions will it make that the teacher wouldn’t have made themselves? And how would students advocate against it? Would the teacher be able to explain the logic behind the classifier’s decision? These are the types of questions that should be asked about applications of machine learning, but often are not, because so many people put undue faith into the objectivity of data and algorithms.

There are many other kinds of supervised machine learning algorithms beyond decision trees. The names are tantalizing--"Naive Bayes", "Random Forests", "Support Vector Machines", "Linear Discriminant Analysis", "Neural Networks"--all are essentially different approaches to using statistics to taking large amounts of observations of something, extracting features from those observations, labels the observations according to some class one is trying to predict, and finding which features, and in which combinations, best predict the labels. These approaches vary in how accurately they do it, how quickly they do it, and how much data they require to do it well, but ultimately their output is the same: a classifier that, given a new observation described by the same features, a prediction of what label it should have. And they all have the same essential risk of bias, mindlessly modeling all of the values, patterns, and warped ideas encoded in data, features, and labels.

A second major type of machine learning is *unsupervised*. Unlike supervised machine learning, which requires a label on the outcome of some observation, unsupervised techniques only get the features, and no label. Let’s consider the same data above, but without the tardiness labels:

,Late?, Excuse?
,True, True
,True, True
,False, False
,False, False
,True, True
,True, False
,False, True
,False, False
Two features with no labels.

The job of an unsupervised algorithm is to take the data above and generate optimally distinct groups of observations that cluster together. One such algorithm is called *hierarchical clustering*, which tries to find a way of grouping the 8 observations into groups that are maximally different from each other as groups, but minimally different within groups. For example, what if we grouped the data above into three clusters: 

* Those who are late with an excuse (3 of 8 observations), 
* Those who are late without an excuse (1 of 8 observations), and 
* Those who are not late (4 of 8).

This minimizes the differences between observations in each cluster (all in cluster 1 are identical, there’s only 1 in cluster 2, and only one of the 4 not late observations is different from the others). It also maximizes the difference between the three groups. Hierarchical clustering _automatically_ finds these optimal clusters that maximize difference. It doesn’t give the clusters names--a person still has to do that--but it does automate the grouping. And it doesn’t promise that the groups are grounded in any real aspect of the world--that’s for a person to judge--it simply finds patterns in the data and one possible grouping to discriminate between groups. Of course, just as with supervised learning, this algorithm’s output is as biased as the data it uses: if the data on lateness is wrong or racially biased, the clusters it produces will be racially biased.

While data is a major source of bias in machine learning, it is not just the data that can be based: machine learning algorithms themselves have bias. And most of this bias concerns the very notion of _classifying_ things. The idea of classification is initially appealing: students are either late to class or they are not, right? Of course, as any teacher knows, lateness is not an inherently binary phenomenon, because of the many exceptional circumstances that might conspire to make lateness ambiguous. Daylight saving time, late buses, clocks that differ by more than a few minutes, a faulty passing period bell, an emergency like an earthquake or a school shooter lockdown, poorly accommodated physical disabilities out of a student’s control--all of these circumstances and more erode the idea that lateness is a binary. And the same complexities arise when we try to define many natural and social phenomena, such as race, gender, poverty, wealth, and so on. Supervised learning algorithms that model some aspect of nature or society often must reduce these ideas to a smaller set of discrete or binary values in order to work--but they do so at the cost of accurately modeling diversity. And more so, the people that are erased by the reductive nature of classification are usually people at the margins, who have exceptional circumstances, identities, bodies, and behaviors. Grouping, labeling, classifying, categorizing--all of these are just synonyms of stereotyping, which erases the nuance of difference and diversity.

There are many other AI techniques beyond the groups above, and they are often used in combination with each other, as well as with code written by people, rather than generated by data. And while all of these techniques are quite powerful in capturing some essence of human intelligence or patterns in society, they are often barely capable of what even most 2 year old children can do, and often only in perfectly calibrated circumstances. Applications of AI therefore continue to be _weak_--carefully constructed for particular contexts, and brittle when applied outside those contexts, just like any other kind of computer program. And it’s increasingly clear that even these weak forms of AI are also fraught with ethical concerns, just as code manually written by people.

|question.jpg||A depiction of a crowd of people resisting robot overlords, who are busy doing boring accounting work.||

# Managing Bias in AI

Because AI can be biased in so many ways, there are many ways that society has begun to manage this bias.

*Harm*. The central concern about AI bias is that the decisions of AI can disproportionately harm some groups and not others<benjamin19>. Consider Black Americans, for example: AI face detection algorithms are far less accurate for Black faces, leading to false arrests; soap dispensers are less likely to trigger for Black hands, exposing Black people to more public health risks; Black people, are more likely in poverty, are increasingly denied access to housing, food, loans, and insurance due to applications of AI that are racially biased in their risk predictions<eubanks18>, and so on. These harms often come in two forms: 1) harms of *allocation*, in which AI is used to decide who gets access to resources, and 2) harms of *representation*, in which AI oppresses based on identity, stereotypes, or historical patterns. These types of harm can also combine to reinforce larger systems of oppression such as racism. One way to manage bias in AI is to carefully research the potential for these harms and their direct and indirect impacts on people and groups in society, and advocate against the use of AI that causes harm.

*Transparency*. One aspect of AI that is necessary to analyze the potential for harm is transparency--the degree to which people other than AI developers can see the data on which AI is based and the algorithms it uses to process it<ananny16>. Without transparency, the public is limited to observing the patterns in AI behavior, without being able to see their underlying causes. Thus far, the world has been so enamored with the possibilities of AI that it has asked for little transparency--most private companies view their data and AI algorithms as valuable trade secrets--and only some governments have committed to transparent uses of AI. Just as when code is kept secret, when the data and AI algorithms used are kept secret, there is no way to build public trust in their underlying logic.

*Explainability*. Even when AI is transparent, the behavior of AI algorithms can be much harder to explain than a computer program<rader18>. After all, a program has logic, written in a programming language, that someone familiar with that language can read, analyze, and make conclusions about with high confidence. Comprehending a program’s behavior is by no means easy, but it is feasible with time and expertise. AI, and especially machine learning, in contrast, often have little explicit logic. Their behavior is inherently determined by the data selected, the statistical analyses applied to that data, and the emerging patterns in that data. The answer to "_Why was my loan application rejected?_" for a computer program might be "_The program inspected your responses to these three questions and based on our rules, you are not eligible_", but the answer for a machine learning based prediction is "_Because of the historical records of hundreds of millions of Americans, and their patterns of repayment, we predict that you will be likely not to repay._" In fact, ask any machine learning programmer to explain the output of a classifier, and the best answer they can give is often "_Because of all the data._"

*Regulation*. Because AI behavior can be so hard to explain, even when it is transparent and the harm is measurable, a central question in AI is "who is responsible for AI behavior?" Is it the people who use the AI that someone created? Is it the people who created the AI? The people who chose the data on which the AI was based? Is it the people who gathered the data that shaped its behavior? These questions are perhaps most salient in the case of driverless cars, which use AI extensively: when autonomous vehicles kill someone, who is to blame? There are few broadly accepted regulatory frameworks that answer these questions; the public will have to engage in many critical debates about law over the coming decades about culpability<turner18>.

*Ethics*. When asking questions about agency, intelligence, causality, and blame, questions about AI quickly turn to questions of ethics, morality, and justice. Why are we creating AI? Who does it benefit? At what cost? Do we want artificially intelligent things in society? What kind of society do we want? And what is the cost of putting so much time and attention into managing the power of AI when so many people in the world are still struggling with such basic needs, such as food, clean water, shelter, and safety? Currently, these are questions largely being answered by large, wealthy, monopolistic, American companies like Google, Amazon, Apple, Facebook, and Microsoft. If we want a democratic society that reflects all of our views of a just society, then everyone needs the literacy above to ponder these questions and shape policy preferences<jobin19>.

|question.jpg||Teachers and students building a robot together, each working on a different part.||

# Teaching AI Critically

While educators have been teaching AI learning in post-secondary education settings for decades, efforts in primary and secondary, and research on AI & machine learning pedagogy have only just begun. For example, the [AI4K12|https://ai4k12.org] initiative, a joint effort to produce learning guidelines by CSTA and AAAI, the AI professional society, only began in 2020. Such guidelines center on several of the big ideas above, including:

* AI perception using sensors to gather data about the world
* AI representation and reasoning using data structures and algorithms
* AI learning using logic and statistics
* AI’s interaction with people, which must account for the complexity and diversity of human cognition, behavior, and ability
* AI’s impact on society, which includes both its positive and negative impacts

However, within these big ideas, there are several distinct teaching methods and focal areas that have emerged, each with tradeoffs.

## Preparing youth as AI innovators

The dominant approach, especially in post-secondary, is to teach the theory and construction of AI and machine learning algorithms<wollowski16>. For example, students might begin by learning about what decision trees are, learning the underlying mathematical and statistical theory for decision trees, learning an algorithm for deriving a decision tree automatically from data, practice correctly implementing that algorithm in a programming language, and practice testing their algorithm on some example data sets. Typical curriculum might repeat this pattern for the large set of more advanced AI and machine learning techniques, focusing on the content knowledge required to position students as producers of AI innovations, often as graduate students inventing new AI and machine learning techniques. This pedagogy and content approach depends strongly on prior knowledge of programming, as AI and machine learning algorithms cannot be implemented without knowing other foundations in CS. This is why such courses are often senior electives or even graduate courses.

Guidelines like the AI4K12 initiative broadly focus on the content knowledge above, with the notion that youth should be prepared to create software that uses AI using the various technical innovations in AI. Of course, this assumes that all youth will be AI innovators, which is clearly not true: some will never need to understand exactly how to construct a neural network with data; others will only ever need to understand policy implications of AI, which may require a different kind of literacy.

## Preparing youth as AI integrators

An increasingly common approach, especially in the adjacent world of data science education<song15>, which often teaches machine learning as one analysis tool, is to teach machine learning as tools. In this pedagogy, students are positioned as consumers of AI and machine learning innovations, rather than producers as above. Curricula will often focus on teaching the same conceptual knowledge about AI and machine learning techniques (e.g., what is a decision tree), but rather than teaching students how to implement a decision tree algorithm from scratch, students will learn how to use APIs that have already implemented the algorithm, and instead practice properly formatting data for input to APIs, evaluating the accuracy of output, calibrating machine learning algorithms to produce more accurate predictions, and selecting machine learning algorithms that are most appropriate for a given type of data.

In data science curricula, this pedagogy is often centered on building valid, accurate models of data, depending somewhat on prior knowledge in programming, but more so on prior knowledge of data and statistics. Data science contexts can be practical, mathematically challenging, and engaging for career-focused learners. In primary and secondary curricula, this pedagogy is often centered on the training and testing of machine learned classifiers in creative contexts<mariescuistodor19,druga19,dasgupta17>, engaging youth in creating their own personal data sets, supplying that data to a machine learning algorithm, and then using that classifier in some application (e.g., recognizing certain objects, classifying the sentiment of some writing). Creative contexts can be fun, can help youth recognize the role of people in shaping AI behavior, as well as the limits of AI<druga21,melsión21>.

## Preparing youth as AI critics

Pedagogy that develops critical consciousness of AI and machine learning has been far less common. One example is Register and Ko’s study<register20>, which had post-secondary students use data to train basic linear regression models, and then reflect on the application of those models to particular contexts, such as admissions and financial aid decisions. One group used data that was provided to teach linear regression, another group gathered their own data from their life (e.g,, social media post likes and comments). The group that used their own personal data were significantly more likely to reason precisely about the way that linear regression models, and the features they used, might not accurately capture the context of individual students’ situations in admissions and financial aid decisions. This suggests that teaching AI and machine learning in the context of students’ lives might result in both a stronger understanding of AI models, but also a greater ability to reason sociopolitically about their applications in society.

Below, we give an example unit based on this research. Its learning objectives are:

1. Students will be able to gather personal data in a format amenable to classification.
2. Students will be able to identify limitations of the data they have gathered.
3. Students will be able to build a classifier with their data.
4. Students will be able to analyze how the use of a classifier might result in biased outcomes.

To achieve these learning objectives, the unit focuses on providing some basic conceptual knowledge of machine learning and bias, and then engages students in building machine learned classifiers in domains of personal interest, critically analyzing the limitations of their behavior and their application in the world.

=
### Session 1: Can computers learn?

* Begin the lesson by asking students to share their thoughts on how smart computers can be. What is the smartest thing they’ve seen a computer do?

* Present a positive example of an AI application, such as the Woebot, which applies evidence from cognitive behavioral therapy to a chat bot to try to reduce stress and anxiety.

* Present a negative example of an AI application, such as recidivism prediction algorithms, which uses racially biased historical data on incarceration to recommend sentences to judges.

* Ask the students to reflect on what smart means, based on the two videos.

* Present a short lecture on how machine learning works to define what smart means, defining data, features, labels, and giving an example of an algorithm that trains a classifier based on these inputs and makes predictions on future input.

* Discuss the upcoming sessions, in which students will develop their own classifiers and applications.
=

This first session sets the stage for machine learning, demonstrating that it is already widely used in the world, that it isn’t strictly good or bad, and providing basic conceptual knowledge on how machine learning is used to make predictions. This prepares students to engage in constructing and critiquing their own classifiers.

=
### Session 2: Choosing a decision

* Begin the lesson by introducing the domain for which students will build a classifier. It should be 1) in a domain that is culturally responsive to students’ lives, 2) which features and labels can all be binary, 3) in which the data concerns the students themselves, 4) one in which the classifier might be used to make a decision through prediction, and 5) one in which the decision has already been made in students’ pasts, so that data can be gathered about their history. Examples of domains include decisions about students at school, predictions about student grades, predictions about college success.

* Have students break into small groups and brainstorm decisions they might try to support with predictions. Have them generate at least three ideas.

* Bring the class back together and create a list of all of the group’s decision ideas.

* Vote on the ideas, selecting a decision based on popularity.

* Before discussing the classifier building, engage the class in philosophical chairs discussion about whether machine learning should be used for this decision. Have students choose a side, break into groups to develop arguments, and then return to present their cases and rebuttals.

* Explain that even if it shouldn’t be built, decisions about building machine learning classifiers are often not made by the stakeholders who are affected, and so the class will build it anyway, both to learn the skills, but also to understand the consequences.

* Provide an overview of the pipeline they’ll be constructing, envisioning an gathering and labeling data, building a classifier, evaluating, 
=

The second session pivots students from the position of consumers of machine learning to producers, situating them in the decision about how to apply machine learning to the social contexts in their lives, and also whether to apply it. This gives a critical framing for the work to come, encouraging students to approach the work with a critical lens throughout the process.

=
### Session: 3: Structuring, gathering, and critiquing data
* Engage the students in a discussion about what features and labels should be gathered to make the decision, constraining both to binary values. For example, if the prediction were about whether a student is in athletics, used for a decision about whether a coach reaches out to recruit a student, students might brainstorm factors like "likes exercise", "likes homework"; the binary prediction might be "athlete" or "not". Facilitate discussion, revision, and convergence toward a shared model.

* Divide the class into training and test groups, with 1/3rd of students in the test group. The training group will enter their feature data and provide the outcome label. The test group will enter their feature data, but not provide their outcome label, since they’ll be used to test the classifier’s predictions.

* After agreeing upon a data model, gather data by creating a shared spreadsheet, with one column for each feature and a final column for outcome label. Have students join the spreadsheet and enter their own data for each feature, and if they are in the training group, their outcome label. Students in the test group should leave the outcome blank. Include a column in the spreadsheet for students to identify themselves; it can be whatever word they want, so they can find themselves in the data without identifying themselves.

* Once the data is entered, have students gather in small groups, and prompt them to scan the data and analyze it, brainstorming a list of patterns, biases, or predictions that students have about the ability of a classifier to find patterns.

* As a group, have students share their brainstorms, developing a shared list of concerns about the data. Reinforce that machine learning often depends on much larger data sets, that these steps of critically analyzing data are often skipped, resulting in biased outcomes.
=

This third session makes visible three parts of machine learning that are often left invisible: decisions about what features to use to model data, the labor involved in producing data, as well as the need to analyze and critique data before it is used to make predictions. Engaging students in these practices normalizes them.

=
### Session 4: Classifying data

* Bring up the data set that students produced, as well as the overall pipeline, explaining that the next step is to provide the data to a machine learning algorithm.

* Open a pre-written Python script that reads in a comma-separated value (CSV) table of data, builds a decision tree classifier with that data, then visualizes the resulting decision tree, and the predictions of the training set. Explain each step of the script, helping students understand how the data is being read, processed, and analyzed.

`python
from sklearn import tree
observations = [[0, 0], [1, 1]] # Replace this with data
outcomes = [0, 1] # Replace this with outcomes corresponding to each observation
clf = tree.DecisionTreeClassifier()
clf = clf.fit(observations, outcomes)
tree.plot_tree(clf)
`Training a decision tree in Python.

* Open the spreadsheet, export a CSV file, move it to where the script expects it, run the script, and show the decision tree.

* *Formative assessment*. Have students privately reflect on the resulting tree, helping them interpret its logic. What do they think the tree got right? What do they think the tree decision tree got wrong? Is it the logic they would use to predict the outcome? Discuss whether and how they would like to share their reflections.
    ** This is _responsive_ because it centers students’ own perceptions of the tree.
    ** This is _participatory_ because it enables students to decide how willing they are to disclose their reflections.
    ** This is _educative_ because it compels self-explanation.

* Engage in whatever form of reflection sharing students negotiated above.

* Review the classifier’s predictions for each person in the test set. After each prediction, ask the student to disclose their outcome; did the classifier get it right? Why or why not? As the predictions are reviewed, tally the accuracy outcomes in a 2x2 matrix of true positives, true negatives, false positives, and false negatives.

* Review the confusion matrix, and engage the class in discussion. Is the classifier good? Who decides? How do the students who were misclassified feel about it, and how is that different from those who are correctly classified?
=

This fourth session makes visible the process of classifier construction and evaluation, but does so in a way that centers individual students and the judgments the classifier has made about them based on their data. This intertwines the practical skill of building classifiers with the consequences of their classifications to individuals.

=
### Session 5: Applying classifiers

* Bring up the classifier results, and then remind students of the envisioned application of the classifier they agreed to in Session 2.

* Begin another philosophical chairs prompt. Each individual student should write their own positions to help them choose a side. After they’ve chosen, divide the class into those who support using the classifier in the application, and those who do not. 

* Prompt each side to develop their best arguments for why the classifier should or should not be used. Have each side work collaboratively to develop arguments.
Have each side present their arguments.

* *Summative assessment*. Have each student reflect on how their positions changed after the arguments. Remind students of the positive and negative applications of machine learning illustrated in Session 1, and their own judgements about this application: when is machine learning safe to use? Discuss with students how they would like to express and share their reflections (as essays, presentations, or other media), and negotiate a rubric for evaluating them.
    ** This is _responsive_ because it centers students’ shifting perceptions of the limits machine learning.
    ** This is _participatory_ because it enables students to influence which media they use to express their ideas.
    ** This is _educative_ because it demonstrates the multiple different reactions that peers have to machine learning bias.

* Conclude the unit by suggesting that when to use AI and machine learning likely depends a lot on context and who is impacted.
=

This fifth and final session builds upon students' critical examination of the domain, the data, and the classification to their application to making a decision, and engages them in reasoning about the consequences of using the classifier to make decisions. The final discussion inevitably will lead to a conclusion that when to use AI and machine learning depends on context and who is impacted.

As with other units in this book, this example emphasizes critical perspectives on computing, at the expense of deeply developing skills. It does not cover a large set of AI or machine learning techniques, it does not develop robust knowledge of their underlying mechanics, and it does not connect these deeply to statistics. However, it does focus on a literacy that is likely more universal: comprehending the limited intelligence of weak AI and the urgent need to engage affected stakeholders in decisions about how AI is used in society.

@standardsHeader
@standardsBlurb

@cstaHeader
@csta3BAP08
@csta3BAP09

@toleranceHeader
@tolerance3
@tolerance6
@tolerance9
@tolerance11
@tolerance12
@tolerance13
@tolerance14
@tolerance17
@tolerance19

@teacherHeader
@teacher1a
@teacher1f
@teacher3b
@teacher5a
@teacher5c
@teacher5d
@teacher5e