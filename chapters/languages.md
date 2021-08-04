=
@keyIdeas
* Programming languages were the first computer user interface, and are still the most powerful, expressive, and complicated user interfaces. 
* Programming languages, as a user interface, borrow metaphors from natural languages, but most reflect the rigidity of mathematics
* Programming languages are designed by people, and therefore embody their designers’ values and biases
* Communities, which are a central part of supporting and evolving programming language platforms, also reflect their designers’ values and biases
* Teaching who created programming languages and why can help learners understand that languages are invented and imperfect.
=

In our earlier chapter on [Encoding Intelligence|intelligence], we talked about the idea of machine instructions as low level operations that computers perform, such as retrieving a value from memory, storing a value in memory, adding values, subtracting values, and jumping to different instructions of a program. We noted how these instructions are a powerful set of logical operations, but also only capable of approximating human intelligence. Our chapter on [Computers|computers] discussed how these instructions are implemented by hardware components like central processing units, which try to execute these basic operations as quickly as possible, and how entire economies have been restructured in order to produce and recycle these hardware components. Our chapter on [Operating Systems|operating] discussed how these instructions and programs are managed and executed to efficiently utilize a computer’s limited resources, and in doing so, they have become gatekeepers to who can access computers, what applications they can run, and what data they gather about our use. Throughout all of these systems, machine instructions are the central vocabulary with which we encode intelligence in computers, in software and in hardware.

However, we have yet to talk about where these instructions come from. Who writes them? How do they write them? How is it possible to express some idea for an application--whether as simple as a mathematical formula or as complex as a new social media platform--as code for a computer to execute? The answer is ~programming languages~lang. Programming languages are user interfaces for telling computers what we want them to compute and how they should compute it by writing down instructions in a pre-defined notation.

% TODO Immediately after programming language definition, give an example of instructions that are and are not PL. Some in English and some in a programming language.

One way to understand what programming languages are is to distinguish them from other ways of telling computers what to do. For example, most of us, most of the time, control computers by using *graphical user interfaces* (GUIs). We move windows, click or tap on buttons and icons, and drag and scroll to select, find, view, and edit content using applications. GUIs were first conceived in 1945 by Vannevar Bush, who headed the U.S. Office of Scientific Research and Development<nyce91>. He imagined a machine called a Memex<bush45>, which would allow people to freely explore a collection of documents, follow links between them, and create documents of their own. His notion of computers as a workstation for working with information was radically different from the mainframes at the time, which all required carefully constructed computer programs, written in programming languages. Programming was slow, laborious, and error prone, and Bush imagined computing to be something much more interactive and accessible than code. Bush’s vision inspired a series of innovations, including Douglas Englebart’s NLS system, which contributed a networked computer with keyboard, mouse, display, and applications<englebart62>. Englebart’s demo inspired inventors at Xerox PARC, an industry research lab, who created the first GUIs and envisioned ideas like windows, scroll bars, buttons, files, folders, and applications<hiltzik09>. Xerox PARC’s demonstrations inspired Steve Jobs, who brought the ideas to Apple Computer, which inspired Microsoft, and led to the ubiquity of GUIs that we all use today, quickly leaving programming languages behind as the dominant way of using a computer.

Why then, do we still use programming languages? There are two essential features of programming languages that GUIs have not replicated<blackwell02>:

* *Expressiveness*. First, programming languages allow us to express _any_ kind of computation--within the limits of what is computing, as later chapters will discuss--whereas GUIs only allow us to do things that they were explicitly designed to do. For example, one can configure Facebook in a variety of ways by changing its settings, but only within the boundaries that Facebook has built into the website. To create new configuration settings, and change Facebook’s behavior in response to these settings, one must change Facebook’s code, using the programming languages in which that code is written. 

* *Automation*. Second, programming languages enable us to give instructions to a computer about what to do in the future, whereas GUIs primarily allow us to tell a computer what to do now, in the moment we’re using them. For example, if I had a list of 1,000 first and last names formatted in `first, last` order, and wanted to reverse that order to `last, first`, using a GUI I would have to manually edit each name, potentially making mistakes, and taking considerable time. By writing a program that explains to a computer how to reverse a list of names (e.g., read a line, split it into two parts by the comma, then print the second part, a comma, then the first part), I could process the names in less than a second, and reuse that program to do the same task at any point in the future.

Because of these two features, programming languages are far more powerful than GUIs, allowing us to imagine infinite possibilities of computer behavior, and have those behaviors run automatically, without human intervention.

Unfortunately, these powers of programming languages come with many challenges. Learning how to use a new iOS or Android application can take minutes or hours, much like learning to use a new kitchen tool; learning to use a programming language can take months or years, much like learning to play an instrument. Therefore, the history of programming language design has been primarily shaped by individuals and groups of people who faced difficulties expressing some kind of computation, imagined a new and easier way of expressing it, and designed a programming language to support that expression. As they did this, they were exercising particular values around what kinds of computation needs to be expressed, while ignoring other kinds of needs<arwajo20>.

This power, and the narrow set of values around which it was cultivated, have also created a cultural impression that programming languages are complicated. And in some ways, they are--they’re often poorly designed and poorly explained, and many of their users gatekeep access to them, wrongly insisting that people who aren’t "smart" enough to get them shouldn’t be using them<mccartney17>. This toxic history has preemptively eroded many people’s belief in their ability to learn to code, including teachers, despite evidence that even brief encounters with programming can quickly flip such beliefs<charters14,yukselturk16>.

In this chapter, we will try to dispel the myth of programming languages as an impenetrable mystery. We’ll do this by showing where they came from, who created them, and why, and then discuss how teachers might help students overcome the same myth. In subsequent chapters, we’ll discuss some of the major features of programming languages and how they are used to construct programs.

|Chapter10_Figure02_PunchcardMissile.png|A punchcard with a parabola and missle behind it.|The first programs computed missle trajectories.|TODO|

# Punch Card Programming Languages

