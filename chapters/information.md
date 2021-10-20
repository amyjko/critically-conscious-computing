=
@keyIdeas
* Data is a biased, imperfect record of information from the past that is often used to categorize and marginalize people.
* Computers encode data as bits, inheriting the limitations of data in representing information, while also further limiting the ability of data to faithfully represent information.
* Most CS education overlooks the importance of teaching about data and information, technically or socially, viewing data as abstract, inert, and given.
* Developing students' critical consciousness of computing requires an understanding of where data comes from, what values it encodes, and how those values can be reinforced and amplified by algorithms.
=

Every ten years, the U.S. government conducts a [census|https://www.census.gov], counting the number of people in the United States, and then using that count to determine the number of representatives in the House of Representatives in the U.S. Congress. As part of this count, the census has long gathered information about each individual that responds to the census, such as age, gender, race, disability, and employment status, to help understand who is in the United States and how that is changing. This data can be crucial in ensuring everyone in the United States has a voice in democracy, not only determining the composition of the U.S. Congress, but also serving as a basis for budgeting decisions, research, and advocacy about minority groups across the country.

While information about who is in the country might seem simple, most of it is actually quite complex. For example, the census defines gender as either "male" or "female", but many people do not identify with either label, and the biological categories that they imply have long been known to artificially reduce the natural non-binary complexity of biological sex<fausto00>. Race is similarly nuanced: the census includes options such as "White", "Black or African Am.", "Asian Indian", "American Indian or Alaska Native", several other options, but race is widely understood by scientists not as something biological, but rather a social construction that weaves both biological factors like skin color and ancestry, with sociocultural factors such as ethnic identity and even others’ perception of race<smedley05>. The census approaches disability in a similarly narrow way, asking questions like "Is this person blind or does he/she have serious difficulty seeing even when wearing glasses"; of course, being blind and low vision are very different experiences, "serious difficulty" is not defined, and the question mentions nothing of the millions who use other forms of access technologies, including wearing glasses or contacts. 

Each of these census questions seek ~information~info about people living in the United States, attempting to capture the nuances of social ideas like gender, race, and disability in a way to organize, analyze, and reason about the country’s population. However, these nuances in this information are impossible to capture perfectly. Instead, the census settles for ~data~data, which abstractly and imperfectly encodes information in the world so that it can be processed, stored, and analyzed. Rather than capturing the rich nuances someone’s gender identity and presentation, the form just gathers a binary value ("male"/"female"). Rather than trying to model the ever evolving sociocultural meaning of racial categories, it models a person’s race as binary identification with one or more racial labels (e.g., White/non-White, Black/non-Black). And rather than trying to capture the situated nature of often intersecting human physical and cognitive abilities, which are shaped by access technologies, the built environment, and disability policy, it asks binary questions about difficulties that individuals face seeing, hearing, walking, dressing, and bathing. Each of these are therefore approximate ~encodings~encoding of information about gender, race, and ability as data, and do so with particular assumptions and biases that erase the natural diversity of human ability, ethnicity, and gender.

Much of what makes computers powerful are their ability to store, retrieve, analyze, and compute information. But as the distinction above makes clear, computers aren’t really processing information, they’re processing data. For example, when the first author of this chapter filled out the 2020 census, she wanted to indicate her ethnicity as Danish and Cantonese, as those are the two most meaningful ancestries that shape her ethnic identity. But the census form did not allow for those answers, so she instead had to describe herself as "White" and "Chinese."  This approximation, while imperfect, allows for researchers to use computers to quickly analyze racial and ethnic data about her response and others’, allowing algorithms to count her as a "White" person, as  "Chinese" person, or as a "biracial" person. It also allows people to use computers to create data visualizations about race, for example, plotting the migration of Asian families across the United States over time. But in no way does the computer know or understand her actual racial identity: that information is a rich, personal, evolving story of family, community, identity, and history. The encoded data `White (yes), Chinese (yes), Black (no), Native American (no), Hispanic (no)` only captures a small and likely misleading portion of that story.

Given this nuance, and the centrality of data in the value of computing, in this chapter we more deeply consider the tensions between information, data, and encoding, the reliance of digital computers on binary encodings, and the many ways of developing youth critical consciousness of these tensions.

|Chapter07_Figure01_Reduction.png|A face, reduced into parts, losing a sense of a face.|Data can only approximate information.|@ashley|<

# Data and society

As we discussed in the last chapter, code is a way of abstractly representing [intelligence|intelligence]. In a similar way, data is a way of abstractly representing information. Encoding information as data removes detail, context, nuance, and complexity in trade for the ability for computer programs to swiftly analyze reductive models of the world. And computers can abstract information to varying degrees. 

But how data abstracts, and how much it abstracts, can vary. For example, the U.S. Census database could have captured the author’s racial identity at many levels of detail:

* "American"
* "Biracial American"
* "White and Asian"
* "Northern European and East Asian"
* "Danish and Cantonese"
* "Pacific Northwest U.S. Scandinavian and Chinese American"
* "Suburban Portland Multiracial Occasionally White-Passing with Ethnic Roots in Southeast Portland Cantonese American and Rural Southern Oregon Danish American Immigrant Communities"

None of these are "correct" models of the author’s racial or ethnic identity; they are all abstractions of it, each with their own strengths and weaknesses, each exposing different facets. The first abstracts the most information away, and is largely useless for the purpose of the Census, which seeks to understand differences in racial categories in America. The last is also useless for the Census, as it is so specific that few other people responding to the census might share that category, minimizing the value of statistical analyses about groups of people. And so while none of them are "correct", some levels of abstraction are more useful for the goals of the census than others, making the work of an algorithm, programmer, and statistician easier, while removing the details that makes each census respondent different.

Of course, because data is always an approximation of reality, data can do harm by erasing context. For example, when the U.S. Census first started asking for data about ethnic identity, it did not allow for responses about people who identify as Hispanic. That’s because the ethnic category didn’t exist yet<rodriguez00>. In 1930, the Census’s first attempt to identify Hispanic people included a category "Mexican,  Puerto Rican, Cuban, Central or South American, Other Spanish"; these led to a severe undercount of the Hispanic population based on other measures, and this undercount was used to justify reductions in government spending in social programs that benefited Hispanic communities. It wasn’t until 1970 that Hispanic members of an Ad Hoc House committee proposed a term encompassing all Hispanic subgroups. Later, the words "Latino" and "Latinx'' emerged to more accurately measure the population of Hispanic-identified people. And, of course, since these labels largely concern ethnicity, race is an entirely different dimension, with some people using Latinx ethnic labels, but identifying racially as Native. Data, in this case, was first used as a tool used to erase a racial group, and then later to make a group visible.

The evolving history of a racial and ethnic categories in data also begs questions about how computers translate between different encodings of information. For example, if an old data set labeled someone as "Latino," and a new database used the label "Latinx", would it be appropriate to re-encode the old data as "Latinx"? Or similarly, would it be appropriate to generalize "British" to "European", especially in light of the UK’s exit from the European Union? Even seemingly simple translations of encoded data, such as "U.S. citizen" to "voter" are fraught with complexity about the evolving history of voting rights. Translating between one encoding and another is therefore often imperfect, requiring algorithms to remove information for a more abstract representation or fabricate information for a less abstract representation.

Not all data is as complex and politically charged as data about race, gender, and ability, but most data is complex in its own way. For example, social media sites will count the number of posts a user reads in a day to characterize how "engaged" a user is. That might seem as simple as a number, until one reflects on what it means to actually "read" a post: how can a computer reliably know whether someone read something, other than by using proxies, such as "the post was visible on their screen for more than 5 seconds." Or, a social media site might allow a user to upload a headshot, which is another form of data (a list of pixel colors that comprise an image). But what that image means to someone isn’t captured; it may be an image a person liked in the past, but now, they are greatly embarrassed by. Even a simple binary value, such as whether a person would like to receive marketing emails from a company, has its own immense complexity. Did the user notice that they were giving such permission? Do they still give permission? Is there a way for them to rescind permission? These examples show that even data that has no apparent political tension still pose major social and political questions about power, stemming from the way that data imperfectly captures the context of some situation in the past<hoffmann20>.

While none of the powers or perils of data are specific to computers, computers do play a central role in amplifying the harms and benefits of data. Forms on a website control what data can and cannot be entered, shifting power from the individuals filling out the form to the website and the developers who maintain it. Databases control how data is encoded and organized, shifting power from the people represented by data to the database designers who created and maintain the database. As we discussed in the [CS, Equity, and Justice Chapter|justice], the ways that computers amplify, centralize, privatize, and automate can disempower people’s ability to label and describe themselves with data, instead empowering private companies to do the labeling and encoding that shapes our information worlds.

At the heart of computer’s use of data are also several privacy issues. The privacy of our information in everyday life is often under our control: we can close a door in a room, find an isolated space in the park, put on headphones to keep what we’re listening to secret, or close a laptop if we want to keep private what we’re reading or watching. And yet, computers are always watching. For example, social media platforms like Facebook, Instagram, Twitter, and TikTok, are all primarily funded by revenue from advertisers, meaning that the primary purpose of engaging people on those platforms is to gather private data about our activities, interests, and identifies, so that this data may be used to target advertising, compelling us to consume more. Search engines like Google have similar goals, gathering as much data as possible about its users so that they may build elaborate predictive models that both provide small productivity conveniences (e.g., recommending content and personalizing search), while also targeting advertisements. All of this use of private data, which is increasingly referred to as surveillance capitalism<zuboff19>, is done without user consent in most countries in the world{Two notable exceptions are the European Union, which passed the [GDPR|https://gdpr.eu] data protection law, which requires consent be gathered and that consent can be revoked at any time. California passed a similar law, the [CCPA|https://oag.ca.gov/privacy/ccpa].}. And it is all used assuming that data accurately models information, which as we have discussed above, it often does not.

Because computers operate on data at such scale and speed, they amplify the benefits and harms of data, while also being completely dependent on data. Machine learning requires data to be valuable, and yet is strongly affected by biases in data. Data takes immense effort to create, maintain, and manage, and yet an algorithm processes it as abstract ones and zeroes, with no history of what it means, who created it, why, or how its meaning might have changed since it was recorded. Therefore, while computers--and more specifically the people who write the algorithms that they execute--can make astounding use of data to create exciting new experiences, they can also ignore its meaning, history, and potential for harm.

|Chapter07_Figure02_Binary.png|A book, glowing green, with binary digits flowing in and out of it, while being held by a hand.|Shannon imagined binary representing everything.|@ashley|>

# Information as bits

For computers to reason about data at all, they currently must reduce all information to bits. Bits are simply 1’s and 0’s, nothing more: the symbol 1 has no inherent meaning, nor does the symbol 0. The origin of the word "bit" was from the 1948 paper by [Claud Shannon|https://en.wikipedia.org/wiki/Claude_Shannon], who was trying to find a way to represent the theoretically smallest possible unit of information to solve problems of audio compression in telephones<shannon48>. His idea drew upon George Boole’s idea of Boolean values<gasser00>, `true` and `false`, which we discussed in the [previous chapter|intelligence]. But Shannon's notion of a bit stripped truth values down even further, removing even their true and false meaning. All that was left, from Shannon’s perspective, was "pure" information, with no inherent meaning: two symbols with which to represent phone call audio, and anything else in the universe: `1` and `0`, strung together in arbitrarily long sequences to represent anything.

These two bit symbols were revolutionary from a computer science perspective. This basic idea, that anything could be represented with a sequence of bits, began to shape how computer scientists imagined computers themselves, leading to the invention of foundational computing hardware such as vacuum tubes and transistors to store `1`’s and `0`’s in computer memory (as we shall discuss in more detail in the [next chapter|computers]). It also led to the development of a rich collection of *bit encodings* -- ways of representing information in the world as sequences of bits.

For example, the first and most obvious encoding was to simply encode Boole's truth values: `0` to represent `false`, and `1` to represent `true`{This mapping was arbitrary -- we could have used `1` to represent `false` and `0` to represent `true`. Nothing about an encoding is any natural law; all encodings are designed by people.}. This basic encoding allowed computers to store true and false values in memory, and use those true and false values to make certain kinds of intelligence decisions, as discussed [earlier|intelligence].

Another encoding was binary numbers. Binary is really no different than decimal numbers in principle. For example, with decimal, we encode numbers using the digits `0-9`, counting up, and using decimal places to represent larger quantities. For example:

`asm
0
1
2
3
4
5
6
7
8
9
10
`

Something special happened when we reached `10`: we ran out of single digit symbols to represent the number after `9`, and so instead of inventing another one, decimal reuses the digits `0-9` to represent a larger quantity. The number `10`, for example, represents `1` quantity of "tens" place, and `0` in the "ones" place. Binary is the same, except we only get the symbols `0` and `1` to represent numbers, forcing us to have many more digit "places" to represent the same quantities. For example, to count to `10` in binary, we have to use the next place every other number:

`asm
0 # 0 in decimal
1 # 1 in decimal
10 # 2 in decimal
11 # 3 in decimal
100 # 4 in decimal
101 # 5 in decimal
110 # 6 in decimal
111 # 7 in decimal
1000 # 8 in decimal
1001 # 9 in decimal
1010 # 10 in decimal
`

Those numbers might look strange, but they follow the same pattern of counting as in decimal: when one runs out of single digits while counting up, one creates another "place" to the left to represent larger numbers. Let’s compare binary and decimal "places" and the quantities they represent:

,Base|4th digit| 3rd digit| 2nd digit| 1st digit
,Decimal| 1000 => 1 thousand| 100 => 1 hundred| 10 => 1 ten| 1 => 1 one
,Binary| 1000 => 1 eight| 100 => 1 four| 10 => 1 two| 1 => 1 one

Clearly, decimal values can encode much larger numbers with fewer digits because they have 10 digits to work with; with binary, there are only two digits, and so numbers require many more symbols to represent the same number.

Of course, because computers use binary digits to represent numbers, and most of the world uses decimals, we often have to translate between the two. The process for doing this  is different depending on which direction we are going. For example, here is a decimal number:

`asm
41
`

To translate that into binary, we can use an algorithm of repeatedly dividing the number by 2 (because binary has 2 digits), and rather than using fractions, keeping track of remainders. We keep going until the value we are dividing by is 0:

* 41 / 2 = 20, remainder 1 (because 20 fits into 41 twice, leaving 1 left)
* 20 / 2 = 10, remainder 0
* 10 / 2 = 5, remainder 0
* 5 / 2 = 2, remainder 1
* 2 / 2 = 1, remainder 0
* 1 / 2 = 0, remainder 1 (then we stop because the value we’re dividing is 0)

The sequence of remainders above, read in reverse, is `101001`, which is `41` in binary.

Translating a decimal number back into binary follows a different algorithm. For each place in the binary digit, we write down the power of two it represents in decimal, as follows:

,32’s place| 16’s place| 8’s place| 4’s place| 2’s place| 1’s place
,1| 0| 1| 0| 0| 1

Then, for each place, we multiply the decimal number the place represents by the binary digit, and sum the products. For example:

`asm
32 x 1 + 16 x 0 + 8 x 1 + 4 x 0 + 2 x 0 + 1 x 1 = 41
`

To communicate with people, who generally know decimal, but not binary, computers constantly have to translate between these to binary encodings of numbers.

In addition to using bits to represent binary and decimal values, computer scientists have invented bit encodings for countless other types of information, including text, images, sounds, web sites, and more. We discuss some of these more complex encodings in the [Data Structures|data] chapter.

Regardless of how sophisticated an encoding is, all computer encodings of information reduce to bits. And as we discussed in the previous section, bits cannot represent the rich, nuanced, and evolving complexity of information in the world. For example, consider the number 41 we examined above: what if that number represented someone’s age in a software program? The computer doesn’t know if it was entered correctly, if someone lied to the computer and entered a false age, if someone -- like the Chinese grandmother of this chapter’s author -- does not know their age and guessed -- or if the age is even still accurate, since people’s ages change over time. And if that age is being used to make decisions, such as whether someone is eligible for a social service, the binary encoding of that age will provide no insight into any of this nuance. No matter how quickly computers process bits, no matter how reliably they translate bits into all of the forms of information we use in society, and no matter how many bits are used to model information in society, bits will always be reductive, imperfect representations of the rich complexity of human history and culture<illiadis16>, and algorithms will only ever account for this nuance if their creators account for it.

This fact has important implications: nothing a computer does with data is guaranteed to be accurate, fair, or true. It rests entirely upon the people gathering data and creating software to ensure that the limitations of data are known and accounted for, and that uses of that data in software do not inadvertently create new problems in people’s lives<dignazio20>. For example, returning to the U.S. Census, we can ask: what responsibility do the software engineers, scientists, and marketers who might use code to process U.S. Census data have to understand the limitations of census data? And if they cannot envision fair ways of using that limited data in software, what responsibility do they have to resist creating software that might do harm by amplifying the way that data encodings misrepresent reality? These are questions that are just as central to computer science as are technical questions about how to convert decimal to binary.

|Chapter07_Figure03_TeachingData.png|A Black woman at a whiteboard pointing to diagrams, pie charts, and binary digits.|Teaching data and information is about more than structure and manipulation.|@ashley|

# Teaching data critically

Helping students develop a critical consciousness of data requires shifting student perceptions of data as static, abstract, and inert to data as a nuanced relic of the past, with processes, meanings, and contexts that are all but invisible when viewing data itself. The central pedagogical challenge then is to make all of these invisible things about data visible, ideally in a student-centered manner that centers data about students themselves.

Research on how to teach critical perspectives on data is scant<weiland17>, though some researchers have explored intersections between statistics and social justice<lesser17>, methods for scaffolding critical examination of assumptions underlying data and machine learning<register20>, and opportunities for using data visualization as a way to catalyze student discussions of racialized ideologies<philip16>. Research is only beginning to explore what critical data literacies are necessary for navigating an increasingly data-driven world<bergstrom21>, and so teaching these literacies requires not only experimentation in pedagogy, but also learning, as society adjusts to the data-rich, credibility-poor world that computers have enabled.

What we do know is that a key pedagogical decision in talking about data with students is deciding what data to discuss. As we noted above in our discussion of the Census, seemingly mundane topics like counting and classifying the people that live in a country can have surprising and unexpected intersections with issues of safety, privacy, identity, and belonging. Culturally responsive and sustaining pedagogy might focus on data that is personally meaningful to all students, and then engaging them in critical examination of its limitations, especially when that data is used in software to automate decisions. One challenge in doing this in the social context of a classroom is how to choose a type of information that is inclusive to _all_ students’ interests and identities, but also not so politically charged that there’s no room for learning about how computers encode information. Identifying these topics requires both student voice, but also some domain knowledge about the data domains students might explore, and what political tensions they might engage.

|Chapter07_Figure04_Lateness.png|A child running away from the view toward a classroom with a clock and tardy slips flying behind them.|Even lateness is algorithmic.|@ashley|

## Unit sketch: Encoding tardiness

Here we offer a sketch of a unit that focuses on data directly related to students’ lives at school: tardiness data. On the surface, this may seem innocuous, but tardiness is a nexus of many inequities in students’ lives, ensuring that students will be able to connect their own experiences to the data that captures some aspect of their experiences. This unit might be tailored to the specific practices around lateness at your school or in your classroom, and could be extended to link to the many computing topics discussed in this book.

The learning objectives of the unit are:

1. Students will be able to identify that data emerges from data collection processes that can be biased, inaccurate, and even unjust, through their erasure of context.
2. Students will be able to identify the particular values that underlie data.
3. Students will be able to identify how algorithms can amplify these values by ignoring context.

To achieve these learning objectives, the unit contains six sessions, starting by raising the general phenomenon of tardiness, then turning to data collection about it and critical perspectives on it, then deploying that data into an algorithm. The sequence ends with a broader reflection on other ways that data is used to shape student lives, and the lives of others in society.

=
### Session 1: Tardiness
* Begin the lesson by giving an overview of the unit, talking about the role of data in society and its important role in computer science. Explain the focus on tardiness as an example that involves both data and algorithms.

* Begin a discussion about tardiness. How is it tracked? What consequences are tied to it? Do they think it is fair? Capture a set of issues about tardiness to help students see the diverse perspectives on the system.

* Shift the discussion to data collection on tardiness. Who tracks it? Where does that data go? Who maintains it?

* Shift the discussion to how the data is used. How is that data used to penalize students? What are the rules that govern penalties? Who enforces them? What discretion do they have?

* Finally, shift the discussion to whether the students view the tardiness system as achieving its goals: does it result in students arriving to class on time? What unintended consequences does it have? Does the on-time arrival justify the unintended consequences?

* Finish the lesson by recapping the diverse students opinions on tardiness.
=

This first session helps students think about the practice of tardiness and punishment itself, priming them for discussion about how the system might be changed by incorporating new sources of data or new enforcement mechanisms, such as algorithms that automate punishment. The second session extends this critical consciousness by exposing the diversity of contexts behind tardiness. These contexts will become part of the discussion of algorithmic approaches to encoding excuses in a later session.

=
### Session 2: Causes of tardiness
* Recap the sentiments about tardiness, but open the conversation about the factors that contribute to tardiness, such as home life, transportation, and other factors.

* Have students begin by discussing in small groups the things that make them late. Have them generate as many factors as possible.

* Bring the class together to aggregate a larger list of factors. Discuss the reasons they have identified, what is surprising about them.

* Turn the discussion to which factors the class believes should be accounted for in tardiness consequences.
=

Whereas the first session introduces the systems of tardiness, this second session develops critical consciousness of how the system interacts with the diversity of students’ lives. By engaging each student to reflect on their own position in the system, and observe their peers’ different positions, they will be more capable of critically examining the application of data and computing to the system. The next session begins this process by asking students to consider ways of measuring tardiness factors.

=
### Session 3: Measuring lateness
* Describe a hypothetical scenario of the school adopting a software solution to track tardiness. The system will gather data from parents, students, teachers, and staff, and be used to enforce the school’s tardiness rules, while accounting for extenuating circumstances.

* Remind the students of how lateness is currently captured, discussing problems with the system of measurement.

* To identify extenuating circumstances, from the previous session’s list, enumerate some of the most common factors, and ask the class to vote on two factors to try to measure (e.g., mode of transportation, illness).

* Formative assessment. Engage the class in a brainstorming session of how to measure the two selected factors. Negotiate the rules of brainstorming that everyone will follow (e.g., how and when to share, how to ensure everyone can contribute). What are fair ways of capturing the complexity of the factors, while also reducing them to discrete measures that software could encode as data?

    ** This is _responsive_ because it centers students’ lives.
    ** This is _participatory_ because it gives agency to students to structure how they brainstorm collectively.
    ** This is _educative_ because it surfaces other students’ perspectives on what fairness would mean.

* Test the class’s designs by having all of the students encode an example of a day they were late. Does the measurement seem fair for their situation? Discuss varying notions of fairness.
=

In this third session, students learn how the complexity and nuance of human experiences are reduced to data, and how that involves some degree of unfairness. By engaging students in examining their own contexts, and hearing about their peers’, students will feel this tension when they’re forced to choose, erasing the critical nuances that make up their experiences. The next session further stresses the reductive nature of data by applying it to an automated system.

=
### Session 4: Automating tardiness

* Remind the students of the hypothetical system, the method of measuring lateness, and the methods of measuring two other factors of extenuating circumstances.

* Describe a feature of the hypothetical tardiness system that enforces tardiness by only counting lateness as tardiness in certain situations by accounting for these two extenuating circumstances factors.

* Present an example algorithm, such as:

`
If a student is late:
    And a student travels by bus:
        They are tardy
    And a student travels by car:
        They are not tardy
    And a student walks:
        They are tardy
If a student is not late:
    They are not tardy.
`

* *Summative assessment*. Have the students break into smaller groups and revise the algorithm to reflect their own notion of fairness. As part of their submission, request reflections on disagreements they had about who the algorithm should serve, and who is harmed. Engage the students in a discussion of how they would like their work to be assessed, including what feedback they would like and how their work might be encoded into grades.

    ** This is _responsive_ because it centers students’ own lives in making decisions about the algorithm’s behavior.
    ** This is _participatory_ because it empowers students to shape the feedback they want, and what will be valued about their work.
    ** This is _educative_ because it engages students in small group debates about the consequences of algorithmic decisions on different groups.

* End the session by discussing with the class whether the algorithm should be used at all, or whether the decision should be left to the discretion of staff. What are the advantages of each group’s proposed algorithm? What are the disadvantages?
* Prompt students to finish their algorithm together and submit it for summative assessment.
=

The limitations of this algorithm, whether it is executed by staff or a computer, will raise entirely new questions about the use of the data. Who decides which transportation mode a student is classified as? What stops a student from just saying they travel by car so they’re never marked tardy? Is there any way to dispute the decision of the algorithm? Who devised this algorithm? Who tracks whether a student is late? By illustrating how data is used in algorithms to make decisions, students will see that there is not only nothing magic about algorithms, but also nothing simple about data. The last session generalizes from this discourse to other systems.

=
### Session 5: Data and society
* Break the students into small groups.

* Prompt the groups to brainstorm other systems that use information to make decisions about their lives in some way (e.g., grading, high stakes exams, college applications).

* Bring the class together to identify some of the most common systems that students mentioned.

* With the class, interrogate the common systems in the same way the tardiness system as examined: who gathers the data, how is it encoded, how is it used in decision making, and who makes the decisions? And if some of these details are not knowable, why are they not knowable? Are the systems fair, and to whom? Use the tardiness example to generalize principles from those discussions to the systems under discussion.

* After critically analyzing the systems, end the discussion with a group brainstorm on how they might change the systems. Who would they have to advocate to and what kinds of changes would be required?
=

After these sessions, students should be able to recognize that data is not always neutral or objective, and is often biased, inaccurate, and unfair, encoding particular values. They should also be able to see how algorithms can amplify these values and biases by automating systems in ways that erase context. Students may end the unit feeling unsettled about systems that shape their experiences at school and beyond, but also more critically conscious of those systems as designed by people with particular goals and values.
Perhaps the largest limitation of this method is that it goes deep into one system, and only broad into a few systems. Students will not necessarily transfer this understanding to other systems they encounter in their lives. After all, many software systems are invisible, much of the data they use is invisible, and how that data is gathered and interpreted is invisible. To counteract this, one might consider teaching students to assume that software is involved in every system (as it often is), and critically question how it is being used and why.

# Conclusion: The hidden perils of data

Because computer science is so centrally focused on algorithms and their powers, and because the origins of data are often so invisible, it can be easy to overlook the role of data in shaping unequal outcomes in society. Whether it is reductionist encodings of race, gender, or ability in the Census, the web site visitation logs that fuel surveillance capitalism, or a harmful Facebook, Instagram, or Twitter post, data can have just as much influence people's lives as algorithms. And arguably, even more than algorithms: after all, social media would be nothing without the data we post on it; many powerful computing companies would have no revenue if they could not record data about our activities and use it to sell ads; and as much as computing is used to scale the Census, it's the data that the U.S. constitution requires, not the technologies used to capture and store the data. Thus, as we turn our attention to these computing technologies and their great benefits and risks, we'll need to frequently return to ask: is it the algorithm or the data that shape a computer program's potential for harm? Quite often the answer is both.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaIC
@csta2IC23
@csta3AIC29
@csta3AIC30
@cstaDA
@csta2DA07
@csta2DA08
@csta3ADA09

@toleranceHeader
@toleranceIdentity
@tolerance1
@tolerance2
@tolerance3
@toleranceDiversity
@tolerance6
@tolerance8
@tolerance10
@toleranceJustice
@tolerance11
@tolerance13

@teacherHeader
@teacher1
@teacher1a
@teacher1d
@teacher1f
@teacher2
@teacher2d
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