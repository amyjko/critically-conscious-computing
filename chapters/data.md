=
### _Key ideas_
* Data structures are how computers organize data to facilitate computation.
* Variables are the simplest unit of organization
* Lists help organize sequential information
* Dictionaries organize collections of information
* Databases organize large collections of similarly structured information.
* Just as data can be reductive in its representation of the world, data structures can impose unrealistic order on exceptional, ambiguous, or shifting information in the world, reinforcing or creating systems of oppression.
* Teaching data structures is still more art than science, especially when trying to integrate questions of diversity and justice.
=

Earlier in the [Encoding Information|information] chapter, we discussed the difference between information and data: the former is something that we perceive and interpret in our minds, whereas data is something encoded. Sometimes these encodings are visible and tangible (as in ink in a printed newspaper), but increasingly, these encodings are in binary, and invisibly stored in computer memory. Both information and data can contain bias--poorly representing identity, for example, or even misrepresenting it--but data has a way of hardening the bias in information because of its rigid requirements for order, and the persistence and ease with which it is archived and shared in the world.

What we did not discuss in that earlier chapter, is where and how data is stored so that it may be used by computer programs. It’s one thing to devise ways of encoding information as data--that is fundamentally about deciding how to represent information as bits, and in the process, decide what loss of fidelity, accuracy, and diversity is worth the ability to process that data at scale. But it is another thing to decide how to organize that data into structures that can be used for computation. These structures, which we broadly call *data structures*<goodrich14>, have their own potential for misrepresentation.

In this chapter, we’ll describe many types of data structures, from the smallest possible units of storage (variables) to the largest and most complex data structures (databases), and then return to each of these data structures’ capacity for injustice. We’ll then end with a discussion of how to teach data structures critically, developing students’ awareness of the power and peril of organizing data for computation.

|question.jpg||TODO Something that conveys many tiny boxes with labels on them in which only one object can be held, and many single values, like a number or a word, about to enter those differently labeled boxes.||

# Variables and Data Types

The simplest of data structures in computer programs is the *variable*. The choice of this word "variable" stems from its similarity to the idea in algebra, where some symbol, often the letter "x" in an algebraic expression, represents some mystery number to be discovered through algebraic manipulation. Variables in computer programs are like this in one way: they have a name to represent some value. But unlike in math, variables in computer programs are not mystery numbers to be discovered at all: rather, they are like containers that can store a single value, such as a number or some text, and whose value can change depending on the need of a program whenever a program decides to change it.

This basic metaphor of a variable as a container has limitations. For example, a physical container might be able to contain multiple things, but variables in computer programs can only contain one thing. Physical containers might be able to contain my types of things, but in some programming languages, variables are only allowed to store one specific type of data (e.g., only numbers, only text), based on whatever choice a programmer has made about their storage type. Variables, therefore, are often like a _tiny_ box with a very specific shape, in which only one thing can fit, and depending on the programming language, only one thing of a particular kind.

To explain variables more concretely, let’s consider the basic problem of representing the identity of the first author of this book. Identity is a kind of information that might entail many things, depending on who the author is interacting with. For example, if they were interacting with the U.S. Internal Revenue Service, they might want the author’s tax ID, which is a social security number--a nine-digit number, usually written as groups of three, two, and four digits separated by dashes (e.g. `123-45-6789`). They might also want their name. They might also ask for their signature to prove that they are who they say they are. These notions of identity, of course, do not fully capture the first author’s identity, which might also include information about race, ethnicity, culture, personality, and countless other complex details. This reduction from information to data is the essential challenge--and essential limitation--of using computers to represent anything about the world.

To simplify the problem of representing identity, we might just start with a simple number: the first author’s social security number. Let’s pretend that it is this:

`
555819297
`

To represent that nine digit number on a computer, we have to think of some data structure to encode it. One possibility is to encode it as a binary number. As we discussed in [Encoding Information|information], this is the format that a computer is most comfortable processing, since machine instructions can operate on them directly. Here is the number above in binary:

`
00100001 00100001 00100001 00100001
`

Those are 32 binary digits. (We separated them into groups of 8 to make them easier to count, much like putting commas between groups of three decimal digits, as in `12,252`). To store this number, a computer would need to reserve 32 bits in memory to represent each digit. As we discussed in [Computers|computers], computer memory is stored into 8-bit sequences called *bytes*, so to represent these 32 bits, we would need 4 bytes (since 32 / 8 = 4).

Earlier we said that working with bits is a burden for people who program computers, and this should show why. Because most Western students learn arithmetic in decimal and not binary, it’s hard for us to comprehend the examples above. It’s hard to think about processing such large volumes of ones and zeroes. And it’s also hard to think of computer memory as a single long sequence of millions of ones and zeroes (even though that’s exactly what it is).