To understand programming language design, it can be helpful to understand their history. Recall that all things in a computer, including programs, reduce to machine instructions. Let’s consider an instruction "jump if equal," which we’ll abbreviate `je`--most CPUs have an instruction like this, and for good reason, as it’s useful for all kinds of things. For example, if an application wants to check if a password a user has entered is equal to the password on an account, or if a coupon code entered is one of a set of valid coupon codes, `je` would help by having the computer decide if one value is equal to another, and then jumping to different instructions depending on whether it is. Ultimately, all instructions are encoded as bits in a computer’s memory, so this instruction might be encoded by some arbitrarily selected series of bits. For example, a computer architect might decide that the number `5`--`101` in base 2--will represent `je`, meaning that a programmer that wants to write the `je` instruction needs to write the number `5`. Computers need some way to distinguish instructions; encoding different types of instructions with specific values is one way to do this.

Now, imagine a CPU with 50 kinds of instructions. If `je` is represented by `101`, the other 49 instructions might be represented by other specific values; a program might then just be a sequence of numbers, each representing a particular type of instruction. Now imagine being a programmer writing these sequences of numbers, each representing a particular step in a program. Not only would that take a long time, but it would be very error prone: getting even one of these binary digits wrong could make your whole program work incorrectly, and require you to figure out which one (or possibly even more than one) of those digits was incorrect. This process, which we will later describe in the [Debugging|debugging] chapter, can be slow, difficult, and frustrating. And yet, this is how the first computer programming languages worked: entering instructions, one at a time, in the exact encoding used by the computer to process them.

*Punch cards*, and the programming languages that were invented for them, tried to prevent these errors and debugging difficulties by instead allowing programmers to write programs in terms of more "human readable" instructions like `je` (which is not particularly human readable, but is certainly more so than an arbitrary sequence of bits like `101`). The approach was to create a physical paper card, often about 7"x3", with a 2-dimensional grid of punchable holes. The rows in the grid represented a list of instructions to be executed; the columns represented specific types of instructions to execute. This way, rather than entering instructions one binary digit at a time, people could select the type of instruction they wanted in the next step of the program by moving to the next row of the card and punching a hole in the column corresponding to the type of instruction they wanted. People wouldn’t punch holes by hand; instead they would often use a machine with a keyboard that made it easier to punch specific numbers and characters. This system allowed people to think about their programs in terms of the higher level operations (like `je`) rather than the lower-level bits that the computer used to process data.

The values behind the invention of punch card programming were relatively straightforward: computers were being used to calculate missile trajectories in war time and to make costly business decisions, and so preventing errors was of the utmost importance. Had computers first been used to procedurally create digital art, or to connect communities, error prevention might have been a lower priority, and we might have instead ended up with languages that were less about calculation, but more about surprise and serendipity.

|Chapter10_Figure03_COBOL.png|Grace Hopper looking down at a document, with COBOL instructions written on paper behind her.|Grace Hopper invented the first high-level programming language.|TODO|

# Textual Programming Languages

When we look at punch cards now, we might be able to imagine how this was easier than entering `1`’s and `0`’s into a computer’s memory. However, it’s still hard to imagine it as easy to express. And it wasn’t: many mistakes were still possible and many of the computational ideas that people wanted to express, such as complex algebraic formulas, were still as difficult as ever to encode into machine instructions: one had to translate what was essentially algebra, calculus, and other mathematical calculations into low-level operations like `add`, `subtract`, `multiply`, `divide`, `load`, and `store`. And even learning to read punch cards, use punch card machines, or compete for the shared resource of the mainframe all required access to training and expensive equipment, preventing most people from gaining access to a computer or its primary programming interface.

*Textual* programming languages sought to solve these problems by allowing people to express mathematical ideas more directly<knuth80>. Their basic concept was simple: have people write programs in a textual format that was closer to English and mathematics, and then have another computer program translate that text into lower-level machine instructions automatically. For example, to find the average of two numbers in machine code might require a sequence of low level operations, and somewhere to store results. (In this example using a pretend language, we’ll imagine results are stored in two places to store numbers in a CPU, which we’ll call `x` and `y`, and that the result of any calculation gets stored in `x`):

`
Read a      (Read a value into a)
Read b      (Read another value into a)
Add a b     (Add a to b and store the result in a)
Divide a 2  (Divide the sum by 2)
` A very low-level depiction of computing the average of two numbers.

The program above, given any two values, will store the average of the two in `x`. While it works, it is a very verbose way of doing the same thing with basic mathematical notation:

`
(a+b)÷2
` Mathematical notation for computing an average.

If one knows the mathematical notations, this second option is much easier to express than the first. What makes this easier is the idea of programming language *syntax*, borrowed from linguistics. In linguistics, syntax refers to the rules of grammar: for example, in English, there is a rule that says that the object of a verb usually comes after the verb, making sentences like _I food ate_ invalid, and sentences like _I ate food_ valid. In programming languages, the idea is similar: syntax defines the rules that make a program valid. For example, the formula above, `(a + b)/2`python is valid Python code, but `a+b)/2`python is not, because it is missing a left parenthesis. Syntax, whether in a natural language or a programming language, defines how statements must be formatted grammatically to be valid.

However, there is one major difference between syntax in natural language and syntax in programming languages: in natural languages, the recipient of the text is human, and can probably judge the meaning even if the grammar is wrong. For example, "I food ate" really only has one likely meaning, even though the verb is in the wrong place. And so natural language is resilient to syntax errors because humans are intelligent and make inferences about meaning from context. Moreover, humans can playfully redefine the rules of grammar, evolving a language over time. Programming languages, on the other hand, are not resilient to errors: `a+b)/2` means nothing in Python, because Python does not know what someone meant: it could be they meant (a+b)/2 or a+b/2. Instead, it just responds with:

`
SyntaxError: unmatched ')'
`

