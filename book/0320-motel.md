

---


Jasmina, Leo, Sebastian, and Brielle settled into the cramped motel room, its lighting casting long shadows on the worn-out carpet. The air smelled faintly of dust and old fabric. Brielle locked the door behind them and turned to the group.  

"Listen carefully," she said. "No talking to anyone. No stepping outside unless I say so. We are ghosts until we reach the Senate."  

They nodded in unison. No one was in the mood to argue.  

Brielle tossed her bag onto the bed and stretched. "Since we have some time, we might as well make the best of it. Let's do some programming."  

Leo sat heavily on the edge of the bed. "I don't know if I'm in the mood for that."  

Brielle's expression hardened. "There is no mood for programming," she said. "We are Companions. We program. That's what we do. If we stopped training every time something happened, there would be no training at all."  

Leo exhaled sharply. "But Elias—"  

"Elias would agree with me," Brielle cut in.  

The room fell silent.  

Brielle sat down and folded her hands. "Today, you will be learning about functions. One of the most important principles of programming. Until now, every program you've written was used exactly once—meaning you never reused any of your code. But that's not how real programs work. Most of the time, we want to share logic instead of duplicating it. If I have a piece of code that does something useful, I don't want to rewrite it every single time. I want to reuse it."  

She let the words sink in before continuing.  

“So, how would you go about it?” she asked. “Let's say I have two simple instructions: one that prints the value of register B on the screen and another that increments register A. What if I want to use those two instructions multiple times without rewriting them?”

Leo thought for a moment, staring at the table as he worked through the problem. “Well… we could put those instructions under a label,” he suggested. “Then we could just jump to that label whenever we need them.”

Brielle nodded. “That's a good start. But once we jump there and execute those instructions, how do we go back?”

Leo frowned, considering the issue. “I guess we'd need another jump at the end to go back to where we started?”

“Okay,” Brielle said, “but let's say we call this section of code multiple times, from different places in the program. Where should that last jump take us?”

Leo's expression tightened as he realized the problem. “Oh… I don't know,” he admitted.

Jasmina, who had been following closely, suddenly brightened. “Wait! What if we store the address of where we came from before we jump? That way, at the end, we can retrieve it and jump back to the right place.”

Brielle smiled. “Exactly. That's the key idea behind functions. Code is also memory, and if we save where we came from before jumping, we can always find our way back.”

Brielle raised an eyebrow, impressed. "Where did you learn that code was also memory?"  

Jasmina glanced at Sebastian before admitting, "Erling told me."  

Brielle smirked. "Of course, he did." She reached for her device and typed something. "Alright, load this:  

<a href="http://closedsourcebook.com/asm_function1.html">http://closedsourcebook.com/asm_function1.html</a>

"This program does exactly what Jasmina described," Brielle continued. "We define a label called `print`, like we've done before. But the key difference is that we don't just jump to it and lose track of where we were. Instead, we store the address of where we came from in a register—C, in this case—and when we finish executing the function, we jump back to that stored address."  

She gestured at the screen. "Remember, code is also memory. What you write in assembly—`MOV`, `INC`, `CMP`—is a textual representation of binary instructions. The processor doesn't actually execute these words. It executes their binary form. And if you press STEP in the emulator, you'll see in blue which instruction is currently being executed."  

Jasmina grinned. "I already knew that."  

Brielle nodded approvingly. "Good. Now look at the register labeled `IP` on the right. It stands for "Instruction Pointer". This register holds the address of the instruction currently being executed by the processor."  

Leo leaned forward, suddenly intrigued.  

"Try playing with it," Brielle said. "Step through the execution, watch how the IP register changes. See if you can figure out exactly how the function jumps back to where it started."  


