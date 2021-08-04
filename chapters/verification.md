=
### Key ideas
* All programming requires verification and debugging; it is an inescapable part of making software.
* Requirements are what people have agreed a program should do; failures are deviations from requirements; defects are the parts of a program that caused a failure. 
* Verifications skills include analyzing a program for defects, or running a program on various inputs to observe failures.
* Debugging skills include systematic strategies for identifying defects from failures.
* Verification and debugging engage key socio-political questions about who has the power to decide what makes software behavior "correct"
* Students struggle with verification and debugging partly because they are inherently difficult, partly because they often have brittle knowledge of programming languages, and partly because 
* Methods for teaching verification and debugging center on preventing errors, reducing cognitive load by separating skills, and by teaching systematic strategies; situating these in social contexts can surface their sociopolitical importance.
=

When we use software, we often have one of two experiences. Sometimes, it is magical, streamlining, enriching, and transforms our lives in ways we never could imagine. And other times, it is a nightmare of unreliable services, broken websites, and incomprehensible error messages. Too often, when it is the latter, we blame ourselves, imagining that we did something to cause the error, overlooking an important detail, clicking the wrong button, or entering the wrong data.

The reality is, however, that software is always broken in some way, and it’s rarely our fault. Even companies that competitively hire the most experienced software developers in the world make countless mistakes, amassing large databases full of undiagnosed problems, failures, and issues that people from around the world have reported. Much of these developers’ jobs is carefully analyzing and testing software before they release it to ensure the most critical issues are something users never encounter; and for those issues they do encounter, much of the rest of a developers’ job is carefully investigating each of these issues, trying to identify the one or two lines of code that caused the problem that so many other developers had overlooked in their careful testing. And if they do find these lines of code, fixing them can often require such large changes to the rest of a program that the only feasible choice is to leave the problem there, accepting the flaw as too costly to fix. The need to verify that computer programs work, and then debug and fix them, is therefore not a sign of inexperience, or that a person was not born capable of creating software. Rather, verification and debugging are an authentic, necessary, and central part of creating software that all people who code will inevitably and frequently do.

