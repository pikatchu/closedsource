
---

That evening, Elias and Leo returned home.  

Elias poured himself a glass of water and leaned against the counter. “From now on, don’t change anything in your routine.”  

Leo nodded.  

“Go to school. Pretend you were sick if anyone asks. Act normal.”  

Leo crossed his arms. “And then?”  

Elias took a sip and exhaled. “And then, you keep training. Go see Mr. Lee as usual. Your training is important.”  

Leo hesitated for a moment, then spoke.  

"You said my mother was the Commander-in-Chief… What does that mean?"  

Elias set his glass down and met Leo’s gaze seriously.  

"It means she is the leader of the Companions."  

Leo felt his chest tighten. "Then… can’t you contact her? Could I speak with her?"  

Elias' expression darkened slightly. “If she disappeared, there’s a reason for it. Probably some operation she’s running.”  

"But—”  

Elias cut him off. “Don’t worry. She’ll resurface in time.”  

Leo wasn’t satisfied with that answer. But he could tell from Elias’ tone that there was no point in pushing further.  

For now, all he could do was wait.  

---

The next day, Leo went to Mr. Lee’s garage as usual.  

When he stepped inside, Mr. Lee was tinkering with some old circuit boards, but the moment he saw Leo, he paused.  

“What’s wrong, kid?”  

Leo hesitated, then told him everything—about the Inquisitor, about the meeting on Friday, about the strange situation he now found himself in.  

Mr. Lee sighed. “I’m sorry, kid. That’s heavy.”  

Then, after a brief moment, he clapped his hands together. “I have just the thing to take your mind off all that.”  

Leo raised an eyebrow. "Yeah?"  

Mr. Lee grinned. “Memory.”  

Leo blinked. "Memory?"  

"Yep! Today, I’m going to teach you about memory.”  

Leo had heard the word before, but he had never truly understood what it meant.  

Mr. Lee pulled up a small whiteboard and started drawing.  

"Remember registers?" he asked.  

Leo nodded.  

"Registers are like transistors. Their values can be changed programmatically. They can also perform operations—addition, subtraction, multiplication… You remember?"  

"Yeah. They’re wired together like circuits."  

"Exactly! And when you group those circuits together to perform many operations, what do you get?"  

Leo thought for a moment.  

Then it hit him. "A processor?"  

Mr. Lee snapped his fingers. "Boom! You got it."  

Mr. Lee continued.  

“Now, here’s the problem with processors.”  

He grabbed a marker and drew a small box on the board.  

"Processors only have a limited number of registers. That’s a problem because, sometimes, you need to store *a lot* of data. What if I told you to add together a thousand numbers? What would you do?"  

Leo frowned. "I wouldn’t have enough registers to store them all."  

"Exactly. That’s why we need memory."  

Mr. Lee underlined the word on the board.  

"The processor can access external memory, using two special instructions: LOAD and STORE."  

Leo leaned in.  

Mr. Lee continued. "Memory is like a gigantic *grid* of transistors, each one storing a small amount of data. Each position in the grid has a unique number, called an *address*. The processor uses these addresses to read and write data."  

Leo nodded slowly. "Like how a street address tells you where a house is?"  

"Bingo!"  

Mr. Lee smiled. "That’s why it’s called *Random Access Memory*—or RAM. Because you can access *any* address instantly, in *any* order. Unlike some types of memory where you have to read things in sequence."  

Leo thought for a moment. “So… we have all this memory, and we can move data in and out of it whenever we need?”  

"That’s the idea. Let’s try it in practice."  

Mr. Lee walked over to a computer and pulled up a programming interface.  

“Alright, let’s write some memory instructions.”  

He typed:  

```
MOV A, 160
```  

"This puts the number 160 into register A. That’s going to be our memory address."  

Leo nodded.  

"Now, let’s store a value at that address."  

```
MOV [A], 1
```  

"Notice the brackets?" Mr. Lee pointed at the screen. "That means we’re writing to the *address* stored in A, *not* A itself."  

Leo’s eyes widened slightly. "Ohh, so we’re not changing A, we’re changing the memory location A is pointing to!"  

Mr. Lee grinned. "Exactly."  

"Now, let’s try reading from memory."  

```
MOV B, [A]
```  

"This takes whatever is stored at address A and puts it into register B."  

