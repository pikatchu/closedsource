Jeremy leaned back, watching Leo absorb everything. “Now,” he said, “it would be nice if you could actually try running the program, right?”

Leo nodded eagerly.

“Well,” Jeremy continued, “before we can do that, you need to learn how to use a **code editor**. A code editor is the program you use to write and modify your code. Since programming is mostly about working with text, having a good editor—and knowing how to use it well—is crucial.”

Leo listened intently as Jeremy continued. “The most powerful of all code editors is called **Emacs**. The beauty of Emacs is that not only is it incredibly powerful, but it’s also customizable. You can modify it, extend it, even share your own extensions with others.”

Leo’s eyes lit up. “So I can change my own code editor?”

Jeremy grinned. “Not just change—it’s practically a programming platform in itself. Some people even joke that Emacs is a full operating system. You can do almost anything with it.”

Leo was intrigued. “Alright, let’s try it.”

Jeremy nodded. “Type this command: `emacs hello.c`.”

As Leo pressed enter, Jeremy added, “The first time you launch it, it might take a bit longer—there’s a lot of code being loaded. But don’t worry, it’ll be much faster the next time.”

A new interface appeared on the screen. Jeremy pointed at it. “Now, let’s modify your program. Replace the **body** of the `main` function—the part inside the curly braces—with this:”

```

x = 0;
while (x < 5) {
  printf("%d\n", x);
  x = x + 1;
}
return 0;
```

Leo carefully typed it out, making sure it matched exactly.

“Alright,” Jeremy said, “now you need to save and exit. To do that, type: Control-x followed by Control-c. In Emacs, you’ll be using the **Control** and **Meta** keys a lot. The Control key is usually written as **C-**, so for example, `C-x C-c` means **hold Control and press x**, then **hold Control and press c**.”

Leo repeated the sequence in his head before pressing the keys.

Jeremy continued, “The Meta key is usually written as **M-**, and in most cases, you access it by pressing **Escape** first. So when you see something like `M-x`, it means **press Escape, then press x**.”

Leo nodded, starting to get the hang of it. Jeremy handed him a reference card. “You can find a full list of commands here: `http://closedsourcebook.com/refcard.pdf`. Study it. Knowing Emacs well will make you a much better programmer.”

Leo glanced over the reference list. There was a lot to take in.

“Now that we’ve modified the program, let’s **compile** it,” Jeremy said. “Type:”

```
gcc hello.c
```

“This will translate your C program into an executable file. By default, the output file will be named `a.out`. To run it, type:”

```
./a.out
```

Leo did as he was told. The screen printed:

```

0
1
2
3
4
```

A smile spread across his face. 

Jeremy clapped him on the back. “Congratulations! You just wrote, edited, compiled, and executed your first real C program. Now, keep practicing—open your Emacs, experiment with different commands, and make sure you learn the shortcuts. They’ll be second nature before you know it.”
