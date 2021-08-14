=
@keyIdeas
* Information hiding is a strategy in computing for reducing complexity.
* Abstraction involves deciding which information to hide, to simplify interfaces between processes and procedures.
* Encapsulation involves organize code and data to simplify reuse, often making some information visible, and other information hidden.
* Functions and classes kinds of abstraction and encapsulation name code and data to facilitate code reuse; these are often gathered as collections, called APIs, which make it easier to create software by reusing existing functionality.
* All abstractions hide detail, which risks erasing diversity, nuance, and context, and making it harder to identify when code being reused encodes bias, and harder to change the behavior of software.
* Teaching abstractions can focus on use, design, or critique, all three having their own challenges 
=

Until this chapter, we have characterized computers as relatively unintelligent machines that mindlessly execute low-level instructions. Justice, in this view, is woven through the particular instructions that software developers choose and the particular data that those instructions process. But throughout these discussions, we’ve been able to interrogate these choices directly because the instructions that developers choose in our examples have been *transparent*: we see every line of code and can analyze each of them for their computational and social meanings.

Modern software, however, is anything but transparent. In fact, by design, software hides information. For example, when we launch a program on a smartphone--an email client or web browser, let’s say--we don’t have to think about the hundreds of thousands, or perhaps millions of lines of code that make it work or how they work. We don’t even have to think about the smaller computer program that an operating system runs to launch the program. We only have to think of the icon we want and use our finger, nose, or other capacitive instruments to press it. The rest of the details are hidden away, and we only deal with the *interface* to that functionality--in this example, an icon that responds to our touch.

In this chapter, examine the foundational ideas of information hiding, abstraction, and encapsulation in computer science, and the many ways that these ideas are manifested in programming languages (e.g., functions, objects, APIs, and more). We then consider the many social implications of these abstraction techniques, and how to develop youth critical consciousness of these implications.

|Chapter14_Figure02_Interface.png|Several people standing around a cube, staring at facades, but inside is complex machinery.|We can't see inside, for better and worse.|@jessie|

# Hiding Detail

All of these hidden details are what computer science generally refers to as *information hiding*<parnas72>, which is, in essence, a strategy used in the creation of software to reduce complexity, and therefore ease the burden of comprehension and learning. The power of information hiding cannot be understated. It is at play at nearly every level of how computers and computer programs work:

* Computer engineers, tasked with creating computer components like CPUs, control boards, memory, and other hardware, do not have to understand the low-level physics of electricity or even a transistor, because those details have been hidden as simple binary switches that can be turned on and off, rather than the complex electrical system needed to enable that binary switch behavior. Their only job is to think about how to assemble transistors into useful, reliable hardware components.

* Operating system developers, tasked with reliably executing the programs that a user wants to be run, do not have to understand the particular details of how computer hardware works, because those details have been hidden, allowing developers to think of computers as machines that run programs reliably. Their only job is to think about how to make sure those programs execute quickly, efficiently using the shared resources of a computer.

* Software developers, tasked with writing computer programs, do not have to understand how an operating system works, because details and nuances about its resources have been hidden behind ideas like "processes" and "memory", rather than the much more complicated details of how instructors are moved from memory to CPU, and done so efficiently. Their only job is to decide how to write programs to meet requirements.

* Software users, trying to use computer programs, do not have to understand how the programs are implemented in code, because the details about a program’s implementation have been hidden behind user interfaces that take input and respond with output, but hide everything else. Our only job as users is to work and play with computers.

Each of these examples hide information about certain aspects of computers and code, making it easier to learn and reason about them.

This basic strategy of information hiding might seem familiar: in everyday life, we do the same with natural language and stereotypes. For example, when we use the word _chair_, we are hiding details such as the fact that most chairs have four legs and a back, and that chairs are sat upon by people. All of those details are hidden behind the word _chair_, and that hiding is what makes language powerful: we can speak more succinctly and convey more complex ideas by bundling collections of details into larger concepts. This basic strategy is closely related to stereotypes: for example, when we talk about programmers, many might imagine a White or Asian man working at a computer. All of the nuances of who programmers are--that there are women, non-binary, Black, Native American programmers, programmers who are blind, programmers who are also ballerinas--become hidden, in service of the powerful shorthand concept of a _programmer_.

