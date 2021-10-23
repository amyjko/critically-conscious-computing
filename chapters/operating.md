=
@keyIdeas
* The original computer operating systems were people who managed a computer’s limited processing resources.
* The masculine culture of computing emerged from the creation of operating systems.
* Modern operating systems use software components like kernels, memory management, process management, network management, and user interfaces to efficiently and automatically manage a computer’s resources and enable multitasking.
* Operating system design generally prioritizes speed over other values like accessibility, security, privacy, and free speech.
* Teaching operating systems is an opportunity to link a technical understanding of operating system components with student values, which often are often in tension with efficiency.
=

The first digital computers, released in the 1960’s, filled entire rooms<haigh16>. Because they were so large, and so expensive, only a few companies and universities had them -- and they usually just had one. What was essentially a big programmable calculator was therefore also a highly protected, managed resource, and only some people were allowed access. Using a computer therefore involved the following:

1. First, you needed to think about the program you wanted to execute on the computer. This might involve sketching that program out -- perhaps on paper -- thinking through logic and calculations.
2. After you had a plan, you would translate that program onto paper punch cards that encoded the logic of your program’s plan into machine instructions that the computer could understand and execute. A simple program might fit on a single punch card; more complex programs might be hundreds of punch cards<lubar92>. 
3. Then, to execute the program, you had to physically carry those punch cards to the room where the computer was stored. At the entry to that room was typically a human computer "operator". On a busy day, you might wait in line before you could give the operator your punch cards, or if you did not want to wait, you could come and submit your program late at night, when demand was lower. 
4. The operator's job was to receive requests to execute programs, maintain a queue of programs that were waiting to be run, insert punch cards into the computer, wait for results, and then give the printed results to the person who submitted the program. Operators worked in shifts, often 24/7, to maximize use of the computer’s precious time, maintain the expensive computer’s hardware, and respond to any urgent jobs that might take precedence over the people waiting in line.
5. If you were careful in your programming, after receiving the program output from the operator, you were done. But more likely, there was a defect in your program, and you’d have to carefully analyze what you had encoded in the punch cards -- debugging your program -- and once you found the mistake, recreate the punch cards and follow this process all over again.

In this chapter, we examine this process, and chronicle the shift from human operators to the modern operating systems we have today, in which nearly every aspect of an operating system is automated and under the control of a few large private businesses. We then discuss the ways this shift created the dominant cultures of CS we have today, and then end with methods for engaging students in dialogue about these systems, their creators, and the increasingly large effects these systems have on our everyday lives.

|Chapter09_Figure01_GameAd.png|A PowerGlove ad from the 1980's showing a man in sunglasses wearing the glove. It is glowing green.|Pop culture steers computers to boys.|Jessie Huyhn|<

# From mainframe to personal computer

Early systems for managing a computer’s precious resources was entirely a human one. And because of this, culture crept its way into who used computers. At the time in the United States, computer programming was viewed as low-level, low-value, repetitive work, and so operators, and the people writing programs on punch cards, were often women, and often, Black women<nelsen16>. By 1967, computer programming and computer operation was mostly viewed as a women’s profession, and a good paying one, as women with education in mathematics were often barred from other professions, only leaving them lower paying jobs in teaching or insurance companies. Therefore, just as women were the first computers, and the first programmers, they were also the first computer operators.

The transition from human operators to software followed the same capitalist incentives that spurred the invention of cost-efficient digital computers: researchers were economically incentivized to automate computer operation. The idea was to take all of the tasks that the human operator did, and write programs that would do them automatically. What replaced those human operating systems were ~operating systems~os (OS): programs installed on a computer to manage a computer’s limited resources and respond to requests to execute programs<tanenbaum15>. This same shift away from human operators also led to a shift in who used them. Personal computers (PCs) emerged in the 1970’s, enabling an individual to purchase a computer and operate it themselves, with an operating system to manage the computer’s CPU, memory, storage, and input/output devices. Once it was possible for someone to purchase their own computer, mainframe computers slowly disappeared, and the need for human operators diminished{The job eventually came back: the supercomputers and data centers behind "cloud" computing require immense human labor to operate and maintain. However, rather than maintaining just one large computer, they maintain the hardware and software of hundreds or more computers, all networked to support complex computations or web scale services that reach millions.}.

