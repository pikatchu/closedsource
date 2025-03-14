Jeremy tapped the screen. "The first thing you need to know is that every C program has a `main` function. That’s where execution starts."  

Leo studied the code. "So when I run a program, it always begins in `main`?"  

"Exactly," Jeremy confirmed. "And see how `main` returns an integer? That’s because every program has something called a return status. It’s how the program tells the operating system whether it ran successfully."  

Leo raised an eyebrow. "Like… how?"  

Jeremy leaned back. "Well, remember when you ran `ls` or `cat`? Those are also just programs running in Linux. Every time a program finishes, it returns a status code. A return value of `0` means everything worked fine. If it’s anything other than `0`, that means there was an error."  

Leo nodded. "So when this `main` function returns `0`, it’s basically saying, ‘I’m done, and everything went well’?"  

"Exactly," Jeremy said. "Now, let’s look at the first real instruction inside `main`."  

He pointed at the line:  

```c
printf("Hello, world\n");
```  

"This prints `Hello, world` on the screen," Jeremy explained.  

Leo frowned. "So… it’s like writing to address `232` in the emulator?"  

Jeremy smiled. "Not quite. In the emulator, yes, you were writing directly to memory mapped to the screen. But in most real systems, we don’t let user programs write directly to the hardware."  

"Why not?" Leo asked.  

"Because it would be way too dangerous," Jeremy explained. "Imagine if any program could overwrite your screen memory—or worse, if it could start modifying other parts of memory, like your keyboard input, network data, or files on disk. That’s why operating systems have a middle layer: the **kernel**."  

Leo was intrigued. "So how does printing to the screen actually work?"  

Jeremy continued, "Instead of writing to memory directly, programs make a **system call**—a special request to the operating system. When you call `printf`, it doesn’t actually print by itself. Instead, it asks the kernel to print something on your behalf. The kernel checks if you're allowed to do that, and if everything is fine, it prints the text for you."  

Leo sat back, processing the idea. "So… every time a program needs to access something like the screen, or maybe the keyboard, or a file… it goes through the kernel?"  

Jeremy nodded. "Exactly. The kernel is in charge of managing all the hardware and making sure programs don’t interfere with each other."  

Leo grinned. "Okay… I think I’m starting to get it."  