Of course, verifying and debugging software also requires skills, and these skills are not equitably distributed. The wealthiest and largest software companies in the world have some of the most skilled developers, and can therefore release software that mostly works most of the time. But other organizations, who may not be able to hire the most experienced, knowledgeable engineers, may find that their software is far less robust, reliable, and functional than that from big technology companies. And when the software they are creating serves some critical need, these can have dire consequences on the communities that depend on them. Consider, for example, New Mexico, where more than half of the population relies on a government software system to access government-subsidized health services, food assistance, and heating subsidies. In 2013, the state [launched a software system|https://apnews.com/article/c2c5e3335f934c18bcbcabe5e8e98152] built by Deloitte for $115 million, called the Automated System Program and Eligibility Network (ASPEN). When it went live, a defect in the system immediately kicked off tens of thousands of children from food benefits, and were not able to restore it for months; many never regained their benefits, not because they weren’t eligible, but because of the endless delays in fixing the defects in the system. Deloitte continues to charge the state nearly $1 million a month for maintenance, while its residents continue to be denied benefits.

Even when software does work as intended, there can be dispute about whether the intended design is a good one. Consider, for example, Indiana, which switched to a digital system built by IBM for managing unemployment support, automating case work instead of having face-to-face human case workers<eubanks18>. In the old system, when a form was filled out incorrectly, the case worker could correct it on the spot, or provide a missing form, streamlining the process for someone in crisis after losing their job. In the new system, many people in the same circumstances claims were denied, not because they were any less eligible, but because the new system would notify applicants of problems, give them often only a day or two to resolve the issue, and then if they missed this short deadline, force them to start over entirely in the application process, delaying their benefits by weeks or months. Was this a defect in the system? IBM said that the system was built as intended; and yet, the effect of this new system was to increase food stamp denials by 54 percent three years after launch. Normally, debates about whether something is a defect are internal, private, corporate decisions, played out amongst engineers; in this case, they played out in court, after Indiana sued IBM for what they argued were defects. [IBM counter-sued|https://apnews.com/article/8eb53eb9bdf94adb92e5b8b09559d8d0], won, and was awarded $52 million dollars of taxpayer money, because the judge decided that "intent" was the basis of whether the software was behaving correctly, not impact.

Therefore, while verification and debugging of software might seem like a purely technical skillset, it is actually at the heart of how software creators--developers, designers, and their organizations--negotiate disputes with software users about how software works and behaves in their lives. In the rest of this chapter, we will define and illustrate some of these skills, and then share methods for teaching them that highlights the way that these skills are a site for negotiating who decides what software does and doesn’t do.

|question.jpg|Placeholder|Something that conveys how something is supposed to go, and it deviates from that intended path into some unexpected direction, and people have to deal with the unintended behavior|Amy J. Ko|

# Requirements, Defects, and Failures

Before talking about verification and debugging, it is first important to distinguish between three ideas about software misbehavior: *requirements*, *defects*, and *failures*<ko05>. To illustrate these to ideas, let’s consider the simple Python function below:

`python
def average(numbers):
   sum = 0
   for number in numbers:
      sum = sum + 1
   return sum / len(numbers)
`A basic Python program for computing an average.

This function has a relatively simple *requirement*: it should, given a list of numbers, compute and return the arithmetic mean (average) of those numbers. It does this by creating a variable `sum` to accumulate the sum of all of the numbers in the list, and then divides sum by the length of the list, then returns it. The loop simply iterates through each value in the list, adding it to `sum`. Requirements like "_must compute an arithmetic mean_" are statements about what a program should do, and convey the designers’ intent. The explanation above illustrates how the program meets those requirements.

*Defects*, in relation to requirements, are ways that a program fails to meet its requirements. Look closely at the function above: can you see any ways that it will fail to correctly compute a mean? There are actually many, none of which are particularly obvious by reading the code:

* If `numbers` is an empty array, then the very last line will compute `0/0`, which will produce a Python `ZeroDivisionError` when the program executes. Is that what the requirement intended? Perhaps a better behavior would be to return an error message that there is no such thing as an average of an empty list of numbers. But producing a `ZeroDivisionError` isn’t exactly wrong, it’s just not particularly helpful. This simple example shows how requirements are rarely precise enough to consider all possible situations in which a program might execute, and therefore how it is often ambiguous what "correct" program behavior means.

* More concerning is that if we give the function above a list like `[1, 2, 3]`, we should get the average `2`, right? But instead, we get `1`. That’s because of a fairly severe defect on the `sum = sum + 1` line: it’s not adding the numbers in the list to the sum accumulator variable! It’s just adding `1` each time. It should be `sum = sum + number`. But we would only notice that defect in certain cases. If given the list `[1, 1, 1]`, the program would behave correctly, computing a mean of `1`, just using the wrong logic.

* Lastly, what if the array given to average is something like `["cat", "dog", "rabbit"]`? There is no such thing as an average of three words, and so the correct behavior might be to produce an error that says something like "`The array must have only numbers.`" Instead, because the program does not verify that the list only contains numbers, it would produce no failure, just returning the number 1. And if we fixed the defect above, we would get the (confusing) error `TypeError: unsupported operand type(s) for Div` on the last line, because the + in Python, in addition to computing addition, also concatenates strings, so the last line would compute `"0catdograbbit" / 3`.

All three of the issues above are *defects*, because they deviate in some way from the intended requirement.

What then, is a *failure*? Whereas defects are problems with the _code_ in a program, failures are problems with the _output_ of a program. In the program above, any time the program returns something other than a valid average or an intended error message, the program has failed. This distinction is important because programs with defects do not always fail. For example, if we gave the function above the arrays `[1]`, `[0, 1, 2]`, or `[5, -5, 1]`, it would correctly compute the mean of 1 each time. But that would have only been a coincidence; for any array with a mean of something other than 1, it would fail, producing incorrect output.

The example above illustrates that what counts as a failure depends entirely on how clear a program’s requirements are. We can all agree with some confidence that we know what an average is; we may not agree, however, on what the program should do when it receives data for which there is no average (an empty list, or a list of non-number values). Because the requirement is vague about that, whether the program is defective is vague. 

Vagueness in requirements, therefore, is at the heart of disagreements between what a program’s creators think a program should do, and what its users think it should do. Returning to the Indiana example shared earlier, perhaps IBM _did_ build the system according to Indiana’s requirements, but those requirements were vague. When considering the immense cost to people in poverty in Indiana, was IBM to blame for not further clarifying requirements with Indiana, or was the Indiana government to blame for not devising clearer requirements? Or perhaps _both_ are to blame for not ensuring that the requirements would equitably meet the needs of Indiana residents in poverty? While creating software might often seem like a strictly technical endeavor, these examples show that it is clearly not: whether software is working as intended is a socially-constructed, collectively-determined subjective judgement, not a strictly logical one.

|question.jpg|Placeholder|Something depicting a person inspecting code multiple times, each time in a distinct way, and judging whether what it does is correct or incorrect.|Amy J. Ko|

# Verification

Whether requirements are vague or not, it’s clear that programs are better without defects than with them. But the examples above show that it’s not always obvious from reading code what defects a program has. How do we find defects? There are essentially two overarching strategies. 

## Analysis

One strategy is called *analysis*, and involves reading code closely, and analyzing its behavior for deviations from requirements. We actually illustrated this in the example above through the phrase "_Look closely at the function above_".

In the most informal sense, analysis might just involve reading a program from beginning to end, trying to understand what it does, and looking for ways that it might deviate from requirements. Professional software developers read their code extensively to analyze it for defects<maalej14>, often using techniques like code reviews, to systematically read code to identify problems and opportunities for improvement<mäntylä08>, much like an editor might read books and news articles before publishing them. Students will often use similar informal reading comprehension strategies as they write programs, because as they make additions and changes to their code, they are already engaged in reading it. If students analyze their code systematically, reading every line of code to verify its logic, and if students understand the semantics of how the program will be executed, this can be an effective strategy for verifying a program. However, many students do not have a robust understanding of a programming language’s semantics, which will cause them to misinterpret what it will do. And many students do not read systematically<hermans16>, perhaps only reading the line of code that they changed, overlooking that lines before or after that might interact with the modified line. And so analysis, when done with an accurate understanding of a programming language, and a strict attention to detail, can be effective at finding defects. It just tends not to be effective when it is done informally.

One way of overcoming these difficulties with analysis is doing it collaboratively. In professional software development contexts, one method is called *code walkthroughs*<siy01>, this involves more than one person reading a program to find defects in a synchronous group setting. Because of the social context, groups tend to be more comprehensive in their reading, since someone will tend to notice when something was skipped; groups can also combine their knowledge of the programming language, leading at least one person to notice when a line is misinterpreted. Walkthroughs can help identify many defects, and even reveal questions about requirements. A related method is a *code review*<beller14>, in which one person shares their code with another person, and they analyze it, looking for defects and other ways to improve the code, much like an editor improving someone’s writing. Both of these methods overcome the limitations of one person’s ability to reason systematically about code by distributing the effort across many people, much like airplanes need two pilots, to ensure one doesn’t make an uncaught mistake.

## Testing

Whereas analysis involves reading code carefully, *testing* is a verification strategy that involves running programs with a diversity of inputs to a program and then observing whether it fails. Recall the program from the previous section:

`python
def average(numbers):
   sum = 0
   for number in numbers:
      sum = sum + 1
   return sum / len(numbers)
`A basic Python program for computing an average.

Testing the function above might mean generating many possible lists of values, executing the function with those lists, and seeing which of those lists produce a failure. For example, imagine we sent these lists to the function:

,Input, Output, Correct?
,`[]`, `ZeroDivisionError`, 𐄂
,`[1]`, `1`, ✓
,`[1, 2]`, `1`, 𐄂
,`[1, 2, 3]`, `1`, 𐄂
,`[1, 1, 1]`, `1`, ✓
,`["cat", "dog"]`, `TypeError: unsupported operand type(s) for Div`, 𐄂
,`6`, `TypeError: 'int' object is not iterable on line 1`, 𐄂

By enumerating many possible inputs, we found the three defects discussed earlier. In fact, we found a new defect too: if we give the function simply the number 6, it doesn’t know how to iterate through the number, since it’s not a list. 

As you might notice, testing requires some creativity, because one has to imagine all of the possible inputs a program might receive, and check each of them. And how many possible inputs are there to the function? This is why finding defects is hard: there are an infinite number of possible lists one might test, and so it is impossible to check every single possible input for failure. And this is just a simple function; any program with more complexity will have an even larger space of possible inputs (as hard as "more" infinite is to imagine). Therefore, the hard part about testing is finding a finite set of inputs that will adequately verify the program’s logic. In this case, we could get by with a non-list, an empty list, a non-empty list with a mean of 1, a non-empty list mean of not 1, and a non-empty list full of non-numbers. That would test most of the possible behaviors of the program, even though it wouldn’t test all of the infinite possible inputs.

## Defects are Inevitable
These two verification strategies of analysis and testing illustrate why defects and failures in software are inevitable: in even the simplest of programs, there are so many things that can go wrong, and finding the things that can go wrong requires careful, systematic, even creative thinking to imagine what might go wrong, and check a program for whether it can. Anyone with substantial experience programming quickly comes to learn this, and accept verification as a necessary part of creating functional programs, not a personal failure.

These two strategies also illustrate, however, how unlike some STEM disciplines, in CS, there often is no right answer to what program to make. Yes, our function should compute a mean when there is one, and there is a correct mean to compute. But what should it do with data for which there is no meaning? There is no universally accepted answer to that question; that is an issue of how to clearly communicate errors to a software user, so that they have enough guidance to use the software. And there are many ways to do that: in English, or some other language; with an error message, or a constructive guideline; with a short text statement or a link to an elaborate YouTube video that teaches the user what kinds of inputs the function can handle. Computer science is therefore a discipline that is much less about what is correct and incorrect, and much more about defining what is correct and incorrect in terms of requirements, ensuring that those requirements are safe, ethical, fair, and just; and then ensuring that a program meets those requirements through verification.

Because requirements, implementation, and verification are hard, this creates tensions around responsibility. Who defines what is required, and therefore "correct"? For example, let’s return to the New Mexico example from the beginning of this chapter, in which Deloitte launched a system with a defect. Could Deloitte have caught that defect before launch with better verification? Was the defect due to incorrect or vague requirements, or a mistake on a developer's part? Was there enough time in the contract to properly verify the system? Since it is not theoretically possible to find all possible defects, can software consultancies like Deloitte be held responsible for unexpected failures? Clearly Deloitte could have done more to verify, but would that additional verification effort have found the defect? Was the budget high enough to account for the additional verification effort that might have been required? None of these questions have obvious answers, and so when users encounter problems with software, it’s not always clear who to blame, or whether blame is even the right concept.

|question.jpg|Placeholder|Something that conveys the delicate work of finding and fixing the cause of a hidden problem in a system. Car engine repair and open heart surgery might be good metaphors.|Amy J. Ko|

# Debugging

Verification can help one find failures, but not necessarily the defects in code that cause them. In fact, because even simple programs can be complex, executing in many different ways in response to input, the causes of failures are rarely obvious. Consider, for example, the launch day of the [U.S. healthcare.gov|https://www.healthcare.gov] website in 2013. After the first day, only six people had successfully registered for health insurance, whereas millions had failed to successfully complete registration due to failures<anthopoulos16>. Surely this was a failure to meet requirements. But what had caused it?

*Debugging* is the process of finding the defects in code that cause failures. Ultimately, the challenge of debugging is that even simple programs, especially complex ones, can do so many possible things when it’s executed, but usually only a handful of those things are failures. Debugging is therefore a search activity, in which people have to find, amongst all of the lines of code, and all of the ways that code might have executed, the one or more parts of the program that were defective in a particular situation. Because it is a search, any programmer, whether professional, novice, student, or teacher, will often find it intimidating work. Questions abound: 

* Will I ever find the defect? 
* How long will it take to find? 
* What if I never find it? 
* How can I find it? 

Worse yet, because students are often writing programs with fragile knowledge of programming languages, it’s highly likely that they will introduce new defects into their programs<ko05>, only making debugging more challenging.

The key to supporting debugging is following strategies that scaffold a systematic search process<zeller09>. Most inexperienced programmers use a strategy like this:

1. Observe the failure
2. Inspect the line of code they most recently edited
3. Guess what in that line might have caused it
4. Change the line of code
5. Test, and if there was still a failure, return to step 1.

This is rarely an effective strategy<ko19,latoza20>. First, it is not always the case that the most recent edit created the defect; it may be that some line of code written earlier, even long ago, caused the defect, but it didn’t cause a failure until now. Not only is searching only in that spot is very unlikely to reveal the defect, but changing the program to find a defect risks introducing more defects, creating more failures, and perhaps even more complicated failures, that are even harder to debug.

As with verification, more systematic, comprehensive strategies are more effective. For example, one can use the analysis verification strategies described earlier, carefully and collaboratively analyzing a program to verify its logic with code walkthroughs or reviews. If done carefully and comprehensively, this will almost always reveal the defect. These methods just happen to feel slow and laborious, and so many programmers, even professionals, are reluctant to use it, because they hope that a faster strategy, such as the one above, might reveal it more quickly.

A faster, but still effective strategy is to work backwards from the failure, and ask successive "why" questions about the cause of the failure. For example, consider this function, which attempts to find the largest number in a list:

`python
def max(list):
  max = None
  for number in list:
    if max is None or number < max:
      max = number
  return max
`

This function uses a variable to remember the largest number found in the list so far, then iterates through the list, checking if the next number in the list is larger than the largest number it’s found so far. After checking every number, it returns. But, if we give max the list `[5,2,3]`, it returns `2` instead of `5`. Why? A working backwards strategy can help us find out:

1. Start from the line of code that returned the wrong output.
2. Identify what was wrong in the current line.
3. If this line has a defect, congratulations, you found it! Stop.
4. Otherwise, identify the lines of code that caused that wrong thing to occur.
5. Move to each of those lines of that line, and repeat step 2.

Using this strategy to debug the failure caused by executing max with `[5,2,3]`, we would do the following:

* Step 1. Move to line 6, because it’s the line that returned the wrong number.
* Step 2. The thing that’s wrong is the value of max; it should be 5, but it’s 2.
* Step 3. This line doesn’t have a defect, it just returns the wrong value, 2.
* Step 4. There’s only one line of code that could make max wrong: line 5.
* Step 5. Move to line 5 and repeat step 2.
* Step 2. The only thing wrong with line 5 is that it’s happening at the wrong time. It seems to be setting the max value to 2 instead of 5 at some point.
* Step 3. It’s not the defect.
* Step 4. The only line that makes line 5 happen at the wrong time is line 4, the conditional.
* Step 5. Move to line 4 and repeat step 2.
* Step 2. Reading line 4, we only update max when it is None, or when max is less than the current number in the list. But shouldn’t it be checking if it’s greater than the value in max?
* Step 3. This is the defect! Line 4 should be "if max is None or number > max"

Just as with the "forward" strategy of reading the program from beginning to end, this backwards strategy requires a systematic, step-by-step analysis of the logic of the program, and it will reliably help identify defects. However, it depends on careful logical reasoning about each step of the program. If one makes a logical error in analyzing the code or it’s behavior, or misinterprets how the program executes because they do not know the programming language’s semantics well, the debugging strategy will fail too.

As we shall discuss in the [Tools|tools] chapter, there are many debugging tools that can help people inspect the behavior of a failing program. For example, some tools can even automatically find defects, taking the steps in the strategies above and having a computer do them, quickly and reliably. However, the research is clear: tools are only as powerful as the people using them<burg13>. It still requires a person to reason carefully about how to use a tool to support debugging.

Just as with requirements and verification, debugging is rarely easy, and it is not always successful. And the difficulty of debugging often has to do with many different factors: the complexity of the program being debugged, the complexity of the requirements, and the skills of the people doing the debugging. This raises additional tensions about responsibility. For example, when the Healthcare.gov website failed, it’s clear that the contractor who built it--[CGI Federal|https://www.cgi.com/us/en-us/federal], a Canadian IT government contractor--was responsible for fixing it. But who was to blame for the delays in fixing it? It turns out that the project was underfunded (meaning there weren’t enough engineers to properly build or maintain the site), the project involved multiple different contractors who weren’t allowed to talk to each other (meaning that defects were hard to detect and repair without collaboration), and the company was only given a few months to build it (meaning that there was little time for verification). Failures were therefore inevitable, resulting in a launch before the site was ready, a long period of public debugging and repair, and millions without health insurance until it was fixed.

Stepping back further, it is instructive to compare ideas of verification and debugging in processes run by people and processes run by code. For example, imagine the human welfare eligibility procedures in New Mexico, where a person talked to a government employee to request services. In that case, "verification" was a human and organizational process, often by managers, investigating whether the employee was following government policies and protocols, offering training, and creating collaborative, social contexts where employees could learn from each other to offer effective services. These almost certainly were not perfect processes--there were probably some employees that were more effective than others and perhaps training probably wasn’t that effective. But when someone noticed an employee doing something wrong, "debugging" that employee was a human matter, identifying whatever behavior they were doing that was wrong, offering feedback, and ensuring they improved. "Verification" and "debugging" of human processes is thus a matter of good management and supervision of people.

In contrast, verification and debugging of code requires entirely different skills, by entirely different people. One single computer program was written to automate New Mexico’s services, meaning that every citizen that interacted with it was treated the same way, independent of who they were. If the program did something bad, it was up to the Deloitte engineers to inspect the program’s behavior and change it if it was wrong. Because of this, the government was no longer really in charge of ensuring its services were meeting its standard--Deloitte and its engineers were, even though they had no training in policy or interacting with people needing welfare. This fundamentally shifted power and responsibility for ensuring that government services were being offered "correctly" to a private third party, one that had little incentive to meet the public’s needs. In fact, because of the way the contract was structured, Deloitte received maintenance payments every month because there were failures to debug and fix, rewarding Deloitte for making mistakes.

|question.jpg|Placeholder|Something depicting a teacher and student inspecting code together, brainstorming, wondering, checking, and while many other students are having similar difficulties.|Amy J. Ko|

# Teaching Verification and Debugging

As we’ve noted throughout this chapter, verification and debugging are essential, authentic, and necessary practices in professional software development. Some organizations have entire quality control teams whose only role is to verify and debug software before release, much like quality assurance teams in other industries that produce food, clothing, and other goods do. Therefore, it is not surprising that these skills are central in CS learning standards.

What is surprising is how little attention these skills receive in most CS education. In post-secondary settings, for example, verification and debugging are not part of most curricula or course requirements. Students are generally expected to learn these skills independently as they write programs in response to prompts. The result is that many CS graduates enter their first job unprepared for just how much of their time is spent verifying and debugging code, and just how unprepared they are to do it<begel08,li15>. In fact, these gaps are so severe that many large companies organize multi-week, sometimes multi-month onboarding programs for new employees to learn basic practices in verification and debugging before they begin to work on any products<johnson10>.

Of course, addressing verification and debugging in secondary classrooms isn’t just about job-readiness--whether students are preparing for industry jobs, writing code as a means to personal expression, using code to analyze data in a math or science class, or even analyzing code from a historical or social scientific perspective--verification and debugging skills are part of understanding why software fails and what to do about it. In the rest of this section, we’ll survey what researchers have learned about student difficulties with verification and debugging, describe methods that have emerged for teaching them, and then offer a way of engaging verification and debugging that centers critical consciousness while developing students’ technical skills.

## Verification and Debugging Difficulties

Researchers have been studying student difficulties with verification and debugging since CS education emerged in the early 1960’s. Several basic facts have emerged about why students struggle. Some of these struggles emerge from the inherent difficulties of verification and debugging discussed earlier in this chapter:

* Requirements are often vague. If students do not know what they are trying to create, or they are struggling with ambiguities in what a teacher has asked them to create, students will be uncertain whether they are building the right thing and whether it’s behaving as intended<prather19>. When students are in charge of defining requirements for their programs, this may lead them to change requirements as they encounter debugging difficulties, just to avoid the hard task of finding defects.

* [Programming|programming], as we have discussed, is intrinsically hard; even experienced developers introduce defects. This is a normal part of software development, and yet students often wrongly believe that defects are a direct reflection of their innate ability to code.

* Verification and debugging, as we have discussed in this chapter, are intrinsically hard. They require cautious, systematic, and comprehensive inspections and logical reasoning. As with designing and implementing programs, even experienced developers struggle immensely with these tasks.

But learning contexts impose their own additional challenges. First and foremost, verification and debugging are often one of the first skills that students need because their programs are usually defective. This means that there is no simple separation between the skill of writing programs and the skill of debugging them. Students will be doing both, immediately, and need to be supported in both. This happens partly because most students (and anyone else writing code outside a professional context<rothermel01>), simply do not verify their programs in any systematic way. Most will test their code on one set of inputs, but not consider all of the other possible inputs a program might receive. This lack of basic verification means that students are often not even aware that their programs might fail until they let other people try them, or they submit them for assessment. Just as with professional software development, inadequate verification means that defects are overlooked, and only found later, when they are harder to debug.

Once students engage in debugging, there is an accumulation of other fragile knowledge that makes debugging difficult. Students of debug with only fragile knowledge of how programs execute in the language they are using, making it difficult for them to do basic subtasks in debugging, like understanding how a conditional might execute, or how a value might be returned from a function<mccauley08>. In addition to understanding how programs execute, students also face difficulties understanding how larger, complex programs execute, and fail to build accurate mental models of a program’s overall organization and behavior<mccauley08>. In the absence of any instruction on how to debug programs, students develop unproductive strategies of their own, leading to frustration and hopelessness <ahmadzadeh05,mccauley08>. All of these difficulties appear to stem from a pervasive difficulty that students have in reasoning systematically and logically about the logic of code<böttcher16>, which appears to be caused by the fact that adolescents have underdeveloped self-regulation and impulse control skills<ko19>, all of which are necessary for following the kinds of systematic, cautious skills involved in verification and debugging. The result is that even when students are taught effective debugging strategies, and even when they know they should use them, they resist following them, and instead use trial and error strategies in the hopes of finding quick fixes. They rarely do, resulting in programs that are even more defective. Compounding all of this, in the absence of substantial verification and debugging practice, pre-service and in-service teachers often struggle in nearly identical ways with the skills above, making it difficult to help students’ develop effective skills<kim18>.

The result of the difficulties above, especially in project-based learning, where students may be creating and debugging entirely unique defects, is often a classroom full of quickly frustrated students. Students' very first lines of code have defects, because they may not know the programming language well; they may have brittle skills for verifying their programs to detect defects and even fewer skills for debugging to find them. Teachers may get quickly overwhelmed with the diversity of mistakes that students have made, and students quickly lose self-efficacy in their ability to write programs. The result can be chaotic if students are constantly seeking help with debugging, since no matter how skilled a teacher is at debugging, helping each student with their unique problem will take far more time than is available. And if students are in a classroom environment where they might feel shame or stigma from seeking help, it can be the opposite, full of a silent sense of failure. Neither environment is conducive to growing students’ self-efficacy.

## Scaffolding Verification and Debugging

Because of the difficulties above, teachers and researchers have tried many things to reduce the challenges of debugging in CS classrooms.

Perhaps the most effective method found is to simply use programming languages and tools that prevent as many defects as possible. For example, many efforts in the 1980’s to create "structure" code editors as an alternative to text code editors were motivated by the idea that only allowing learners to edit programs in syntactically valid ways would prevent entire  syntax errors and could reduce major barriers to learning to code<teitelbaum81>. Modern manifestations of these code editors, often called "block-based editors"{Most actually use the phrase "block-based languages", which is [technically inaccurate|https://medium.com/bits-and-behavior/block-based-what-differentiating-programming-languages-environments-and-editors-59ae451af0a9].} are found with programming languages like [Alice|https://www.alice.org], [Scratch|http://scratch.mit.edu], and [MakeCode|https://makecode.com]. And they do exactly that, making it impossible for students to make syntax and some type errors, which can greatly reduce frustration and improve learning outcomes<weintrop15,weintrop17>. However, they are not perfect: block-based editors impose significant accessibility barriers to students who cannot use a mouse or cannot see; students also tend to perceive them as inauthentic<weintrop15b>.

|Gidget.jpg|A screenshot of Gidget showing a runtime error|Gidget, a game that teaches debugging skills as part of learning a programming language.|Amy J. Ko|

Of course, students can make more than just syntax errors: if there is anything wrong in the logic of a program, tools and editors won’t be able to find and prevent it. Most of the effective strategies for helping students avoid these errors entail separating the learning of program writing, verification, debugging. By treating these as distinct activities, students can not only focus on practicing each one at a time without the added cognitive load of the others, but also learn to view them each as authentic, distinct skills, each with their own challenges, and each requiring their own practice. For example, a number of studies have explored having students practice reading, verifying, and debugging programs before writing programs. For example, [Gidget|http://helpgidget.org] is a game that presents learners with a series of defective programs, each introducing a new programming language concept, but also a simple defect<lee14>. These short activities helped students robustly learn the semantics of each part of the language and helped students see debugging as an enjoyable puzzle rather than a distracting, demoralizing failure. Because the repairs to programs often only involved changing minor parts of each program, program writing skills were minimal, since programs were already designed and implemented. The approach of this game can be replicated by simply giving students a set of defective programs and explicit strategies for reading<xie18> and debugging programs<ko19>, giving students a sense of success each time they find and fix a problem. Only after developing reading and debugging skills might a teacher move on to teaching program writing skills<xie19>.

A second approach is to separate reading and writing, verification, and debugging by having students engage in code reviews or walkthroughs after writing but before debugging. Students might write draft programs, walk through to explain those drafts to their peers, and as they do, collaboratively discover defects with their classmates. This normalizes the idea that programs should be verified before they are deemed done, it helps find defects, mitigating the amount of debugging required, and it strengthens students understanding of the program that they are debugging by requiring them to self-explain it others before they try engage in trying to repair it. Code reviews can play a similar role, having peers swap programs and try to understand them. This assumes, however, that peers can robustly understand each others’ code, which may not be true. Pair programming methods can also offer some of the benefits of code review<denner14>, offering a second students’ perspective on the code being written.

A third way of separating writing, verification, and debugging is to simply explicitly structure separate writing periods from verification and debugging periods. The latter might be framed in authentic terms, in which developers in industry go into a "testing" phase of development to ensure what they’ve built is working, explicitly prompting students to pivot their mindset from a creative one, in which they are implementing new behaviors, to an evaluative one, in which they are judging whether their creations work. These verification and debugging periods could have any combination of verification methods, including the code reviews and walkthroughs above, or also "bug bashes", in which peers try to find failures in each others’ programs, learning to carefully document and describe them. They can also involve explicit debugging periods, in which teachers detail debugging strategies, and celebrate when students have diagnosed and fixed particularly hard failures. Throughout, teaching explicit debugging strategies can help when teachers can scaffold impulse control<ko19>, and tying debugging to students' cultural knowledge and assets can help students generate possible explanations for what has gone wrong in their program<lachney21>.

Each of these methods of separation might seem like they would take additional time. However, just as with professional software development, rushing to build something without verifying it nearly always leads to longer periods of debugging anyway, so it’s not clear that merging these activities saves students or professionals time. What is clear is that separating them can help students recognize each distinct activity and the skills it requires, practice each of those skills, and learn to conduct each of them with the different mindsets they require.

## Unit Plan: Critically Conscious Verification and Debugging

While the methods above can be effective at developing students' programming skills in the abstract, they do little to help surface the social, ethical, and moral tensions that arise in verification and debugging. Efforts to discuss these issues outside the context of verification and debugging would only signal that social issues are somehow separate from these activities, which they are not.

To illustrate how one might integrate social, ethical, and moral tensions while teaching verification and debugging, consider the unit plan below. It uses many of the effective methods above, while situating them in a social context that centers students in moral tensions.

Its learning objectives are as follows:

1. Students will be able to distinguish between program writing, verification, and debugging.
2. Students will be able to confidently practice distinct verification and debugging skills.
3. Students will be able to identify ethical and moral tensions in verification and debugging.

To achieve these learning objectives, the unit’s approach is to divide students into two groups--developers and users--and have them interact around the (inevitably defective) behavior of a critical software system. Following the guidance above, the unit does not involve writing programs, but rather reading, verifying, and debugging them, saving writing skills for other later units.

=
### Session 1: Defects

* Begin the lesson by asking students to share examples when software has not worked. What was the software, what broke, and what was the impact?

* Provide direct instruction on the distinction between writing, verifying, and debugging programs, situating explanations in examples of software with social and safety implications, such as health care, finance, and transportation.

* Ask students to share what software systems they depend on and what kinds of problems they would have if they were defective.

* Turn the conversation to who would be responsible if the software was misbehaving: the user, the developer, or someone else.

* Explain that the rest of the unit will put them in the role of users and developers to see if their perspectives change.
=

This first session sets the stage verification and debugging as sociotechnical activities, surfacing students’ experiences with defects, and their baseline sentiments about responsibility for defects. The second session builds upon this by shifting their perspectives to other roles:

=
### Session 2: Verification

* Present students with a game: each student will join a team that will be responsible for verifying and debugging from two different perspectives: the developers of the system and the users of the system. Explain that developers will see the code and are responsible for fixing it, whereas users can use the program, but can’t see the code, and have to advocate to the developers to fix it. A third role, the mayor, will be responsible for announcing the new system, resolving disputes, and clarifying the specifications.

* Present the student with the system, which can be as simple as a single-function that takes some inputs and provides a return value. Explain its requirements. For example, consider the function below, which encodes the logic for an automatic system for detecting speeding on a highway near a school and sending a speeding ticket price  proportional to the magnitude of the violation. It’s requirements are that it should return a ticket that is $100 for every 10 mph over 25 mph between 7-9 am and 2-4 pm, and a ticket that is $50 for every 10 mph over 35 mph at all other times. It contains both defects (on the hour boundaries) and design flaws, but these will not be revealed to students:

`python
def isSpeeding(militaryHour, speed):
  if (hour > 7 and hour < 9 or (hour > 2 and hour < 4):
    return (speed - 25) / 10 * 100
  else:
    return (speed - 35) / 10 * 50
`

* Ask for volunteers for mayor, and run an election if there are multiple volunteers. Have the remaining students count off to determine whether they are a user or developer, and organize them into separate teams.

* Explain a scenario in which the system has been deployed as is. 

* The developers’ job is to verify that it's behaving as intended by analyzing and testing the program. Half of the developers will analyze the program by reading it collaboratively for defects. The other half will test the program, checking for failures. When they find problems, they should not fix them, but rather document them, creating a list for debugging. 

* The users should also test the system based on its requirements, collaborating to think of inputs that they have not tried, and sending complaints to the developers whenever they think they unjustly received an automated speeding ticket. 

* The teacher can provide the outputs of the program, one test at a time, ensuring that the students do not see its code. Whenever the students find a problem, they should report it to the developers, who are responsible for documenting the problem. 

* The mayor should answer any of the developers questions about the specifications and listen to any complaints from the users.
At the end of the section, each subgroup of developers and the group of users should reflect. What was hard about verification? What tensions arose as they were verifying?
=

The second session focuses students’ attention on opposition: developers with the power to see and fix the program, and users with the power to report problems. This makes the power differential explicit, while also creating pressure on both groups, the developers to find problems before users do, and users to report problems. This pressure builds in the third session, where developers try to debug and repair the problems.

=
### Session 3: Debugging

* Gather students back into the two groups of developers and users. Developers should use the list of defects and failures they found and begin making repairs. When they believe their algorithm is fully repaired, they should announce it to the mayor, who announces it to the class. Meanwhile, the users should continue testing the system, sending complaints. They should also be encouraged to organize public complaints to the mayor.

* Once repairs are released, users should continue testing the system and decide whether they believe it is fair. They are free to imagine driving scenarios that might not be accounted for by the algorithm. 

* After users' new complaints are delivered, pause the game and have each group discuss the difficulties it faced. What was hard? What was unfair? Each group should develop a consensus demand to the major about what to do about the system.

* Have each side present their demands to the major. The mayor will have to use their discretion to decide whether to change the specification of the system, leave it as is, or abandon the ticketing system.

* End the game and have an open discussion with class: is this system better or worse than having police officers enforce speeding tickets? Is there a right behavior for the system? Who should decide?
=

This third session escalates the pressure, adding the complicating factor of changing system behavior, and demands for change to the mayor. Students should leave this session understanding that requirements, verification, debugging are intertwined, not only with each other, but with society. The fourth session replicates Sessions 2 and 3, but with students in opposite roles, but escalates the tensions even further.

=
### Session 4: Swap

* Gather students into their groups, but swap their roles. Elect a new mayor.

* Present a different system. This time the city has adopted a police robot that monitors school campuses and assigns detention to any student found outside during class time. Its requirement is Any student found outside the school for more than 1 minute receives detention. Its logic is determined by this simple function, which takes a measurement in number of feet from the closest school boundary, the number of minutes the robot observed the student outside this boundary, and the physical height of the person in inches:

`python
def skipping(distance, duration, height):
  if height < 65:
    return distance > 10 and duration > 5
  else:
    return False
`

* Repeat the procedures above, but with students in new roles, for this new scenario, and in a single session.
=

This fourth session not only provides students the alternate experience, but also gives students another social context in which to examine the potential implications of some automation. In the last session, students come together to reflection the nature of defects and debugging in social terms:

=
### Session 5: Intentions

* *Summative assessment*. Have students reflect on their two roles over the past three sessions. What is their conception of a defect? Who should decide what is correct? What responsibility do developers have to respond to requests for change? Discuss which media they would like to use to document and share their reflection and how they would like to be evaluated on their reflection.
    ** This is _responsive_ because it centers students’ own value judgments around fairness.
    ** This is _participatory_ because it enables students to shape how they will share and be evaluated.
    ** This is _educative_ because compelling reflection will reveal tensions in their values that can be further material for learning.

* Join students in pairs and begin a snowball discussion, having them share their viewpoints and develop consensus.

* Once the snowball reaches the entire class, pose to the class: who is responsible for defining what counts as a defect? Should the public be able to see the source code of programs that implement policies? What if the public decides they no longer want a particular system?
=

This unit achieves many things: it helps students think critically about what a defect is, it helps them practice finding and repairing them, but it also complicates what it means to "fix" systems that may be inherently unjust, and who is responsible for those fixes. Students should leave the unit pondering who has the power to "fix" things and what responsibility they have to use that power to serve the people for whom software is built.

Of course, what this unit does not do is provide mastery of verification or debugging skills. They are present in this unit, and students will understand what they entail, but developing robust skills in these requires substantially more practice. This unit might come before a longer unit that engages students in deeper technical practice at verification and debugging, before positioning them as creators of entirely new programs.

@standardsHeader
@standardsBlurb

@cstaHeader
@csta2CS01
@csta2CS03
@csta2AP15
@csta2AP17
@csta3ACS03
@csta3AAP19
@csta3AAP21
@csta3AIC25
@csta3BAP21
@csta3BAP23

@toleranceHeader
@tolerance13
@tolerance16
@tolerance19