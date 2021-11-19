=
@keyIdeas
* Digital computers were invented as a way of replacing people with something faster, less error prone, and tireless, mirroring the capitalist values of the industrial revolution.
* Modern computers include a CPU, system clock, RAM, secondary storage, and a variety of input and output devices that must align with the abilities of people to be accessible.
* Computers generate immense waste, much of which is only visible in developing countries where that waste is processed with human hands to extract valuable rare earth metals.
* Engaging students in critically examining computers is not only about helping them understand what makes something a computer, but also why we’ve created them and what we do with them when we’re done with them.
=

As we discussed in [Chapter 1|history], before the digital computer, the meaning of the word "computer" was simply "a person who computes." And to compute, in essence, meant to calculate. From the earliest use of mathematics in human civilization, all the way until the mid-20th century, "human" computing was the only way we had to compute, and "human computers" were an essential part of using data to make decisions. 

For example, in 1870, the United States [Signal Corps|https://en.wikipedia.org/wiki/Signal_corps]<raines96> envisioned a mathematical model for tracking weather patterns, to help support agriculture and war. The model was complex, however, requiring a sophisticated knowledge of mathematics and a careful attention to detail to compute correctly. The Signal Corps hired a small computing staff that processed data that had to be collected quickly; the people on this team worked in intensive 2-hour shifts to compute the model’s predictions. These large teams of women, often paid 25 cents an hour to compute, formed professional societies, unions, and were the workforce that computed missile trajectories in World War I, and flight trajectories for the first NASA human orbit around Earth. 

The human role as computer, however, was not lost to history: most K-12 mathematics education continues to train children as human computers when it teaches arithmetic. Our children, just as the women of the 19th and 20th centuries, learn to manually add, subtract, multiply, and divide, often without any realization that the computers at home and in their pockets are doing the exact same work. The only difference -- and the critical difference -- is that computing technology does it faster, without error, never gets bored, frustrated, or tired, and only needs to be fed electricity.

If people were the original computers, why were they replaced with the digital computer, and what technologies made that possible? Throughout this chapter, we’ll discuss this history, the values underlying it, and the global consequences of the digital computer. We’ll then turn to how to develop students’ critical consciousness of this history, the future it imagined, and the world it actually created.

|Chapter08_Figure01_Timeline.png|A timeline showing 1820, 1904, and 1947, corresponding to the differencing machine, the vacuum tube, and the transistor|What a computer is has always evolved.|Jessie Hyunh|<

# The invention of computers

The earliest imaginings of "automatic" computers were therefore about replacing human computers with machines. As we discussed in previous chapters, [Charles Babbage|https://en.wikipedia.org/wiki/Charles_Babbage] first imagined these machines, which he called "differencing engines."<hyman85>. He conceived of these machines as large mechanical devices with gears and cranks, taking numbers as input and after the right number of cranks, producing an answer. In his vision, these machines might replace the many people who computed for hire, saving businesses time and money. These imaginings were not entirely original, of course. The industrial revolution in the 18th and 19th century had followed the same basic pattern: find some work done by low paid laborers and automate it with machinery, reducing costs further<deane79>. The values in Babbage’s vision were fundamentally the same, centered in capitalism, efficiency, and profit: the faster and more reliably one could calculate, the more money businesses could make.

At the time, Babbage struggled to solve two major problems: how a computing machine might store data for calculation, and how it might store the formulas to be calculated. These two problems captivated researchers and engineers, leading to decades of experimentation to create Babbage’s imagined machines. The earliest attempts to create Babbage’s vision digital computers in the 19th century were mechanical, and made of wood and iron gears, both materials that could be easily reclaimed and recycled. For example, in 1890, [Herman Hollerith|https://en.wikipedia.org/wiki/Herman_Hollerith] created a mechanical punch card system<kistermann91>, which used paper to store data as hole punches, and mechanical systems of wood, metal, and belts to read and tally the holes. This system was used to automate processing of the U.S. Census results, saving the government millions in labor, and also eventually leading to the founding of IBM<pugh09>. Because these computing machines were mechanical, they could easily fail, breaking a belt, wearing down gears, and snapping wood. Moreover, they were "special purpose," only capable of performing the specific calculations they were designed to do (such as tallying). Researchers kept searching for more reliable materials, and more general purpose machines.

In 1937, [John Vincent Atanasoff|https://en.wikipedia.org/wiki/John_Vincent_Atanasoff], a professor of physics and mathematics at Iowa State University made a breakthrough, finding a way to store both data and instructions for calculation using something called a vacuum tube<burks89>. These tubes looked like light bulbs, but stored and transmitted bits of information -- 1’s and 0’s -- for processing by mathematical instructions, also stored in vacuum tubes as bits. Shortly after in 1945, two University of Pennsylvania professors, John Mauchly and J. Presper Eckert, built the [Electronic Numerical Integrator and Calculator|https://en.wikipedia.org/wiki/ENIAC] (ENIAC)<mccartney99>, the first general purpose computer that realized Turing’s vision of a general purpose computer. Vacuum tubes stored data as well as instructions; instructions could be encoded on a paper punch card, inserted into a punch card reader, which translated the punches in the card into vacuum tube 1’s and 0’s. When the program executed, it shifted 1’s and 0’s in ways that perfectly and reliably mirrored the arithmetic done by human computers at the time, but much faster. The machine filled a 20-foot by 40-foot room and had 18,000 vacuum tubes; women programmed it via punch card<fritz96,bartik13>. While the vacuum tubes were more reliable than wood, gears, and belts, they were large, there were many of them, they often broke, and they got very hot, meaning that computing machines needed large specialized rooms to stay cool.

Just a few years later in 1947, William Shockley, John Bardeen, and Walter Brattain of Bell Laboratories invented the transistor<riordan98>, making vacuum tubes obsolete, and dramatically shrinking the size of the hardware used to store data and programs on computers. A transistor is an electrical circuit switch that, when voltage is passed through it, can either be on, or off, allowing computers to represent data as binary. This basic unit of storage allowed computers to store data encoded in binary and programs encoded in binary. And unlike wood, metal, belts, or vacuum tubes, transistors were small, relatively cool, had no moving parts, and were very unlikely to break. 

Since the transistor was invented, hundreds of thousands of scientists and engineers have spent decade refining transistor technology, to the point where modern computers can fit billions of them onto a computer chip the size of one’s thumb and where robots, powered by these very same transistors, can print millions of chips with minimal human intervention. And each of these chips with their billions of transistors do the same basic task of storing a binary digit, possibly representing part of a number, part of a computer program, or part of the latest viral video on YouTube. What once was a task of human cognition is now a task of electricity, silicon, copper, and trace elements of rare earth metals extracted mostly in China.

|Chapter08_Figure02_Insides.png|A human skeleton on the left, a health care provider in the middle pointing to the right, and on the right, a skeleton made out of computer parts, including a display, mice, mouse cursors, and cables.|Computers have many distinct parts, many mimicking human anatomy and intelligence.|@jessie|>

# The modern computer

While the computing machines of today are built from quite different things than the mechanical differencing machines that Babbage imagined, they have the same basic function: they take in some data as input, use a program to do some calculations on that input, and then produce some output, just like human computers that came before digital computers did. The difference is the medium: people were given data on paper, used paper to make calculations with pencils and ink, and then wrote down the output on paper. Modern digital computers use a variety of standard components to replicate these human functions.

|Chapter08_Computer_CPU.jpg|A small central processing unit.|A CPU, printed on silicon.|[Jeremy Bezanger|https://unsplash.com/photos/wl8hZoJBSU8]|<

The first, and perhaps most important part of modern computers are *central processing units* (CPUs). These are often described as the "brain" of the computer, although this is a poor metaphor, as CPUs are quite unintelligent. All they really know how to do is basic arithmetic, how to retrieve data for processing, how to store it after processing, and how to move to the next instruction in a program, optionally based on whether a number is zero or not. They do these small sets of actions mindlessly, quickly, and reliably. And thus they are not really like a brain at all, as human brains can process many kinds of sensory inputs, make complex decisions, interleave emotions, memories, and ideas. CPUs just quickly manipulate 1’s and 0’s to do basic arithmetic a billion times a second, much like a simple mechanical process on a conveyor belt in a factory.

How quickly computers manipulate bits relies on something called a *system clock*. This part of a computer is responsible for sending regular pulses to the CPU and the rest of the computer. This clock is like a human heart, pushing electricity to the rest of the computer’s body through its vascular network to each of its components. However, unlike a heart, it is perfectly regular, it pulses electricity, and keeps everything in perfect synchrony. When you see something like "3.2 GHz" to describe a computer’s CPU, that is the frequency at which the computer’s "heart" beats: GHz is a unit from physics that means "billions of times per second," and so 3.2 GHZ is "3.2 billion times per second." Some modern CPUs can change their system clock speed, slowing down to save battery life, such as on a phone, or speed it up, to calculate more quickly. The faster a computer’s system clock, the faster electrons move through its circuits, and the hotter those circuits get; therefore the faster that computers get, the more work computer engineers have to do to manage heat with cooling techniques such as fans or carefully designed airflow pathways. In fact, many modern computers have built in temperature sensors so that if they get too hot, the system clock can slow down or the CPU can stop processing so that the computer’s circuits do not melt.

|Chapter08_Computer_RAM.jpg|Two RAM chips, both green with black modules storing transistors.|Two RAM chips for storing data while a computer is on.|[Michael Dziedzic|https://unsplash.com/photos/XTblNijO9IE]|>

CPUs cannot do anything useful without data and code. Whereas the earliest computers stored data and code on punch cards and in vacuum tubes, modern computers store it in something called ~random access memory~ram (RAM). RAM is like the working memory in our brains, which allows us to temporarily remember something and think about it, until we replace it with some other thought. However, unlike human working memory, which only lets us remember a few ideas at a time, RAM can store billions of bits at a time while they’re being used, allowing computers to run multiple programs and analyze large data sets. When the CPU retrieves data from long term storage, it stores it in RAM to use; when it stores data, it copies that data from RAM to storage. And much like when we go to sleep, all of the thoughts in our working memory are lost, when RAM loses power, all of its contents are lost as well. (This is why power outages often cause computers to restart in different states from where we left them -- they didn't have a chance to record what was in RAM to restore after reboot).

|Chapter08_Computer_SSD.jpg|Two men, one Black, one White, sharing solid state drives with each other near the ocean.|Solid state drives are one form of long term secondary storage.|[Samsung|https://unsplash.com/photos/No89W_1obbc]|<

While RAM can store a lot of data, it’s not enough for everything. For example, a high definition digital movie might be 8 GB -- 8 billion bytes, where a byte is 8 bits -- but a smartphone’s RAM might only be 4 GB. To store large amounts of data, computers have ~secondary storage~storage, which is like a computer’s long term memory. It includes any storage device, including floppy disks, hard disks, flash drives, CD or DVD drives, or magnetic tape. All of these different technologies semi-permanently store large amounts of data while it is not being used. When it is used, it’s copied to RAM, so the CPU can use it. Of course, unlike human long term memory, which cannot perfectly or precisely recall every memory, secondary storage is intended to be perfectly precise in its storage of data, keeping every bit intact for later retrieval. It doesn’t always achieve this goal: plastic discs like CDs and DVDs erode over time, losing data; hard drives have mechanical parts that eventually fail; flash drives can only be written to a certain number of times before they no longer work. The problem of data storage is therefore one of constant duplication, failure, replacement, and restoration, much like the upkeep of our built environments and bodies.

|Chapter08_Computer_BrailleKeyboard.jpg|A person using a Braille keyboard to enter data into a computer.|Braille keyboards are more accessible than QWERTY keyboards to people who are blind and know Braille.|[Sigmund|https://unsplash.com/photos/HE1zW44Zm_Y]|>

Much of what makes modern computers useful is that they can receive input from many things. *input devices* like keyboards, mice, cameras, and other sensors are how a computer gets this input. Much like human senses of sight, hearing, and touch, computers use input devices to gather data from the natural world and convert it into binary data for storage and processing. Computers need a variety of other hardware components to allow the input device to do this translation and store the data in RAM. For example, a wireless computer mouse has its own CPU and memory to track its movement across surfaces, compute its movement along two axes, encode those movements into wireless signals to a Bluetooth receiver in a computer, which reads those movements hundreds of times per second, stores them in RAM, and uses them to update the position of a mouse cursor on a display. As sophisticated as such input devices are, this says nothing of their accessibility: if someone is blind, has motor tremors in their hand, is paralyzed, or has no hands at all, a mouse is useless. Input devices like keyboards for text entry and microphones for speech input may be far more accessible. Computers therefore need a variety of input devices to mirror the diversity of human physical abilities to provide input.

|Chapter08_Computer_Output.png|The Olympic rings at the 2020 Tokyo Olympics closing ceremony, rendered by a swarm of drones projecting laser light.|Screens and speakers are computer output, but so were drone-powered laser light shows at the 2020 Tokyo Olympics.|NBC|<

Similarly, computers need *output devices* to share the results of their calculations in the natural world. Much like humans produce output like speech and physical movement in the world, computers produce output like pictures on screens, sound on speakers, and words and images from printers. These devices read data from a computer’s RAM and convert it into physical forms in the natural world such as light, sound, and patterns on organic material like paper. For example, modern computers often have a special kind of RAM to store the color of every pixel on a computer display; they send all of that data to the display to, which updates each pixel on the display to match the color of that pixel stored in RAM. To provide computer users with rapid feedback and smooth animations, displays often do this at 60 Hz -- 60 times per second. Of course, just as with input devices, output devices are not universal: if someone is blind, for example, and display is useless. Output devices like speakers for speech-based interactions, and braille readers for text display, may be key. Computers therefore need a variety of output devices to mirror the diversity of human sensory abilities.

Modern computers have many other specialized components, often used to increase a computer’s speed, expand its memory capacity, or supplement the CPU. For example, a graphics card might be added to free the CPU from having to render the polygons of a game, or a sound card might be added to free the CPU from having to mix together multiple channels of sound to send to a speaker. Modern computers also have components that connect all of the above components, such as a logic board, where all of the above components are connected via microscopic wires to transmit data to each other. These enhancements, like those that led to the basic architecture of computers, have all been in demand of ever greater speed.

|Chapter08_Computer_Network.jpg|A photograph of network cables plugged into a server.|Computers communicate to each other fastest through fiber optic cables that transmit light signals.|[Thomas Jensen|https://unsplash.com/photos/ISG-rUel0Uw]|>

In addition to all of the hardware above, most modern computers also have  *networking devices* are a special kind of device that take both input and output. They take input from other computers and send output to other computers, allowing computers to communicate with each other, much like humans communicate with each other via voice and sign language. Whereas people communicate with natural languages, networking devices communicate using protocols like [WiFi|https://en.wikipedia.org/wiki/Wi-Fi] and [Bluetooth|https://en.wikipedia.org/wiki/Bluetooth], translating data into radio light waves to be received by other computers. Protocols like [Ethernet|https://en.wikipedia.org/wiki/Ethernet] allow computers to send data as light in fiber optic cables. The computer modems of the 1980’s and 90’s transmitted data via sound over telephone lines. Computers, of course, are the key components of the modern internet. However, the internet is made up of many other specialized computers, each containing all of the components above, but also additional specialized hardware for moving data between computers. This includes:

* *Modems*. These devices translate digital data in computers into other signals, suitable for transmission via other channels. For example, computer modems of the 1980’s and 90’s translated digital data into sound, transmitted over telephone lines. The cable modems that many have in their homes for broadband internet access translate digital data into electrical signals that run over coaxial cable. Cellular modems translate digital data into radio light signals, transmitted to nearby cell towers.

* *Routers*. These devices take digital data, formatted according to the [internet protocol|https://en.wikipedia.org/wiki/Internet_Protocol] (IP) format, and transmit it to their destination on the internet (usually through other routers, as the internet is a big network of computers connected by routers). The data is formatted into packets, which specify the IP address they are coming from, and the IP address they are trying to reach. Each address corresponds to a device or collection of devices on the internet (e.g., your computer, or a ~data centers~datacenter).

* *Servers*. These are specialized computers that receive large amounts of data from other computers on the internet, and often store large amounts of data for retrieval. Any computer can be a server, but specialized server hardware is built to quickly process large volumes of requests. Data centers, for example, may have tens of thousands of computers acting as servers, storing many petabytes of information, and processing billions of requests a day.

All of this internet functionality requires surprising physical infrastructure: for example, to enable internet communication between Eastern United States and Europe, there are thousands of fiber optic cables running under the ocean, in a waterproof tube to protect it from sharks, transmitting bits at the speed of light. And whether a computer’s internet connection is fast and functional depends on each part of this infrastructure: a webpage might not load if the network card in a computer fails, if it’s connection to a modem fails, if a router fails, or a server is offline. In fact, a packet of data might make it all the way to its destination device, but if that device is offline, or overwhelmed with requests, it may not be received. There may also be intentional reasons it is not received: for example, China includes special software and hardware in its routers to automatically censor some data from ever reaching Chinese computers; this is often informally known as the [Great Firewall of China|https://en.wikipedia.org/wiki/Great_Firewall]. Many internet service providers (ISPs) also want to use hardware to privilege certain data packets sent by companies who pay them more money; this issue, known as [net neutrality|https://en.wikipedia.org/wiki/Net_neutrality], concerns whether all data should be moved at the same speed, or allowed to be privileged based on market competition.

And of course, the shape of a network determines more than just it's efficiency or access. If someone is not connected to the internet, or their bandwidth is limited, or their data is capped, they are not connected to all of the information stored on all of the other computers on the internet, or to the people who create it. This can increasingly mean being disconnected from family, from health care, from social services, and even from food and safety. Thus, this "digital divide"<vandijk06> is therefore more than just about access to information, it's about the availability and cost of computing and networking hardware, the policies that internet service providers and governments set about who gets access, and the relentless push for hardware obsolescence, making older, less expensive computers useless.

|Chapter08_Figure03_Ewaste.png|A woman crouching over a pile of computer garbage with a radiation symbol hovering over her shoulder.|All computers are eventually garbage.|@jessie|<

# Computer waste

All of these modern computer components make up a computer. But they are far more general purpose machines than Babbage might have imagined, finding their way into every object and surface that we people create, bestowing them with the ability to quickly and reliably calculate, and interact with the world. For example, a desktop computer might be the first thing that comes to mind, or perhaps a laptop or tablet. But a smartphone is also a computer. And so are all consumer electronic devices: modern televisions essentially have large user interfaces like computers; alarm clocks have displays that often show a range of information; even wired office telephones have many computer functions, like remembering phone numbers and voicemail notifications. 

But the reach of computers goes well beyond consumer electronics. All home appliances have computers in them: computers drive the behavior of modern thermostats; refrigerators use computers to regulate the freezer; stoves use computers for timers and alerts; dishwashers use computers to conserve energy and avoid wasting water; microwaves use them to store heating programs; washers and dryers use them to monitor clothing wetness and dryness; and air conditioners use them to turn off and on automatically. And increasingly, many other objects in homes have computers as well, even smart light bulbs and doorbells. 

Even objects we don’t think of as computers at all are bursting with computers. Modern cars, for example, many have as many as 50 distinct computers, for controlling temperature, music, collision warnings, cameras, braking systems, security, and more; consequently, diagnosing and repairing cars, while it still requires mechanical knowledge, also requires the use of complex software diagnosis tools to find problems with sensors and install software updates. Therefore, the rise of computers as both a consumer good, but also a tool for enhancing everyday objects in invisible ways, have made computers ubiquitous in our lives.

While this ubiquity can be wondrous, there is a darker side to our fascination with computing hardware. Not only did inventing digital computers mean replacing human computer labor with digital computer labor, but it also meant the rapid and chronic obsolescence of computing hardware. In fact, every day, roughly 300 million pounds of computer hardware are discarded<widmer05>. Phones, computers, screens, mice, cables, printers, modems, keyboards, tablets, and countless other categories of appliances are sent to landfills to rest, undisturbed for the coming centuries. If this number seems hard to comprehend, it becomes much easier when considered at the scale of one person in a year: all it takes is each person tossing away 13 pounds of computer hardware each year to reach this number. For an individual, this might be discarding an old laptop and accessories or throwing away an old printer. But more likely, it is not individuals, but companies, upgrading their computer hardware every two years, discarding entire desktop computers for each employee, trying to ensure that everyone has the newest technology with which to do their work, as fast as possible.

This massive increase in computer waste has led to some efforts at computer recycling<lee00,pornwasin15>. Many recycling and garbage collection companies, for example, send computer garbage to Thailand, to be mined for precious metals. Workers sit, crouched upon piles of computer components, breaking down motherboards, screens, and other hardware with hammers and their hands, salvaging bits of the gold, silver, and copper wire used to transmit data inside computers. Some of this hardware is worthless: the plastic casings of mice, for example, are impossible to reuse and hard to recycle, and so they are often discarded as garbage. But the rare Earth metals are well worth the time to extract. This reclamation, and the burning of less valuable parts for efficient disposal, often leaks toxic heavy metals into Thailand’s soil and groundwater, while also creating toxic fumes. This is the hidden price of upgrading.

Another difference between human computers and computing technology is the fuel they run on. People eat food, but computers use electricity. And they use electricity roughly at the rate that their system clocks run: the faster the computer, the more energy they use. And the energy consumed by computers has risen rapidly, especially as more of our computing has been done by the world’s more than 500,000 data centers, each with as 100,000 computers, spanning more than 50 billion computers using electricity continuously. So far, this only constitutes about [5% of the world’s energy usage|https://blogs.scientificamerican.com/observations/why-do-computers-use-so-much-energy/], and about [4% of the world’s carbon output|https://www.bbc.com/future/article/20200305-why-your-internet-habits-are-not-as-clean-as-you-think], but it continues to grow as every object in our lives is digitized.

The future of computer hardware will likely look much like its past: constant innovation, an obsession with speed, the replacement of people, and the wasteful, polluting, and often toxic discarding of old technology. The question for the future of computers is whether the single goal of speed will continue to drive innovation, or whether new goals, such as sustainability and accessibility will begin to also shape their evolution.

|Chapter08_Figure04_Inspecting.png|Several students peeking and peering into different parts of computers.|Students need to understand that computers are objects, not magic.|@jessie|

# Teaching computers critically

Computer science, confusingly, is not particularly about computers. In fact, the academic discipline most concerned with computers is called computer _engineering_. And yet computers are perhaps the most salient connection that students have to computer science, as they likely have a computer of some kind at home and at school, can see computers in popular culture, and probably interact with them daily. This makes computers themselves a fraught entry point to talking about computer science, as it can distract from learning about computation itself<grover16>, which can be more invisible and abstract.

And yet, there is so much to be critical about when it comes to computer hardware. Understanding that computers were originally people doing arithmetic, and that much of students’ math education experiences are precisely that same work, can be a profound realization about the historical ties between computation and education. Understanding that computer hardware is full of precious, valuable metals, but also toxic materials, and that human hands extract them when wealthier countries are done with computers, is a revealing insight about globalization and the developing world. And understanding the electricity that computers use, where that electricity comes from, and the increasing role that computers play in climate change, ties computers to the natural sciences. Computers then, as ancillary as they might be to computation, cannot be ignored.

Unfortunately, there is very little research that offers guidance on teaching computers, let alone research that examines how to teach computers critically. Most research and practice focuses on teaching computer architecture and organization, often using a combination of lectures and simulation tools to visualize the components of a computer and the processes involved in executing programs at the hardware level<cassel02,yehezkel07>. One example of the latter explored the teaching of a post-secondary _computer systems_ course<kirdaniryan22> that discusses how computer hardware and software is organized. But rather than providing a strictly technical view on hardware components, the course used a metaphor, describing computers as an old house, one with a long history of choices, each made to support particular values (usually speed), and each with unintended consequences for its inhabitants. This metaphor resonated with many, helping them see that computers are not given, but designed, giving them agency and a prompt to challenge design choices.

In the rest of this section, we share a similar pedagogical tactic, helping to reveal the amazing and powerful ubiquity of computers in society, while also making space to question their creation and disposal.

## Unit sketch: Unpacking ubiquity

The focus of this unit sketch is to engage students in interrogating what computers are, where they come from, and where they go, while positioning them as mere tools for computation that might be situated in any object in students’ lives. The unit addresses the invisibility of computers -- their origins, their roles in appliances, and their final destination in landfills -- is the subject of this example unit.

The learning objectives are:

1. Students will be able to identify that computers are ubiquitous.
2. Students will be able to identify the central components of modern computer architecture.
3. Students will be able to relate the use of computers to the consumption of electricity, to the energy sources that produce that electricity.
4. Students will be able to identify the moral tensions in upgrading computers as they relate to waste, labor, and sustainability.

To achieve these learning objectives, the unit contains five sessions, moving from the computers in students’ lives, the composition of those computers, to the origins of those computers, to the energy used by those computers, and finally to the destination of those computers when they are discarded. Throughout, students engage in critical discourse about what a computer is and its various stages of a computer’s life.

=
### Session 1: What is a computer?
* Start the session by brainstorming about the kinds of things that are computers or have computers in them. The salient things will be desktops, laptops, and possibly phones.
* As students run out of ideas, begin to suggest other less obvious objects that have computers, especially objects in the classroom, such as lights, clocks, watches, and other devices, or the vehicles that they used to get to school, whether cars, buses, or trains.
* As the ubiquity of computers becomes more apparent, turn the conversation to things that students want, and the extent to which they involve computers. These might include things like consumer electronics like video game consoles, headphones, and other computer-containing gadgets.
* Once students have run out of ideas, turn the session to a debate. Are some things on the list more "computer" than others? What makes something a computer? Converge toward a consensus about what counts and what doesn’t.
* Foreshadow the forthcoming sessions, about what computers actually are, where they come from, what they’re made of, and where they go.
=

This first session sets the stage for the unit, helping students recognize the increasing ubiquity of computers in modern life, and challenging their conception of what a computer is. Ideally, students leave this session noticing many other things in their world that might contain computers and begin wondering whether they do.

The next session builds on this greater awareness and curiosity by providing direct instruction about what computers actually are, challenging the consensus definition of the class built in session 1.

=
### Session 2: What computers actually are
* Remind the class of the consensus definition from the first session.

* Define a computer as a device that receives input, stores data, follows instructions to process that data, and then produces output, connecting this definition to the many example objects brainstormed in the previous session.

* Define the parts of a computer: CPU, clock, RAM, secondary storage, input devices, output devices, and network devices. For each, use the brainstormed examples from session one to make the role of each component clear. For example, when talking about an alarm clock, one might note that the RAM stores the current time, the CPU follows instructions to check whether to start the alarm sound, the input devices are the buttons, and the output devices are the screen and speaker.

* At the end of the session, compare the definition presented with the consensus definition from session 1. What was right about that definition?
=

This second session gives a conception to students grounded in modern computer architecture, while connecting it to students’ lived experience with computing devices. Ideally, the curiosity that students left with session 1 is somewhat satisfied, giving them a sense that the devices in their world might all have the same basic components, even though they come in different shapes and sizes. They should also leave with a conception of what each of those components do, and how they are related to their interactions with computing devices, tying the input they provide to the data stored, the instructions that process that data, and the resulting output.

Having built a conception of computers, the third session begins to build students’ critical consciousness about the origins of computing devices, focusing on who makes computers and where they make them.

=
### Session 3: Where computers come from
* Begin the session with a video, showing concrete examples of where computing devices are assembled (e.g., a video of one of the [factories that manufactures Apple devices|https://www.youtube.com/watch?v=9XkX6EGk_CA]). Ask students to watch for the different jobs that factory workers do to create the device, and how they are related to the components of a computer.

* After the video, surface the jobs that students noticed in the video. What did they notice about the work itself? Was it fun or boring? What kind of attention did it require? Would the students want to work in one of those factories? Why or why not?

* After the discussion, turn students’ attention toward the materials used to create the parts being assembled. Provide direct instruction on the various rare earth metals and plastics used, then showing a video on where rare earth metals come from (e.g., this [Financial Times video|https://www.youtube.com/watch?v=gyH_PvLZoD0]). Ask students to notice who controls the metals.

* After the video, discuss control. Why does China control most of the rare earth metals? Why are they essential to computing devices?

* *Formative assessment*. After the discussion, engage the students in a web-based research project, identifying the value of the rare earth metals such as copper and silicon in computing devices. What is the value of the metals in the devices they are using to do the research? What would they have to do to sell these metals to recoup its value? Discuss with students what they would like to present in their research and how.

    ** This is _responsive_ because it centers the devices in students’ lives, asking them to become more critically conscious of their contents, origins, and values.
    ** This is _participatory_ because it gives agency in shaping the format of their presentations.
    ** This is _educative_ because it surfaces the research of multiple students, leading to differing perspectives and judgments about the value of the devices.

* After the research session, have the students share the different amounts they found, and calculate the value of the components inside the computers they are using.
=

This session gives students a sense of the global nature of computer manufacturing, and the contested state of the natural resources that go into computers. This broadens their critical consciousness from beyond just the ubiquitous nature of computers in everyday devices, but the particular places that computers come from, and who manufacture them for our use.

The fourth session extends this critical consciousness to sustainability, discussing the power that computers use to execute instructions.

=
### Session 4: How we power computers
* Begin the session by having students share from where they believe their computing devices’ electricity comes (coal, hydroelectric, wind). Have they ever visited the power plant that generates the electricity?

* Provide direct instruction on cloud computing, explaining that many of the things we do online are not executed on the computer we are using, but on other computers stored in data centers. Show a video of a data center, revealing that they are large, cooled warehouses close to electricity sources.

* Have the students research where the closest data center is to their classroom. What are its sources of electricity? Who works at those power plants?

* Provide direct instruction on how much energy a computer uses in a day, how much a class uses, and how much everyone on the planet uses. Situate that energy use into the context of global energy use, and its contributions to global warming. Sources for this information include Apple’s [extensive website|https://www.apple.com/environment/] on environment and sustainability.

* End the session with a discussion about how this information about energy use and global warming might change their use of computers. Will they search less? Browse social media less? Turn their screen brightness down?
=

At the end of this fourth session, students should be able to connect the components of computers to the origins of those computers and their raw materials, to the energy that powers them and the other computers they use in data centers. This global picture of computing devices, combined with the sense of computers as ubiquitous, should lead children to wonder about the global scale of computer use and their individual role in it.

The next session adds a final piece to this global picture, investigating what we do with computers when we are done with them.

=
### Session 5: How we discard computers
* Begin the session by reminding students of the global systems that allow computers to be created and run, then pose a final question for discussion: what do we do with them? Capture students’ beliefs.

* Explain that most computers go to landfills, showing a video of landfills full of computing devices, and noting the location of the closest landfill to the school.

* Turn the discussion to the potential of recycling computers, then show a video of [Apple’s iPhone recycling robot|https://www.youtube.com/watch?v=2Bu-gl7v-P8]. Ask students to monitor for both good and bad aspects of the robot.

* Then show a video of [computer waste|https://www.youtube.com/watch?v=JXDrIvShZKU], which is done by hand, and can be toxic. Ask students to monitor for the problems they see in the recycling process, who is doing the recycling, and what incentive companies have to recycle.

* *Summative assessment*. Using a philosophical chairs discussion format, pose the question to students: knowing everything that they do about rare earth metals, energy use, and the risks and rewards of recycling, when is it worth upgrading a computer? Half of the class should defend the position that computers should be used until they stop functioning, and the other should defend the position that people should upgrade whenever they want to. Discuss how students’ arguments should be judged and what they might submit as evidence of their arguments. Alternate sides, eliciting positions and arguments.

** This is _responsive_ because it centers students’ personal choices around upgrading.

** This is _participatory_ because it gives agency in shaping the evaluation criteria for their arguments.

** This is _educative_ because it surfaces alternate arguments that students may not have considered.
=

By the end of these five sessions, students should not only be able to identify the central components of a modern computer architecture, but also understand what those components are made of, where those materials come from, how much energy computers use, where that energy comes from, and what happens to computers when we discard them. Throughout, students should be able to identify the moral tensions in basic actions with a computer, like recharging or discarding it.

The clearest limitation of this example unit is that it prioritizes critical consciousness of the industrial and economic systems behind computer manufacturing and use at the expense of a robust technical understanding of computer architecture. This technical understanding can be valuable for helping students link the ideas in computer science more closely to how they are implemented in hardware. However, it's questionable whether such ideas are key literacy for all youth, especially more so than the social implications of computer hardware. Moreover, these topics are rigorously taught in post-secondary CS education settings already.

# Conclusion: From calculation to computer

From our very first chapter on @history through a series of chapters on @pedagogy, @assessment, @justice, @design, and the big questions of computing, there has been one consistent thread: humanity finds mathematic calculation valuable. Some have found it so valuable, and so fascinating, that they have spent the past two centuries inventing ways to make calculation so fast, so cheap, so reliable, and so broadly applicable to all human activity, that now, nearly every aspect of our lives is shaped by the digital computer.

Of course, the original vision of computing was not one of ubiquity, but simply profit and power. It's only in hindsight that we have come to see that the computational world we have created not only has social consequences on how we live our lives, but our ability to sustainability survive on this planet. Take one last moment to ponder this macro scale of computing before we dive deep into the intricate lattice of CS ideas that have brought us to this point in history, and connect each of these ever ideas to the broader world above.

@standardsHeader
@standardsBlurb

@cstaHeader
@cstaIC
@csta2IC21
@csta3AIC24
@csta3BIC26
@csta3BIC27
@csta3BIC28
@cstaNI
@csta2NI04
@csta3ANI04
@csta3BNI03
@cstaCS
@csta2CS02
@csta3BCS02

@toleranceHeader
@toleranceJustice
@tolerance5
@tolerance12
@tolerance14

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