Throughout this transformation from mainframe to PC, Hollywood reinforced stereotypes of PCs as a boy’s toy in movies like [War Games|https://en.wikipedia.org/wiki/WarGames], which led marketers to advertise to boys and their parents. The result was that parents were twice as likely to buy computers for their boys than their girls, and if a family had a computer, it was often placed in the boy’s room, as a toy<margolis03>. Popular culture responded, creating an image of using computers as mens' work, rather than womens'. University computer labs, and the CS departments that ran them, were often elitist, sexist, racist, ableist, and dominated by men, and created structures and policies that reinforced those views <lehman21>. Most universities at the time wouldn’t admit Black students or women, and certainly not the Black women of color who had played such significant roles in operating and programming mainframes. For instance, [Dartmouth University|https://web.cs.dartmouth.edu] was dedicated to providing free computer access to all students, but these students were almost exclusively wealthy, White men who had already paid for the privilege of attending Dartmouth. At the [Kiewit Computing Center|https://www.dartmouth.edu/its-tools/archive/history/timeline/1960s.html], many Dartmouth students played games that focused on football (FOOTBALL) or warfare (SALVO42), centering stereotypically masculine expressions. Established men who worked as systems programmers at Kiewit would regularly prank and belittle novices, and the "arcane details of one’s programming expertise" became a point of pride that one could use to exert power over less-versed peers<rankin18>.

This masculine style of computing spread to other New England colleges and high schools through Dartmouth’s Kiewit Network. While some women in universities retained access to computers, for instance women at [Mount Holyoke|https://www.mtholyoke.edu] used the burgeoning Dartmouth network to correspond with men at Dartmouth, arranging dates while avoiding expensive long-distance calls<rankin18>. But men, especially White, wealthy men, enjoyed greater access. As computers became a widespread signal of social status, men, especially those at wealthy single-sex private schools, had access at much higher rates. Computing education was tied to mathematics, and, in general, men were encouraged to take math courses, while women were encouraged to become wives and homemakers. The history of women in computing and their role as computer programmers and operators was thus forgotten and replaced by a world shaped by wealthy elite men at Dartmouth specifically, and higher education broadly. This transition from mainframes to personal computers produced the male-dominated computing culture still found today in many CS learning contexts.

|Chapter09_Figure02_Monopoly.png|Gigantic men's dress pants and shoes stepping upon the U.S. capital building with the Windows, Apple, and Google logos floating above.|Private enterprise overtakes scientific endeavor|@jessie|>

# From hobby to marketplace

The transition from mainframe to hobbyist PC in academia produced a diversity of operating systems, all borrowing liberally from each others’ innovations. IBM created the [System/360|https://en.wikipedia.org/wiki/IBM_System/360] operating system<amdahl64>, and was one of the first to allow multiple programs to be run on a single computer at the same time. Dozens of other operating systems emerged, each closely tied to a particular design of computer. AT&T’s Bell Labs created an operating system named [Unix|https://en.wikipedia.org/wiki/Unix] for "mini" computers (so named because it was smaller than a room). Many of these research and enterprise efforts inspired smaller consumer efforts, like Apple’s operating system for the [Lisa|https://en.wikipedia.org/wiki/Apple_Lisa] computer and Microsoft’s [Disk Operating System|https://en.wikipedia.org/wiki/Disk_operating_system] (MS-DOS), which mirrored other operating systems at the time. These personal computer operating systems grew rapidly, ultimately producing Apple’s Mac OS and Microsoft’s Windows. Meanwhile, researchers at the University of California, Berkeley, cloned Bell Lab’s Unix, and created the [Berkeley Software Distribution|https://en.wikipedia.org/wiki/Berkeley_Software_Distribution] (BSD), which Apple used with Carnegie Mellon’s research on the [Mach Kernel|https://en.wikipedia.org/wiki/Mach_(kernel)] to create it’s modern version of [Mac OS|https://en.wikipedia.org/wiki/Macintosh_operating_systems] and [iOS|https://en.wikipedia.org/wiki/IOS]. [Linus Torvalds|https://en.wikipedia.org/wiki/Linus_Torvalds], dissatisfied with the copyright restrictions in modifying these two commercial operating systems, created a clone of Bell Lab’s Unix called [Linux|https://en.wikipedia.org/wiki/Linux], which was open source, meaning that anyone could read or modify its source code. Google eventually built upon Linux to create the [Android|https://en.wikipedia.org/wiki/Android_(operating_system)] operating system.

This liberal copying and sharing was also accompanied by fierce, anti-competitive practices, as each company looked to establish a permanent foothold in the computing space through operating system platforms. AT&T only allowed AT&T devices to connect to their phone network. IBM used their market power to gain control over 70% of the punch card, tabulating machine, and computer markets. In the early 1990s, Microsoft bundled their applications with their operating system, and barred users from installing applications of competitors<economides09>. More recently, U.S. Department of Justice [investigations|https://www.justice.gov/opa/pr/justice-department-sues-monopolist-google-violating-antitrust-laws] into Amazon, Apple, Facebook, and Google have shown that all engaged in anti-competitive practices. Many of these business trends followed the dominant economic ideology of the 1970’s, often described as *neoliberalism*<harvey07>: a policy ideology that emphasized free-market policies through the elimination of government regulation, privatization of public services (e.g., the mainframes operated by NASA and universities) and deemphasized social reforms and supports.

These economic trends interacted closely with the creation of modern operating systems. Before this shift, merging with a major competitor, acquiring a smaller competitor before they could grow, and creating vertical monopolies would generally invite antitrust investigations. Today, decades of acquisitions, mergers, and vertical integration have changed the rich, complex, and diverse landscape of computer systems and operating systems of the 1960s into a sterile and stable landscape today, with only Microsoft, Apple, and Google dominating desktop and mobile operating systems, along with most of the internet that we interact with on a regular basis. All of these monopolies still have their roots in the earliest problems that human computer operators had, of trying to maximize use of a computer’s CPU to execute programs, prioritize urgent jobs over others, and maintain the hardware utilized by the CPU. In fact, some of these operating systems still use source code written in the 1960’s. The history of operating systems is therefore not just a series of events, but a set of artifacts, computer code, still used today by billions.

|Chapter09_Figure03_InvisibleHand.png|A pile of computer hardware, with two-dimensional hands reaching out from the screens to touch keys and components.|Computers are made of distinct parts, each formerly human work.|@jessie|<

# Components of modern operating systems

After these decades of innovation, competition, and monopolization, several stable components of operating systems emerged. Each component replaced the role of the human operator with an abstraction: something that enabled computer programmers to use computing hardware without having to understand the specifics of how that hardware was implicated, but in the process, also eliminated the rich abilities of human operators to understand the social context of how a computer was being used.

Perhaps the most important component is the ~kernel~kernel. When a computer first starts, the kernel is the first program loaded into a computer’s memory. It handles all requests for input and output from software, much like a human operator of a mainframe might insert punch cards (input) and pick up a printout to give to someone waiting for results (output). It manages the execution of instructions in software by the CPU, much like a human operator used to ensure that punch cards were inserted in the correct order, or fix a jam if a punch card crumpled because of too many holes. It handles communications between a computer and its input and output devices (keyboards, displays, printers, etc.), much like mainframe operators would check the connections between a mainframe and it’s printer. The kernel, therefore, was like the brain of the human mainframe operator, making sure the computer continues to operate at full capacity, monitoring for issues that might arise, and fixing them if possible. If not possible, kernels can send exceptions to programs, signalling that an unrecoverable error might have occurred and giving the program an opportunity to recover. (Most of us experience exceptions as messages that say that an unknown error has occurred.) Kernels might also encounter issues that would force all operations to stop, and signal that to us as a *kernel panic*, though these are considerably more rare. Most of us experience kernel panics as a message on a computer’s display that says that the computer must be restarted, or the computer simply freezing and becoming unresponsive.{Many kernel panics in Windows are caused by devices breaking assumptions made by the kernel: the kernel gives devices some amount of execution time, the software running on the device runs for longer, the kernel notes that a critical promise was broken, and sends a panic.}

Kernels also manage ~memory~ram. Memory, as we discussed in the [Chapter 8|computers], is used to store computer programs while they are executing, as well as any data they are processing. Memory is, in the simplest terms, a long list of bytes, each byte a list of 8 bits. Each of these bytes is given an address, like a street address, meaning one can refer to a specific byte by a specific address. Modern computers may have many _gigabytes_ of memory--1 gigabyte is 1,000,000,000 bytes, but even that may not be enough for all of the applications a user wants to run. Therefore, the kernel’s job is to coordinate memory usage between different programs, ensuring that one program doesn’t overwrite data being used by another. Mainframe computers, while they did much of this memory management automatically too, still relied on human operators to coordinate memory usage and respond to situations where the computer ran out and needed more memory to complete a program.

Using the memory it manages, kernels are responsible for executing ~programs~program, which are a collection of  instructions that human programmers write, much like the simple ones we showed in [Chapter 6|intelligence]. (In modern terms, we might also call these applications, or just "apps"). When a program is loaded into memory (just like mainframe operators loaded in punch cards), the kernel keeps track of information about the program executing, including where the executing program is stored, who’s executing it, who has permission to see its results, what other resources it is using (files, external devices like a printer), the current program instruction being executed, and other details. This information is stored in a record of metadata called a ~process~process. In the mainframe era, the human operator stored this information in their human memory, keeping track of who’d submitted the punch cards so they could return the cards and the program output to the right person, track the progress of a program executing, and resume it if it got interrupted or needed to be restarted; if there were a lot of programs to run, they might write down this information on a paper log. 

While mainframes only had one process executing a time, a modern personal computer might be executing _thousands_ of processes: every application we are running in parallel, as well as other background processes like messaging applications, timers, and anti-virus software. Operating systems, therefore, enable a higher degree of multitasking than a human operator of a mainframe would have been able to manage, and could be run 24/7 just as operators worked in shifts. An OS tries to give a user the same abstraction as a human operator--presenting your program, waiting for your program to be scheduled, and receiving results, but sometimes that abstraction breaks down. A process, for example, might *hang*, getting stuck waiting for input, or trapped in a never ending infinite loop of data processing. Therefore, operating systems, much like their human counterparts, have to monitor for stuck processes and decide what to do with them, before they disrupt the execution of other processes. We often experience this now as an operating system interrupting us with a message like, "_This program is not responding; do you want to stop it?_", much like a human operator might have done with a program that didn’t seem to be finishing on a mainframe.

As computers were utilized to perform more complex tasks, programs utilized more and more computer memory so ~storage devices~storage such as magnetic tape, hard drives, and floppy disks proliferated. As these became more common, mainframe operators needed to manage the use of these storage devices, tracking which programs needed which storage devices. Even the storage devices themselves needed kernel help to keep data organized on the device, leading to the concept of a *file*, which is a collection of data with a name and location on the storage device. Modern software operating systems manage storage devices and files automatically, allowing programs to read from and write to any device that is connected to a computer. To do this, kernels have to manage lists of all of the devices that are connected, have device-specific software called *device drivers* for communicating with them, and keep track of which programs are using them in process meta-data, to avoid conflicts when multiple programs are trying to use the same device  at the same time.

As computers connected to the internet, operating systems also needed ways of managing data coming in from other computers, and managing data being sent to other computers. In the mainframe era, this would be like a mainframe operator receiving physical shipments of punch cards and storage devices from other computers via mail, deciding where to store them while it was decided what to do with them. Modern operating systems do the same thing with *network management*, receiving data, storing it in memory until it can be processed by a program, which might store it on a storage device (saving a copy of an email just received) or do some computation on it (rendering a web page that was just sent by another computer on a display).

Throughout all of these shifts from human operator to computer operating system, the ~interface~ui to using a computer changed. In the mainframe era, one would say to the human operator, "_Can you run this program?_" and the human operator would say "_Sure, but there are a few more programs before you. Give me an hour?_" Operating systems first replaced this human interaction with *command line interfaces* (CLIs), where one would engage in a more restricted dialog with a computer. For example, to run a program in Unix, one needs to simply navigate to the file folder containing the program and then type it's name (if one wanted to run the popular text editor vim, and programs were stored in a folder named programs, one would type `cd programs;`bash to open the programs folder, and  `./vim`bash to run the program{ The "./" preceding the program name signals that the program is located in the currently open folder, which is represented by a "." in Unix.}). These command line interfaces required users to remember many commands and follow their syntax precisely. 

Early conceptions of computer interfaces, however, went well beyond command lines, and actually became the dominant way we interact with computers through operating systems, through *graphical user interfaces* (GUIs). The earliest visions of these interfaces came in 1945 by Vannevar Bush, who headed the U.S. Office of Scientific Research and Development<nyce91>. He imagined a machine called a Memex<bush45>, which would allow people to freely explore a collection of documents, follow links between them, and create documents of their own. His notion of computers as a workstation for working with information was radically different from the mainframes at the time, which all required carefully constructed computer programs, written in programming languages. Programming was slow, laborious, and error prone, and Bush imagined computing to be something much more interactive and accessible than code. Bush’s vision inspired a series of innovations, including Douglas Englebart’s NLS system, which contributed a networked computer with keyboard, mouse, display, and applications<englebart62>. Englebart’s demo inspired inventors at Xerox PARC, an industry research lab, who created the first GUIs and envisioned ideas like windows, scroll bars, buttons, files, folders, and applications<hiltzik09>. Xerox PARC’s demonstrations inspired Steve Jobs, who brought the ideas to Apple Computer, which inspired Microsoft, and led to the ubiquity of GUIs that we all use today.

And interface innovation continues, including the voice interfaces often found in smart speakers, the many physical controls and feedback mechanisms found in modern cars, as well as gestural interfaces found in many video games and modern televisions.

|Chapter09_Figure04_AccessBlocked.png|Rodin's thinking man surrounded by iconographic locks, passwords, thumbprints, and warnings.|Part of an operating system's job is keeping people out.|@jessie|>

# Operating systems as gatekeepers

None of these design choices about how to organize an operating system were inevitable: operating system designers across history have had particular values, which served particular visions for how computers might be used.

The single most important value in the history of operating systems, much like the rest of CS, was ~efficiency~efficiency. This value stemmed from the underlying value behind the invention of computers, which was to replacing slower human computers with faster machines. Operating systems carried that value into the operation and maintenance of computers, replacing the slower and less reliable human operators of mainframes with significantly faster operating systems. Speed, of course, is in service of other values: faster computers are ultimately intended to make "faster" _people_, and faster people are ultimately intended to advance economic productivity in capitalist economic systems. It might be strange to imagine operating systems that value anything but speed, but that is more because of the ubiquity of the value than because other values are impossible to prioritize. For example, imagine an operating system that slowed users down to make them more mindful of their work, or an operating system that mandated work breaks to encourage users’ physical health. Such operating systems can exist, they just don’t, because they have been counter to operating system designers’ core value of efficiency.

Some values other than efficiency have emerged as secondary values in operating system design. For example, ~accessibility~accessibility--the extent to which people of varying abilities can use a computer and its applications--has largely been an afterthought in operating system design. Graphical user interfaces, for example, are a powerful and now ubiquitous idea for how to operate a computer, freeing many computer users from having to memorize complex commands, understand confusing error messages, and navigate an invisible hierarchy of folders and documents. In this sense, this concept for computer operation was a great success. However, requiring visual interaction with a computer fundamentally excluded people who are blind or have low vision. Therefore, tens of millions of people in the world cannot use modern operating systems without cumbersome [screen reading|https://en.wikipedia.org/wiki/Screen_reader] software, which translates the visual contents of the operating system’s display into spoken text. For many blind and low vision people, this is harder to use than a command line interface, because they can’t as easily find and open programs and files, navigate the complex two-dimensional layouts of graphical user interfaces, or use interactions like drag and drop, which depend heavily on sight. And even command lines are harder to use than simply having a conversation with a human computer operator. Operating system designers therefore have immense power in deciding who can and can’t easily operate a computer, and equally immense responsibility in ensuring that operating systems provide universal, diverse forms of access.

Another value that has emerged in operating system design is ~privacy~privacy. As we discussed earlier in @information, computing is often used to gather private data without consent; operating systems are no exception, and are in fact a key enabler of privacy invasion. The [Windows|https://www.microsoft.com/en-us/windows] operating system, for example, tracks which programs you run, when you run them, and when they start and stop, and sends all of that data to engineers in Redmond, Washington to be analyzed by data scientists for problems in the operating system, but also trends in how software is being used. This process is often referred to as *telemetry*, which refers to logs of all of the applications that people are running on their computers, when they are opened or closed, and when they crash or hang. Microsoft asks for your permission to be watched -- but only once, when you first installed the operating system, and you probably didn’t notice, since it was in an innocuous pop-up dialog prompt. The same is true of the Android operating system, which allows apps that run on it to gather all kinds of private information without first transparently asking for consent. Apple is somewhat more restrictive in its [App Store|https://www.apple.com/app-store/], auditing programs before they are allowed to run on its operating system, in an effort to prevent private data from being shared with other companies, but only requires that apps comply with existing privacy laws, which typically means presenting users with a complicated privacy policy that must be accepted before using the app. Therefore, when we choose an operating system, we’re not only making a choice about the speed, reliability, compatibility, usability, and accessibility of our computer, but also the trustworthiness of the company that has designed its operating system, requiring us to place great faith in its transparency around what data it collects about our computer use and how that data is used.

While operating systems themselves can erode privacy, they are also responsible for protecting it through ~security~security. For example, the human computer mainframe operators working for the U.S. military in the 1960’s, running programs that computed where a missile was to fire next. This information was highly sensitive; only certain people were to know that a missile was going to be fired and where, and only certain people were allowed to know the logic of that program. Even fewer were allowed access to the program itself, because maliciously modifying it would have led to incorrect trajectory calculations. Therefore, human mainframe operators had to be mindful of security policies, both on the programs themselves, the data that went into the programs, and the data that came out. The same is true of modern operating systems: if any program were able to modify the behavior of any other program or read its data, your data would no longer be private, leaving you vulnerable to identity theft, and disclosure of private communications. Vulnerabilities in operating systems include defects in the operating system software itself, which may allow people to gain access to everything on the computer; defects in how the operating system executes programs, which may allow one program (e.g., your email client) to access data used in another program (e.g., your banking application); or defects in the software used to build applications for a particular operating system. These vulnerabilities can be exploited with computer *viruses*, which are programs that use defects in operating systems to gain access to private data; but also with *malware*, which is software that users themselves install, without realizing that they are stealing private information, including *passwords*, which we all use to authorize access to our private data. Operating systems can also be kept secure by *encrypting* all data, which involves encoding it using a secret cipher that only a user can unlock with a password, and by fixing security defects regularly. But even these measures are not perfect, as a user might disclose the password to someone malicious, or might not install software updates regularly. Therefore, many security measures are outside of an operating system’s control: it is up to everyone to use unique passwords, keep those passwords secure, install updates, and be skeptical of applications that request passwords. When we fail to do such things, operating systems suffer major hacks, like the [2020 SolarWinds hack|https://en.wikipedia.org/wiki/2020_United_States_federal_government_data_breach], where Russian hackers accessed SolarWind’s security software, and secretly changed its behavior.

Because operating system providers determine the rules for which programs can run, they are also central in *speech* rights. For example, after the January 6, 2021 U.S. capital insurrection, many operating system providers decided to disallow particular programs from being installed. This included, most notably, the [Parler|https://parler.com] app, which had been central in supporting the coordination of the insurrection. Apple removed it from its App Store, then Google removed it from the Android store. For those supportive of the insurrection, these decisions by operating system providers might be seen as censorship and a limiting of speech. For those critical of the insurrection, they might have seen these decisions as organizations leveraging their free speech rights to decide what kinds of information and programs would run on their private systems, drawing the line at those used to promote insurrection.

Because operating systems are so central in shaping how we use computers, and yet they have become so privatized and monopolized, operating systems are now gatekeepers, centralizing power, resulting in a single monolithic leverage point for determining policy about what programs and data are allowed on computers. Most operating systems privatize these decisions, shifting them from individual moral judgement or public policy to private decisions by CEOs and boards, shielded by software licenses that regulate who can use operating systems, and copyrights that protect the source code behind operating system policy. And, as we began this chapter discussing, they automate, replacing nuanced human intelligence with algorithms that promise speed, often ignoring human values. Therefore, far from being a mundane, almost invisible interface between hardware and software, operating systems are a center of power and conflict in our increasingly digital world.

|Chapter09_Figure05_OperatingSystem.png|A slanted view of operating system icons and window tiles, with a woman trapped inside behind a window.|Operating systems, and therefore Microsoft, Google, and Apple, control nearly everything about our digital lives.|@jessie|

# Teaching operating systems

Operating systems hold a unique position in computer science education. In higher education computer science degrees, it is sometimes a full required course, where students learn the many technical concepts above in greater depth. But it's rarely taught until after students have taken a few programming courses, and in many CS curricula, it is not required at all. And yet, the [K-12 CS learning standards|https://csteachers.org/page/about-csta-s-k-12-nbsp-standards], broadly adopted around the world, do include some learning standards related to the hardware/software interface, including the different layers of abstraction involved in hardware/software communication. This creates a bit of a tension: when should students learn about operating systems, if at all, and in what depth? And how might teaching at secondary and post-secondary levels differ?

One key difference between secondary and post-secondary is the audience. Most CS majors in college aspire to some kind of position designing and engineering computing technologies, and some depth of understanding about operating system implementation can be helpful in these positions. But in secondary, the goals might be different: a school might, for example, have a CS module that _all_ students take at some point. Should operating systems be part of that instruction, and if so, how aligned should it be with the K-12 CS standards, which are strictly technical?

One argument that secondary should address operating systems universally is that from the first time a student learns to use a computer, whether at home, school, or a third place such as a library, they are _interacting_ with an operating system, and learning its ideas of programs and apps, windows and multitasking, crashing and freezing. And indirectly, operating systems are shaping their rights and privileges, exposing them to corporate surveillance, marketing, and whatever content moderation policies operating system designers have built in. And so while post-secondary students might need a bit of depth into precisely what a kernel is and how to build one to avoid creating software that crashes, a secondary student might need a kind of critical operating system literacy that connects the design choices that OS companies create to their digital lives.

Unfortunately, research has yet to offer much guidance on teaching operating systems in this way, or even in general. Most research has focused on post-secondary and follows the same basic pedagogy: engage students in creating or modifying operating system behavior, without critically examining the broader social context of operating system design<andrus12,bryant01,laadan11,desnoyers11>. One exception to this is a studythat taught hardware/software interface concepts socioculturally, through the metaphor of a house<kirdaniryan22>. This approach to teaching operating systems centered students' critical consciousness of OS design choices and the values that shaped them, challenging students to reconsider those choices in line with their own values. This class was taught to CS majors in college, and yet most reported that they had never considered most of the choices that OS designers made, or that those choices could have individual or societal consequences.

## Unit sketch: Teaching operating systems critically

To explore the possibilities at the secondary level, here we present a unit sketch that illustrates one way of making the power of operating systems visible. The approach is to introduce a diversity of narratives around operating systems: students’ own narratives, disciplinary computer science narratives, and then narratives around disability justice, privacy, and free speech. The unit ends with a discussion of policy, challenging students to reconcile these many different narratives and propose rules that they think should regulate (or deregulate) the power of operating systems. Throughout, the lessons engage the core components of operating systems at a conceptual level, linking them to the social issues.

The learning objectives for the unit are:

1. Students will be able to describe the major components of an operating system.
2. Students will be able to explain how operating systems create structural barriers to computer use by people with disabilities.
3. Students will be able to explain how operating system maintainers determine what data can and can’t be gathered by computer programs.
4. Students will be able to explain how operating system maintainers determine what programs can and can’t be run on a computer.

The first unit begins by stirring up debate about students' OS preferences:

=
### Session 1: My operating system is better
* Begin the session by describing operating systems as something we generally know by name: e.g., Windows, Mac OS, iOS, Android, Chrome OS.

* Divide the class into small groups of 2-3 and prompt them to discuss what operating systems they use, which they prefer, and why.

* Bring the class back together and elicit the preferences and reasons, writing names of operating systems in columns with reasons why they like it in the rows of columns. Students will likely share reasons such as liking particular apps that are only available on a platform, liking how they look, or liking particular features of a device.

* Identify the two most popular computing operating systems, then arrange the class in a philosophical chairs discussion format, dividing the class into two sides. For each facet in the brainstormed list (appearance, speed, functionality), ask for a student representing a side to come forward and defend their position.

* End the debate by observing that operating systems aren’t better or worse in absolute terms, but better or worse at particular things, and that these things are shaped by the designers of the operating system.

* Give an overview of the coming sessions, connecting it with these different dimensions along which operating systems can be better or worse.
=

Students should leave the first session with a sense of identity around the operating system they defended, perhaps believing in their preference even more strongly. This creates a stronger contrast for later sessions, which complicate what operating systems are, who makes them, and the values that shape their choices.

The next session offers the first complicating narrative, the disciplinary one from computer science. To engage students in the relatively technical concepts, the lesson uses an "unplugged" approach that has students embody the components of an operating system.

=
### Session 2: Operating system algorithms
* Characterize the first session’s discussion as one particular consumer narrative about operating systems, shaped by our experiences with them as users. Contrast it with the topic of this session, which deconstructs operating systems from the designers’ perspective, as something to be created and maintained to make computer applications work.

* Explain that the session will try to simulate a chat program executing alongside two other programs.

* Explain the concept of a kernel and applications, then ask four students to come to the front to act out the work of a kernel. One plays the role of the kernel, one plays the role of applications. The kernel’s job is to "run" a few instructions of an application and then stop, switching to another application. The applications’ job can be any multi-step activity, like a dance, or some pantomimed activity like making a sandwich.

* Explain the concept of a memory. Ask an additional four students to come to the front. The original four students keep their roles. One of the new students is memory and the other three represent data A, B, and C. When the applications execute, they should now request data A, B, or C from the kernel, and the kernels should ask memory to retrieve the corresponding data.

* Explain the concept of a network interface. Ask two students’ volunteer to be network interfaces, sending data that will be stored in A, B, and C. One sends a message, and the other receives it, giving it to the kernel, which decides whether to store in A, B, and C, and the applications, when they execute, can request the messages.

* Finally, explain the concept of a user interface. Ask one student to represent the screen that displays information. Applications can ask the kernel to display a message received; when that student receives a message, it yells it out.

* Thank everyone for modeling an operating system’s behavior, then synthesize what everyone observed, re-explaining the core components of the operating system, using an example from another application (such as presentation software) to step through the ideas. Explain why computers are often better at multitasking than people, because they can record exactly where they left off.

* Finally, ask the class how the computer science notion of an operating system relates to their experience with operating systems. How are they different? How are they related?
=

After the second session, students should have a clearer sense of their own personal perspective on operating systems, but also a sense of the technical mechanics of an operating system as a mindless, procedural process that happens very quickly (meeting the first learning objective).

The next session begins to bridge the abstract technical understanding of operating systems with students’ personal sense of operating systems by offering the perspective of people with disabilities.

=
### Session 3: Accessibility
* Remind students that one part of an operating system is receiving inputs from a user interface, and providing outputs.

* *Formative assessment*. Ask students to brainstorm the different ways that computers allow us to provide input and receive output (e.g., mouse, keyboard, display, touchscreen, speakers). For each of the brainstormed input and output devices, ask students to brainstorm the assumptions that they make about our abilities (e.g, seeing, hearing, pointing, grasping). For each of the brainstormed assumptions, ask students to speculate how someone who lacks the ability would provide input to a computer, or receive output. Engage students in shaping where the brainstorms will be captured and shared.

    ** This is _responsive_ because it asks students to reflect on their own abilities and the abilities of the people around them.
    ** This is _participatory_ because it gives students agency in shaping the collective brainstorming project.
    ** This is _educative_ because students may only see some assumptions from their own view, but can learn of others from their peers’ diverse perspectives.

* Begin a socratic seminar, asking whether it is fair that operating systems exclude people with particular disabilities, and why operating system designers might have decided to exclude.

* Explain that more modern operating systems try to include some people with disabilities, then give a demonstration of the screen reading software built into an operating system (e.g., Mac OS or iOS VoiceOver, Google Talk Back).

* Continue the Socratic seminar, asking whether screen readers adequately include people who are blind or have low vision.

* End by explaining that some operating systems are better than others at supporting different disabilities, giving examples of operating systems that provide high levels of support (e.g., Apple), and operating systems that provide minimal support (e.g., Google).
=

After this session, students should begin to recognize that operating systems are more than just apps and features, but also more than just algorithms: they are also the gateways between people and applications, determining who can and cannot access them. Students should begin to wonder whether their original preference for an operating system incorporated other people’s experiences, meeting the second learning objective.

The next session builds upon this more complicated narrative by raising questions about privacy and security.

=
### Session 4: Privacy and security
* Remind students about session 2’s demonstration of an operating system executing a chat application, and how information was passed from the network interface to the kernel, and then from the kernel to memory, and then finally the program.

* Pose the question: what if that information was private, like most chats are? What stops someone from seeing the private message? Ask students to speculate about the role the kernel, applications, memory, network interfaces, and user interfaces play.

* Discuss how companies that create operating systems have access to our data and often use it to monitor our activities, personalize advertisements, and sometimes share that data with the government to surveil our activities.

* Shift from privacy to security, explaining that security is about ensuring only people with permission to see information can access it, privacy is about who has that permission.

* Explain that all components play a role in keeping the information secure. Provide direct instruction on examples where part of an operating system was not secure (e.g., a video on the SolarWinds hack), explaining what kind of data was breached, and what the consequences of that might be. Connect the break to software updates, which can repair security defects, but also create security defects.

* Poll the students on whether they update their phones when there is an update. Discuss why they do or don’t, and discuss the consequences of that on privacy (e.g., release of secrets, identity theft).

* Return to the first session’s debate of operating systems, and raise the question: how does one know if an operating system is secure? What makes one trust an operating system?

* End the session showing that all companies have had data breaches, showing examples of data breaches of the two most popular operating systems in the class.
=

Building upon students’ conception of operating systems as both technical and social, this session should reconnect it to students’ personal data, and raise questions of trust in operating systems and operating system maintainers. Students should begin to wonder about what operating system software updates are doing to their devices, and where they are getting information about which operating systems to trust (meeting the third learning objective).

The next session presents the last narrative, connecting operating systems to speech.

=
### Session 5: Free speech
* Recall the discussion about privacy and security, and connect it to an application that is privacy-invasive, such as Facebook, WeChat, or TikTok. Explain how those applications invade privacy.

* Explain that on January 6, 2021, some operating system maintainers (Apple, Google, Amazon), decided to remove some applications from their platforms because they were used to incite a violent insurrection on the U.S. capital. Frame those decisions as a choice about what applications would be allowed to run on each operating system.

* Remind students of free speech laws in the United States, which bar the U.S. government from limiting speech, except in particular circumstances (speech that harms, speech that is obscene, speech that defames).

* Summative assessment. Begin a philosophical chairs discussion with the question: should operating system companies have the right to decide which applications run on their operating systems? Discuss with students how they want to organize presentations and how they want to judge each others’ presentations. Then facilitate discussion about both sides of this issue, one the position that companies are protected by free speech law to decide to disallow an application, and the other position that the companies are limiting speech by removing applications that support speech. Focus the discussion on who should decide.

    ** This is _responsive_ because it centers students’ interaction with the operating systems in their family and school’s devices.
    ** This is _participatory_ because it gives students agency in shaping the terms of debate success.
    ** This is _educative_ because it reveals diverse student perspectives on the role of private companies in speech.

* After the discussion, break the class into small groups, and prompt them to draft a new law that would clarify this debate about who decides. They should draft some language, and a justification for the rule.

* Students then present their laws and rationale and students vote on whether they would pass the law.
=

This last session meets the fourth learning objective, while also linking operating systems to law, policy, free speech, and power. Students should leave this lesson seeing the operating systems on the computers that they use as far more than colors on a screen, and an exclusionary gateway to computer applications, but also a gateway controlled by powerful technology companies that are not currently beholden to the public in any way (and continue to utilize their wealth to maintain their power to decide).

While this unit gives a basic introduction to operating systems concepts, it does not attempt to build a robust understanding of operating systems algorithms or issues. This might leave students fluent with the basic concept of an operating system, but it will not develop the kind of detailed technical understanding needed to even troubleshoot operating system problems, let alone discuss the nuanced differences between operating system designs. Such knowledge is not part of most learning standards, though it does appear in higher education computer science courses on operating systems, and is even discussed in popular technology journalism about operating systems. Instead of depth, the unit focuses on critically conscious breadth, helping students see the many diverse and surprising ways that operating systems connect to society.

# Conclusion: the kernel of computing culture

In some ways, operating systems are a remarkable feat of engineering: they transformed what once was a highly secure, highly inaccessible scarce resource -- the mainframe -- into world full of billions of little personal computing devices, each "operated" by one or more people, often without incident. And all of this digital world, with all of its wonders and and all of its harms, was only possible by replacing the small group of mostly women who tended to this large machines with an even smaller group of complex operating system programs -- Windows, Mac OS, Unix, Linus, Android, iOS -- carefully engineered over the course of a half century to provide near limitless computing on demand, anywhere. From an engineering standpoint, this is profound, incomprehensible social impact at a scale rarely seen.

The price we've paid for this digital world comes in multiple currencies. The history of operating system development in academia and industry has given us a CS education culture often centered in masculinity, elitism, exclusion, and shame. The capitalism that fueled OS creation has grown a handful of corporations, now the most wealthy and powerful in the world, who shape our digital experiences with little oversight and accountability in the world, let alone the nations in which they reside. And the complexity of these operating systems have produced a public that is largely unaware of this centralized, privatized power and its influence over our daily lives. Teachers are one of the few in a position to make this history and status quo visible to students, in ways that are culturally and critically situated.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaIC
@csta2IC20
@csta2IC23
@csta3AIC24
@csta3AIC29
@csta3AIC30
@csta3BIC27
@cstaNI
@csta2NI05
@csta2NI06
@csta3ANI05
@csta3ANI06
@csta3ANI07
@csta3ANI08
@csta3BNI04
@cstaAP
@csta3BAP18
@csta3BAP20
@cstaCS
@csta2CS02
@csta3ACS02
@csta3BCS01

@toleranceHeader
@toleranceJustice
@tolerance2
@tolerance5
@tolerance14
@tolerance15
@tolerance18

@teacherHeader
@teacher1
@teacher1a
@teacher1b
@teacher1c
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