Variables were invented to reduce this complexity. A variable is a named symbol in a program that represents the binary digits at a particular location in a computer’s memory. For example, imagine the number above, where each byte was labeled with a number to represent it’s address (like a mailing address):

`
00100001 00100001 00100001 00100001
    0        1        2        3
`A 32-bit number, with each 8 bits given an "address".

In a computer program, if we want to refer to the value above, we can just say _"it’s the 4-byte number stored at the address 0-3"_. A variable, then, is just a specific location in a computer’s memory, given a name. Variables then go further, avoiding the rather clunky _"4-byte number at"_ phrase and just giving it a human readable name like `socialSecurityNumber`, or `ssn`, or whatever else we like to mean _"the four byte number stored at 0"_. To the computer, the name is completely arbitrary--in fact, when a program is compiled into machine instructions, as we described in previous chapters, the names are stripped away and ignored. Variables have names therefore only to help a person writing a program remember what the data represents.

Because variables can be named whatever we want, it is much easier to refer to and manipulate data. For example, in Python, we can do:

`python
ssn = 555819297
# Check if the number is within the California range.
if ssn >= 545000000 and ssn <= 573999999:
    print "Born in California!"
`A Python program that analyzes a social security number.

According to the [U.S. Social Security Administration|https://www.ssa.gov], the first three digits represent birth place, but no, the first author was not born in California). In the first line above, since the variable’s name is on the left, this line is known as an assignment statement. The program’s job is to compute the value to the right of the = sign, then store the value at some address in memory, and remember that `ssn` refers to that address. In the `if` statement in the program, since `ssn` isn’t on the left side of an assignment statement, the program’s job is to first identify which address in memory that number refers to, and then ask the computer to obtain the value stored at that address. The power of variables is that all of that is presented simply as a single name, ssn.

The details above overlook an important question, however: how does the computer know that the 32 bits stored in memory above are a number, and not something else, like a word? Bits are used to represent everything in computers, including text, images, videos, and other data, so what makes those bits represent a number? This is where *data types* come in. Data types are how programming languages indicate the meaning of the bits stored in memory. In the case above, Python noticed that the value `555819297` was an integer data type, which means a positive or negative whole number with no numbers after the decimal point. Because 𝜋it recognized it as an integer, it guessed it’s data type as a 32-bit integer.

What if, however, those binary digits were interpreted as text? The [ASCII|https://en.wikipedia.org/wiki/ASCII] format, for example, represents each character in Western languages as 1 byte (8-bits). Did you notice how each of the 8-bit sequences was the same number, `00100001`? In decimal, this is `33`, which happens to correspond in ASCII to the character `!`, so if the computer interpreted the bits above as 8-bit Unicode text, it would be the text:

`
!!!!
`

Had our Python program instead said this, what would have happened?

`python
ssn = "!!!!"
if ssn >= 545000000 and ssn <= 573999999:
    print "Born in California!"
`

The same bits would have been stored in memory, but Python would now think that the variable ssn is what Python calls a string, instead of an integer. Then, when it reaches the expression `ssn >= 545000000`, it would be confused: how does one check if `!!!!` is greater than `545000000`? It can’t, and so the program would quit, giving an error that the greater than or equal to equality requires two numbers to execute, but it got one string and one number, which aren’t comparable. Data types are therefore an essential concept in encoding data structures as bits, helping to find errors in a program’s logic.

Some basic data types like strings have common operations that can help analyze data. For example, string data types have many common operations.

* In Python, adding `.len()` after a string value or variable will compute the string’s length. For example, `"!!!!".len()` would compute `4`, and `"".len()` would compute `0`. If the string `"Amy J. Ko"`, the first author’s name, were stored in a variable named `name`, `name.len()` would return `9`, including all of the letters, spaces, and punctuation.

* In Python, adding `[start:end]` after a string will compute a substring. This operation relies on the concept of an index, a numbered position for each symbol in the string (in Python, starting counting from 0). The substring operation requires a start index, plus an optional stop index, and computes the part of the string corresponding to those indices. For example, `"Amy J. Ko"\[0:3\]` would compute `"Amy"`, since `"A"` is at index 0 of the string, and `"y"` is the last letter before index 3. We would get the same result with `name\[0:3\]`, if the variable name stored the same string.

* In Python, using the symbol `+` we can *concatenate* strings, combining them together in sequence. For example, `"Amy " + "J. " + "Ko"` would compute the string `"Amy J. Ko"` (notice that we had to explicitly include spaces after the first to parts). If a variable named name stored `"Amy J. Ko"`, `name + name` would compute `"Amy J. KoAmy J. Ko"`.

* In Python, we can use the operations `int(string)` and `string(int)` to convert strings to numbers and numbers to strings. For example `int("123")` would compute `123`, and `string(123)` would compute `"123"`. But `int("kitten")` would generate an error, since there’s no way to convert the word `"kitten"` into an integer.

We can use operations like these to write programs that are more careful about interpreting data. For example:

`python
ssn = "555819297"
if ssn.len() != 9:
    print "invalid social security number, expected 9 digits"
elif int(ssn[0:3]) >= 545 and int(ssn[0:3]) <= 573:
    print "Born in California!"
else
    Print "born somewhere else!"
`Using string operations to check for a valid social security number.

This example is more robust, because it first checks to verify that the social security string has 9 symbols. If it doesn’t, it prints an error. If it does, it uses the substring operation to check just the first three symbols of the social security number.

Whereas Python allows variables to store any type of data, other programming languages are much more strict. For example, the Java programming language requires all variables to have a *type declaration*, which specifies what type of data they may store:

`java
int ssnAsInteger = 555819297
String ssnAsText = "555819297"
int ssnTypeError = "555819297"
`One of these lines has a type error.

In the example above, line one assigns an integer value to the `int` variable `ssnAsInteger`, and a string value to the `String` variable `ssnAsText`. Both of those are valid assignments, because their values match their declared data types. But the last line is an error: it assigns a `String` value to an `int` variable, which is a *type error*. Java is more strict than Python about type errors because requiring programmers to declare types can help the compiler automatically find errors in programs, where data values of the wrong type find their way to calculations that cannot operate on those types, leading to other errors.

The examples above show two commonly used data types, integers and strings, but many more exist. *Real* numbers, which computer scientists call *floating-point* numbers, are represented by the `float` type in Python. This allows programmers to store numbers like `3.1415926` (an approximation of the mathematical constant 𝜋). The `bool` datatype is used for Boolean (true/false) values. Python even includes built-in data types for more complex structures such as lists and dictionaries, which we will discuss below. Other programming languages might include different built-in types, depending on the types of information the designers of that language considered most important. The data types that a particular programming language like Python makes available can impose limitations on how programmers can represent their data, and therefore on what types of programs can be written.

It’s easy to get caught up in all of these technical details and forget that all variables store data that represent something in the world. For example, while social security numbers are a well defined data type, they are still fraught with problems: not all people who live in America have them; they are sensitive data that can be used to steal identity; they can change if numbers are lost; and they reveal information about people such as where they were born. And other aspects of the first author’s identity that one might try to store in a variable might be even more complex, including age (which depends on time zones), race (which depends on her family’s history of immigration and the historical geographic boundaries around nations). As we discussed in [Encoding Information|information], data is often a reduction of a much messier, and often uncertain and changing reality. Variables are therefore a rigid, reductive data structure tool for storing those imperfect models of a complex world.

|question.jpg||TODO Something that conveys a long list of many nearly identically shaped things and a another thing with a unique shape that is excluded from the list, as well as some kind of robot machinery that’s processing each item in the list one item at a time.||

# Lists
As should be clear by now, data structures are not "natural" in any sense. How to store numbers and text in memory, and how to conveniently change and refer to values in memory with variables, were very much inventions, each aimed at solving a particular problem of expression to make the work of a software developer easier. 

Soon after variables were invented, developers encountered another problem. What if a developer wants to write a program that interprets the internal structure of a social security number? After all, as we noted above, the first three digits represent a state in the United States, the next two represent a "group code" and the last four a "serial code" (all people born in the U.S. are assigned a serial code in the form of a social security number). We could take the integer representation we have, and store each digit in a variable:

`python
ssnDigit1 = 5
ssnDigit2 = 5
ssnDigit3 = 5
ssnDigit4 = 8
ssnDigit5 = 1
ssnDigit6 = 9
ssnDigit7 = 2
ssnDigit8 = 9
ssnDigit9 = 7
ssnArea = ssnDigit1 * 100 + ssnDigit2 * 10 + ssnDigit3
if ssnArea >= 545 and ssnArea <= 573:
    print "Born in California"
`A cumbersome way to represent each digit of a social security number.

With this representation, we could more easily check individual digits, but if we want to check the specific groups of digits, we’d have to translate them back into numbers, as in the example above, before we can compare them. A helpful alternative is to create a *list* data structure, which represents a sequence in memory of values with a particular data type. A list is an example of a *compound data structure*--a data structure that is made by combining values of other data types. In Python, we might break our social security number up into the three groups of digits we care about:

`python
ssn = [555, 81, 9297]
if (ssn[0]) >= 545 and ssn[0] <= 573:
    print "Born in California"
`Using a list to store three values in a sequence.

The `[0]` in the example above refers to the *index* in the list that we want to refer to, much like the indices of a string as we discussed above. In Python, the first index of an array is numbered 0, and second numbered 1, and so on. So `ssn[0]` refers to the value `555` in the example above. This representation makes it much easier to refer to specific parts of the social security number, but makes it a little harder to print the whole number, because now it is in three separate groups. Fortunately, programming languages are usually built to make it easy to loop through arrays, as we discussed in the previous chapter:

`python
ssn = [555, 81, 9297]
for part in ssn:
    print(part, , end=" ")
`Using a loop to iterate through a list's values.

This `for` loop steps through each item of the list (items at index 0, 1, and 2), stores the value of the list at each index in the variable part then prints the part (telling print to add a space after the part rather than a new line).

Lists have many helpful operations for doing other types of manipulations. For example, in Python, we can do:

`python
ssn = [555, 81, 9297]
ssn.append(123)
ssn.remove(81)
`Adding and removing items from a list, in meaningless ways.

This example adds the number `123` to the end of the list and then removes the first value in the list, starting from the beginning, that’s equal to `81`, resulting in the list `[555, 9297, 123]`. Of course, this makes no sense: we don’t manipulate social security numbers in this way, and the resulting list is an invalid social security number. In fact, social security numbers do not change one part at a time; they are changed in entirety. Just as in the examples above that compared an integer to a string, this _should_ be a data type error: if Python knew that our list represented a social security number, it would be able to warn us that it’s not valid to append or remove numbers. However, Python does not know that, because it does not know anything about social security number data types and we didn’t teach it the rules about social security number data types. Therefore, it can’t help us find that mistake. It’s up to a programmer to ensure the logic of the program is consistent with the logic of the data types in the world--and if some information has no well defined data type (e.g., personality) or the structure or rules of a data type is disputed (e.g., gender categories and whether they can change), then there is no way for a program to represent that data type correctly. Programs and programmers nevertheless attempt to represent such information as data structures, and use that data to make decisions; this is one way that data structures can oppress.

|question.jpg||TODO A depiction of a social media profile showing lots of metadata about a person, such as their name, location, interests, etc., but also not faithfully representing the person entirely, providing an example of a named record and its approximation of reality.||

# Named Records

While the list in the previous section made it a bit easier to check particular parts of the number, the invalid operations in the last example shows that there’s more work to do in faithfully representing social security numbers as a data structure. The next invention *named records*, tried to solve this problem of more accurately representing compound data. These are collections of variables that have some shared purpose in representing a single entity. The simplest kind of named record is a *dictionary*. In Python, a dictionary looks like this:

`python
ssn = {
  "area": 555,
  "group": 123,
  "serial": 9297
}
print(ssn.area)
print(ssn.group)
print(ssn.serial)
if (ssn.area >= 545 and ssn.area <= 573:
    print "Born in California"
`Using a dictionary to represent a social security number makes printing it harder, but checking it's values easier.

This example is different from the list example in several ways. It gives an explicit name to each part of the social security number, which can be accessed using a "dot" syntax, where the name before the dot represents the dictionary, and the name after the dot represents the "key" in the dictionary referring to a specific value. Each key is much like a variable, in that it has a name, and points to a specific value. This notation makes it easier to read the conditional that checks the social security number’s area. But because it’s not a list, it’s once again harder to print the whole social security number, because we cannot use a loop to step through each part. In fact, the dictionary data structure has no inherent order: it’s up to the developer to remember that the desired order is `area`, `group`, then `serial`. That leaves room for mistakes when trying to convert it back to an integer for other reasons.

However, as should be quite clear, we are still far from succeeding at representing the first author’s identity. It’s taken a lot of work to even represent just one narrow dimension of her identity, her social security number. But dictionaries, and any type of data record with named fields, can help us rapidly expand the amount of data we can store. Consider, for example, this much more detailed record of the first author (with fabricated social security number and birthdate, to prevent identity theft):

`python
person = {
    "name": "Amy J. Ko",
    "birthdate": "April 19th, 1980", # Not the author's real birthday
    "gender": "woman",
    "citizenship": "USA",
    "ssn": {
        "area": 555,
        "group": 123,
        "serial": 9297
    }
}
`A dictionary with another dictionary inside it.

This record is full of new kinds of data, including name, birthdate, citizenship, and our original social security number record. In creating this record, we have made a number of important decisions about how to represent our data. For example, we’ve chosen to represent names as a single string. This will make it more challenging to find just a person’s given name or surname, but it will also make it easier to represent people whose names do not follow the Western pattern of given name-middle name(s)-surname. We’ve also chosen to represent birthdate as a string, which might make the date easy for a human to read, but might also make it difficult for our program to determine which of two birthdates is earlier. Each of these choices could have been made differently, and as we discussed in [Encoding Information|information], each carries consequences for how the data is used elsewhere in our program.

But the example above also does another new thing: the ssn property in the dictionary didn’t just point to a single value, it pointed to another dictionary. This is related to the powerful idea that variables, whether individual ones, or those stored in dictionaries, can really refer to any value. In this particular case, the value was another data structure, a social security number. Variables, therefore, can be used to help construct compound data structures, as in this example:

`python
ssn = {
  "area": 555,
  "group": 123,
  "serial": 9297
}
person = {
    "name": "Amy J. Ko",
    "birthdate": "April 19th, 1980", # Not her real birthday
    "gender": "woman",
    "citizenship": "USA",
    "ssn": ssn
}
`Using the variable `ssn` to assign a value to another dictionary.

This example first builds a social security number dictionary, then builds a person dictionary, and points the `ssn` property to the existing dictionary that `ssn` refers to. From the perspective of the computer, the variables are just pointing to an address in memory where some bits are stored, and these bits refer to a whole compound data structure that stores a social security number. Note, however, that even though the variable name `ssn` and the dictionary property `ssn` have the same name, they refer to entirely different things.

This ability to flexibility refer to data has risks, however. What if the program did this?

`python
ssn = {
  "area": 555,
  "group": 123,
  "serial": 9297
}
person = {
  "name": "Amy J. Ko",
  "birthdate": "April 19th, 1980", # Not her real birthday
  "gender": "woman",
  "citizenship": "USA",
  "ssn": ssn
}
ssn.area = person
`Another example of a type error.

That last line changes the value of the social security number’s area digits to the entire person data structure. This is another example of type error; it shouldn’t be possible to set the area of a social security number to a person. But once again, because Python has no concept of what a social security number is, or what a person is, it cannot detect this problem: it is up to the software designer to design these rules, and the software developer to implement them.

Does the data structure above fully represent the first author’s identity? Of course not; she is far more complicated than just the data in this record. However, because this is the level of detail of identity data that banks use to identify us, this is enough data for someone with malicious intent to (falsely) prove to a banking website that they are the first author, allowing them to obtain her password and wire all of her money to a thief’s bank account. Data structures such as the dictionary above also create systems of oppression in the rules that software enforces around data types: can the name, social security, or gender be changed? Can the birthdate be corrected if false? Can the record be deleted and by whom? Who has access to the data? What happens if the United States changes how social security numbers are formatted? Python certainly doesn’t help with any of these questions; it is up to software designers and developers to make decisions about data structures that avoid creating systems of oppression.

Dictionaries can be combined with variables and lists to represent many other common data types in CS. For example, *trees* are one foundational data structure, which can represent hierarchies of information. Trees are a collection of nodes, each with a left and right branch, and potentially some value represented at each node. Imagine, for example, a dictionary that stores three values:

`python
mom = {
    "name": "Daria",
    "mother": None,
    "father": None,
    "children": []
}
dad = {
    "name": "Dan",
    "mother": None,
    "father": None,
    "children": []
}
child = {
    "name": "Jan",
    "mother": mom,
    "father": dad,
    "children": []
}
mom.children.append(child)
dad.children.append(child)
`Building a family tree with dictionaries.

The example above makes a part of a family tree, with a child named "Jan", who has a mother represented by the mom dictionary, and a dad represented by the dad dictionary. The two lines at the end add the child to the list of children that the mom and dad have. Each of the mom and dad dictionaries have mother and father properties as well, but those properties are set to None. Of course, this doesn’t mean that these two people don’t have parents, just that there’s no data to represent them. It might not even mean that mom and dad do not have other children; it may just be that there’s no data about them. And of course, all of these labels "mother" and "father", and the idea that children can only have two and only two parents are entirely exclusionary. Some children have only one parent, some have two mothers, some have two fathers, some have non-binary parents with no gender, and some may even have more then two parents or guardians. So even our attempt to use all of the data structures we’ve discussed to create a more sophisticated tree data structure fails to represent the diversity of families.

|question.jpg||TODO A depiction of a large table of data with column names and row numbers and people narrowly crammed inside each row, represented by the values in the table.||

# Databases

Whereas the data structures above are ubiquitous in computer programs, and necessary for processing the various types of data that software might store and compute, they aren’t how most modern software stores large amounts of data. Consider, for example, large social media platforms, which might store records for billions of people. Computer scientists needed more than a single computer and its memory to store such large amounts of data and new ways to quickly access that data for computation.

*Databases* are what they invented. Most databases are what are known as relational databases; they are much like large spreadsheets full of data, with tables, columns, and rows. However, databases differ from Excel spreadsheets in many ways:

* Unlike Excel, where there is a big unstructured grid of cells, a database organizes data into distinct tables, each with different kinds of data.

* Database tables are more rigidly structured than spreadsheets: each table has one or more columns, each representing a particular facet of data, and zero or more rows each representing a particular entity.

* Unlike Excel, where data is accessed by reading what is in the cells, or by writing simple formulas for calculating sums and averages of rows and columns, databases use queries to access data.

Here is an example of two database table (with fake data), mirroring our examples above:

,id (integer),name (text),birthdate (text),gender (text),citizenship (text),ssnid (integer)
,1,Amy J. Ko, April 19th\, 1980, Woman, USA, 91
,2, Brett Wortzman, January 3rd\, 2078, Man, USA, 82
,...,,,,,
A table of named people, represented by a few distinct data types.

,id (integer), area (integer), group (integer), serial (integer)
,91, 555, 123, 9297
,82, 123, 04, 8423
,...,,,
A table named ssn, storing social security numbers, represented by area, group, and serial.

The first table has two rows, each representing one of the authors of this chapter, and six columns. Each column has a name (which, like variables, could have been anything), as well as a data type (just like variables). Each column has a different purpose. The first column, `id`, represents an unique identifier, something to distinguish one person from another. This makes it quick to find a particular person by their ID. The `name`, `birthdate`, `gender`, and `citizenship` are like we discussed above, all problematic in their own ways. And the last column, `ssnid`, refers to the id of a social security number in the second table, meaning those numbers--`91` and `82`--each correspond to a row in the second table.

Unlike variables, lists, and dictionaries, the database tables above are designed for scale: each table could have millions of rows to represent millions of people; columns could be added later to represent other aspects of each person. And most importantly, because data is organized in this way, it’s possible to query the tables to quickly find people that match particular criteria. The most common programming language for writing queries is called SQL (which is just an acronym for "structured query language"). A simple query might be something like:

`sql
SELECT name, ssnid WHERE gender="Woman" FROM people
`

This example finds all of the rows in people for which the gender column is equal to the text `"Woman"`, and returns their names. If the table above only had the two values shown, the result would be:

,name,ssnid
,Amy J. Ko,91
The result of the query above is another table with the two requested columns.

If the table had millions of rows, the result might have had millions of women. But what if our query had more restrictive criteria? We can use Boolean operators, just as discussed in [Encoding Intelligence|intelligence], to express those criteria:

`sql
SELECT name, ssnid WHERE gender="Woman" and (citizenship="Canada" or citizenship="Mexico") FROM people
`

If our table only had the two rows above, the result would have been an empty table, since no row’s data matches that Boolean expression:

,name,ssnid
An empty table.

Databases have many clear advantages over other simpler data structures. Imagine, for example, trying to represent all of the data in Facebook in individual variables, or a big list or dictionary: no such list would fit in a single computer’s memory. Databases allow this data to be stored across multiple computers, and queried by multiple computers, enabling web applications that serve billions of people quickly and reliably.

However, while CS has developed deep technical insights about variables, lists, dictionaries, trees, databases, and other data structures, it has primarily focused on purely technical aspects of their qualities (e.g., how much memory each type of data structure takes, and what implications these space differences have on computer performance). But data structures have more than just speed considerations. As the examples above show, choices about how to organize data about the world directly embed sensitive information that can put people at risk to harm, and they embed political stances on what is possible or even desirable in the world. These considerations are fundamentally about the *fidelity* with respect to the world, their *resilience* for exceptional, marginal, or unexpected phenomena in the world, and the degree to which programs and their developers are aware of the meaning of and changes to information in the world that demand changes in data structures.

D’Ignazio and Klein, 2020, in their book Data Feminism<dignazio20>, provide a nice synthesis of principles that might guide anti-oppressive views of data and data structures. These might be adapted to data structures as follows, using a Facebook profile database as an example data structure:

* Examining how data structures are vessels for power in the world (e.g., how Facebook’s database is used to target advertisements).

* Challenging the unequal power structures that data structures reinforce (e.g., questioning the representation of identity in Facebook’s database tables).

* Connecting data structures to the embodied forms of information that they represent (e.g. recognizing that Facebook database profile table columns are not us, though they do represent us, imperfectly and problematically)

* Questioning the categories and hierarchies inherent to foundational data structures in CS (e.g., acknowledging that friendship is not a binary, even though Facebook’s database models it as one).

* Embracing pluralistic views of data (e.g., recognizing that different people might want to represent themselves with different information in their Facebook profile, and therefore no one database representation is adequate).

* Considering the context of data and data structure usage (e.g., recognizing that the primary purpose of the Facebook profile is to serve targeted advertising to enrich Facebook, not to communicate ourselves to our social network).

* Making labor visible (e.g., recognizing that every bit of data we create and add to our Facebook profile has value, and that Facebook users are only compensated for that value in the form of potentially more relevant advertisements).

Designers of databases and any other kind of data structures, therefore have a responsibility to account for these limitations in their choices, approaching the assumptions they make about data with humility, to avoid reinforcing systems of oppression, or creating new ones. And users of them, including everyone in society that uses data, needs to recognize that computers cannot structure and present reality perfectly, and that it’s imperfections can do great harm.

|question.jpg||TODO A depiction of students taking about how data is organized and represented||

# Teaching Data Structures

There are many things to know about data structures and many skills for using them:

* What various data types there are
* What various data structures are
* What operations can be performed on each kind of data structure
* What technical properties each data structure and its operations have (e.g., speed and memory usage)
* How to select an appropriate data structure for a given programming problem
* How to design new data structures to solve problems that existing data structure designs do not solve.

Understanding all of the ways discussed in the prior section that data, data structures, and data operations can inadvertently erase diversity, and reinforce or even create systems of oppression

Unfortunately, while there are many existing ways of teaching the above (with perhaps the exception of the last bullet), there is still little research insight into which of these ways are most effective. But there are some exceptions. For example, some studies have examined which types of metaphors for variables are most helpful in learning, finding that the "container" metaphor we used above works well when there is a single value involved, but that it breaks down when there are multiple values<hermans18>. Others have found that students can readily engage in imagining alternative data structure designs to represent information, and can explore their tradeoffs, but often overlook crucial considerations without prompting or scaffolding<gu20>. Some researchers have surfaced the critical difference between teaching students how to implement common data structures and how to use them<lister04>. A great many have explored educational technologies to support data structure learning, especially data structure visualization tools that demonstrate how operations on data structures manipulate their contents<baker99>. However, these approaches, and generally any approach that relies on visual descriptions of data structures, exclude students who are blind<baker19>.

While the above work provides some guidance into teaching data structures as technical ideas, there is even less work teaching data structures as sociotechnical ideas. In the unit plan below, we offer one approach to examining both the social and technical dimensions of data structures.

## Unit Plan: Examining Gendered Advertisements

This unit explores data structures in the context of personalized advertisements in social media. Its learning objectives are as follows:

* Students will recognize a social context in which data structures are used in unexpected ways.

* Students will be able explain the role of variables in labeling data, and distinguish that labeling from specifications of data types.

* Students will be able to distinguish between the representation of information as data and the information itself, identifying disconnects between the two.

* Students will be able to compare and contrast fundamental data structures and their uses in terms of their ability to represent aspects of identity.

The first session sets the stage with the world of social media advertising:

=
### Session 1: Social media ads

* Begin the class by asking students to report the kinds of advertisements that they’ve recently seen in social media, and why they think they might have received them. Write them down in a place everyone can see, along with the speculated reasons for receiving them.

* Present the idea of a social media profile on different social media platforms (e.g., Facebook, Instagram, SnapChat, TikTok), which includes information like names, birthdates, gender, and liked or disliked content. Render it as a dictionary data structure, with named fields, data types, and example values. The examples could come from a fictional person, or perhaps you.

* Ask students to share what they notice about the data structure, including the names of data fields, the values stored in them, and how that data is structured. Students will identify things like data they were surprised to see, data representations that they were confused by, and other observations.

* Present a screenshot of a social media websites’ advertising page, which reveals how the data structure is used to target advertisements, including age, gender, interests, and other metadata.

* Ask students to share what they notice about the advertising page, including what information advertisers can use, and how that information is structured.

* Gather students in small groups to discuss: how does this change their understanding of how advertisements are selected? Report out, generating a list of new theories about why students receive the ads they do.
=

This first session does a lot of work, anchoring from students’ lived experiences with advertisements, and from there surfacing students' beliefs about how advertising algorithms might work. The session then reveals insights about how advertising algorithms actually work, closing the loop between students’ actions on social media and how those actions are observed, recorded, and used by advertisers. By the end of the session, they should begin to see their activities on social media differently: not only as consumption of content and interaction with friends, but also as fueling a machine that targets advertisements.

The second session builds on this social context by focusing on one particular aspect of the profile data structure: gender. Gender is a powerful facet for learning for many reasons: every student will have an experience of gender (even an experience of not having one); it is an idea that has contested meaning at individual, social, and cultural levels; and it is also an idea often represented in reductive ways in data structures.

=
### Session 2: Deconstructing gender data

* Begin the session by reminding students of the social media advertising system, of students consuming and creating, data being gathered, and then advertisers using that data to select who sees their ads.

* Bring up the data structure example from Session 1 again, highlighting the gender field, and noting that gender is represented as a Boolean True or False value (which is how most social media websites represent gender for advertising purposes). Note that these are the only two possible values for this variable; anything else would be considered invalid by the programming language.

* Pose the question: is gender binary? As necessary, enumerate the many different gender identities that people describe, including distinctions between male/man, female/woman, non-binary, agender, transgender, transfeminine, transmasculine, and so on.

* Assemble students into groups to discuss: what are the implications of the social media profile excluding all of these other identities? After discussion, have groups report out and capture the many implications brainstormed by the groups.

* Using a Socratic seminar format, Discuss the implication that connect back to advertisements: Will users with non-binary gender identities receive more or less relevant ads? Will anyone target advertisements to them? Will anyone make products for them? Will any advertisers even know they exist? Will advertisements misgender them in ads? Use the discussion to surface the consequences.
=

By the end of this second session, students should recognize that even this simple data type choice has profound implications for people with marginalized gender identities, and that the programming language has no awareness of any of them.

The third session positions students as designers, asking them to take their notions of gender and translate them into a data structure that they think more faithfully represents gender.

=
### Session 3: Redesigning gender data structures

* Remind students of the critiques of the gender data structure from the previous session, summarizing the ways that the Boolean data structure might exclude or do harm.

* *Formative assessment*. Organize students into small groups of 2 to 3, and prompt them to redesign the gender data structure. To scaffold their design, provide direct instruction on the many possible data structure forms that they might choose, including an integer that can be one of several value corresponding to different gender categories, a text string that can include any description, a record that contains a set of predefined fields, or even other types of data, such as sound. For each, provide examples of data structures containing other types of data that they might adapt to gender, and the types of operations that are possible on each. Provide the data structure declaration from Session 1 again and have students revise the data structure. Facilitate group work, helping students understand the different data structures and data types, translating their conception of gender into a data structure design. Encourage students to also consider more radical changes, like removing gender from the profile altogether. Discuss with students how they would like to share their work.
    ** This is _responsive_ in that the assessment centers students’ own ideas about gender.
    ** This is _participatory_ in that students are shaping how they’ll present their work.
    ** This is _educative_ in that students will see many possible encodings of gender, recognizing the impossibility of representing gender fully as code.

* Conduct sharing as negotiated with students, ensuring that all students have an opportunity to see how each group encoded gender.
=

After this session, students should have not only perhaps new conceptions of gender, but also an understanding of other ways data might be structured, and how to express them in a particular programming language.

The next session extends this group work into the advertising domain, speculating about how their design might lead to less stereotyping ads.

=
### Session 4: Redesigning ads

* Ask students to return to their groups, then remind them of the problems in advertising that they brainstormed earlier.

* *Summative assessment*. Prompt the groups to take their revised data structure, and create a mockup of the revised user interface for authoring advertisements using the new gender data structure. What selections would advertisers be able to make about which genders to target when they’re paying for ads? How would ads be priced differently? Facilitate design by offering feedback on designs, especially in relation to whether their web form is consistent with their data structure definition. Prompt the students to take their revised data structure, and create a mockup of how the social media site would handle pronouns based on the new data structure. Would it use pronouns anymore, or perhaps collapse the data structure into a binary? Discuss how final designs will be shared and evaluated, then facilitate the groups by helping them map their data structure to gendered language.
    ** This is _responsive_ in that the assessment centers students’ own ideas about advertising.
    ** This is _participatory_ in that students are shaping the rubric by which their work will be evaluated.
    ** This is _educative_ in that students will link data structure design to its implications on how software is used and experienced.
=

After this session, students should be able to take their critical perspective on gender data structures and see how the data affects other systems, such as uses of pronouns in descriptions of activity, and advertiser decisions.

In the last session, students evaluate their designs by presenting them to their peers:

=
### Session 5: Evaluating ads

* Have each group present their redesigned data structure, advertiser interface, and pronouns to the class. Each group provides a few minutes of description, and then students in the class react with what they like and dislike about the design, with respect to how students with marginalized gender identities might be impacted.

* After presentations, begin a philosophical chairs discussion with the prompt, "Gender should be removed from the social media profile." Students move to one side of the room or the other based on their agreement, then students take turns defending their position, citing the design alternatives as evidence.

* End the class returning to the overarching theme of data structures imperfectly reflecting reality, but having concrete impacts in reality.
=

By the end of this last session, students should recognize how data structures attempt to represent the world, but often do so imperfectly, and yet are deployed into the world with these imperfections. Moreover, students might recognize that there may be no perfect representations of some ideas, as there is no agreed upon idea about some phenomena to be modeled by data structures. Throughout, students should be able to compare and contrast the different ways that fundamental data structures fail to capture these complex concepts, and recognize the power that developers have in shaping reality through data structure design.

While this unit might provide a rich understanding of data in society, it does so at the expense of any depth in technical aspects of foundational data structures and their operations. Details about data types, list operations, nuances about the differences between lists and arrays, and other conventional topics in data structure education might emerge in an extended version of the unit. On the other hand, it’s important to question whether robust knowledge of data structures is necessary for all secondary learning contexts; such concepts are currently college level material, and are also in tension with a more critical literacy of computing that might be more relevant to all students, rather than just those who aspire to be software developers.

@standardsHeader
@standardsBlurb

@cstaHeader
@csta2AP11
@csta3AAP14
@csta3BAP12
@csta3ADA10

@toleranceHeader
@tolerance7
@tolerance14