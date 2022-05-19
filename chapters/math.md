Mathematics needs little introduction: it’s woven throughout nearly every system of public education globally and has served as the foundation for progress in science, engineering, and technology for centuries. Of course, it wasn’t always that way: mathematics was not always part of human civilization. Even concepts like “zero”, which is first known to be used by the Mesopotamians and Mayans in 3 B.C and 4 A.D. respectively, needed to be invented (or discovered, depending on your beliefs about the nature of mathematics). And so many of the concepts in mathematics that we take for granted -- numbers, number systems, arithmetic, relationships, mathematical notation, algebra -- took millennia for us to understand, organize, and use.

The state of math education now is therefore quite mature relative to a nascent discipline like computer science. For example, in the United States, the [Common Core|http://www.corestandards.org] math progressions define a broad range of well-understood, long taught concepts, each building upon the last to help youth grasp the beautiful interplay between logic, notation, and quantity. This effort, to help math education be more focused and coherent, is at the heart of a national effort to try to improve math achievement, so that every child is empowered to use mathematics to help shape and even save our world through other disciplines that use it.

At first glance, it might seem that computing has obvious overlap with math education. Throughout this book, we’ve talked about how computing emerged from calculation, how programming languages used math-like notations and logic, and how computing even uses similar language as mathematics, talking about functions, variables, and abstractions. And none of these apparent overlaps are accidental: much of the academic discipline of computing emerged from mathematics departments. It’s reasonable to assume, therefore, that math skills and computing skills might be the same or similar.

However, many of these overlaps are surprisingly superficial. Variables in many programming languages act nothing like the mystery quantities in algebra. Knowing mathematics notations helps little with learning Java, Python, or Scratch. And many of the math problem solving skills central to arithmetic, algebra, and calculus, are often of little help when trying to debug a defect in a program or devise an algorithm to compute something.{Notably, Seymour Papert believed that computing was an ideal medium in which to learn mathematics and other disciplines; his book, Mindstorms, specifically focused on Geometry. His argument was more that computers could be a powerful tool for learning anything, through pedagogy that focused on discovery and tinkering.} And as we discussed in the previous chapter, computing also has a great capacity for creative expression that mathematics cannot rival. This is not to say that there is no overlap between mathematics and computing, but that the overlaps are less substantial than popular culture often portrays (and that higher education curriculum often encodes through prerequisites and state policy often defines). And there are surprising overlaps that are often overlooked.

In this chapter, therefore, we’ll discuss the intersections between mathematics and computing more precisely and then discuss the many meaningful opportunities for integration between the two disciplines.

|Chapter22_Figure1.png|A laptop and smartphone with math notation coming out of the exhaust of both|Computing is made of arithmetic.|@ashley|

# Intersections

In many ways, the superficial intersections between math and computing (e.g., the use of similar terminology) are more a reflection of history than of anything of substance. Where the most significant intersections lie are in some of the most powerful ideas in mathematics.

## Calculation, Quantities, and Expressions

Some of the most foundational ideas in mathematics -- the notion of _counting_ and _quantity_, the idea of _operations_ on quantities, and the broader notion of _expressions_ to represent these complex operations -- are fundamentally the same concept in math and computing. For example, when we discuss the number 7 in mathematics and we store the number 7 in a computer’s memory, they are referring to the same idea of 7. And when we discuss operations on that 7 -- for example, adding `3` to it using the `+` operator -- those are the same concepts as well. And when we talk about the syntax of math and programming language notations, those are the same ideas as well: the order of operations (PEMDAS, parentheses, exponents, multiplication, division, addition, subtraction) in math notation is one syntactic rule for deciding in what order to evaluate expressions. Sometimes programming languages use these identical rules, and sometimes they define different rules. At the most basic level, both disciplines therefore use quantities, operators, and expressions to represent calculation.

While these are all the same ideas, how we interact with these ideas in both disciplines can actually be quite different. In mathematics, for example, we often represent quantities and expressions on paper and whiteboards; we "show our work", manipulating quantities and applying operators, step by step, illustrating how we reduce a complex arithmetic expression like `(7 + 3) / 2` into the quantity `5`. We practice extensively to be able to reliably evaluate expressions with our minds. And at least up until the invention of digital computers, these human skills of calculation were valuable paid labor, helping businesses balance their accounting books and governments wage wars. But in computing, it is quite rare that we, as humans, ever manually compute anything. In fact, the whole original motivation for computing was to automate the manual labor of calculation, delegating it to a machine. Manipulating quantities in computing is therefore more about expressing quantities and expressions in ways that computers can understand what we want to compute, so that we may delegate this work. These are two entirely different experiences, math essentially framing people as computers and symbol manipulators, and computing embracing computers as symbol manipulators that liberate us from computational labor.

One way this intersection can play out in mathematics is to describe arithmetic on quantities as a kind of labor that we have largely delegated to computers. As part of this narrative, we can also talk about how computers -- whether smartphones, tablets, laptops, or even electric cars -- are essentially just very capable and fast calculators, doing the very same work that students learn to do in primary school and that adults used to do for pay. Identifying arithmetic as a form of work that has historically been done by people and is now largely done by computers not only links math and CS but math and CS to economics and history.

Another fascinating intersection between the skill of arithmetic is to contrast the ways that we "show our work" in math and computing. Mathematics has a long tradition of carefully structuring manual algorithms and notations for demonstrating the step-by-step evaluation of an expression to a number. We teach these practices in schools, helping primary school children learn manual arithmetic. Mathematicians practice them when writing proofs that demonstrate new insights in mathematics. Engineers do them to verify that their safety-critical calculations are correct. Computers, however, do not really show their work at all: they just do it as quickly and reliably as possible and then provide an answer. Asking a computer to “show its work” involves showing the program it is executing, running that program step by step, and visualizing each operation it performs, much like a teacher might demonstrate how to evaluate a compound expression on a whiteboard. We rarely teach this kind of “slow” computation because it subverts the purpose of digital computers -- to calculate things quickly -- and yet understanding how computers are calculating is central to understanding and fixing programs that aren’t calculating correctly.

## Algebra

While quantities and expressions are foundational to both math and CS, much of secondary math education centers on _algebra_, which introduces concepts of more complex expressions, unknown quantities, equations and inequalities, visualizing relationships encoded in equations, and the many problem solving and abstract reasoning skills required to precisely manipulate expressions to identify unknown quantities. Throughout, the syntactic structure of expressions is central.

In some respects, concepts of expressions and structure in computing are identical. For example, most programming languages directly adopt the notation of algebraic expressions to encode computation (usually with some tweaks to syntax to make it possible to encode programs as text). While these syntactic ideas are the same, many of the operational aspects of expressions in programming languages are quite different. For example, variables in computer programs don’t represent unknown quantities to discover as they do in algebraic equations. In fact, when a program is executing, the value is absolutely known (at least to a computer)! If the value weren’t stored in memory, it could not execute the program. In some ways, the word “variable” is more accurate in programming, as it’s simply a value that can vary. It’s not known by default to the person running the program, but if they use a debugging tool, they can definitely see what value is stored. Therefore, despite using similar syntactic concepts and terminology, expressions in math and expressions in computing overlap primarily in concept and not in practice.

Another significant idea in algebra is the notion of a function. For example, a commonly discussed function in mathematics is a function like this:

`
y = 2x + 1
` A line

This represents a line with slope `2` and y-intercept `1`. In Algebra, functions represent an abstract relationship, mapping any given value of `x` to a particular value of `y`. We might notice that the very same concept appears in Python:

`python
y = 2 * x + 1
` A similar calculation to the line above

But despite the syntactic similarity, it’s not really the same concept: that statement in Python means "_get the current value of `x`, multiply it by `2`, add `1`, then store the result at memory location `y`._" These are instructions for a computer to perform, not a statement of a relationship between values. These instructions do a similar thing to the algebraic equation above in that it specifies a calculation, but it’s different in many ways:

* The math equation works for any `x`, whether `0` or `100` trillion, but the Python program can’t store a number that big.
* The `y` on the left in algebra abstractly represents any other quantity, but in Python, it represents a very specific location in memory where it may already have another value -- which this Python statement overwrites.

A more comparable example in Python in this:

`python
def y(x):
  return 2 * x + 1
` The "line" above

Despite how different this looks from the math notation, this representation is actually the nearly identical idea as in algebra: given any arbitrary `x`, compute `y`. Python still has the representational limits mentioned above -- it won’t work for any x if x is too big or small, since computers can not represent all numbers exactly -- but it’s otherwise the exact same idea as an algebra.

|Chapter22_Image_Turtle.jpg|A black screen with green text and graphics showing a square and a program that reads “FD 100, RT 90, FD 100”|Papert’s turtle graphics was a medium for exploring ideas in geometry.|Unknown|

## Geometry

Geometry is also a central part of secondary math education. Triangles, circles, angles, congruence, measurement, and the many bridges between these ideas and algebra, are a rich space for understanding how to model and reason about one, two, and even three dimensional spaces and shapes and their spatial relationships. In fact, Seymour Papert’s entire book, Mindstorms<papert93>, focused on how computers might be used to help children construct intuitive, practical models of geometry through programming, by controlling the direction and movement of a point, later described as a "turtle."

While it might seem less obvious how computing intersects with geometry, computing actually has a rich history of computer output on 2D screens that rigorously use concepts from geometry to create shapes, visualizations, and scenes. In fact, behind every graphic design, every digital illustration, every 2D or 3D video game, and even the graphical user interfaces that we use on daily are countless concepts from geometry. Therefore, geometry is at the heart of all of the visual experiences that we have with computers.

One of the simplest examples is in the visualization of algebraic equations as plots. For example, graphing calculators from the 1990’s were one of the first platforms that enabled people to quickly render algebraic functions on a screen, allowing students to see algebraic and geometric relationships visually. The monochrome screen in these calculators was essentially represented in computer memory as a two-dimensional matrix of pixel on/off values, where each pixel was referred to using the same geometric concept as a coordinate system `(x, y)` pairs corresponding to a particular location on the screen. And so in a very recursive way, coordinate systems are the foundation of all computer graphics, and what enabled graphing calculators to help math educators teach the concept of coordinate systems interactively.

Popular programming environments that enable 2D animation also rely heavily on applications of geometry. For example, in the Scratch programming environment, one frequent behavior that youth want to program is one character moving towards another. The command `point-towards` in a function helps implement this behavior, rotating one character toward another. This command is implemented with geometry and algebra: given the coordinates of both characters, the command calculates the angle of the right triangle formed between the two coordinates, and then sets the character’s rotation to that angle. The same idea is used throughout video games to implement behaviors like collision detection and camera movement in 3D games and virtually all animations in computer generated animated movies.

|Chapter22_Image_Fractal.jpg|A blue and orange fractal, with an infinitely shrinking spiral that looks like an octopus tentacle.|The Mandelbrot set, one of the world’s most famous fractal|Wolfgang Beyer/CC BY-SA 3.0|

Geometry is also part of an entire genre of art called fractals, which use algebraic functions to encode repeating patterns that are mapped onto two-dimensional displays of pixels. This genre uses a concept of a recurrence relation, otherwise known as a recursive function, to repeat geometric patterns at multiple levels. For example, the image above was generated by this:

`
next = previous * sin(previous)
`The recurrence relation for the fractal above, where the next plotted position depends on the previous plotted position.

This basic formula says that the next value to be plotted should be computed from the previous value multiplied by its sine, producing the infinitely repeating images above. That art — especially art that can often resemble the recurring patterns found in nature — can be represented by this simple expression and visualized by a computer, is another fascinating intersection between math, computing, and biology.

## Statistics

Statistics, while generally considered a distinct discipline from mathematics, is often taught alongside it. It is a discipline of data, distributions, probabilities, inference, and confidence. It uses mathematics in the same way that science and engineering does, but instead of modeling nature and technology, it models distributions, likelihoods, and measurements. It is one foundation of data science (which we will also discuss in the CS + Science chapter) and also central to much of the scientific discovery since it was first invented in the 19th century.

The history of computing generally did not engage with statistics at all. Rather, programs were deterministic, based on concrete, known values, and generally calculated things using well-defined mathematical expressions. But more recently, computing has embraced statistics in several ways to drive prediction and more intelligent behavior of computer programs.

One interaction is through ~data science~datascience, a vaguely defined practice that combines computing, statistics, and other disciplines, to try to answer questions about large data sets. For example, in science, oceanographers have gathered many terabytes of sample data about the temperature of different parts of the Pacific Ocean, trying to model and predict its warming. Statistics is central to extrapolating from the limited samples gathered in the ocean to conclusions about the all of the ocean, using concepts in statistics of samples, populations, distributions, and confidence intervals. Similarly, businesses use large data sets of web traffic to try to predict what visitors are searching for so that they can offer more targeted advertisements and product recommendations. These use statistics concepts such as probability to make informed guesses about where someone might navigate based on where a sample of other people have navigated previously. All of this requires using data, statistics, and code to write programs that analyze and make predictions.

Another area of computing that has embraced statistics is ~machine learning~ml, which we discussed earlier in the [Artificial Intelligence|ai] chapter. Early forms of artificial intelligence tried to represent intelligence symbolically through well-defined rules. Machine learning, in contrast, uses data to “train” functions that find statistical patterns in data using probabilistic reasoning from statistics, which are used to determine the functions’ behavior. Unlike the functions we’ve described throughout this book, which might only take one or two values as inputs, machine learned programs are functions that take large data sets and new observations and try to classify those new observations using all of the previous data (much like people do with new information based on their past experiences, although using entirely different inference techniques). None of machine learning would be possible without foundational ideas in statistics such as probabilities, distributions, and error.

|Chapter22_Image_Visualization.jpg|A data visualization showing a plot of unemployment by year, with multiple overlaid lines representing different cities, and D3 code below specifying the line chart.|A D3 visualization of unemployment data over time.|Mike Bostock|

Statistics and computing also overlap in their engagement with ~data visualization~datavis, which tries to represent data and relationships between data through space, color, and visual pattern. Statistics has relied on data visualization to help explain the patterns that it models; computing has enabled data visualization (especially interactive visualizations) that help data analysis search for these patterns manually, using human perception and domain expertise. All three disciplines -- statistics, computing, and the creative discipline of visualization design -- came together to make our modern world of interactive data visualizations often found in newspapers that have embraced data journalism like the [New York Times|http://nytimes.com] and [FiveThirtyEight|https://fivethirtyeight.com].

## Practices

In addition to overlapping in content, computing and mathematics also overlap in their practices. For example, the [Common Core|http://www.corestandards.org] standards describe eight standards, most of which are directly relevant in computer science as well:

1. _Make sense of problems and persevere in solving them._ This practice is essential in programming and algorithm design as well; such practices just manifest differently, with mathematics engaging problem solving around symbolic manipulation of mathematical structures and computing engaging problem solving around algorithmic process and data representation.
2. _Reason abstractly and quantitatively._ This practice is essential in programming as well; to write programs, students must inherently engage abstract symbolic representations of computation and frequently engage quantitative representations of ideas.
3. _Construct viable arguments and critique the reasoning of others._ This practice most often appears in debugging, where logical reasoning about program behavior is a crucial skill to be able to comprehend and change program behavior.
4. _Model with mathematics._ Many of the same modeling practices in mathematics are essential for modeling data and computation when writing programs.
5. _Use appropriate tools strategically._ Perhaps even more so than mathematics, using tools wisely in computing is essential to learning and success.
6. _Attend to precision._ Programming languages require similarly precise reasoning about symbols, structure, and notational manipulation as in mathematics.
7. _Look for and make use of structure._ Such practices are essential for both reading and writing computer programs, as structure is essential for communicating desired computation to a machine.
8. _Look for and express regularity in repeated reasoning._ This practice is essential to computing in the use of functions to avoid redundant computation and promote reuse of problems already solved.

And so while many of the concepts in mathematics can be quite different from those in computing, many of the skills overlap, at least at a high level. That said, it is not always the case that skills easily transfer. Persistence in an algebra problem may not transfer to persistence in fixing a bug in a computer program. Great teaching can help students see the overlapping practices in both domains, empowering students to build upon self-efficacy across both.

## Mathematics, Computing, and Critical Consciousness

Much of this book has explicated the ways in which computing has often ignored social context in perilous ways and examined ways of bringing context back into the technical foundations of computing. In the same way, many scholars have examined the ways that mathematics and statistics have long committed to the same decontextualized view of the world. Mathematics, largely concerned with pure abstraction, removes context from its ideas in the same way that computing does. Statistics, largely concerned with aggregate trends and likelihoods, often disregard the people represented by the data points in the margins. The field of Critical Data Studies is one community that has begun to examine the many intersecting oversights of math, computing, and statistics and their unintended consequences. For example, boyd and Crawford’s 2012 paper "Critical questions for big data: Provocations for a cultural, technological, and scholarly phenomenon"<boyd11> observed:

* Big Data changes the definition of knowledge
* Claims to objectivity and accuracy are misleading
* Bigger data are not always better data
* Taken out of context, Big Data loses its meaning
* Just because it is accessible does not make it ethical
* Limited access to Big Data creates new digital divides

These ideas, described in detail, observe how the semblance of objectivity in mathematics and statistics, when combined with large volumes of data, has numerous unintended social effects. Thus, while this whole book has interrogated these critical questions for computing, mathematics and statistics are also complicit.

# Teaching Mathematics with Computing

Teaching math through computing has been of emerging interest since the 1980’s. Part of this interest amongst teachers and education researchers is the seemingly many overlaps we described in the previous section. With so many aligned concepts, integration has always seemed inevitable. Seamless integrations, however, have been hard to develop. Many integration approaches have centered on computing as a medium for exploring mathematics that enables new math pedagogy, whereas others have explored the concepts in computing themselves, aligning them with concepts in mathematics.

One of the earliest explorations into integrating math and computing was Seymour Papert’s explorations into teaching geometry through programming<papert93>. From an educational technology perspective, the concept was simple: focus learners on a “turtle” and its movement; offer a simple programming language to determine the movement and direction of the turtle; and render a colored stroke wherever the turtle moved. Papert observed that even this simple collection of computing concepts was enough to explore a wide range of concepts in geometry, including shapes, angles, symmetry, area, dimensions, and congruence. Of course, as we discussed in previous chapters, Papert’s ideas were bigger than just coding and geometry: he viewed computing as an ideal medium in which learners could construct their own theories of geometry and other subjects, “debugging” their mental models of mathematics other phenomena that could be modeled with code into ever more precise models, perhaps eventually converging toward the widely accepted models used in math and science. Papert’s pedagogical premise was that computing gave learners a chance to develop “sufficiently correct” mathematical ideas, without being forced to immediately embrace the abstract, formal, and often impenetrable notations used by mathematicians.

Since Papert expressed this vision, researchers have explored many similar media for enabling learners to explore mathematical ideas. For example, any programming language, but particularly those like Scratch that have a direct lineage from Papert’s vision, can be used to directly explore coordinate systems, angles, mathematical expressions, often without engaging mathematics without engaging mathematics notations. Some platforms engage math notations more directly. In the 1990’s, for example, the portable, battery-powered Texas Instruments TI-80 graphing calculator became a ubiquitous platform for formulas, plotting, and simple mathematical computer programs, while also creating new social dynamics around personal and group computing<doerr00>. These early platforms evolved into web services such as [Wolfram Alpha|https://www.wolframalpha.com], which offers a platform that fully embraces math notations in computational terms, enabling learners to explore mathematical ideas interactively<dimiceli10>. Other platforms such as [Desmos|https://www.desmos.com], take these same ideas but situate them in the teaching and learning paradigms, enabling teachers to directly address particular concepts in math with scaffolded activities<liang16>. Some researchers have also begun to explore applications of virtual and augmented reality to reasoning concretely about quantities, counting, and number systems<nersesian20>.

As a medium for learning mathematics, computing has many strengths and weaknesses. Some studies have found, for example, that computing’s interactivity and immediate feedback is one of its greatest strengths relative to paper and pencil or whiteboard<goldenberg18>, and that this interactively seems to enable students to more seamlessly move between levels of abstraction in mathematics by making different levels of abstraction and their meaning concrete<rich19>. But other studies have found that teachers’ struggles to comprehend algorithmic ideas such as selection, repetition, sequencing can also lead to distraction, putting learner and teacher attention on debugging control structures rather than focusing on the mathematical ideas that they are expressing <foutz19>. Computing as a medium can also come with hard constraints and limit teacher agency in shaping instruction. For example, Texas Instruments strongly discouraged open source and reverse engineering, even suing students who tried to open the calculator platform to new uses for learning; and platforms like Desmos, Alpha, Scratch, and others, are often run similarly, as black boxes, centrally controlled, with little room for teacher voice about how the platforms evolve to meet the needs of students and teachers.

Whereas most integrations have viewed computing solely as a medium for mathematics, others have more directly explored the intersecting ideas in math and computing. Perhaps the most notable is the [Bootstrap Algebra|https://www.bootstrapworld.org/materials/algebra/] curriculum, which has deeply explored the intersection of functions in mathematics and functions in computing. The primary focus of the curriculum is to engage word problems in mathematics, scaffolding learners’ interpretation of the problems, helping learners to translate the word problem into a computer program that computes the answer<schanzer15>. This simultaneously engages modeling skills in mathematics (representing word problem concepts as variables and relationships), while also engaging computation (the storage and symbolic manipulation of data through function application). Research by the Bootstrap team has found that students significantly improve on their ability to solve word problems, even after removing scaffolding<schanzer18b>. Research by independent evaluations also show significant improvements in student comprehension of functions and variables<wright13>.

Other similar integrations are emerging for other topics within mathematics. For example, the Bootstrap team has also developed a curriculum for [Bootstrap Data Science|https://www.bootstrapworld.org/materials/data-science/], examining populations, sampling, distributions, descriptive statistics, statistical inference, and probabilities, all by writing programs that manipulate distributions of data in interactive, concrete ways. Others have explored similar skills in culturally responsive media such as the game Beats Empire, which affords data collection, visualization, and analysis, suggesting the potential for games to enable emerging statistical literacy<basu20c>. Some researchers have even returned to Papert’s original explorations into geometry, finding that Scratch programming centered around the angle of character movement led to student insights that did not occur with static representations of angles on paper<germia20a> and that focusing Scratch programming on movement through a coordinate system supported more precise  reasoning about direction, magnitude, and sign when compared to paper<germia20b>.

All of these recent explorations into math and computing integration validate the early theories of Papert and other educators, but in nuanced ways: they show that computing can be a powerful medium for exploring mathematics interactively, but only in the presence of careful scaffolding, teacher mastery of computing media, and enough teacher agency to harness computational media for learning.

## Unit Sketch: Examining mathematical modeling

As the overview above shows, there is a long rich history of explorations of integrations between mathematics and computing. Most of these integrations engage the overlapping concepts of the disciplines, such as calculation, quantity, expressions, and functions, but also the many overlapping practices, such as attention to precision.

In this unit sketch, we engage these same ideas, but in ways that make space for critical conversations about modeling in both computing and math. It achieves this by situating algebra in computational context, enabling youth to interrogate the limits of models in interactive and culturally responsive ways. By the end of the unit students will be able to:

1. Identify the algebraic expressions in a computer program
2. Reliably construct algebraic expressions in a computer program
3. Reliably manipulate algebraic expressions in a computer program
4. Critique the limitations and potential impacts of particular algebraic expressions
5. Find examples of mathematical models in the news

The unit begins by engaging youth in examining the differences between algebraic syntax, expression syntax, and natural language.

=
### Session 1: Natural language vs. math syntax
* Introduce [Wolfram Alpha|https://www.wolframalpha.com/] as an elaborate calculator. 
* Explain the alignments and misalignments between Alpha expression syntax and expression syntax in mathematics by comparing the natural language and math syntax query modes. A starting question might be “what is the weight of an orange?”
* Encourage students to write natural language questions that would make sense to a human, but will foil the efforts of the calculator. What do they notice about the kinds of questions they can ask a natural language calculator? What do they notice about the questions they can ask in math syntax?
* Prompt students to develop a set of rules for asking in natural language vs. math syntax in the interface. Can they express the rules? Can they break the rules? If so, how might they modify those rules so that they are harder to break?
* Encourage students to continue to try and test the rules they’ve  written and work as a team to  develop a codified set of rules. 
=

The goal of this first session is to help students get comfortable with the many different notations at play in Alpha: mathematical notations, the computational notations that Alpha adds, and the natural language notations embedded in Alpha’s query language. By having students explore and discuss the limitations of and differences between math syntax vs. natural language, they will hopefully see that notation is at some level arbitrary and designed

In the next session, students will take the rules they discovered and start to apply them to questions they develop about a particular domain.

=
### Session 2: Applying math syntax
* With students, co-construct a domain of focus for applying algebraic expressions. For example, if the domain was grades, you might discuss grading on a Gaussian curve or using step functions to determine grades. If the domain was physics, you might discuss parabolas as models of trajectories objects.
* Using [Wolfram Alpha|https://www.wolframalpha.com/] or a graphing calculator like [Desmos|https://www.desmos.com/calculator], build the expression together using various operators and enter it into the graphing calculator  to observe visualizations.
* Begin a discussion about the concrete implications of the abstract representation of the domain: what would it mean to adopt the expression in a computer program as part of a system or policy? For example, in the grading domain, what are the implications of grading on a curve or using step functions? What do the models miss about the world? Have students capture their biggest concerns and connect them to the particular mathematical model used
=

This second session builds upon the syntactic explorations in the first by having students explore the application of mathematical models in personally relevant contexts, positioning mathematical models as abstract representations of the world. The next session builds upon this by having students select a domain of specific interest to them and begin developing their own mathematical models.

=
### Session 3: Group and explore a question
* Have students find peers with shared concerns or questions in a domain they want to explore in more depth. Some students will be more comfortable with this, and some will need some encouragement or a few question prompts that they might find interesting. Develop a set of possible options for students who cannot think of their own domains.
* Challenge students to build an algebraic expression that models something in their domain, but tries to achieve some higher degree of fairness than existing models in that domain. Offer prompts to your students like:
** Define what fair might mean in this context.
** Who benefits from this definition of fair?
** Who suffers from this definition of fair?
** What changes to the expression might improve fairness?
* Organize the rest of the session as studio time to work on their expression in Alpha, helping students express their ideas mathematically and syntactically in Alpha, and facilitating implementation and debugging.
=

This third session builds on the scaffolding in the second, helping students see algebraic expressions as not only models of phenomena in a domain, but models in problems of personal relevance that have implications in the world. This also positions students as designers of mathematical models, challenging them to analyze the unintended consequences of models.

In the next session, students will use the models they built in the third session to present to their peers, shifting to a critical stance and learning to provide constructive critique.

=
### Session 4: Presenting and critiquing Models
* *Summative assessment*. Have teams prepare a short presentation of their domain and algebraic expression and their argument for why they are more fair than the original one presented and any other strengths and weaknesses they perceive in their proposed model. Co-construct a rubric for how the presentations will be evaluated.
** This is _responsive_ because it centers students’ chosen domains and models.
** This is _participatory_ because it gives students’ agency in shaping what qualities they believe are important in their presentations.
** This is _educative_ because it offers students an opportunity to reflect on how to communicate about algebraic expressions and fairness.
* After preparation time, have each team present.  After the presentation, have their peers  constructively critique what they liked, struggled to understand, and wondered about the model.
=

This fourth session, rather than being generative, is evaluative. This places a burden on students to be mindful of constructive critique, but an even greater burden on teachers to be thoughtful about how to scaffold critique and provide feedback about the quality of students’ critiques, such as their insightfulness and constructiveness.
The last session pivots again, building on what they have learned by critically examining mathematical models in current events. 

=
### Session 5: Finding mathematical models in the news
* In new groups based on student interest, ask students to identify articles or examples of mathematical models in current events, and if possible, additional articles that examine the model from an alternate perspective. For example, such stories might concern economic projections, science journalism, sports, or any other domain that uses mathematics for modeling and prediction. Alternate stories might question analysis of the model, or provide a different interpretation.
* Depending on the size and composition of the class, it might be helpful to have each member of the group take on a different role in this research (e.g., scribe, designer, speaker).
* After identifying a model, ask students to prepare a short poster or slide sharing the model and who benefits from the model and who is harmed.
* Once the groups have made their visual, have students participate in a gallery walk to see examples that other groups have identified, prompting them to identify trends that they observe across the multiple examples.
* Guide a class discussion on what trends students observed between different mathematical models and their applications. Are there issues of fairness that arise in all models? What makes models difficult to interpret?
=

Unlike prior integrations, this unit sketch has the benefit of directly integrating math and computation in a social context and centering students’ perspectives and values in shaping the model. It also allows them to explore places that those models are being used in the world around them. By engaging mathematics, computing, and society in this culturally responsive way, it promises to help students see the direct connections between mathematics, computing, and the world.

This sketch assumes some facility with algebra and also avoids doing any direct instruction on Alpha, which is complex in its own ways. It might be followed by a more in-depth unit using Alpha as a way to explore Common Core concepts in more depth.

# Conclusion: Bringing mathematics to life

While it is certainly possible to teach mathematics without ever mentioning computers, it is quite clear that integration opportunities abound. Mathematical notations, the computation implicit in most branches of mathematics, and the many borrowed mathematical concepts in computing make the disciplines rich with overlap.

But in some ways, the overlap is more than opportunity: as Papert observed, computers have a way of making mathematics and statistics interactive, immediate, concrete, and tangible, helping students see how seemingly inert formulas, equations, and proofs can actually be quite engaging when concrete data moves through them. And algorithms in particular can reveal these connections in engaging and fascinating ways, by demonstrating the mechanics behind mathematics. Mathematics teachers might therefore view computing as not just adjacent to mathematics, but a way of bringing mathematics to life.

The question is how. While many have offered creative ways, it’s clear that we still have much to learn about how to bring these two disciplines together in a way that simplifies math education rather than complicating it. Teachers will be central to tinkering with these opportunities to find solutions that work in practice.

@standardsHeader
@standardsBlurb

@cstaHeader
@csta3ADA11
@csta3ADA12
@csta3BDA05

@toleranceHeader
@tolerance12
@tolerance13

@teacherHeader
@teacher1d
@teacher2b
@teacher2c
@teacher4b
@teacher4c
@teacher4d
@teacher4e
@teacher4f
@teacher4g