These many examples of hiding information to reduce complexity all leverage two related strategies. One is the idea of *abstraction*<kramer07>, which is about identifying which details are most essential in representing some idea, and using those ideas to represent the idea, discarding other details deemed irrelevant, even at the expense of capturing some exceptions. Words in natural language are abstractions (e.g., chairs are usually objects that have four legs and a sitting surface, except when they don’t); stereotypes often capture some truth about a group of people (e.g., _programmers_ tend to be White and Asian men, except when they aren’t). In the same way, software uses abstraction to elevate particular aspects of concepts, while discarding details (e.g., _saving_ a file on a computer, is about remembering its contents for later, but is really about copying a sequence of bits from a computer’s RAM to its long-term storage; _opening_ a program is about tapping or double-clicking on an icon, even though it's really about copying a sequence of instructions from long-term storage to RAM, creating a process in the operating system to remember which instruction the program is at, and then beginning to execute its instructions). In all of these cases, abstraction is powerful because it hides information, simplifying some ideas. And it is harmful for the very same reasons, erasing nuance, exceptions, and diversity.

The second information hiding strategy is *encapsulation*<parnas85>. This is the idea of combining details together in some structure so that they may be reasoned about as a single idea. For example, words in natural language do not just remove details through abstraction, but they also give structure to collections of ideas (e.g., chairs are a composition of legs, seats, cushions, backings, but we can think of them as a single unit). Stereotypes bundle together many different ideas into a single idea (e.g., programmers are White and Asian men, programmers sit in front of computers, programmers write code, programmers are smart). In the same way, software uses encapsulation to organize code into collections of related instructions (e.g., an operating system like Windows can be thought of as a single piece of software, even though it is thousands of different components that are built separately but in coordination). Encapsulation is more about organization than information hiding, but it often has the same effect as abstraction, hiding details.

All three of these ideas--information hiding, abstract, and encapsulation--often work together to reduce complexity. Words, stereotypes, and programs are abstractions and encapsulations that hide details, offering power in their simplicity, while often masking critical nuances, exceptions, and details.

|Chapter14_Figure03_InputOutput.png|A woman sitting on a black box cross-legged with a laptop, and tendrils of data moving through the box, coming out as a signal on the other side.|How things go in and stuff comes out.|@jessie|

# Abstractions and Encapsulation in Code

In computer science, these three ideas of information hiding, abstract, and encapsulation were not always strictly necessary. For example, people who used the first mainframe computers were software users (executing programs), they were software developers (writing the programs to execute), they were computer operators (managing the computer’s resources), and they were computer engineers (removing insects from vacuum tubes that prevented the computer from functioning). The computers and programs they were writing were simple enough that one person, or perhaps a small group of people, could comprehend the entire system, and work at all of these different levels of detail. There was little benefit in hiding these details when individuals or small teams needed to manage and understand all of them.

Today’s software, however, is so complex that information hiding is essential. Consider the Microsoft Windows operating system, for example: it is composed of tens of millions of lines of code, maintained by tens of thousands of developers, all of whom only understand perhaps less than a hundred thousand lines of that code. Encapsulation organizes all of this code into related groups; abstraction provides some conceptual interface for these collections, hiding irrelevant details to users of these collections. This is how so many developers can work together on improving or evolving a particular part of the operating system: they only have to know their part of how the system works, and how to interact with other parts, not how all of the other parts work in detail.

## Functions

There are many features in programming languages that support abstraction, encapsulation, and other information hiding strategies, but by far the most foundational and ubiquitous is that of the *function*. You might recognize this word from mathematics, and that’s because it is a nearly identical concept. Consider, for example, the kinds of mathematical functions that appear in math education in algebra and plots. In these settings, we will see functions like this:

`
y = 5x + 2
`A function for a line with slope 5 and intercept 2.

You might recognize that as a function for a line with slope `5` and y-intercept `2`. In mathematics, students learn about functions in this spatial sense, imagining many possible values of `x`, the ways that those values are mapped onto a `y`-value via a function, and then how those `x` and `y` pairs might be visualized on a plot. In this way, functions are a mapping between inputs and outputs, where everyone input corresponds to some possible output. In the example above, when `x` is `5`, it maps to the `y` value of `5 x 5 + 2 = 27`; when it is `0`, it maps to `5 x 0 + 2 = 2`.

Computer science embraced mathematical functions as a way of representing computation, just with a different notation. For example, here is the same function above, but in Python:

`python
def y(x):
  return 5 * x + 2
`The same line as above.

Just as with the formula above, this function takes any value `x` and returns it times `5`, plus `2`. Computing, however, expanded the notion of a function to also include *names*, to help give more meaningful, human readable descriptions of what input is being provided and what output is being computed. The function above allows a programmer to call a function by name; for example, the Python code `y(3)`python means "_call the function y with the value 3, execute it, and then obtain the value it returns_". In this case, this would mean finding the function named `y`, setting a variable `x` to the value provided, `3`, getting the value of `x` and multiplying it by `5`, adding `2` to the result, and then returning the value to whatever part of the program that called the function `y`. This process is therefore unlike functions in math in many ways: we can give functions names that are more than just a single letter; we can use functions anywhere in a program where they are defined, and we can reuse functions throughout a program, to avoid having to write the same code multiple times.

Functions in programs can have more than one input. We call each of these named inputs *arguments*. For example, consider this Python function, which has to arguments:

`python
def isEligibleToVote(age, citizenship):
    return age >= 18 and citizenship == "US"
`

These two arguments, `age` and `citizenship`, are used to compute a Boolean `True` or `False` value as to whether someone is eligible to vote. We would call it by writing the Python code `eligibleToVote(12, "Canada")`python, which would return the value `False`. While this might look quite different from the mathematical function above, we could write it in a more mathematical syntax:

The inputs given to a function’s arguments can come from anywhere, but it’s critical to note that it is the _values_ that are passed to functions, not the containers that store those values. For example, consider this program:

`python
age = 20
citizenship = "Pakistan"
isEligibleToVote(age, citizenship) # Returns False
`

In this program, when the function `eligibileToVote` is called, the values stored in variables `age` and `citizenship` are passed, not the variables themselves. This can be confusing, because in our example above, the variables in the function have the same names, `age` and `citizenship`. They are nevertheless entirely different containers: the variables in the program calling the function can be changed without affecting the behavior of the function. This is because functions define their own *namespace*, which is the concept of particular parts of a program (inside a function, for example), have their own variables and variable names, which cannot be accessed or modified outside the function. If new variables are declared inside a function that happen to be the same as names outside the function, those more local names are used rather than the global ones.

This program therefore produces the same result:

`python
a = 20
c = "Pakistan"
isEligibleToVote(a, c) # Returns False
`

These examples make the benefits of functions clear: someone can write a function that has some complex, nuanced logic, expose details about its inputs and outputs, and then other people can call the function without having to know much of anything about how it is implemented. Functions are, in essence, the power underlying most of the magical things that computers have been taught to do. Without ever having to understand the details, they allow us to:

`python
sendEmail(message)
classifyFace(selfie)
driveCar(currentImageOfRoad)
detectCancer(medicalImage)
`

This power leverages the all three of the ideas in the previous section:

* Functions _hide_ information, replacing all of the details and nuances of how something is computed with a name and few inputs. For example, to compute eligibility to vote with the function above, one only needs to know the function name `eligibleToVote` and provide an age and citizenship. The logic of what determines eligibility is hidden, unless the person writing a program that uses `eligibleToVote` has access to the source code of `eligibleToVote`.

* Functions _abstract_, taking the complex idea of voting eligibility (which in our example only considers two factors, but in reality in the U.S., involves countless others, such as whether someone has committed a felony, or owes the government money in some states), and reduces it down to just a name: `eligibleToVote`. This allows people using this function to no longer think about all of those nuances, instead just thinking of it as "eligibility."

* Functions _encapsulate_, structuring details in a way that facilitates abstraction and information hiding. For example, the function above only exposes two details: `age` and `citizenship`. It could have exposed other details, such as details about when someone became a citizen, someone’s precise birthdate. It could also have allowed for a return value that was more than a binary value, letting some answers be "it depends" or "the Supreme Court decision on this person’s eligibility is pending." But the particular way the function was encapsulated did not allow for these different inputs or outputs.

Another aspect of the power of functions is that they can be combined with other functions and logic to make even more complex functions that themselves abstract, encapsulate, and hide detail. For example, a progressive political campaign could use eligibleToVote to automate the selection of who to call to encourage to vote:

`python
def selectOutreachList(people):
    outreachList = []
    for person in people:
        if isEligibleToVote(person.age, person.citizenship) and person.politics == "progressive":
            outreachList.add(person)
    return outreachList
`

In this example, the power of encapsulation through functions is that the developer who wrote the selectOutreachList function does not need to know how voting eligibility is determined. They can just reuse that function and focus on their own program logic.

## Classes

While functions are the most ubiquitous form of abstraction in programming, as the software we built in society became more complex, their power to encapsulate functionality was just not large enough to deal with the sheer scale of some programs. Consider Google Search, for example; it is likely built from hundreds of thousands of functions, written by thousands of different people, each responsible for ensuring that the functions they wrote are working correctly and interoperating with other functions correctly. Imagine a computer program, stored in a single document, with hundreds of thousands of functions, and how much of a disorganized mess that could become: how would a new employee learn how Google Search is built, other than by just reading all of the functions?

This problem led to the invention of *object orientation*. As we discussed in the [Programming Languages|languages] chapter, this was the idea that code and data might be encapsulated into something called an object<holmevik94>, which is nothing more than a container for storing related code and data to keep it organized. For example, continuing our voting example above, imagine we made an object that represent a voter:

`python
class Voter:
  def __init__(self, age, citizenship):
    self.age = age
    self.citizenship = citizenship
    self.vote = None

  def isEligibleToVote():
     return self.age >= 18 and self.citizenship == "US"

  def recordVote(candidate):
     self.vote = candidate
`A `Voter` class, which encapsulates data and functions related a voter.

In object orientation terminology, the code above represents a *class*, which represents a kind of template for an object. This template has three functions, which in object oriented programming terminology, are called *methods* when they are part of a class: one to initialize an object of this type with some values (with the strange Python name of `\_\_init\_\_`), one that is from our earlier example that determines voting eligibility, but using the values stored in the voter object (`isEligibleToVote`), and another function that stores the candidate the voter voted for (`recordVote`). The class also has three variables, which are called fields when they are part of a class: `age`, `citizenship`, and some text string stored in vote to record which candidate the voter voted for. By writing the class above, we’ve given a blueprint to the computer about what kinds of data and functionality each voter object has. And we could have included any methods and fields that we wanted; Python has no expectations about what methods or fields a class has, what they are named, or what they do.

But: we have not yet created a `Voter` object. To do that, we have to create an object using the class. In Python, that is as simple as:

`python
amy = Voter(41, "US")
print(amy.isEligibleVoter())
`

That code tells Python to create a new `Voter` object using the `Voter` class, and call its `\_\_init\_\_` function to initialize it’s fields. The result would be what object oriented programming languages call an instance of class Voter. This distinction is key: the blueprint for creating a voter is not the same as an *instance* of class `Voter`, just like the blueprint for creating a house is not the same as an actual house. If we wanted to create objects to represent millions of other voters, we would need to use the same syntax above to instantiate millions of additional Voter objects; each instance would share the same methods, but have their own unique value stored in their fields. (The loops we discussed in [Control Structures|control] might be helpful there, rather than writing a line of code for each voter). And yet, no matter how many instances of `Voter`s we create, there would still only be one `Voter` class.

With these ideas of classes, methods, fields, instances, we have the power to organize larger programs. For example, returning to our Google Search example, we could make some classes that were responsible for analyzing user’s search terms, other classes that were responsible for indexing documents on the web, and other classes that were still responsible for retrieving documents based on a search query. By using classes to organize code and data, an individual Google engineer wouldn’t have to read a single file with hundreds of thousands of functions; instead, they might just learn how one or two classes are built, and just use the methods of other classes to implement new search functionality. 

Some programming languages go beyond the basic ideas of classes, methods, fields, and instances above, adding more powerful features. For example, one common idea is the notion of *inheritance*, which is the idea of writing new classes that _inherit_ the functionality of other classes, but add new data and functionality. If we continue with the voter example above, for example, one might imagine special types of voters that not only have an age, citizenship, and vote, but also other privileges. For example, in the United States U.S Presidential Elections, some voters are also electoral college voters, which vote for presidential candidates based on the votes of the people they represent. We could create a *subclass* of Voter, which inherits all of the fields and methods of Voter, but adds additional data and functionality:

`python
class Elector(Voter):
  def __init__(self, age, citizenship, state):
    self.state = state
    self.electoralVote = None
    Voter.__init__(self, age, citizenship)

  def recordElectoralVote(candidate):
    self.electoralVote = candidate
`

This subclass `Elector` has all of the fields and methods of `Voter` that we defined above, but two additional fields--`state` and `electoralVote`--and one additional method--`recordElectoralVote`. We can treat an instance of `Elector` like an instance `Voter` when calling functions on it, calling `isEligibleToVote`, but only instances of `Elector` can use the additional functionality defined in the `Elector` class. All of this extra effort to define subclasses through inheritance is just another way avoid rewriting code: by inheriting from `Voter` rather than creating an entirely different class for `Elector`, `Elector` can reuse `Voter`’s code.

As as with functions, objects leverage all three of the ideas we discussed earlier:

* Classes _hide_ information, storing data inside of them that other parts of the program cannot read or change, except through whatever methods are provided.

* Classes are _abstract_, replacing all of the complexity of voter metadata and voting functionality with a single name Voter, and its various methods. This frees anyone writing code that analyzes voters from having to know how voter data is stored or how eligibility is determined, and instead just call Voter methods.

* Classes _encapsulate_, providing structure to related code and data in a single place in a program. This ensures that the program is organized, so that people enhancing or inspecting the program can find relevant parts and minimize how much they need to change when adding or changing features.

## APIs

The use of functions and classes written by others to write new programs is related to the idea of an *API* (Application Programming Interface). APIs are collections of functions and data structures written by one group of people for use by other groups of people to write programs<bloch06>. Rather than having to write functions oneself to do the many complex computations to build modern software, one can simply use APIs, which build upon decades of labor by software developers to implement algorithms for various tasks. One person can write a function to sort numbers, and millions and reuse it, without ever knowing how it is built. In fact, none of the software that we have built today, including our devices, their operating systems, the numerous software applications we use, and the entirety of the internet, would be possible without encapsulation. Without it, each person creating something with software would have to start from scratch, without the benefit of 60 years of programming labor to build upon.

Whereas learning programming languages involves learning the syntactic and semantic rules behind a language, learning an API is a fundamentally different learning task<thayer21>. Because APIs are collections of functions that in practice hide their implementation from their users, learning an API requires understanding the different things. For example, consider facial recognition algorithms, an increasingly prevalent kind of computation that takes an image as input, and produces a name as output. Here, the syntax for calling a function in Python is the same as any other function:

`python
# Returns String containing the name of the person in the image,
# or, if no face was detected or a name was not known, None.
classifyFace(image)
`

However, the semantics here are much more difficult. What is the structure of the image value that is passed in? What happens if the image contains multiple faces? What happens if the image does not contain faces? What if the image is not well lit? What if the image contains faces, but of mammals, but not humans? What if the person in the image is a Black Woman, which most facial recognition algorithms are demonstrably worse at classifying<buolamwini18>? Because the code for such functions is often not available for inspection, or perhaps too complex to comprehend, API learning requires different knowledge:

* *Domain knowledge*. This includes both knowledge about the domain in the world that the API is modeling, but also how it is modeling it. For example, for a face recognition API, what is an image? What does it mean for an image to "contain" things? What counts as a "face"? What words does the API use to represent ideas like images, faces, and names? Without understanding these ideas, and how the API represents them, learners often cannot find documentation about the API, understand the examples it gives, or make predictions about other aspects of its behavior.

* *Execution semantics*. This includes knowledge about how a function in an API behaves: what types of inputs it will tolerate, what types of errors it might produce, how it maps inputs to outputs, how long that might take, how accurate the results might be, and so on. In the case of face recognition, this might be semantics like classification only working accurately when there is one well lit. White face directly facing the camera, and when the person whose face appears in a photo is in a private database that maps faces to names. Without understanding these properties of a function’s behavior, learners will struggle to write programs using the API that do precisely what they want, and struggle to debug programs because they can’t explain or predict the behavior of a function.

* *Usage patterns*. APIs are often written in ways that require functions to be used in particular ways. For example, to call one function, one must call other functions first, or to achieve a particular complex behavior, multiple functions in the API might need to be combined. Some behaviors might not even be possible with an API. For example, to recognize a face accurately with a face recognition API, it might be necessary to first preprocess an image to increase its brightness and contrast, and crop it so that the face is in the center of the image. Without knowing these patterns of use, learners may not be able to translate the behavior they want their program to have into a program that uses an API’s functions.

Unfortunately, most APIs poorly document all of this knowledge, leaving many learners to have to find resources online, or guess, creating challenges to learning and software engineering. And because most modern programming involves the extensive use of APIs to create interesting, useful software, much of the experience of creating software is searching for information online, reading documentation and tutorials, or taking classes that teach particular APIs to learn the knowledge above. This means that anyone that creates software--professional software developers, hobbyists, students learning CS in classes--will necessarily be engaging in informal learning, and usually without well-designed instructional materials.

All of this is an inevitable side effect of information hiding, abstraction, and encapsulation. The benefits of these strategies are to remove details, but the other side of this removal means that any time someone needs to know one of those details, they have to learn them somehow. The price to pay, then, for the immense complexity of modern software enabled by information hiding, is that sometimes we have to understand that complexity, and information hiding may make that understanding harder.

|Chapter14_Figure04_Guarded.png|Several people sitting on and around a safe labeled "Google", unable to get in.|The secrets might warp the world.|@jessie|

# The Tradeoffs of Abstraction

While abstraction, encapsulation, and information hiding are both powerful and necessary for modern software, functions also pose inescapable tradeoffs in terms of justice. Consider, for example, the mechanisms of injustice we discussed in the [CS & Justice|justice] chapter.

One of the ways that algorithms amplify injustice is *centralizing* decision making. Functions, classes, and APIs are all tools for centralizing decisions. For example, consider the eligibleToVote function and method above. If everyone in the world wrote programs about voter eligibility that used that function to decide eligibility, it would bestow great power to the people who control the logic of that function. And, in fact, that’s exactly what many U.S. states do: they have computer programs that encode the law and decide whose votes are eligible to count in an election based on logic. Who writes those programs? Should every city, county, and state write their own programs to automate this logic? Should they be trusted to write it correctly? What power does the public have to change the logic of a function?

This brings us to *privatization* of decision making. Much of the voting in the U.S. now happens on electronic voting machines that are designed, implemented, and maintained by private companies, who hold intellectual property rights over their source code. Who are the software developers writing the code that assesses voter eligibility and counts votes? Can eligible voters inspect the company’s code to verify that they are determining eligibility correctly according to law? Is there any way to guarantee that the code on the physical machine being used to count votes is the same code that is made available during an audit? The whole point of encapsulating that logic in a function written by the private company is to free others from having to understand it. Therefore, encapsulation by private companies is a transfer of power from the transparent, public, human processes, to opaque, private, algorithmic processes. Without regulations that set particular requirements on making the implementation of functions available for inspection, we are forced to trust private companies to accurately implement the law.

At the same time, implementing voting eligibility as a function is a form of *automation*. Automation that is encapsulated means that not only are the decisions made by a computer program centralized and potentially secret, but they are also no longer done by a person. Who should we trust to make judgements about someone’s age and citizenship? Our non-digital processes generally involve reviewing paper documents such as driver’s licenses, passports, and birth certificates, all of which are carefully maintained as paper records and processed by people, who are capable of identifying and notifying errors, and making interpretations in ambiguous cases. For example, the first author changed her first name on her birth certificate, and made a mistake on the form, but the friendly clerk noted the error, called the first author, and ensured it was correct. Had an algorithm processed the change, it could have resulted in the first author losing proof of citizenship and therefore voting eligibility.

In the worst case scenarios, functions might implement explicitly unjust, discriminatory ideas, and because of abstraction, encapsulation, and information hiding, do that without anyone ever knowing. And without the ability to inspect and audit a program’s code, we cannot know what logic it is using. Imagine, for example, a function call like this:

`python
eligibleToVote(person)
`

That doesn’t look problematic at all, right? What if the function’s code was as follows:

`python
def eligibleToVote(person):
    return person.race == "White" and person.disability is None
`

This explicitly racist, ableist logic is encapsulated away in a function that potentially no one could see in this hypothetical example. But such logic is far from hypothetical: racist logic is encoded in recidivism predictions, loan eligibility applications, and even Google search<noble18>, often without any ability for the public to audit their logic.

Perhaps the biggest challenge with encapsulation is that it is so powerful and necessary for creating software that we often cannot avoid it. Imagine, for example, that the public decided that the voting machines created by [Dominion|https://www.dominionvoting.com] could not be trusted. Because they are built upon so many layers of encapsulated functions, the only recourse to creating a public voting system platform would be to recreate it in its entirety--the hardware, the software, and the maintenance workflows. It is far easier for a local government to delegate this work to a private company--relying on its encapsulation of voting logic--than it is to recreate its own voting platforms. Dominion knows this, and uses this leverage to maintain control over its monopoly on electronic voting.

|Chapter14_Figure05_Insides.png|Several students standing around a black box on a table trying to find a way inside.|Students have to take black boxes apart to understand them.|@jessie|

# Teaching Abstraction

In addition to understanding what functions and APIs are and how they work in a particular programming language platform, there are many distinct skills that students might learn: how to use functions, how write functions, and if those functions are part of an API, how those functions model a domain, how they execute, and how the functions need to be used in combination with other functions to achieve particular behaviors. That alone is a lot to learn, and not something that can be quickly or easily taught. However, as the last section noted, understanding functions computationally isn’t the only way to understand them: students might also learn how to think about the behavior of functions from critical, social, or political perspectives as well, examining them from the perspective of power and oppression. One of a teacher’s central roles is in deciding which of these many distinct skills and concepts are worth teaching, depending on who their students are, what standards they might want to teach, and what values they have.

There are methods for teaching many of these concepts and skills. We will review some of the more notable ones here, and then end the chapter with an example unit that focuses on critical perspectives on functions.

## Teaching Abstraction Use

At the simplest level, teachers can teach the use of functions, either ones that are built into a programming language or as part of an API. When teaching programming languages, this is often unavoidable. Even the simplest programs in some languages involve function and API use. For example, this Python program is just a single function call:

`python
print("Hello, I came from a call to the print function.")
`

If one started teaching Python with this program, students would immediately have to know that names followed by parentheses, with a list of comma separated values are a function call. And to know what a function call is, they have to know what functions are, at least to some extent, to reason about what the program is doing.

Similarly, in languages like [Scratch|https://scratch.mit.edu], one of the simplest programs that causes interesting output is to write is:

% TODO Should probably include this as an image to make it authentic, but then it's not accessible. Hmm...
`scratch
when start is clicked
  switch costume to "fun costume"
`

This example uses the `switch costume` API function, which modifies a Scratch sprite’s appearance.  In some sense, then, teaching programming languages necessitates teaching at least a small amount about functions, as functions are ubiquitous in programming.

Methods for teaching function, object, and API use can be as simple as giving students practice conforming to the syntax of function calls, trying different inputs to understand their effects in a function call, and using functions in combination with other programming language constructs to achieve more complex behaviors. These methods can help develop knowledge of programming language syntax and semantics, while providing some shallow knowledge of what functions are and how they can be used<lee14>.

To develop more robust knowledge of an API, however, teachers need to cover the specific domain concepts, execution semantics, and design patterns of an API in more detail<thayer21>. For example, the popular Pandas API for data analysis in Python has a range of complex data structures and functions. Students have to know Python before they can feasibly use Pandas, but knowing Python is insufficient. Students also have to learn the concept of a data table from statistics, and how Pandas represents data tables with a data structure called DataFrames, and that DataFrames have many functions that can analyze, filter, and restructure data to support statistical analysis. The most common ways of learning all of these details are to read documentation--either official documentation, or community generated documentation on sites like StackOverflow. But such documentation is often not written with learning in mind, and rarely accounts for the prior knowledge of readers, posing significant difficulties to even professional software developers<robillard11>. Students, therefore, can have even greater difficulties, as they are building upon more brittle understandings of programming languages. This often results in students being confused, and copying code that they do not understand, introducing defects that are difficult to debug without further learning. Therefore, teachers will be more successful by providing tailored direct instruction and practice on API concepts that accounts for their specific students’ prior knowledge.

Another challenge with APIs, especially in project-based settings, is that no API can support every imaginable thing a student might want to make. Professional software developers might take weeks assessing the feasibility of an API for a particular program behavior, only to find that something is not possible, or is only partially possible<ko11>. Asking students to do such feasibility assessment work is risky, as they may go down similar fruitless paths. The expressive power of an API to make many things possible is also a great risk to teaching, as students may find themselves needing to learn ideas that no one in the class, including the teacher, knows anything about. Therefore, projects can be most successful when an API is highly constrained (as is the case for some platforms like Scratch), or students and teachers start a project with the expectation that some things might not be easy or even possible, and that learning new concepts, language features, and APIs will be part of the process.

## Teaching Abstraction Design

Whereas teaching function and API use can involve skills like assessing feasibility, understanding new domain concepts, modeling the opaque behavior of functions, and trying to discover API usage patterns to realize some vision for a program, designing functions is a different skill entirely.

One well established method for teaching function design comes from the book How to Design Programs<felleisen18>. This book starts from a "pure" view of functions, where, given some inputs, a function performs some analysis or operations on the inputs to determine the output. (Impure functions might have other side effects, as in the examples in the previous section of printing something output in Python or changing a character’s costume in Scratch). The book recommends teaching this design recipe:

1. Identify what information must be represented and how it is represented in a programming language.
2. Write the function header, determining the inputs and their data types, and writing a description of what the function should compute.
3. Work through examples of what the function should compute with specific values.
4. Outline an algorithm that mirrors the examples of what the function should compute.
5. Fill in the outline, using the function’s purpose and the data types defined.
6. Test the function, to ensure that it computes what is intended for all possible inputs, and iterate on all of the previous steps as necessary.

Teaching this high level process is a form of scaffolding that can help students structure their problem solving process. Students often struggle to self-regulate during such structured problem solving, often deviating from the sequence, or struggling to independently perform a particular aspect of the process<ko19>. Teachers can play the role of coaching and support during these steps, offering direct instruction to address gaps in prior knowledge, and reinforcing problem solving steps, which can develop their programming self-efficacy and increase their independence<loksa16>. Such facilitation can feel like helping students sculpt a sculpture, one step at a time, converging toward their final vision.

## Unit Plan: Black Box Admissions

Whereas the previous two sections describe methods for developing programming skill using functions, there are many reasons why programming might not be the goal. Students in a social studies class might be studying capitalism, and one might teach them about how functions can be an instrument of profit. Students in a civics class might examine how functions are an instrument of power. Students in a science class might examine how functions are used to analyze data to make scientific judgements. All of these purposes demand a different literacy toward functions, one that examines their role in society, rather than harnessing them as tools for creativity.

In this example unit, we demonstrate one method for teaching this critical examination. The unit uses a function of particular interest to many secondary students, especially high school students: the functions used to determine college admissions. This lesson examines an approximation of Texas’s college admissions process, which by state law uses a "top 10%" rule to automatically admit students who are in the top 10% of their class by GPA, Texas residents, and graduating from a public or private school in Texas, or a school in Texas operated by the Department of Defense. All other students undergo a holistic review of other factors. The key twist in this lesson is that students begin only being able to use the function, and not see it’s logic. The lesson then makes the logic transparent, and moves into more critical perspectives on unintended consequences of this function, and how it might be made more equitable.

The learning objectives are as follows:

1. Students will be able to call a function with varying inputs
2. Students will be able to reverse engineer the possible behavior of a function
3. Students will be able to critically examine the tradeoffs of keeping a function private
4. Students will understand the relationship between transparency and perceptions of fairness
5. The first lesson begins by setting the stage about college, and introducing the admissions function.

=
### Session 1: College admissions

* Describe college, including what is, how it varies, and the tradeoffs in going to it.

* Explain that in many countries in the world, anyone can go to college for free, but that in the United States, everyone pays, and must apply and be admitted.

* Explain that this requires the creation of a function, in which colleges are given several inputs--transcripts, essays, SAT scores, and more--and they compute one of three outputs: admit or deny. (One might also explain waitlists).

* Explain functions as a mapping from input to output.

* Given an example of a function that reflects the admissions decisions in Europe, such as the function below, which returns True if a student is a citizen:

`python
def admit(citizen):
  return citizen 
`

* Test the two possible inputs and show the outputs.


* Give an example of a function that reflects an admissions lottery, such as the function below, which flips a coin, admitting half of the students who apply, independent of who they are:

`python
import random
def admit():
  return random.random() < 0.5
`

* Run the function several times to show its behavior.

* Solicit alternative admissions logic from the students, and live code those, showing the definition of several possible admissions functions.
=

This first session establishes the domain of admissions and the concept of functions, given students a sense of how inputs are mapped to outputs. Students should leave this session wondering about college, but also wondering about how college admissions decisions are made, and whether they are as simple as the functions demonstrated.

The second session introduces a new admissions function, but without revealing its logic.

=
Session 2: Hidden policy

* Remind students of the admissions function examples. Show this function signature, without showing the function’s implementation:

`python
# stateResident is a Boolean value that is True if a student is a resident in state
# GPA is a floating point number between 0 and 5.0 and represents a student’s grade point average
# GPAPercentile is between 0.0 and 1.0 and represents the percentile ranking of the student’s GPA at their school
# SAT is an integer between 400−1600
# essayScore is an integer between 1 and 10, 10 is better
# Returns a Boolean, True if the student is admitted.
def admit(stateResident, GPA, GPAPercentile, SAT, essayScore)
`

* Ask the students to provide example values for you to try. Ensure the examples cover a range of possible inputs.

* Pose the question: is it fair? What would they want to know to make that judgement? Capture the questions they have about the function in a shared space.

* Organize students into small groups. Task them with tinkering with the function, trying different inputs and observing the resulting outputs, and trying to build a model of how they think it works.

* Have each group share the rules that they think govern the function’s behavior.

* Pose the question to the class again: is it fair?

* Reveal the logic of the algorithm:

`python
if stateResident:
  if GPAPercentile >= 0.9:
    return True
  else:
    return (GPA > 3.0 and SAT > 1,200 and essayScore >= 8) or 
           random.random() > 0.5
else:
   return GPA > 3.7 and SAT > 1,400 and essayScore >= 9
`  

* After giving students a chance to see what logic they got right, reflecting on why it was so hard to understand its behavior without seeing it’s logic.
=

This second session introduces the idea that functions are not necessarily transparent: admissions processes algorithms are rarely transparent, and so they often cannot be examined for fairness. They also reveal how even simple and small programs can have surprisingly complex behaviors that are hard to reverse engineer. Students should leave the session understanding that functions are an idea that exists both in the world, and in computer science, and that they are ways of encoding the logic of decisions.

The third session engages students in critically reflecting on the fairness of the algorithm.

=
### Session 3: Admissions function fairness

* Bring up the algorithm again, and explain that it’s an approximation of the admissions function used by Texas public universities, which has a "top 10%" rule.

* Divide the class into philosophical chairs groups and prompt: is it fair? What is fair about it and what is not? Capture responses in a shared space.

* *Formative assessment*. Divide the class into small groups and ask them to revise the function’s logic, grouping teams by the position they take on the function’s fairness. Prompt them to discuss how they would change its behavior to make it more fair, and have them reflect those changes in revisions to the algorithm. Ensure they test their functions to ensure that it implements the behavior they intend. All functions should take the same inputs and provide the same possible outputs, just using revised logic. Negotiate when the revisions are due and how they’ll be presented and evaluated.
    ** This is _responsive_ in that students center their own values and notions of fairness.
    ** This is _participatory_ in that students are shaping what they are making and how it will be shared with their peers.
    ** This is _educative_ in that the process of constructing logic will compel hard decisions about fairness, revealing the limitations of using logic to make subjective decisions.
=

Students should leave the third session with a new perspective as a function author, envisioning new notions of admissions fairness and translating them into code. They should also experience a sense of the difficulty of expressing subjective, nuanced ideas around fairness as logical rules.

In the next session, students evaluate each others’ revised algorithms, again trying to reverse engineer, but at the scale of many different opaque admissions policies.

=
### Session 4: Hidden policies

* Have students open their revised programs.

* Present a series of student cases, and have each group use their function to compute the admissions decision, holding up their hand if they admit the person. After each student example, have each group defend their algorithm’s decision.

* Bring the class back together as a group for a series of discussion questions:
    ** Are any of the versions more fair than others?
    ** What kinds of inputs are missing from the function?
    ** What does fairness in college admissions mean?
    ** Should colleges be required to make their decisions transparent?
    ** Should admissions decisions be made by algorithms, by people, or both?
    ** Should there even be college admissions?

* *Summative assessment*. Prompt the students to use the discussion to write an essay articulating their own position on how admissions should work, to what extent rules and cutoffs should be involved, and to what extent these rules should be encoded as functions that others cannot inspect. Discuss what qualities might make a good essay, co-constructing a rubric for evaluating the essays.
    ** This is _responsive_ in that students are asked to articulate their own values and response to others’.
    ** This is _participatory_ in that students shape the criteria that are used to evaluate their writing.
    ** This is *educative* in that in developing an argument for their values, they may surface tensions that cause them to question their positions.
=

Sessions should leave this session with a greater critical consciousness about college admissions policies, different notions of admissions fairness, the role of algorithms in encoding and automating these policies, and likely some position personal about fairness. They should also have a stronger sense of how functions encapsulate logic, which is a way of hiding information. This might be beneficial for someone implementing software, but can be a way of maintaining secrecy and holding power over people who are subjected to a function’s output.

Whereas the methods presented earlier explicitly focus on developing skills in using and designing functions, this method prioritizes critical consciousness over skills. This is a tradeoff in learning objectives: students who focus on designing functions will be more capable of writing programs to solve particular computational problems, but may not see the social problems they might create with their designs, whereas students who focus on critically examining the implications of functions might see their consequences more clearly, but be less well positioned to design them. A curriculum that balances these two over time might resolve these tradeoffs.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaCS
@csta3ACS01
@cstaAP
@csta2AP10
@csta2AP13
@csta2AP14
@csta2AP16
@csta3AAP17
@csta3AAP18
@csta3AAP20
@csta3BAP14
@csta3BAP16

@toleranceHeader
@toleranceAction
@tolerance12
@tolerance14

@teacherHeader
@teacher1
@teacher1a
@teacher1f
@teacher3
@teacher3b
@teacher3e
@teacher5
@teacher5a
@teacher5c
@teacher5d
@teacher5e