Just as in mathematics, order of operations matters: the first adds a and b before dividing by two, whereas the second divides b by 2 before adding it to a. The inability for a programming language to distinguish between these two meanings can be a great source of confusion to learners, who often expect computers to be the same kinds of intelligent inferences about language that people do. Of course, programming languages do not, unless their creators program them with such intelligent behavior.

In addition to syntax, a key part of textual programming languages is translating a program from the more human readable syntax into the instructions that a computer can execute. This translation requires defining a programming language’s semantics, or what the syntax means computationally. For example, for some programming languages `a+b` means "add a and b"; but in other languages, when `a` and `b` store sequences of characters (otherwise known *strings* or *text*) instead of numbers, the `+` means "concatenate the two strings into a single string" (where "concatenate" means to link two things together in a sequence). These semantic rules are key to translating a program written in a textual programming language into machine instructions that a computer can execute. These rules are encoded by a special computer program called a *compiler* (or sometimes a *translator*). Compilers use the semantic rules of a language to convert code in a programming language into machine code. For example, in the case of mathematical expressions, we already had a tool from math education: the order of operations (parentheses, exponents, multiplication, division, addition, subtraction), commonly summarized as the acronym PEMDAS. This rule of mathematical syntax, tells both the person writing the mathematical expression and a compiler, the order in which the program written above will execute: 1) first, translate the expression in the parentheses, 2) within the expression, translate the addition, 3) then translate the division. If one follows this order, one ends up with the exact sequence of machine instructions in the example above. Therefore, compilers automate the work that a person using punch cards used to have to do manually, translating higher level descriptions of computation into lower level machine code.

The first textual programming language was created by Grace Hopper in 1953<beyer12>. Before that, she had tried to enlist in the Navy, but was told she was too old at the age of 34, and that her role as a math professor at Vassar College was too valuable. She eventually fought her way in, and was assigned to the Bureau of Ships Computation Project at Harvard University, where she served as a programmer of the Mark I computer. In 1949, she was an experienced programmer, and left for the Eckert-Mauchly Computer Corporation to develop the UNIVAC, the first commercially available computer. She described one of her key contributions to the team:

"
So I decided data processors ought to be able to write their programs in English, and the computers would translate them into machine code.
" Grace Hopper

She worked on the first compiler to implement this vision in 1952, translating mathematical notation into machine instructions. These early prototypes of compilers led to a conference in 1959, and a committee trying to envision more standardized ways of expressing computation; Hopper served as an advisor on that committee, which worked together to define the language COBOL (an acronym for COmmon Business-Oriented Language)<glass99>. The program above, in COBOL’s syntax, would be written:

`cobol
COMPUTE SUM = (a + b)
DIVIDE SUM BY 2 GIVING AVERAGE
` A COBOL program that computes the average of two numbers.

COBOL, therefore, didn’t use the same mathematical syntax, instead defining a syntax grammar that followed a pattern of `COMMAND EXPRESSION...`, where each `COMMAND` had a specific number of required `EXPRESSION`s, where an expression could be named variables that stored values, or arithmetic expressions that referred to named variables. Variables, in these cases, were not like variables in algebra, but rather, containers to store values in a computer’s memory.

Ultimately, all textual programming languages, starting with COBOL, built upon Hopper’s metaphor of programming languages as natural languages{After several years working on COBOL, Hopper was recalled back into the Navy, eventually being promoted to rear admiral, one of the U.S. Navy’s few women to become admiral.}. Of course, programming languages only have superficial similarities to natural languages. Programming languages are unforgiving in syntactic compliance: one can communicate a somewhat ungrammatical sentence in a text message to a person ("LOL, TTYL?"), but still have its meaning be properly inferred, but a program that violates a programming language’s syntax (the COBOL command `DIVIDE SUM 2 AVERAGE` from the example above, but with no `BY` or `GIVING`) can’t be interpreted at all, even though the context might make it clear to a person what is intended. In this sense, compilers are unable to use context in sophisticated ways to interpret meaning. Additionally, programming languages are ultimately about precisely telling a computer what to do, whereas natural languages are rarely about unambiguously communicating step-by-step procedures. So while the metaphor of programming languages as natural languages has lasted, it is not a particularly productive metaphor. Instead, we might think of programming languages as notations that encode mathematics and logic, which happen to resemble natural languages in superficial ways.

|question.jpg||TODO Something conveying how certain values like speed, efficiency, and mathematics are imbued into programming language design. Consider Python as an example, since this is what the book uses.||

# Programming Languages Have Values

COBOL emerged from a particular set of values and problems: Grace Hopper had a vision for writing in something resembling _English_, not Spanish, Japanese, Chinese, or other languages with distinct grammars and conventions. This erected immense barriers to anyone not fluent in English to learn COBOL or any other language since. The committee that shaped it was concerned with expressing _mathematical_ computation, not the myriad of other things that we now create with computers, such as video games, animations, music, social experiences, or data, attracting people interested in expressing mathematical and scientific ideas, rather than artistic ones. Programming languages, therefore, embody a particular set of assumptions about what is being expressed, who is doing the expressing, and what matters about what is being expressed. For example, COBOL prioritized preventing errors over fostering creativity; it prioritized English speakers over speakers of other languages; it prioritized discrete math over statistics; it prioritized resembling natural language over resembling mathematics.

The history of programming languages since the 1950’s is therefore one of specific people who found that their values and what they wanted to express were not supported by existing programming languages. Let’s consider many of the popular languages from recent history, and how each was a response to the ones that came before it.

The *FORTRAN* programming language (1953) was far less concerned with looking like English and far more concerned with looking like math<backus78>. The average of two numbers in FORTRAN might look something like:

`fortran
PROGRAM AVERAGE
    REAL:: A, B, RESULT
    READ A
    READ B
    RESULT = (A + B) / 2
    WRITE RESULT
` A FORTRAN program for computing an average.

In the program above, the only math is on the line with `(A + B) / 2`. The rest of the program tells the programming language what type of data is stored in the variables A, B, and SUM, and include commands for reading data from the user and printing out (on a console, or even a printer). Symbols like / were chosen instead of ÷ because keyboards did not have buttons to easily enter mathematical symbols, since keyboards were designed for writing natural language, not math. FORTRAN’s designers valued efficient, compact, mathematical expression of calculation on data using Roman characters and English words.