Leo nodded slowly. "So instead of keeping everything in registers, we move data in and out of memory as we need it."  

"You got it. Now, you can practice at this link: http://closedsourcebook.com/asm_memory.html."  

Leo clicked the link and started testing out the instructions.  

After a few minutes of experimenting, Leo asked:  

"But… why structure things this way? Wouldn’t it be easier if all memory worked like registers?"  

Mr. Lee laughed. "Ah! Great question."  

He pulled out a small circuit board.  

"Remember how much wiring we needed just to build an *incrementer*?"  

Leo nodded.  

"Now imagine having millions of memory addresses, each capable of doing all those operations. The amount of hardware required would be *insane*."  

Leo thought about it. The circuits they had built were already complicated.  

Scaling that up to millions of addresses?  

It would be impossible.  

"That’s why we separate memory from processing," Mr. Lee continued. "The processor does all the *thinking*, and memory just *stores* the data. We move data in and out as needed. That’s the way computers work, Leo."  

Leo sat back, processing everything.  

So this was how computers stored information.  

It wasn’t magic.  

It was just electricity. Just logic gates.  

And he was starting to understand it.

---

Mr. Lee leaned back slightly, rubbing his hands together as he eyed the terminal screen.  

"Alright, let's try something practical," he said. "Let’s write some numbers into memory."  

Leo’s eyes lit up.  

"We’re going to write all the numbers from 0 to 10 into memory, starting at address 160," Mr. Lee continued. "And to do that, we’ll need a loop."  

Leo nodded, already picturing how the loop might work.  

"So, what do we need?" Mr. Lee prompted.  

Leo thought for a moment. "Two registers?"  

"Exactly!" Mr. Lee smiled. "One register will hold the number we want to write, and the other will hold the address where we want to write it."  

He started typing on the terminal.  

"Let’s start by setting up their initial values."  

He wrote:  

```
MOV A, 160
```
``` 
MOV B, 0
```

"The register A is our memory address—160—where we’ll start writing. And register B is the value we’re going to write, starting at 0."  

Leo followed along, nodding.  

"Now," Mr. Lee continued, "what does the body of the loop look like?"  

Leo thought about it. "We need to write B into memory at address A."  

"Right! And do you remember how to write to memory?"  

Leo quickly typed:  

```
MOV [A], B
```

Mr. Lee grinned. "Exactly!"  

"So now, let’s think through what happens after the first iteration," Mr. Lee continued. "A is pointing at 160, B is holding 0, and we’ve stored B into memory."  

Leo was following closely.  

"Alright," Mr. Lee said. "What happens next?"  

Leo thought for a second. "We increment the value?"  

"Correct! But something’s missing."  

Leo frowned, staring at the instructions.  

"If we only increment B," Mr. Lee explained, "then in the next iteration, we’ll still be writing to address 160—which means we’d just keep overwriting the first number over and over again."  

Leo's eyes widened as he realized the mistake.  

"Ah! We also need to increment A!"  

"Exactly!" Mr. Lee said. "Otherwise, we’d just keep writing over the same spot. We need A to move to the next memory address each time, just like B is moving to the next number."  

Leo quickly added:  

```
INC A
```
```
INC B
```

"Nice work!" Mr. Lee said. "And finally, what’s our stopping condition?"  

Leo thought for a moment. "We stop when B reaches 11?"  

"Right again!"  

Mr. Lee pointed to the screen. "Try running the full program here: http://closedsourcebook.com/asm_memory2.html."  

Leo eagerly pulled up the page and entered the code.  

"But this time, instead of using STEP, click on RUN."  

Leo hesitated. "RUN?"  

Mr. Lee nodded. "It’s useful when there’s a lot of code to execute. Instead of stepping through one instruction at a time, this will run the whole loop in one go."  

Leo clicked RUN.  

Immediately, the right side of the screen flashed, showing a large grid of numbers.  

Mr. Lee pointed to it.  

"See this big matrix? That’s the state of memory."  

Leo’s eyes darted over it, watching the values update in real-time.  

"Look here," Mr. Lee pointed to a row. "The numbers are being written, one after another. You can see memory changing as the program runs."  

Leo watched, fascinated.  

"So this is how computers store information?"  

Mr. Lee nodded. "This is how everything works, Leo. Every game you play, every piece of data you save—it's all just numbers in memory."  

