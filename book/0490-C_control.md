Jeremy leaned forward, his fingers dancing across the keyboard as he pulled up another example. "And it's not just basic operations like assignment—everything you've learned so far, like branches and loops, has a direct equivalent in C. But instead of writing multiple lines of assembly, you can express the same logic in a much simpler way."

He typed:
```c
if (x == 0) {
  printf("Hello\n");
} else {
  printf("Hola\n");
}
```

"You see?" Jeremy said, turning to Leo. "That’s a branch."

Leo’s eyes widened. "So that’s the same as writing a `CMP` followed by a conditional jump?"

"Exactly," Jeremy confirmed. "But it’s a lot more readable, right? Instead of manually handling jump instructions, you just write what you want to happen in each case."

Leo nodded eagerly as Jeremy continued. "And this—" he typed another block of code, "—is a loop."

```c
while (x < 5) {
  printf("%d\n", x);
  x = x + 1;
}
```

"This loop prints the numbers `0, 1, 2, 3, 4` before stopping," Jeremy explained. "The `%d` here is a special format specifier that tells `printf` to print an integer and `\n` is another special character that means new line."

Leo leaned in. "So instead of writing a `CMP`, a conditional jump, and manually updating the value of `x`, C just… handles it?"

Jeremy grinned. "You got it! I told you, C is just high-level assembly. It’s the same thing—just way more convenient."
