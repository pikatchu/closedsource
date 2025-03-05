Joaquim leaned against the desk, arms crossed, as he watched the class absorb his lesson. “Regular expressions,” he continued, “are something you’ll use all the time. Whether it’s searching for patterns, validating inputs, or parsing text, they’re everywhere.”

A boy sitting a few rows behind Leo and Jasmina smirked. “Yeah, perfect for validating matching parentheses,” he said with a mischievous grin.

Joaquim sighed, half amused, half exasperated. “Well, Erling,” he said, eyeing the boy, “I wasn’t planning to get into that today, but since you brought it up…”

At that moment, the drone hovering behind Joaquim echoed in a monotone voice, “Since you brought it up.”

Erling’s grin widened. Joaquim narrowed his eyes. “Erling, did you hack into the school’s system again?”

The boy shrugged, unbothered. “I mean, if the school actually updated their software once in a while, it wouldn’t be so easy.”

Joaquim shook his head. “Alright, fair enough. We’ll update it. But let’s get back on track. You see, regular expressions are powerful, but they have limits.”

Jasmina looked intrigued. “Like what?”

Joaquim paced in front of the class. “Let’s say I want to check if a string has properly balanced parentheses or brackets—meaning every `(` has a matching `)`, and every `[` has a matching `]`. Sounds simple, right?” He paused, letting the question hang. “Well, regular expressions can’t do that.”

Leo frowned. “But… why not? Can’t we just write a pattern that says, ‘match any `(` and then make sure there’s a `)` later’?”

Joaquim smiled. “That’s a reasonable assumption. In fact, let’s take a different approach. You now know that every regular expression has an equivalent automaton. So if a regular expression could match balanced parentheses, then we should be able to write an automaton for it, right?”

Jasmina nodded. “Okay… so what would the automaton look like?”

Joaquim raised a finger. “Let’s think through the states. We start in an initial state. If we read an opening `(`, what happens?”

Jasmina thought for a moment. “We go into a new state. Same thing if we see `[`. But if we see `)` or `]` first, that’s an error, right?”

“Exactly!” Joaquim nodded. “Now, let’s think about what happens as we continue reading the string. Suppose the first character was `(`—what should we do when we encounter the second character?”

Leo hesitated. “We have to match the whole sequence, and then at the end, make sure there’s a closing `)`.”

Joaquim smiled. “Right. And how would we express that in an automaton?”

Leo and Jasmina exchanged a look. After a moment, Jasmina said, “Wait… we can’t.”

Joaquim snapped his fingers. “Exactly! You can’t express it with a standard automaton because you need memory. You need to *remember* every `(` or `[` that you see, and you need to check that when you close one, you’re closing the right one.”

He moved to the board and drew a rough sketch of a stack. “This is where stacks come in. Think of it like a pile of books. When you encounter an opening `(` or `[`, you *push* it onto the stack. Then, when you encounter a closing `)` or `]`, you *pop* the last thing from the stack and check if it matches. If the stack is empty at the end, the string is valid. If not, it’s invalid.”

Joaquim turned back to them. “That’s why you can’t match balanced parentheses with regular expressions alone. You need a stack.”

Leo’s eyes widened in understanding. “So a stack keeps track of what we need to close?”

“Exactly,” Joaquim said. “Now, let’s take a look at the assembly program that actually does this.”

Joaquim gestured toward the screen. “You can find the source code here: http://closedsourcebook.com/asm_stack.html,” he said, letting the class take it in. 

“Now, don’t be intimidated by the size of the code,” he continued. “It might look complex at first, but if you break it down, you’ll see it’s really just an automaton like before. The only difference is that instead of jumping from one state to another immediately, we’re interacting with the stack every time we process a character.”

He pointed at the first part of the program. “Like before, we have states. But now, the key operations are *push* and *pop*. When we encounter an opening `(` or `[`, we push it onto the stack. That means we’re keeping track of what needs to be closed later. If we see a closing `)` or `]`, we pop the last thing from the stack and check if it matches. If it does, we continue. If not, we stop with an error.”

Joaquim let the words sink in. “That’s all it is. A systematic way of ensuring that every opening bracket has a matching closing bracket. If the stack is empty at the end, the input is valid. If it’s not—then something went wrong.”

Jasmina leaned in, scanning the code. “So every time we process a character, we’re checking the stack?”

“Exactly,” Joaquim said. “And once you understand that, the rest is just details.” 

Leo nodded slowly. “Okay… I think I get it.”

Joaquim smiled. “Good. Because once you understand stacks, you’re well on your way to understanding recursion, function calls, and how programming languages actually work under the hood. But one step at a time.”

Joaquim turned back to the board, gesturing toward the example they had just worked through. "Now," he said, "let's talk about something important. Up until now, we've been managing our own stack in memory—storing values, moving a register to keep track of it, and loading and storing data manually. But the processor has a **built-in stack** specifically designed for this."

Leo and Jasmina leaned in, intrigued.

"This built-in stack," Joaquim continued, "is called the **execution stack**. The processor uses it internally, and we can also take advantage of it. Instead of manually managing a stack with memory addresses, we use two special instructions: **PUSH** and **POP**. These instructions let us push values onto the stack and retrieve them later, just like we did before, but now the processor handles the details."

He pointed at a new section of code on the screen. "We've updated our program to use this native stack instead of managing our own. Every time we **PUSH**, the processor stores a value at the top of the stack and moves the stack pointer down. When we **POP**, it retrieves the last stored value and moves the stack pointer back up. The register that tracks the stack’s position is called **SP**, or 'Stack Pointer'. You can actually see its value changing in the emulator when you step through the code."

Jasmina’s eyes lit up. "So it’s doing the same thing, but in a more efficient way?"

"Exactly," Joaquim said. "Under the hood, it's still just memory—just like our manually managed stack. But this special memory region is predefined, and the processor gives us fast, easy-to-use instructions to work with it."

Leo was already looking at the emulator screen. "So every time I push something, SP decreases?"

"That's right," Joaquim confirmed. "And when you pop, SP increases again. This stack is used for more than just storing data—you'll soon learn that it plays a critical role in **function calls** as well. But we’ll get to that later."

He tapped a command on his console, and a new example appeared. "You can check out the revised version of our program here: **http://closedsourcebook.com/asm_native_stack.html**. Run it step by step and pay close attention to how SP moves. That’s the key to understanding how the processor's native stack works."

Leo and Jasmina exchanged a glance, excited to try it out.