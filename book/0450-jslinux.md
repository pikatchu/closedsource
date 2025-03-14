

Jeremy leaned back slightly, watching Leo’s fingers hover over the keyboard. "Alright, let’s start with the basics. Type `ls` and hit enter."  

Leo did as instructed, and a list of filenames appeared on the screen.  

"You see," Jeremy explained, "this lists all the files in your current directory. These are the files stored on this machine."  

Leo scanned the list. "And if I want to see what’s inside one of these files?"  

"Good question," Jeremy said. "That’s where `cat` comes in. You type `cat` followed by the filename, and it will print the contents of that file to the screen."  

Leo nodded. "So if I type `cat hello.c`, I’ll see what’s inside `hello.c`?"  

"Exactly," Jeremy confirmed. "Go ahead."  

Leo entered the command, and a few lines of code appeared on the screen. He stared at them, frowning. "This looks nothing like what I’ve seen before."  

"That’s normal," Jeremy said with a grin. "Welcome to C."  

He pointed to a specific line. "You see this? `int main(void)`. That’s how you declare a function in C. And the part between the curly braces `{}`—that’s the function’s body, where the instructions go."  

Leo's eyes widened slightly in recognition. "Wait… so it’s kind of like when I had a label called `main` in assembly and I was using `CALL` to jump to it?"  

"Exactly," Jeremy said, pleased. "C has functions, just like assembly has labels you can jump to. The main difference is that in C, functions are more structured—you don’t have to manually store and retrieve return addresses because the language handles it for you."  

Jeremy leaned forward. "You see, C is what we call a high-level assembly language. What that means is that every construction you see here eventually gets translated into assembly—just like the language you’ve been using so far."  

Leo nodded slowly, taking it in.  

"But here’s the important part," Jeremy continued. "With assembly, you’re writing instructions that are specific to a processor. And that’s a problem. Different processors have different numbers of registers, different register sizes, different instruction sets… If you write assembly for one machine, it might not work on another."  

"So C solves that?" Leo asked.  

"Exactly," Jeremy said. "C abstracts away the specifics of any one processor. It lets you write code without worrying about how many registers there are or how big they are. And when you're ready to run your program, a compiler translates your C code into assembly for the processor you're using."  

Leo’s mind raced. He had spent so much time working in assembly, thinking in terms of registers and jumps. Now, he was starting to see how a higher-level language like C could make things easier—while still being close enough to the machine to give real control.  

Jeremy smirked. "Pretty cool, huh? Now, let’s break down this program and see exactly what it does."
