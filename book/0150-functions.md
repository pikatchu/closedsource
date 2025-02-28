Jasmina and Leo stepped out of the training hall, still catching their breath from the intense Judo session. The cool air outside felt refreshing after the heated practice. As they adjusted their uniforms, a man in simple, dark robes stood waiting for them. He had a calm yet commanding presence.  

"Now it's time for your programming class," he said, his voice steady but firm. "Follow me."  

They exchanged a quick glance before hurrying after him.  

The man led them through a series of corridors until they arrived at a small, dimly lit room. The walls were lined with old monitors and mechanical keyboards. The room smelled faintly of dust and machine oil.  

The man turned to face them. "I am Joaquim," he said. "And today, you’re going to learn about functions."  

Leo and Jasmina perked up.  

Joaquim continued, his voice carrying a weight of excitement. "Functions are at the core of almost everything a computer does. Today is an important day in your training."  

He sat down at the front of the room and gestured for them to do the same. "Up until now, every instruction you've written was executed exactly once, in the order you wrote it. But in real programs, that's not how things work. Most of the time, we need to repeat the same operation multiple times."  

Joaquim leaned forward. "Imagine the program you wrote to display a binary number on the screen. Now imagine you had to use that same logic again, not just once, but dozens, maybe even hundreds of times. Would you copy and paste the same instructions over and over?"  

Jasmina frowned. "That would be a lot of typing," she said.  

"And a waste of memory," Joaquim added. "You see, the code you write is also stored in memory. If you take a look at your emulator, you’ll see that part of the memory is filled with values when the program is running. Step through your code, and you'll notice that the instruction being executed appears in blue."  

Leo’s eyes widened. "So code is stored in memory too?"  

Joaquim nodded. "Yes. And that’s why we don’t want to duplicate code unnecessarily. Instead, we use functions—reusable blocks of code that we can call whenever we need them."  

He turned to the screen and pulled up a simple example. "Let’s take something basic: printing to the screen. Say we want a function that, given a character code, writes it to the output. The steps are simple. First, we need to set a register to the output address, 232. Then, we write the character to that address."  

He pointed at them. "But how do we reuse this code without copying and pasting it?"  

Jasmina thought for a moment. "Maybe we could set aside a section of code that we don’t execute right away, and then jump to it when we need it?"  

Joaquim smiled. "Exactly. A jump would take us to the section where our function is stored. But there’s a problem—once the function finishes, how do we get back?"  

Leo hesitated. "We... jump back?"  

"Yes," Joaquim said, "but how does the program know where to jump back to? How does it remember where it came from?"  

Jasmina and Leo both looked uncertain.  

Joaquim continued, "That’s where **CALL** and **RETURN** come in. A simple jump isn’t enough—we need a special instruction that not only jumps to the function but also **remembers** the address of where we came from. That’s what **CALL** does. It saves the return address before jumping to the function. And when the function finishes, **RETURN** uses that saved address to bring us back."  

Leo sat up straighter. "So **CALL** is like a special jump that knows how to return?"  

"Exactly!" Joaquim pulled up an example. "Let’s try executing this program: http://closedsourcebook.com/functions.html. Watch what happens when we step through it."  

They pressed **STEP** and observed how the **CALL** instruction caused the program to jump to a new location in memory. But unlike a regular jump, something else happened—a value was saved at the bottom of memory.  

"See that?" Joaquim pointed at the change. "That’s the return address. It’s the location of the instruction that comes after the **CALL**. When we get to the **RETURN**, the program doesn’t just continue from wherever—it looks at that saved address and jumps back to exactly where it left off."  

Jasmina suddenly sat up. "The instruction pointer! The processor always keeps track of which instruction is running."  

"Yes! The **IP register**—instruction pointer—holds the address of the instruction currently being executed. When you step through the code, watch how **IP** updates."  

Leo followed along, then looked at Joaquim. "But what if a function calls another function?"  

Joaquim leaned back in his chair. "Ah. Good question. What do you think happens then?"  

Leo thought for a moment. "Wouldn’t it just work the same way?"  

Joaquim nodded. "Yes, but follow the steps. Let’s say you call a function, and while inside that function, you call another function. What happens to the first return address?"  

Jasmina tilted her head. "We overwrite it?"  

"Exactly. And that’s a problem. If we overwrite it, how does the first function know where to return to?"  

Jasmina frowned. "So we can’t just store all our return addresses in the same place."  

"That’s right. We need a system that keeps track of multiple return addresses, one for each function call. That’s where the **stack** comes in."  

Joaquim pulled up another program. "The **stack pointer**, or **SP**, tells us where to store the next return address. When we **CALL** a function, the return address is pushed onto the stack, and **SP** moves to the next available spot. When we **RETURN**, we pop the address from the stack, and **SP** moves back up."  

Leo and Jasmina followed along as they stepped through the program. They watched as each function call pushed a return address onto the stack, and each **RETURN** retrieved the correct address, ensuring the program resumed where it was supposed to.  

"This system," Joaquim said, "is what makes functions work properly. The stack ensures every function knows where to return, no matter how deep the calls go."  

Jasmina grinned. "So it’s like a trail of breadcrumbs, leading us back step by step!"  

Joaquim laughed. "That’s one way to look at it. But instead of breadcrumbs, we’re using memory addresses. And if you don’t manage them properly, you’ll get lost."  

Leo and Jasmina exchanged excited looks. The more they learned, the deeper the rabbit hole seemed to go.