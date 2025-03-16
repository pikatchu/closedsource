

Joaquim stepped forward, looking at the fascinated expressions on Jasmina and Leo’s faces. "Now that you understand how an automaton works, let me introduce you to a more compact and convenient way of representing them—a language that programmers use all the time. They’re called regular expressions."

Jasmina and Leo exchanged a glance. 

Joaquim continued, "A regular expression is a way to describe an automaton without manually writing out the states and transitions like we just did. Instead of constructing the automaton step by step, we write a single expression that captures the same logic. It might seem abstract at first, but once you get used to it, it’s an incredibly powerful tool."

He turned to the board and wrote:

```
ab
```

"This is our first basic rule: concatenation. This means that ‘b’ must come directly after ‘a.’ Simple, right?"

Jasmina nodded. "Like writing a word—one letter follows another."

"Exactly," Joaquim said. "Now let’s introduce another operation: union." He wrote:

```
a(b|c)
```

"This means that we start with ‘a,’ and after that, we can have either ‘b’ or ‘c.’ The vertical bar `|` means ‘or.’ So this expression matches either ‘ab’ or ‘ac.’"

Leo’s eyes lit up. "So it's like a branching path in the automaton."

"Precisely," Joaquim said. "Now, the last essential operation—the star." He wrote:

```
a*
```

"This means that ‘a’ can appear zero or more times. It could match an empty string, ‘a,’ ‘aa,’ ‘aaa,’ and so on, endlessly."

Jasmina leaned in. "So it’s like a loop?"

"Exactly. And these three operations—concatenation, union, and the star—are all you need to define any regular expression. They are the building blocks of everything else."

Joaquim then turned to the class. "Of course, for convenience, we have other symbols that simplify things. For example, `+` is similar to `*`, except it means ‘one or more’ instead of ‘zero or more.’ The `?` means ‘zero or one’—it makes something optional. There are also ways to express negation, character ranges, and more. But everything can ultimately be expressed using just the three fundamental operations."

He gave a few more examples, showing how more complex patterns could be constructed from these simple building blocks. 

"Now," Joaquim said, "here’s something very important to remember: regular expressions and automata are two sides of the same coin. Every automaton can be written as a regular expression, and every regular expression can be turned into an automaton. In fact, when computers process regular expressions, they first convert them into an automaton behind the scenes, just like the one we wrote earlier. Then they use a program—very similar to what you just implemented—to run the automaton and match patterns."

Leo’s eyes widened. "So every time we search for something in a text file using a regular expression, there’s an automaton running in the background?"

"That’s exactly right," Joaquim confirmed. "Now, let’s put this into practice. We’re going to write a regular expression that matches an email address—just like our automaton did."

