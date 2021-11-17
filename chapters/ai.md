=
@keyIdeas
* Artificial intelligence (AI) is concerned with replicating human intelligence and ability, and is increasingly used in software applications, consumer devices, and every major industry to automate and inform decisions.
* AI has made many advances in replicating specific human abilities, primarily using large data sets created through human labor, and using that data to build machine-learned classifiers.
* AI perpetuates whatever values and biases were encoded in its algorithms and data, and depending on how they are used, create new systems of oppression.
* Most dominant ways of teaching AI prepare students to implement applications of AI; methods for positioning students as AI critics are only beginning to emerge.
=

One way to view the history of computing is as sustained effort to teach computers new abilities. Early efforts focused on teaching computers arithmetic and logic, to replace the human computers that calculated before them. But over the past several decades, we've taught computers to do much more, including recognize speech, detect faces in images, and render computer generated films and television. Some of these new abilities merely digitize what has come before, like form filling, document writing, or video editing, enabling new and more efficient workflows. But some of the abilities we've taught modern computers are entirely new, such as connecting everyone on the planet in a shared global discourse or enabling entirely new kinds of digital entertainment.

~Artificial intelligence~ai (AI) is any computer program that teaches computers _humans_ abilities<russell16>, like walking, talking, thinking, and listening. Some researchers dream big, envisioning what some call *strong AI*<frankish14>, imagining a world in which computers are not only capable of performing small human skills, but also achieve a kind of "general" intelligence, mirroring or even surpassing human intelligence in its greatest forms. These are the kinds of dreams told in both utopian fiction ([Her|https://en.wikipedia.org/wiki/Her_(film)]; [Star Trek|https://en.wikipedia.org/wiki/Star_Trek]) and dystopian fiction ([I, Robot|https://en.wikipedia.org/wiki/I,_Robot]; [A.I.|https://en.wikipedia.org/wiki/A.I._Artificial_Intelligence], [The Terminator|https://en.wikipedia.org/wiki/The_Terminator], [Ex Machina|https://en.wikipedia.org/wiki/Ex_Machina_(film)]), depicting embodied software (like robots) and disembodied software (like voice assistants) that participate in society alongside humans, sometimes as partners, sometimes as slave laborers.

Other computer scientists dream smaller, envisioning what many call *weak AI*, imagining a world in which we create intelligence for specific tasks, such as:

* Speech recognition and production for particular natural languages.
* Grasping and locomotion by robots to automate warehouses and assembly.
* Problem solving in specific games like chess or go.
* Vision, such as detecting and tracking objects in driverless cars.
* Dialog, to facilitate human-AI conversations in customer service.
* Even programming itself, automatically generating programs to meet requirements rather than having people program them.

Others still think of AI not through the lens of "strength", but rather *augmentation*, seeing it as a way of enhancing human abilities rather than mimicking them<englebart62>. For example, rather than viewing smart speakers in our homes as replacing human assistants, we can view them enhancing our natural human abilities with computational ones. Or, rather than thinking of robot as replacements for factory workers, we might invent robotic exoskeletons that make factory workers stronger, safer, and more productive. In an augmentation view, it does not matter how "strong" AI is, but rather, how well it amplifies people's ability to pursue their needs and desires.

In this chapter, we discuss how AI works, and the many powers and perils of creating it that emerge from these three approaches to AI. We then discuss several methods for teaching AI to youth to balance the amazing creative potential of AI with its many problematic effects. Throughout, we consider applications of AI that some might see as great feats of human innovation, and that others might see as fraught with ethical concerns.

|Chapter15_Figure02_Complexity.png|A humanoid robot face with an orange-tinted magnifying glass over it's left eye, revealing internal complexity.|AI isn't magic, but it's behavior is often unexplainable, even to its creators.|@ashley|>

# How AI works

There are two major approaches that artificial intelligence is built, each with their own opportunities for encoding and amplifying human abilities, values, and biases. The first is *symbolic*, in that they use concrete logic to reason about a situation and take some action; the second is *statistical*, in that it uses patterns in probabilities to make informed guesses about how to act.

## Symbolic AI

Symbolic AI is any computer program that tries to represent human intelligence explicitly, imagining human reasoning as a kind of logical application of knowledge.

One example of symbolic AI is an *expert system*<liebowitz19>, which encodes the logic of experts, often as a set of rules for what actions to take in particular contexts. The conversational behavior of modern voice assistants like [Siri|https://www.apple.com/siri/] and [Alexa|https://developer.amazon.com/en-US/alexa] are examples of such AI. For example, developers wrote a rule for smart speakers that says _If someone says "Tell me a joke", randomly select from a pre-defined list of jokes and speak them_. These kinds of artificial intelligence are often so predictable to us that we often don’t think of them as AI at all; once we’ve heard all of [Alexa|https://developer.amazon.com/en-US/alexa]’s bad jokes, we know that it was actually a designer or programmer who made a list of those jokes and decided that this is how Siri would respond. While expert systems are now most visible in consumer "smart" devices, they have long been used in many settings, including medicine to help diagnose diseases and manage medication, warehouse optimization, and airline scheduling.

Other kinds of symbolic AI might use *logic* to represent knowledge<minker12>. For example, researchers have designed algorithms that solve mazes, explore all of the possible outcomes of a move in chess, or check the correctness of mathematical proofs, achieving or exceeding the abilities of people doing these tasks. These AI systems work by expressing logical rules, and then using those rules to rapidly explore the space of implications of those rules to choose an optimal next step.

Another symbolic approach to AI is called *common sense reasoning*<lu04>. Unlike the symbolic approaches above, which encode intelligence for particular tasks, the idea behind common sense reasoning is that humans have all kinds of socially-learned "common sense" -- _balls can bounce_, _screams suggest fear_, _darkness is dangerous_ -- none of which are strictly logical, but are nevertheless critical to mimicking human behavior and functioning in human civilization. These approaches to AI start with gathering large databases of such common sense facts, representing those facts as relations (e.g., balls _can_ bounce indicates a _physical property_ of balls), then using those facts to support logical inferences. For example, AI techniques for recognizing objects in images might detect something spherical and orange, a net, and a group of human bodies but not correctly identify the spherical object as a basketball. Combining these facts together can help AI algorithms make an inference that when something spherical is detected in the presence of a net and people, it is probably a basketball. 

## Statistical AI

The second major approach to AI is *statistical*, which involves using probabilities to make predictions about how to behave, viewing human intelligence not as the logical application of rules, but as a kind of learned pattern matching. We call these approaches ~machine learning~ml. Machine learning uses a set of observations from the world -- essentially a big table full of data, a row for each observation, and a column for each aspect of the observation -- to find patterns in data. Once these patterns are learned, they can be used to control a computer program’s behavior. Machine learning, like symbolic approaches, comes in many forms. 

### Supervised machine learning

The first major type is *supervised* machine learning. These techniques take a set of labeled observations, where the _label_ indicates what the correct action or category for the observation is. For example, facial recognition is an example of a kind of supervised machine learning, which takes a large collection of photographs of human faces (observations), and the name of the person in each photo (the labels). These algorithms are "supervised" in the sense that each label encodes what the "right" behavior or category is for any given observation. This idea follows from the dated and debunked metaphor of a teacher "supervising" a student, offering "labels" about whether their behavior was correct or incorrect{Note the direct link here to Freire's banking model of education<freire68>.}.

Consider, for example, one of the simplest supervised learning approaches, *decision trees*. A decision tree is a flow chart of yes/no questions that lead to some decision, action, or classification. Decision trees are often used in problematic ways to reduce highly nuanced social situations into a simple set of rules. For example, here is a decision tree that replicate some of the toxic systems of tardiness often found in public education<johnsongros08>:

`
Is the student late?
	Yes. Do they have a written excuse from an authority figure? 
		Yes. Not tardy.
		No. Tardy.
	No. Not tardy.
`

This simple decision tree uses two reductive factors -- what are called *features* in machine learning -- to make a decision: lateness and whether there is a written excuse. A teacher might use this reductive logic in their class to determine each students’ tardiness. 

While a teacher using such a decision tree is problematic enough, others have imagined more chilling applications machine learning to automatically learn and enforce tardiness rules with machine learning<kwet20>. These systems work by keeping a log of several aspects of student behavior each time student arrives to class. An example log might be:

,Late?| Excuse?| Tardy?| Prediction
,True| True| False| False
,True| True| True| *False*
,False| False| False| False
,False| False| True| *False*
,True| True| False| False
,True| False| True| True
,False| True| False| False
,False| False| False| False
A data set of features, labels, and decision tree predictions.

To learn a decision tree from the data above, the decision tree algorithm analyzes the patterns of `true` and `false` for each feature, computing the probabilities of that they lead to a tardy outcome, and discover that lateness provides the most information about the likely outcome, and excuse provides a little less, and generate a decision tree like the one above. A central question then, is how often the decision tree was correct? In this example, two of the eight cases (in bold) above were _incorrect_: the teacher did not mark a student tardy, even though the decision tree predicted they would. 

If we trust the teacher’s judgment, then we might argue that this inaccurate decision tree is missing some critical features (e.g., whether a tardy would result in an unnecessarily harsh punishment, a first time offense, a good excuse). But the inescapable imperfection of machine learning raises many critical ethical questions: should the learning management system adopt a machine learning algorithm that gets 25% of its predictions wrong? Is it worth the effort to gather more data about more features to make its predictions more accurate? Is all of this effort worth the time to save the teacher the effort of having to make tardy judgment for all of their students? And if a teacher does adopt it, what kinds of decisions will it make that the teacher wouldn’t have made themselves? And how would students advocate against it? Would the teacher be able to explain the logic behind the classifier’s decision? And why should there be systems of tardiness at all, let alone automated ones that require surveillance and operate independent of teacher oversight?

There are many other kinds of supervised machine learning algorithms beyond decision trees that are the basis of computer abilities like speech recognition, speech production, object recognition, face detection, and more. The names are tantalizing -- "Naive Bayes", "Random Forests", "Support Vector Machines", "Linear Discriminant Analysis", "Neural Networks"{Neural networks are the bases of the increasingly visible phrase _deep learning_, which just refers to very large neural networks trained with very large amounts of data.} -- all are essentially different approaches to using statistics to taking large amounts of observations of something, extracting features from those observations, labels the observations according to some class one is trying to predict, and finding which features, and in which combinations, best predict the labels. These approaches vary in how accurately they do it, how quickly they do it, and how much data they require to do it well, but ultimately their output is the same: a ~classifier~classifier that, given a new observation described by the same features, a prediction of what label it should have. And they all have the same essential risk of bias, mindlessly modeling all of the values, patterns, and warped ideas encoded in data, features, and labels.

### Unsupervised machine learning

A second major type of machine learning is *unsupervised*. Unlike supervised machine learning, which requires a label on the outcome of some observation, unsupervised techniques only get the features, and no label. Let’s consider the same data above, but without the tardiness labels:

,Late?| Excuse?
,True| True
,True| True
,False| False
,False| False
,True| True
,True| False
,False| True
,False| False
Two features with no labels.

The job of an unsupervised algorithm is to take the data above and generate optimally distinct groups of observations that cluster together. One such algorithm is called *hierarchical clustering*, which tries to find a way of grouping the 8 observations into groups that are maximally different from each other as groups, but minimally different within groups. 

For example, consider another problematic application of machine learning to tardiness that tries to categorize students into different patterns of tardiness. A hierarchical clustering algorithm might produce three clusters: 

* Those who are late with an excuse (3 of 8 observations),
* Those who are late without an excuse (1 of 8 observations), and
* Those who are not late (4 of 8).

This minimizes the differences between observations in each cluster (all in cluster 1 are identical, there’s only 1 in cluster 2, and only one of the 4 not late observations is different from the others). It also maximizes the difference between the three groups. Hierarchical clustering _automatically_ finds these optimal clusters that maximize difference. It doesn’t give the clusters names -- a person still has to do that -- but it does automate the grouping. And it doesn’t promise that the groups are grounded in any real aspect of the world -- that’s for a person to judge -- it simply finds patterns in the data and one possible grouping to discriminate between groups. Of course, just as with supervised learning, this algorithm’s output is as biased as the data it uses: if the data on lateness is wrong or racially biased, the clusters it produces will be racially biased. And the very idea of grouping students based on their behavior stems from potentially oppressive visions of classroom management.

% TODO Add a third section on reinforcement learning? It's more often used in robotics, and harder to apply to the classroom management examples above, but it would be nice for completeness. If we do, AI GYM from Open AI is a great resource for exploring reinforcement learning: https://gym.openai.com/" (Thanks to Stef for the recommendation).

|Chapter15_Figure01_Courtroom.png|A courtroom, with a judge sentencing a defendant, an orange code overlaid upon the defendant.|AI can do harm, often unintentionally.|@ashley|<

# The power and perils of AI

The innovations above can be quite impressive -- how can we resist the futuristic wonders of smart assistants, autonomous cars, and acrobatic robots? And with AI increasingly embodied, with voices and physical forms designed to mimic human behavior and leverage human social cues, we increasingly see AI as more than just data and algorithms: we _like_ them, and come to see them as human-like, even though they are just data and algorithms<reeves96>. And yet, the problematic applications of machine learning we portrayed in the previous sections make clear that this power is not necessarily good. In this section, we discuss the limits of this power, and some of the many social consequences of misapplying it.

## The limits of AI

One of the most salient findings from AI research since the 1950's is that strong AI is far out of reach<braga16>. The closest that researchers have come is to create programs that can fool humans into believing they are intelligent for a brief time. Alan Turing described what is now known as the "Turing test" or the "imitation game", in which a human writes text messages to an AI and receives text replies, having a conversation. If the human is fooled for some period of time, one might judge the AI as having achieved some level of mimicry of intelligence. Many have taken the test literally, creating [competitions|https://en.wikipedia.org/wiki/Loebner_Prize] in which people write AIs and compete to see who can trick the largest number of people, or [prizes|https://developer.amazon.com/alexaprize] to advance the capabilities of AI in consumer contexts.

But even the best efforts in these competitions and in research reveal the fragile seams in strong AI attempts. All of the techniques above capture _some_ essence of human ability or patterns in society, but this is often only true in perfectly calibrated circumstances, and for a very narrow range of human abilities. Applications of AI therefore continue to be _weak_ -- carefully constructed for particular contexts, and brittle when applied outside those contexts, just like any other kind of computer program.

## Harms of exploitation

As weak AI has become ubiquitous in industry applications, primarily through machine learning, data has become a precious commodity: computers can only recognize and produce human speech, label objects in images, and play challenging games like go and chess because companies have amassed large amounts of labeled training data. Many of these data sets are generated entirely through human labor. Sometimes the data is gathered from commercial services without [our awareness|https://www.echokidsprivacy.com], such as the way that search engines passively record logs of our queries, labeling the results we select, and using that data set with machine learning algorithms to improve search results. Other data is gathered with human consent, such as when a website login page asks you to select parts of an image that contain traffic lights or stop signs, which are then used to train driverless cars. Some data comes from paid labor, such as the image labels that Facebook gathers from its tens of thousands of low-wage, low-status content moderation staff in developing countries<roberts14>. Many of the AI-fueled conveniences of expensive smart devices are thus built on the backs of no or low wage people, often without consent, and that data is often used against them to surveil and police them<oneil16>.

The need for data also links to the issues of privacy and surveillance capitalism we discussed in @information. It's not just that companies need data in order to train AI to offer new conveniences, it's that they need data to make money, as their primary revenue streams are from selling advertisements<zuboff19>. Data, and more fundamentally the invasion of privacy, often without consent, is therefore foundational to the economic systems that drive the creation of AI.

## Harms of allocation

All algorithms, when inserted into decisions about who gets a particular resource, and who does not, can disproportionately harm some groups and not others<benjamin19>. AI, however, has been found to be particularly systematic in its discrimination. For example, consider Black Americans, who because they are more likely in poverty, are increasingly denied access to housing, food, loans, and insurance due to applications of AI that are racially biased in their risk predictions<eubanks18>. These harms of allocation stem from multiple levels: the algorithms, which prioritize accuracy at the aggregate level, without considering impacts on marginalized groups; data that often underrepresented marginalized experiences; and applications of AI that stem from political goals of reducing fraud rather than helping people in need.

In contrast, other applications of AI often enrich and liberate groups that already have power and wealth. For example, the realities of weak AI such as machine learning that aim to make our lives easier and safer -- often for the benefit of the wealthy, and at the expense of marginalized groups. Algorithms that optimize the availability of rideshare services, for example, only benefit those who can afford expensive rideshare trips, and at the expense of drivers who often get paid less than minimum wage after accounting for expenses. AI, then, just like any other code, is often deployed as a tool of wealthy, dominant groups to accrue power, increase wealth, and maintain the matrix of oppression that erases diversity, denies equity, and shuns equality<birhane21>. 

## Harms of representation

While harms of exploitation and allocation are more direct, AI also causes more subtle, deeper harms in the form of misrepresentation, stereotyping individuals in harmful ways. Such harms are often quite simple. For example, machine learning that uses a binary gender feature -- male or female -- works fine for the cis majority, but erases people with non-binary or gender non-confirming identities. Such data, used by companies like Facebook to determine AI-based ad recommendations, excludes countless people from participating in commerce. Or, consider machine learning that used in face detection algorithms by police: because such machine learning is less effective for Black faces, there is been a surge in false arrests of Black people, spending time in jail, losing jobs and losing money on lawyers to prove their innocence.

Some of these harms stem from a lack of recognition of human, social, and cultural diversity. For example, what is "common" in common sense AI is culturally and socially determined. It’s only obvious to a person familiar with basketball that the spherical object is a basketball; to children who have never seen the game, or people in cultures unfamiliar with the Western sport, such facts would not be obvious. Therefore, the values in common sense AI are highly sensitive to the data on which they are based. The same is broadly true of all AI: because most AI systems are made by English speaking people in Western cultures, and authored by wealthier people with access to computers and the Internet, AI often reflects assumptions about what AI is for, and who it is for.

Some harms, however, stem from AI algorithms themselves, all of which optimize for common cases over ~edge cases~edge. Anyone part of a group that is less common than the majority is likely to be misrepresented by the logical rules or statistical patterns used to define AI behavior, necessarily resulting in worse accuracy for people in minority groups. Some of these harms stem from data used to train AI, where historical norms or trends — such as dated Western notions about binary gender — end up erasing individual identities. And some of these harms simply stem from how AI is applied in society: for example, it is possible to build less racially biased facial recognition technology, but it would still be used to disproportionately surveil and police Black people in the U.S.

In some ways, the very notion of categorization, classification, and labeling is harmful. Consider, for example, our applications of machine learning on tardiness earlier. It's tempting to view lateness as a binary construct: students are either late to class or they are not, right? Of course, as any teacher knows, lateness is not an inherently binary phenomenon, because of the many exceptional circumstances that might conspire to make lateness ambiguous. Daylight saving time, late buses, clocks that differ by more than a few minutes, a faulty passing period bell, an emergency like an earthquake, poorly accommodated physical disabilities out of a student’s control -- all of these circumstances and more erode the idea that lateness is a binary. And the same complexities arise when we try to define many natural and social phenomena, such as race, gender, poverty, wealth, and so on. Supervised learning algorithms that model some aspect of nature or society often must reduce these ideas to a smaller set of discrete or binary values in order to work -- but they do so at the cost of accurately modeling diversity. And more so, the people that are erased by the reductive nature of classification are usually people at the margins, who have exceptional circumstances, identities, bodies, and behaviors. Grouping, labeling, classifying, categorizing -- all of these are just synonyms of stereotyping, which erases the nuance of difference and diversity.

## Harms of prediction

One of the most common applications of machine learning, and statistics in general, is to make predictions about the future. As anyone knows, a prediction is not necessarily going to be true. And yet, many applications of AI frame prediction as if it are trustworthy, fair, and accurate.

Consider, for example, the problem of *recidivism*, which is the tendency for people who are convicted of crimes to commit further crimes<zamble01>; research on recidivism suggests that repeat offenses are primarily caused by the fragile social supports and stigmas that previously incarcerated people face after release. When judges make sentencing decisions after a jury convicts them of a crime, they often make recidivism predictions, assessing how likely the convicted person is to commit another crime. If they decide the likelihood is high, they may give the person a longer sentence, hoping that separating a person from society will protect society from their crimes; if it is low, they may give a shorter sentence. There’s obviously immense opportunity for bias in these human judgment, as the judge’s prediction of recidivism might be swayed by the color of the convicted person’s skin. And so some software companies saw an opportunity to create software for courthouses that would use machine learning to make these predictions instead, hoping to remove the potential for a judge’s bias by replacing their judgment with supposedly "neutral" AI.

The most popular software, [COMPAS|https://en.wikipedia.org/wiki/COMPAS_(software)] (Correctional Offender Management Profiling for Alternative Sanctions), launched in 1998, used the approach of taking a large data set of past convicted people, gathering 137 different factors about the accused (the degree of the crime, whether it was a drug offense, the offenders’ age), but did not include race as a factor. Machine learning algorithms, as we will describe below, build statistical models that find how much to weigh different factors to make the most accurate prediction possible; they use data on past convictions to "train" a classifier, then use that trained classifier to make predictions about new cases. COMPAS did this same thing, using a historical record of convictions and re-convictions to make predictions about people newly convinced. Despite COMPAS’s insistence that race was not included as factor, the factors that it did include were nevertheless racially biased: Black men are more likely to be arrested for crimes because they are surveilled and policed more than other identities; they are more likely to be convicted of crimes, even when they are later found to be not guilty. The machine learned classifier in COMPAS learned these racially-biased patterns, and reproduced them, without ever explicitly including race as a factor. In fact, research showed that the COMPAS machine learned classifier was just as biased as lay people with little or no criminal justice expertise, and in fact less accurate and more biased than experienced judges<dressel18>. And yet, because of a misplaced faith in the neutrality and objectivity of computers, judges across the United States have deferred to COMPAS and its racially biased predictions to make their sentencing decisions, rather than using their knowledge of the individual accused. The result is that judges using COMPAS give Black men even longer sentences than other racial groups.

The developers of COMPAS did not evaluate these outcomes before they built it; their priority was selling software to courthouses, and cities’ priorities were reducing perceptions of bias (instead of actual bias, or more importantly, the larger systemic bias in policing, prisons, and poverty). No one actually investigated this bias until the public started demanding audits of these algorithms and researchers conducted these audits, which revealed their ineffectiveness and bias. This application of weak AI, therefore, prioritized certain people’s concerns (judges, politicians, and the White majorities that elected them) at the expense of others (Black men).

|Chapter15_Figure03_Resist.png|A large crowd of small people gathered in protest of a very large humanoid robot, backset by stock tickers.|AI has bias, but it's not always clear what to do about it.|@ashley|<

# Managing and Regulating AI

Because AI, and computing in general, has such great potential for harm, there are numerous approaches to trying to mitigate its risks.

*Transparency*. One approach is to advocate for transparency -- the degree to which people other than an AI's creators can see the data on which AI is based and the algorithms it uses to process it<ananny16>. Without transparency, the public is limited to observing the patterns in AI behavior, without being able to see their underlying causes. Thus far, the world has been so enamored with the possibilities of AI that it has asked for little transparency -- most private companies view their data and AI algorithms as valuable trade secrets -- and only some governments have committed to transparent uses of AI. Just as when code is kept secret, when the data and AI algorithms used are kept secret, there is no way to build public trust in their underlying logic.

*Explainability*. Even when AI is transparent, the behavior of AI algorithms can be much harder to explain than a computer program<rader18>. After all, a program has logic, written in a programming language, that someone familiar with that language can read, analyze, and make conclusions about with high confidence. Comprehending a program’s behavior is by no means easy, but it is feasible with time and expertise. AI, and especially machine learning, in contrast, often have little explicit logic. Their behavior is inherently determined by the data selected, the statistical analyses applied to that data, and the emerging patterns in that data. The answer to "_Why was my loan application rejected?_" for a computer program might be "_The program inspected your responses to these three questions and based on our rules, you are not eligible_", but the answer for a machine learning based prediction is "_Because of the historical records of hundreds of millions of Americans, and their patterns of repayment, we predict that you will be likely not to repay._" In fact, ask any machine learning programmer to explain the output of a classifier, and the best answer they can give is often "_Because of all the data._"

*Regulation*. Because AI behavior can be so hard to explain, even when it is transparent and the harm is measurable, a central question in AI is "who is responsible for AI behavior?" Is it the people who use the AI that someone created? Is it the people who created the AI? The people who chose the data on which the AI was based? Is it the people who gathered the data that shaped its behavior? These questions are perhaps most salient in the case of driverless cars, which use AI extensively: when autonomous vehicles kill someone, who is to blame? There are few broadly accepted regulatory frameworks that answer these questions. Many Black scholars have [advocated|https://www.congress.gov/116/meeting/house/109521/witnesses/HHRG-116-GO00-Wstate-BuolamwiniJ-20190522.pdf] for regulation on applications of facial recognition technology; other scholars are calling for even more pervasive debates about law over the coming decades about AI culpability<turner18>. Increasingly, [whistle blowers|https://en.wikipedia.org/wiki/Frances_Haugen] from industry are even calling for companies who apply AI to be held accountable to the harms they cause.

*Ethics*. When asking questions about agency, intelligence, causality, and blame, questions about AI quickly turn to questions of ethics, morality, and justice. Why are we creating AI? Who does it benefit? At what cost? Do we want artificially intelligent things in society? What kind of society do we want? And what is the cost of putting so much time and attention into managing the power of AI when so many people in the world are still struggling with such basic needs, such as food, clean water, shelter, and safety? Currently, these are questions largely being answered by large, wealthy, monopolistic, American companies like Google, Amazon, Apple, Facebook, and Microsoft. If we want a democratic society that reflects all of our views of a just society, then everyone needs the literacy above to ponder these questions and shape policy preferences<jobin19>.

|Chapter15_Figure04_Classroom.png|A Black boy and a latina girl being creating robots with the help of a male teacher. Two orange circles hover behind them.|Learning AI, even critically, can be creative and fun|@ashley|

# Teaching AI critically

While educators have been teaching AI learning in post-secondary education settings for decades, efforts in primary and secondary, and research on AI & machine learning pedagogy have only just begun. For example, the [AI4K12|https://ai4k12.org] initiative, a joint effort to produce learning guidelines by [CSTA|http://csteachers.org] and [AAAI|https://www.aaai.org] (the AI professional society), only began in 2020. Such guidelines center on several of the big ideas above, including:

* AI perception using sensors to gather data about the world.
* AI representation and reasoning using data structures and algorithms.
* AI learning using logic and statistics.
* AI’s interaction with people, which must account for the complexity and diversity of human cognition, behavior, and ability.
* AI’s impact on society, which includes both its positive and negative impacts.

However, within these big ideas, there are several distinct teaching methods and focal areas that have emerged, each with tradeoffs.

## Teaching AI theory

The dominant approach in post-secondary is to teach the theory and construction of AI and machine learning algorithms<wollowski16>. For example, students might begin by learning about what decision trees are, learning the underlying mathematical and statistical theory for decision trees, learning an algorithm for deriving a decision tree automatically from data, practice correctly implementing that algorithm in a programming language, and practice testing their algorithm on some example data sets. Typical curriculum might repeat this pattern for the large set of more advanced AI and machine learning techniques, focusing on the knowledge for building custom AI solutions and advancing the state of the art in AI, often as graduate students or in industry. This pedagogy and content approach depends strongly on prior knowledge of programming, as AI and machine learning algorithms cannot be implemented without knowing other foundations in CS. This is why such courses are often senior electives or even graduate courses.

While such teaching is not yet common in secondary settings, some aspects of the [AI4K12|https://ai4k12.org] learning guidelines overlap considerably with these goals, recommending learning on feature extraction, data engineering, neural network construction, and other technical aspects of AI. These guidelines essentially take what used to be content learned in post-secondary and graduate level electives and push it down into secondary courses, but supplement it with broader literacies about bias and ethics often lacking in post-secondary curricula.

## Teaching AI application

An increasingly common approach, especially in the adjacent world of data science education<song15>, teaches AI and machine learning as a tool for data analysis and creative expression. In this pedagogy, students do not learn the theory of how AI works, but rather conceptual knowledge about how to use AI and machine learning algorithms to analyze data and create applications. This learning centers on API learning, as we discussed in @abstractions, where students learn how to properly format input for machine learning APIs, create training data to build classifiers, and calibrating machine learning algorithms that others have already built to make predictions and classifications. This teaching unlike the theoretical ideas in the previous section, is practical and project-focused, training and testing of machine learned classifiers in creative contexts<mariescuistodor19,druga19,dasgupta17>, engaging youth in creating their own personal data sets, supplying that data to a machine learning algorithm, and then using that classifier in some application (e.g., recognizing certain objects, classifying the sentiment of some writing). Creative contexts can be fun, can help youth recognize the role of people in shaping AI behavior, as well as the limits of AI<druga21,melsión21>.

## Unit sketch: Teaching AI critique

The focus in the previous to approaches generally centers technical knowledge of AI: how to build it, and how to build with it. Pedagogy that develops critical consciousness of AI and machine learning has been far less common. This is unfortunate, as some research suggests that most students are most interested in AI because of its political, philosophical, and ethical issues, especially students from groups underrepresented in CS<barretto21>.

One approach to engaging in these issues is to have students train basic machine learning models, and then reflect on the application and limitation of those models to particular contexts, such as admissions and financial aid decisions. In one study examining this practice, one group used data that was provided and another group gathered their own data from their life (e.g,, social media post likes and comments). The group that used their own personal data were significantly more likely to reason precisely about the way that machine learning, and the features they used, might not accurately capture the context of individual students’ situations in admissions and financial aid decisions<register20>. This suggests that teaching AI and machine learning in the context of students’ lives might result in both a stronger understanding of AI models, but also a greater ability to reason sociopolitically about their applications in society. Centering students' own data and lives is also more culturally responsive and sustaining, which may help motivate youth to learn more about AI.

Below, we give an unit sketch based on this research, which provides one possible direction for engaging students in critical examination of AI. Its learning objectives are:

1. Students will be able to gather personal data in a format amenable to classification.
2. Students will be able to identify limitations of the data they have gathered.
3. Students will be able to build a classifier with their data.
4. Students will be able to analyze how the use of a classifier might result in biased outcomes.

To achieve these learning objectives, the unit focuses on providing some basic conceptual knowledge of machine learning and bias, and then engages students in building machine learned classifiers in domains of personal interest, critically analyzing the limitations of their behavior and their application in the world.

=
### Session 1: Can computers learn?

* Begin the lesson by asking students to share their thoughts on how smart computers can be. What is the smartest thing they’ve seen a computer do?

* Present a positive example of an AI prediction application, such as cancer detection, which tries to classify medical images as cancerous or not.

* Present a negative example of an AI prediction application, such as recidivism prediction algorithms, which uses racially biased historical data on incarceration to recommend sentences to judges.

* Ask the students to reflect on what smart means, based on the two videos.

* Present a short lecture on how machine learning works to define what smart means, defining data, features, labels, and giving an example of an algorithm that trains a classifier based on these inputs and makes predictions on future input.

* Discuss the upcoming sessions, in which students will develop their own classifiers and applications.
=

This first session sets the stage for machine learning, demonstrating that it is already widely used in the world, that it isn’t strictly good or bad, and providing basic conceptual knowledge on how machine learning is used to make predictions. This prepares students to engage in constructing and critiquing their own classifiers.

=
### Session 2: Choosing a decision

* Begin the lesson by introducing the domain for which students will build a classifier. It should be 1) in a domain that is culturally responsive to students’ lives, 2) which features and labels can all be binary, 3) in which the data concerns the students themselves, 4) one in which the classifier might be used to make a decision through prediction, and 5) one in which the decision has already been made in students’ pasts, so that data can be gathered about their history. Examples of domains include decisions about students at school, predictions about student grades, predictions about college success.

* Have students break into small groups and brainstorm applications that might use machine learning predictions to make decisions. Have them generate at least three ideas.

* Bring the class back together and create a list of all of the group’s decision ideas.

* Vote on the ideas, selecting a decision based on popularity.

* Before discussing the classifier building, engage the class in philosophical chairs discussion about whether machine learning should be used for this decision. Have students choose a side, break into groups to develop arguments, and then return to present their cases and rebuttals. Focus their discussion on edge cases and marginalized groups that might be harmed.

* Explain that even if it shouldn’t be built, decisions about building machine learning classifiers are often not made by the stakeholders who are affected, and so the class will build it anyway, both to learn the skills, but also to understand the consequences.

* Provide an overview of the pipeline they’ll be constructing, envisioning an approach to gathering and labeling data, building a classifier, and evaluating it.
=

This second session pivots students from the position of users of machine learning to critics of machine learning, situating them in the decision about how to apply machine learning to the social contexts in their lives, and also whether to apply it. This gives a critical framing for the work to come, encouraging students to approach the work with a critical lens throughout the process.

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

* Discuss the importance of ethical considerations about AI before beginning a project. Use an ethics checklist<loukides18>, presenting to students questions such as:
** _Have we listed how this technology can be attacked or abused?_
** _How will we tested our training data to ensure that it is fair and representative?_
** _Have we studied and understood possible sources of bias in our data?_
** _Does our team reflect a diversity of opinions, backgrounds, and kinds of thought?_
** _What kinds of user consent do we need to collect or use the data?_
** _Do we have a mechanism for gathering consent from users?_
** _Have we explained clearly what users are consenting to?_
** _Do we have a mechanism for redress if people are harmed by the results?_
** _Can we shut down this software in production if it is behaving badly?_
** _Have we tested for fairness with respect to different user groups?_
** _Have we tested for disparate error rates among different user groups?_

* Begin another philosophical chairs prompt. Each individual student should write their own positions to help them choose a side. After they’ve chosen, divide the class into those who support using the classifier in the application, and those who do not.

* Prompt each side to develop their best arguments for why the classifier should or should not be used. Have each side work collaboratively to develop arguments.
Have each side present their arguments.

* *Summative assessment*. Have each student reflect on how their positions changed after the arguments. Remind students of the positive and negative applications of machine learning illustrated in Session 1, and their own judgment about this application: when is machine learning safe to use? Discuss with students how they would like to express and share their reflections (as essays, presentations, or other media), and negotiate a rubric for evaluating them.
    ** This is _responsive_ because it centers students’ shifting perceptions of the limits machine learning.
    ** This is _participatory_ because it enables students to influence which media they use to express their ideas.
    ** This is _educative_ because it demonstrates the multiple different reactions that peers have to machine learning bias.

* Conclude the unit by suggesting that when to use AI and machine learning likely depends a lot on context and who is impacted.
=

This fifth and final session builds upon students' critical examination of the domain, the data, and the classification to their application to making a decision, and engages them in reasoning about the consequences of using the classifier to make decisions. The final discussion inevitably will lead to a conclusion that when to use AI and machine learning depends on context and who is impacted.

As with other units in this book, this example emphasizes critical perspectives on computing, at the expense of deeply developing skills. It does not cover a large set of AI or machine learning techniques, it does not develop robust knowledge of their underlying mechanics, and it does not connect these deeply to statistics. However, it does focus on a literacy that is likely more universal: comprehending the limited intelligence of weak AI and the urgent need to engage affected stakeholders in decisions about how AI is used in society.

# Conclusion: Intelligence at a Cost

We've shown throughout this chapter how AI, like the rest of CS, is far from neutral. AI can detect cancer when used in medical settings, and it can also deny people food when used to determine food stamp eligibility. It can making driving safer, but it can also lead to false arrests. It can enable amazing new experiences in entertainment, but in the process, exploit unpaid or underpaid human labor. But these costs and benefits are not arbitrary: AI does harm when people use it in ways that ignorant of its limitations<boyd11,illiadis16,broussard19>. To harness its powers safely, all youth need to understand that:

* _Data is a record of the past_, and so any system that uses it to shape the future will perpetuate past injustices.

* _Data encodes the values, assumptions, and goals of the people who create it_, and so any AI that uses that data will inherit those values, assumptions, and goals.

* _Use of data to shape AI can harm people in unequal ways_, and quite often those ways reflect the broader matrix of oppression at play in society.

* _Prediction relies on aggregate patterns, ignoring individuals at the margins_, and so anyone who society does not view at normal is at risk of being misclassified or mistreated by an AI-based system.

If we can envision AI education that centers these inescapable limitations of AI, we might just create a digital future that is "smart" not only about finding patterns in data, but also about creating more fair and just worlds for everyone.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaIC
@csta2IC20
@csta2IC21
@csta2IC23
@csta3AIC25
@csta3AIC26
@csta3AIC29
@csta3AIC30
@csta3BIC28
@cstaAP
@csta3BAP08
@csta3BAP09
@cstaDA
@csta2DA09
@csta3ADA12
@csta3BDA06

@toleranceHeader
@toleranceIdentity
@tolerance3
@toleranceDiversity
@tolerance6
@tolerance9
@toleranceJustice
@tolerance11
@tolerance12
@tolerance13
@tolerance14
@toleranceAction
@tolerance17
@tolerance19

@teacherHeader
@teacher1
@teacher1a
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