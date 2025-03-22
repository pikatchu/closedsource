Brielle leaned back against the motel desk. "Now, what's wrong with this approach?" she asked. "It works, but it's very limiting. Why?"  

Sebastian smirked. "Because we can only call one layer deep."  

Brielle gave him a look. "Yes, but you already know all that stuff. Let them think about it."  

Leo stared at the screen, watching the program execute step by step. After a moment, he said, "I see. The problem is that if a function calls another function, we'd need another register to store the return address. But registers are limited—we'll run out pretty quickly."  

"Exactly!" Brielle said. "If we want functions to be able to call other functions, we need a way to store the return addresses dynamically, without relying on a fixed number of registers."  

Jasmina's eyes lit up. "We need a stack!"  

Brielle pointed at her. "Yes! The problem is almost identical to what you faced with automatons. Remember, in an automaton, you transition from one state to the next based on the input you read. The jump instruction works the same way—it jumps based on a condition. But it has no memory. Once it jumps, it forgets where it came from. If we need to do something after the jump finishes, we're out of luck."  

She walked over to the table and picked up a small notepad, flipping through its pages. "Instead, we need a way to *remember* where we came from before we jump. That's where the stack comes in. Just before jumping, we push the return address onto the stack. When the function is done, we pop that address back and return to where we left off."  

She turned back to the screen. "Here's the same program using the execution stack, but with an extra indirection, so with a function that calls print, instead of calling print directly." She sent a link to their terminals:  

<a href="http://closedsourcebook.com/asm_function2.html">http://closedsourcebook.com/asm_function2.html</a>

"This program behaves the same as the last one, but now it supports deeper function calls. If `print` were to call another function, it would still work. The stack allows us to store multiple return addresses without running out of registers."  

Jasmina pressed STEP in the emulator, watching the execution carefully.  

Brielle continued, "Now, you may have noticed that managing the stack manually like this is a little clunky. Setting up labels, pushing addresses, and making sure everything lines up—it's a lot to track. Fortunately, the processor has built-in instructions to handle this for us."  

She typed two words on the screen:  

`CALL` and `RET`  

"These two instructions automate everything we just did. `CALL` pushes the return address onto the stack and jumps to a function. `RET` pops the return address from the stack and jumps back. It's exactly the same as what we wrote before, but much faster and built into the processor itself."  

Jasmina nodded. "So it's just a shortcut for what we were already doing, but handled automatically."  

"Precisely," Brielle confirmed.  

She paused, then added, "And now you understand why it's called an *execution stack*. At its core, the stack is used to store return addresses—pointers to instructions we need to return to after a function call. It's a stack of execution points, a stack of instructions. That's its primary purpose."  

She glanced at the others. "Of course, the stack can store other things too. If a function needs temporary memory, variables that only need to exist while the function is running, they can be pushed onto the stack as well. But the most critical role of the execution stack is storing return addresses, ensuring that function calls can nest as deep as needed."  

She leaned back in her chair. "Now, let's see if you can modify the program to call a function from inside another function. Try it."

<a href="http://closedsourcebook.com/asm_function3.html">http://closedsourcebook.com/asm_function3.html</a>
