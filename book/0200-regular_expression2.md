Joaquim turned to the board and wrote:  

```
.*@.*[.].*
```

"Alright," he said, facing Leo and Jasmina, "let's break this down step by step. This is a simplified regular expression to check whether a string resembles an email address. But before we start, I want to make it clear—this is not the official way to validate email addresses. Email formats are actually much more complex, but this will give you a solid understanding of how regular expressions work."

He pointed to the first part:

```
.*
```

"This part might look simple, but it's very powerful. The `.` means 'any character'—it can be a letter, a number, a symbol, anything. The `*` means 'zero or more times,' which allows any sequence of characters, including an empty string."

Jasmina tilted her head. "So this means we can have anything before the @?"

"Exactly," Joaquim nodded. "Now let's move on."

```
@
```

"This part is straightforward. It means we expect the @ symbol to be here, exactly at this position."

Leo smirked. "If it wasn't there, then it wouldn't be an email."

"Precisely," Joaquim said, moving to the next section.

```
.*
```

"This is the same as before—any number of any characters. This ensures that after the @, there's at least something, like a domain name."

"So this would allow `@.`?" Leo asked.

"Good question," Joaquim said. "For now, yes, it would. But the next part fixes that."

```
[.]
```

"This is a literal dot inside square brackets, which means the next character must be a period (`.`). Normally, a `.` in a regular expression means 'any character,' but since we actually want a dot, we put it inside brackets to make sure it is treated as a real dot."

Jasmina nodded. "So this makes sure there's a dot after whatever is after the @?"

"Exactly," Joaquim said, pointing to the final section.

```
.*
```

"This works just like before—any number of any characters. It ensures there's something after the dot, like `.com`, `.net`, or `.org`."

Jasmina exhaled. "So this makes sure an email has a basic structure: something before the @, something after it, a dot, and then arbitrary characters."

"That's right," Joaquim said. "Again, this is not a fully accurate way to validate an email, but it shows you how regular expressions describe patterns efficiently."

Leo grinned. "I see why programmers like these. It's a way to write an automaton in a single line."

"Exactly," Joaquim said. "And now, let's test this expression in practice."  

He pointed them to a console where they could try matching different strings using:

<a href="http://closedsourcebook.com/regexp.html">http://closedsourcebook.com/regexp.html</a>.
