
Jasper leaned over the desk, pointing at the screen. “Alright, now let’s complicate things a little bit.”  

Jasmina’s eyes lit up.  

“As you can imagine, you can’t just keep writing one instruction per line forever,” Jasper continued. “Sometimes, a computer needs to perform *millions* of operations, and we don’t want to write them all out manually.”  

Jasmina nodded.  

“So instead, we use something called a *loop*. A loop lets us repeat instructions without writing them over and over. Let’s write our first loop.”  

Jasper grabbed a notebook and quickly scribbled out the plan.  

“We’re going to write a program that adds numbers from 1 to 4.”  

Jasmina raised an eyebrow. “So… 1 + 2 + 3 + 4?”  

“Exactly.” Jasper nodded. “Now, of course, we *could* just write four ADD instructions in a row, but we don’t want to do that—we want to use a loop.”  

Jasmina cracked her knuckles. "Alright, let's do it."  

Jasper tapped the keyboard.  

"We’re going to modify our previous program. First, we keep `MOV A, 1` the same, but we’ll change B to 0."  

He typed:  

```
MOV A, 1
```
```
MOV B, 0
```

“Now, here’s where it gets interesting. We’ll add a *label*—it’s just a marker in the code, like a bookmark.”  

He typed the next line:  

```
loop:
```

"Now, the action starts."  

He typed:  

```
ADD B, A
```

Jasper turned to Jasmina. "Okay, first iteration—what’s the new value of B after this instruction?"  

Jasmina thought for a second. "1!"  

Jasper nodded approvingly. "Correct. The first time through, B becomes 1. But we need to keep adding the next number in sequence—so what do we do next?"  

Jasmina thought for a moment. "We increase A?"  

"Exactly!" Jasper typed:  

```
INC A
```

"Remember that incrementer we built with logic gates? It’s the same thing, except now we’re doing it directly in a register. `INC A` adds 1 to A, moving us to the next number in the sequence."  

Jasmina nodded excitedly.  

"Now comes the trickiest part—the condition for stopping the loop."  

Jasper continued:  

```
CMP A, 5
```

Jasmina paused, frowning. "Wait… 5? But we’re adding numbers *up to* 4, not 5."  

Jasper’s grin widened. "That’s it! You just made your first *off-by-one* error!"  

Jasmina replied, annoyed. "I hate that."  

Jasper chuckled. "Don’t feel bad. Every programmer makes this mistake all the time."  

He leaned forward. "Think about it—if we stopped at 4, we’d be missing the last addition. The loop would stop *one step too soon*."  

Jasmina sighed. "Fine, I see it now. We need to check for 5 so that 4 gets added properly."  

Jasper nodded. "Exactly. Now, this next instruction is what makes the loop actually *loop*."  

He typed:  

```
JNZ loop
```

“This means: *Jump back to ‘loop’ if the Z flag is not set.*”  

Jasmina squinted. "Z flag?"  

Jasper pointed to the right side of the screen. "See the `Z` status? Right now, it says `false`. But when `CMP A, 5` finds A and 5 to be equal, the flag will turn `true`."  

Jasmina nodded slowly. "So as long as A is *not* 5, it keeps looping?"  

"Bingo. When A *does* become 5, the loop will break and continue to the next instruction, which is—"  

```
HLT
```

"Halt. This stops the program."  

Jasmina grinned. "Okay, let’s see it in action!"  

Jasper handed Jasmina the keyboard. “Alright, go to this address: <a href="http://closedsourcebook.com/asm2.html">http://closedsourcebook.com/asm2.html</a> and step through the program.”  

She loaded the page, her hands moving quickly.  

She pressed "STEP" once.  

The first instruction executed.  

She stepped through again and again, watching B increase each time as the numbers added up.  

Finally, when A hit 5, the `Z` flag switched to true—and instead of looping, the program continued to HLT and stopped.  

Jasmina’s eyes darted to the final result.  

"Oh, look! The final value in B is `0A`!"  

Jasper’s face lit up. "That’s hexadecimal, right?"  

Jasmina nodded enthusiastically. "Yeah! And `0A` in decimal is… 10!"  

Jasper clapped his hands. "Exactly! You get it!"  

Jasmina sat back in pure satisfaction, staring at the machine that had just followed her orders, step by step.  

This was real programming.  