The *C* programming language (1972) was designed by Americans [Dennis Ritchie|https://en.wikipedia.org/wiki/Dennis_Ritchie] and [Ken Thompson|https://en.wikipedia.org/wiki/Ken_Thompson] to make it easier to create programs that mixed higher level functions like those in FORTRAN with machine instructions<ritchie93>. C syntax intentionally looked quite similar to FORTRAN, borrowing much of it’s syntax. The quadratic formula would be something like:

`c
int average(float a, float b) {
    return (a + b) / 2;
}
`A C program for computing an average.

The only difference here is the use of what C called a function, which was a way of giving a name to some algorithm so that it could be reused by name for other programs. C’s designers valued speed of program execution over all else: they were using C to build operating systems, which needed to efficiently use limited computing resources. Speed was so important, C even allowed people to write machine instructions directly as text.

% Verify functions link
*C++* (1979) was created by [Bjarne Stroustrup|https://en.wikipedia.org/wiki/Bjarne_Stroustrup]<stroustrup96>, a Danish computer scientist, after he fell in love with the ideas of "object-oriented" programming languages first found in the Simula language<holmevik94>. "Object orientation" (which we discuss in a [later chapter|functions]) was the idea of organizing different parts of larger programs into named groups that combined data and functionality, exposing parts of that functionality to other groups of code. Simula programs were too slow to execute to build production software, and so Stroustrup designed C++ to have the speed and syntax of C, but the object-oriented features of Simula. A quadratic formula therefore looked just like it did in C, but with the option of storing a function inside of a "class" definition, which gathered many related functions into a shared space:

`cpp
class Math {
    public:
        int average(float a, float b) {
            return (a + b) / 2;
        }
};
`A C++ program for computing an average.

These choices valued speed, backwards compatibility with C, but also coherent organization of large amounts of code, which were increasingly common in larger software projects at the time.

*Python* (1989), designed by Dutch programmer [Guido van Rossum|https://en.wikipedia.org/wiki/Guido_van_Rossum], was a [response|https://python-history.blogspot.com/2009/01/brief-timeline-of-python.html] to many of the complexities of languages that came before it, instead envisioning a language that was, in his words, "beautiful", "explicit", "simple", and "readable". These words were a rejection of the complex, verbose syntax of languages like C and C++, opting to use whitespace to convey program structure instead of the delimiting characters like curly braces `{}` and `;`. An average in Python would be something like:

`python
def average(a, b)
    return (a + b) / 2
`A Python program for computing an average.

This looked different from C in many ways, stripping away delimiters and data type declarations.

*Java* (1991) was created by [James Gosling|https://en.wikipedia.org/wiki/James_Gosling], a Canadian computer scientist, who was trying to design a programming language for creating software for interactive televisions in the 1990’s while working at Sun Microsystems, a company that created operating systems and computers. He needed something that could be written once, but executed on a variety of television hardware platforms. Java looks a lot like C and C++ because Gosling and his employer wanted many people to use it, and they believed mirroring the syntax of C/C++ would reduce learning barriers (which mostly was not true). An program for computing an average in Java might look something like:

`java
public class Math {
    public static int average(int a, int b) {
        return (a + b) / 2;
    }
}
`A Java program for computing an average.

Gosling valued [portability|https://thereaderwiki.com/en/Java_(programming_language)] of code to a variety of platforms and error prevention, with less concern for speed.

Whereas the programming languages above largely focused on business applications, other languages have emerged from academic computer science, focused less on speed and large software projects and more on mathematical correctness. For example, *Lisp* (1953), led by [John McCarthy|https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist)], an American computer scientist and founder of artificial intelligence, emerged around the same time as FORTRAN. McCarthy was less interested in calculation, and instead wanted something that was suitable for exploring artificial intelligence. Lisp had a devotion to the basic algorithmic idea of processing lists of symbols (hence, LISt Processor), which at the time, were a dominant way that computer scientists believed they might replicate human intelligence. It’s syntax was quite simple--every part of a program was a list of symbols wrapped in parentheses, an this program that computes an average:

`lisp
(defun average (a b) (divide (add a b)))
`A LISP program for computing an average.

This syntax, which looked remarkably different from more popular languages, was also much simpler: everything is a list of symbols between parenthesis, where the first symbol represented a function to compute, and the remaining symbols were the inputs to the function.

*Haskell* (1985) emerged from a community consensus within programming language researchers about building a shared platform for exploring the idea of pure "functional" programming languages, inspired by LISP. The functional here refers to mathematical functions, which take a set of inputs and produce some output; for example, here is how one might compute an average in Haskell:

`haskell
average :: Float -> Float -> Float
average a b = (a + b) / 2
`A Haskell program for computing an average.

In this example, the first line says that two floating point numbers are given and mapped to a third floating point number. The second line explains how this mapping works, taking a and b, and computing the average. The key feature of languages like Haskell is that everything is a pure function, in that functions only compute things. This was different from other languages, where functions could both compute things as well as have *side effects*, such as changing the contents of memory, sending messages to other computers. Functional purity had the benefit of preventing many types of errors, both by reducing the complexity of programs, but also by harnessing the power of mathematical proofs about functions to create tools to automatically find errors in programs. But this also imposed a burden on the programmer to find a way of expressing the idea in pure functional terms. Therefore, the underlying values of the language concern a kind of mathematical simplicity.

While the history of programming languages has largely been driven by concerns of speed, error-prevention, and mathematical purity, there have been hundreds of programming languages invented to support other kinds of expression. For example, in the late 1990’s, professor [Randy Pausch|https://en.wikipedia.org/wiki/Randy_Pausch] and his team created *[Alice|https://www.alice.org]* (1999)<cooper03>, which sought to simplify the creation of interactive, animated 3D virtual worlds. Most notably, rather than having programmers use a text editor to write programs character by character, it used a graphical user interface that allowed users to drag and drop parts of programs, inspired by novel editors from the 1980’s<teitelbaum81>. This drag and drop interface, now widely known as a block-based editor{Note, however, that this was just a change in editor, not the language. It would have been possible to write Alice programs character by character, had its creators decided to offer such a feature. This confusion persists with new terminology around "block-based languages"; here we prefer the more accurate phrase "block-based editor".} prevents users from making syntax errors, which can be a major barrier to learning a programming language. Here’s an example program that animated a character:

|Alice.jpg|A screenshot of the Alice programming environment showing a code editor with several animation commands.|The Alice programming evironment, which was designed for 3D animation, not math.|Alice.org|

Rather than focusing on mathematics, Alice included language ideas that enabled animations to concurrently execute. It’s designers valued the expression of stories and emotion.

*Scratch* (2003), led by [Mitch Resnick|https://en.wikipedia.org/wiki/Mitchel_Resnick]<maloney10>, mirrored the goals of Alice and many other creative platforms that had come before it, attempting to offer a language that would allow youth to tell interactive stories on two-dimensional canvases. Scratch used many similar language ideas to C and Java, but like Alice, included a drag and drop editor that eliminates the possibility of syntax errors. Here is an example Scratch program that animates a character:

|Scratch.jpg|A screenshot of a Scratch program showing a cat on a stage and a program that moves 10 steps and waits on repeat then says Let's Dance"|The Scratch programming environment, designed for 2D animation.|Steahpia Hladik|

% TODO Give a data science example, such as Vega Lite for data visualization

Whereas most languages have focused on supporting mathematical computation, and large system creation, and Scratch and Alice focused on creative expression, other languages have addressed issues of marginalization. For example, *[Quorum|https://quorumlanguage.com]* was designed by American computer scientist [Andreas Stefik|https://web.cs.unlv.edu/stefika/], who wanted a language that reflected evidence about programming language learnability, but also a language with a simple enough syntax that it could be easily read by *screen readers*, tools that people who are blind, low vision, or dyslexic might use to convert text on a computer to synthesized speech. This allowed people to learn to program independent of their abilities, unlike all other programming languages that have been created. Here is a simple average in Quorum:

`quorum
action average(number a, number b) returns number
    return (a + b) / 2
`

Quorum, unlike essentially all languages before it, values usability and accessibility.

While this abbreviated history reveals that programming language designs ultimately emerge from particular values and goals, it also reveals that this history is dominated largely by White, non-disabled men in Western countries. The narrow band of human experience behind programming language design have led to many exclusionary design choices. For example, one problem that computers face is encoding the symbols that we use in natural language (e.g, the letter ‘a’). For most of the history of programming language design, the only characters that could easily be used were those in Western languages using Roman characters. Grace Hopper’s original vision of programming in English, for example, led the first and future languages to encode English words in language syntax and write materials for learning a programming language in English. Most programming languages today still struggle to fully embrace Unicode, the standard that encodes all the world’s natural languages in a way that supports global exchange. This glaring exclusion in programming language design reflects the broader [Western bias|https://en.wikipedia.org/wiki/Non-English-based_programming_languages] in programming language design, and the broader bias in computing toward the United States, and its dominant cultures.

The communities that support languages have similar exclusionary norms. For example, many programming language designs are evolved through community processes. Python, for example, which is particularly progressive in its inclusion efforts, has a diversity statement and a code of conduct, and a steering council of five members at the time of this writing charged with enforcing them. However, they are all from Western, English-speaking countries, only one identifies as a woman, and none are people of color. Their views shape the evolution of the language and its community, which shape the kinds of software created with Python, which shapes the kinds of experiences that everyone in the world have with software built with Python. For example, up until version 3 of Python, Unicode support was not the default, meaning that most Python programs and communities used text encodings that excluded most of the world’s languages. Python 3, while it now uses Unicode by default, was largely ignored by developers for a decade, because so much of the world’s Python code was already written in Python 2, and it was not compatible. This demonstrates how choices long ago by Python’s designer in 1989--to privilege English--continue to live on today.

|Chapter10_Figure05_StudentLanguage.png|A Black student playing a trumpet, but with code blaring out.|Learning a language is like learning an instrument.|TODO|

# Teaching Programming Languages

"Teaching programming languages" can mean many different things. In higher education, the phrase usually refers to teaching foundational concepts about programming language design; for example, in the survey above, we alluded to choices about syntax, how to organize code, and how to manage different data types. Each language makes different choices, which has implications for its learnability and applicability to different problems. The goal of this kind of teaching is often to prepare students to be programming language designers themselves, making their own unique choices about language notation and features. This topic is out of scope for this book (though talking about major concepts in languages can be a way of teaching a programming language, by contrasting languages by their different choices, for example).

In K-12, "teaching programming languages" more often means teaching the particular syntax and semantics of a programming language. This can be a critical precursor to helping students create with code, as understanding a programming language notation is a prerequisite to being able to write programs that achieve a particular intent. For example, research has found that the skill of reading a programming language’s syntax and understanding its semantics are quite different from the skill of writing programs in a language’s syntax<xie19>, much like reading books is different from writing books. There are distinct methods for teaching each; in this chapter, we’ll focus on reading, saving writing for the later chapter on [Programming|programming].

But "teaching programming languages'' can also mean teaching the broader concept of what programming languages are, why they exist, and who created them. This is a different kind of literacy, one grounded in shaping students’ critical consciousness of who creates software, and who creates the software that we use to create software. As part of this, students might learn about the language creators, who they were, why they made the programming language that they did, who uses it now, and for what.

In the rest of this chapter, we’ll focus on these last two topics, the origins of languages and their syntax and semantics. We’ll then give an example unit plan that weaves them together to teach Python.

## Direct Instruction and Problem Sets

One way to teach a programming language’s syntax and semantics (and the concept of a programming language in general), is to simply engage students in programming. Many higher education learning contexts use this approach, often providing lectures to students about programming language features, and then giving problem sets for students to solve using those programming language features. 

There are numerous works describing variations on this method, as well as numerous studies showing the difficulties that it poses to students<robins10,qian17>. For example, there is evidence that direct instruction on programming language syntax and semantics is often ineffective, leaving students with a brittle understanding of how to write syntactically valid programs, and an even more brittle understanding of the semantics of the programs they write. Moreover, these methods often do not teach programming skills<loksa16> (which we discuss in the [Programming|programming] chapter); these skills include not only knowing a programming language’s syntax and rules but also the ability to interpret problem statements, design algorithms to solve a problem, translate algorithm sketches into code, test code for problems, and debug code when problems are found. This teaching method is therefore like a music teacher that says "This is a trumpet, and these are its three pistons; this is where you blow," and then expecting students to make music.

The result of this approach is that students often rapidly lose confidence, struggling to design, test, and debug without guidance, often converging towards a harmful fixed mindset toward code, that they were simply not a "born" programmer<mccartney17,ahadi13> The reality, however, is that simply writing programs often fails to produce robust knowledge of a programming language’s syntax and semantics, and so students inevitably struggle to write programs with a brittle understanding of the language they are using. Those that do thrive in this approach usually have outsized resilience to failure, excess motivation to persist, or prior experience with programming<murphy08>. Finally, because problem sets are often divorced from issues of computing and society, either completely, or because of their artificial reduction from complex social problems to solvable assignment with a correct answer, many students struggle to find a relationship between the abstract ideas of programming languages and their interests, values, and passions, limiting their motivation to learn.

There are some ways to make direct instruction and problem sets more effective. One notable approach is using programming languages like Scratch and PencilCode that come with block-based editors that may learn better and become more confident<weintrop17>, largely by preventing the erosive challenges of difficult to debug syntax errors. However, block-based editors also pose significant accessibility errors, as they require precise movements of a mouse: students who are blind, low-vision, or have motor tremors will find them difficult or impossible to use when compared to a keyboard and a text editor.

A variant on direct instruction methods are constructionist and creative approaches<resnick12>. Rather than challenging students with narrowly scoped problem sets, these methods begin from students’ interests and engage them in creatively expressing new ideas with code, and situate programming language learning in projects centered in student interests. These methods might also begin with some direct instruction about programming language features, but they prioritize discovery of programming language features in the context of creation over preparatory explanations (and sometimes intentionally promote experimentation with languages<pombrio17>) . This approach overcomes many of the problems of direct instruction, because when students encounter problems with their programs, students might see those problems as authentic challenges of realizing their vision, rather than failures to meet a rigid, instructor-defined notion of success. There is substantial evidence that student-driven project-based learning greatly improves interest in CS, motivation to learn, and engagement, and some evidence that this is associated with increases in student learning of programming language concepts<sáezlópez16,zhang19,dasgupta16>.

However, this approach comes with caveats. Because of the lack of direct instruction, students often invest more time in creating static media (images, game art), and less developing a robust understanding of programming language semantics, which can accumulate into brittle mental models of their program’s behavior, complicating debugging<lee15,ko19>. Because students creatively explore their vision by modifying code, this brittle understanding of a programming language’s rules may also make it harder to change a program, because students may not understand precisely how their code is executing, limiting a students’ ability to realize their vision. Finally, and perhaps most significantly, because learning new programming language features is difficult, students with a fixed mindset may start with elaborate visions, realize that they have to learn particular language features, and then reduce their vision to avoid learning. For example, if they have an idea for changing an animation based on user input, but then realize that they would have to use a conditional if statement and Boolean logic to do it, they might just change their mind about what to make to avoid learning those features. The result might therefore be fairly superficial programs that, while powerfully enabling students to express their interests, do not necessarily result in a robust or comprehensive understanding of a language.

## Reading Before Writing

A third way, and one we will detail here as an example unit plan, is to invest significantly more time in understanding a programming language before ever asking students to use the language to create programs. The method begins with who made the language, why they made it, what it’s good for, what it’s not good for, and how it works. Critically, this approach only asks students to read programs written in a language and observe how they execute, separating the skill of understanding how a programming language works from the skill of devising programs that solve problems using it. Thus, just like someone might go through several hours of training to fly an airplane before entering a flight simulator or flying a real plane, or learn to read English before writing it, this method ensures a robust understanding of a programming language before asking someone to program with it. This respects the inherent complexity of programming languages, while also better scaffolding understanding of how a language works. Some research has explored computer-based tutors that offer interactive direct instruction<nelson17,hermans20>, helping learners understand each feature in a programming language and how to use it in mere hours, providing a robust foundation for writing programs in that language.

From a critical consciousness perspective, this method is also distinct from the two approaches above in that it makes space to situate programming languages socioculturally. Understanding who made a programming language, why, and for what problems, and even why a teacher chose a particular language for teaching, can all be critical to understanding the values that underlie a language’s design. It’s also critical to humanizing programming languages as inevitably imperfect designed artifacts, rather than infallible entities that have always existed. This can position students in relation to a language as critical users, blaming any confusion they might experience on poor language design choices or poor documentation, rather than some innate inability to understand a language. Finally, by focusing on design choices that language designers made, it also raises questions about who was served by those choices, and who was not, helping students understand their relationship to a language’s intended audience.

## Unit Plan: The Origins of Python

This example unit explores the story of Guido van Rossum and his creation, the Python programming languages. Its learning objectives are as follows:

1. Students will be able to articulate the identity, motivations, and values of the creator of Python.

2. Students will be able to explain who Python was designed for, and what tasks it was intended to make easier.
3. For a subset of basic Python language constructs, students will be able to explain the syntax rules that determine whether a Python program is valid, and the tradeoffs of those rules.

4. For a subset of basic Python language constructs, students will be able to explain the semantic rules that determine how those Python constructs execute.

The first session targets the first objective, situating the language in the history and identity of Python’s creator.

=
### Session 1: Guido van Rossum and Python

* Begin the session by briefly discussing what programming languages are used for, and why they are more powerful than using graphical user interfaces.

* Discuss why you chose Python: it can be easier to learn, it’s easy to run in a web browser, and it’s something that people use to create all kinds of things, including doing science, making websites, and making games. Also discuss what languages you didn’t choose, and why.

* Show a diversity of examples of Python programs, including things like applications of data science to health and climate change, user interfaces, games, or data visualization, giving a concrete sense of what kinds of things people make with Python.

* Engage students in a group research project, trying to find everything they can about Guido van Rossum and the invention of Python and shouting out discoveries as they learn them; capture them in a share space. Bootstrap the activity by pointing students to van Rossum’s [Wikipdia|https://en.wikipedia.org/wiki/Guido_van_Rossum] entry, his [website|https://gvanrossum.github.io], and perhaps the Wikipedia entry for [Python|https://en.wikipedia.org/wiki/Python_(programming_language)].

** The short version of this history is that van Rossum was born in 1956 in the Netherlands, a country in Northern Europe; he had a younger brother and sister; his mother was a teacher, but left the profession after he was born; she gave him an electronics kit when he was 10 and he began a hobby making circuits throughout high school; this led him to study computer science in college, which is free for all Dutch citizens; he got a job a research institute, where he worked as a programmer. When van Rossum was at the research institute, he was mentored by three researchers who were working on a programming language called ABC; van Rossum was looking for a hobby programming project since he was bored with his job, and he borrowed many of the ideas from the ABC language to create his own language; he named it Python after the 1970’s sketch comedy series Monty Python’s Flying Circus; he designed it to appeal to people like himself, who viewed themselves as "Unix/C" hackers; it did appeal to them, and led to widespread adoption.

** Once van Rossum and Python’s stories are more apparent, engage the class in another research project, having them research about the Python community, including online communities, local meetups, and the range of people who participate in the community. Have them share their discoveries as before, gathering them in a shared place.

* End the lesson by having students share how they feel about Python. Does it feel like  a space where they can belong? Why or why not? If they don’t belong, who does?
=

Students should leave the first lesson with context about what Python is, who made it, and why, along with what happened after Guido made it, and how the community has been created around it. While learning this history might cause students to feel distant from its community, as it is largely a community of more experienced people, this distance is part of approaching any new community, its people, its values, and its tools; not providing the context at all leaves students to view a programming language as a found object, with no history, context, or purpose, which may be even more alienating. (Choosing a language more directly intended for students can avoid this problem of alienation, but this has other consequences, leading some students to view the educational programming language as inauthentic and "not real").

=
###Session 2: A Python program

* Begin this lesson by showing a Python program that uses variables, assignments, strings, some kind of loop, and a print function, and produces some output that might be engaging to the students in a class, accounting for the cultures in which they participate. For example, a program might print a song with a repetitive refrain, like the program below:

`python
one = "This is the song that doesn’t end."
two = "Yes, it goes on and on, my friends."
three = "Some people started singing it, not knowing what it was."
four = "And they'll continue singing it forever just because..."
while True:
    print(one, two, three, four)
`


* Ask students what they notice about the program’s text; they will likely notice the use of indentation, the use of symbols like brackets and colons, and the repetition of certain words. Write down all of the things they notice into a list.

* Acknowledge that looking at a Python program is similar to looking at an unfamiliar natural language: there are symbols and words that they do not understand, but there are rules and patterns that explain it all. Reassure them that once they know them, it will make sense, and that they will learn them one at a time.
Ask them to predict what it will do. Write down the predictions that they make, then run the program.

* Step through the program to explain its syntax and semantics (variables are a named, and store a value that might be a number, text, or one of many other things; print is a function that takes one or more values, which might be stored in variables, and prints them to the screen; while is a way of doing the same task repeatedly, each time checking to see if a condition was met).
Solicit proposals for changing the program, ask for predictions about how each change might alter the output, then make the change and observe the output.

* End the lesson by describing a programming language as a set of rules for writing documents full of instructions, and that if the rules are followed, the programming language can execute the instructions. Allude to the many additional features in Python, and how the rest of the unit will engage them in each.
=

The goal of this second session is not to teach particular Python language features (though it will introduce some), but rather to acclimate students to the idea that programs are written in a certain format, have certain rules, and when those rules are followed, they produce output. It also introduces programming languages as an interface, one in which someone crafts a document with instructions that a computer later follows. That concept alone is an unfamiliar one; this prepares students for this basic paradigm of interaction of writing something, testing it, and then revising it, distinguishing it from graphical user interfaces, which involve direct and immediate feedback to all actions.

The next lesson builds on this understanding, with the goal of helping students see just how programs mindlessly execute instructions.

=
### Session 3: Programming language syntax

* Bring up the program from the previous session, and explain that you’re going to investigate how smart Python is.

* Begin by removing one of the closing quotes from a string:

`python
one = "This is the song that doesn’t end".
`

* Execute the program, demonstrating the syntax error, "EOL while scanning string literal". Ask students what they think the error message means. Explain that it means that it was reading the text, and expecting it to follow a rule, where all text is opened and closed with a double quote. Explain that if it doesn’t, Python doesn’t know how to interpret the command, and so it stops reading the program and refuses to run it.

* Ask the students to brainstorm why van Rossum might have written the error message this way. Why `EOL`? Why `scanning`? Why `string literal`? Discuss the meaning of each of those words, and who Guido’s intended audience was when writing the cryptic message. Observe that not only are the languages only in English, but they use terminology that only people with certain training would understand.

* Repeat this same cycle by introducing other syntax errors: removing the = sign from an assignment, removing the True from the while loop, removing a parenthesis from the print statement, removing the print statement from below the while loop, removing the indentation from the body of the loop. Each time, explain the syntactic rules that each error message reveals.

* Pose the question to the class, "If using Python means writing instructions, and having Python read them to follow them, how smart is Python?" Discuss the difference between the kind of intelligence that humans have in their ability to interpret vague instructions, and the kind of intelligence that a programming language has.

* End the lesson by explaining that all of the rules they observed are called syntax, and that syntax is similar to the rules of grammar in natural languages. Observe that the difference between programming language syntax and natural language syntax is that natural language syntax is flexible, because humans can interpret ambiguity; programming language syntax is inflexible, because computers have limited ability to interpret ambiguity.
=

Whereas the previous session introduced the basic interaction paradigm of programming, this session introduced the use of a programming language to write instructions as a kind of dialog between a person and a computer, except one that is constrained by a computer’s intrinsic inability to interpret anything outside of its rules. This helps students build a metaphor of programming languages as like natural languages, but sharply distinguishes them, while also introducing some of the syntactic rules in which Python programs must be rigidly written to be understood by a computer.

The next lesson extends this theme of a lack of intelligence to the semantics of Python.

=
### Session 4: Programming language semantics

* Bring up the program from the previous session, without any errors, and remind the class of the various syntactic rules everyone found. Explain that this time, they will be following the syntactic rules, but changing the program in ways that are still valid, but do not do what we intend.

* Formative assessment. Using a peer instruction method<porter11>, ask the students to predict what will happen after a series of edits, writing down their predictions each time, and discussing their predictions with their pears. After soliciting predictions, run the program and see which predictions were correct, and have students discuss with their peers, and then offer critiques of how Python interpreted the program. Begin by altering the print statement to print the first line twice:

`python
while True:
    print(one, one, three, four)
`


* Explain that Python did exactly what we asked: printed the first statement twice each time, but skipped the second. Restore the correct print statement, and then solicit other edits from students.

** This is _responsive_ because it asks students to leverage their perspectives on what is a reasonable interpretation.
** This is _participatory_ because it gives students agency in shaping what edits are made.
** This is _educative_ because students will see that their peers have a diversity of interpretations, but Python has only one.

* Pose the same question as the previous day: "How smart is Python?" Solicit different opinions about its intelligence. Pose the question, "What does this say about Guido’s intelligence?"

* Connect the different opinions about Python’s intelligence to the notion of semantics, explaining that the only intelligence that Python has is the ability to follow certain rules. Step through each line of the program and explain the semantic rules that govern it, storing values, repeating the while loop block, and printing the values stored in the variables.

* Discuss the alternative semantics that Python could have had, suggesting that there is nothing right or wrong about them, they are just choices that van Rossum made. Conclude from the discussion that Python programs are only as smart as we make them, and how they are made is often no
=

This session builds upon the syntax session, helping students see that both syntactic and semantic rules govern Python’s ability to follow instructions, that these rules are the essence of its intelligence, and that all of the other intelligence in programs is given by the person writing the program. It also connects the rules to their creator, the programming language designer, reinforcing that the rules are not unchangeable, authoritative law, but choices that the designer made that could have been made differently.

=
### Session 5: The values of Python

* Bring up the program from the previous sessions again, reminding students that what makes a programming language are the syntactic and semantic rules, and that the rules are shaped by programming language designers.

* Show the same program, but in a diversity of other programming languages, such as Java, JavaScript, C, Racket, Scratch, Swift Playgrounds. Prompt the students, "What appears similar and different?" Write down the observations in a list.

* Go through each observation and generalize them, identifying the contrasting features of the language, including similar and different keywords, different use of punctuation, different spacing, but also similar ideas, like named variables, text strings, and loops.

* Observe that other differences are less visible, noting that even when languages use the same word, the words may mean different things, and result in different behavior (e.g., the print statement in each language not only has a different syntax, but different behavior; Scratch uses color to render its text, other languages use boring fonts).

* Explain that, like Python, each one was designed by a specific person or group of people, with particular values. Python focused on typographic simplicity, other languages on explicit and verbose naming, and some even mimicry of other languages. Most of them were White men in North America or Europe, and most were interested in building serious software systems for business or research, not creative applications.

* *Summative assessment*. Prompt the students to write a written critique of Python, identifying learning barriers, accessibility barriers, language literacy barriers, access to computers, and other inequities. Scaffold their writing process by suggesting they brainstorm critiques first, and then describe those critiques. Ask students how they would like to share and evaluate their critiques, co-constructing grading.

** This is _responsive_ because it asks students to leverage their own perspectives on whether the language is suitable for them or others, based on their own life experiences.
** This is _participatory_ because it gives students agency in shaping how they communicate their critiques and how those critiques are graded.
** This is _educative_ because students will see that their peers have a diversity of concerns about Python, including many they did not anticipate.
=

This final session situates Python against other languages, using the contrast to highlight it’s intended audience and underlying values. Students should leave this last session with a sense that Python is just one of many languages, that it was designed for particular purposes, that it could have been designed differently, and that using it requires many specific skills, resources, and abilities that not everyone has access to.

This lesson has many strengths and weaknesses relative to the problem set and creative expression approaches to teaching programming languages. It’s core strengths are helping students see programming languages as designed artifacts with particular values and failings, and helping give students a sense of critical agency when using them. It’s core weakness is that it does not engage students in using the language to create; rather, it positions students as critical observers of a language. The example above also only focuses on a small subset of Python. Of course, such a lesson can just be the beginning of a series of units that more directly engage students with the full range of syntactic and semantic rules in Python, and in writing programs using that broader range of futures. In the coming chapters, we will discuss methods for teaching specific language constructs, including [Control Structures|control], [Data Structures|data], and [Functions, Objects, and APIs|functions], as each has their own pedagogical challenges.

@standardsHeader
@standardsBlurb

@cstaHeader
@csta3BAP24
@csta3ACS01
@csta3ACS02

@toleranceHeader
@tolerance3
@tolerance5
@tolerance10

@teacherHeader
@teacher1a
@teacher1f
@teacher2e
@teacher3b
@teacher3e
@teacher5a
@teacher5c
@teacher5d
@teacher5e