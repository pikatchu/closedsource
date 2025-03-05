Joaquim turned back to the board and wrote:  

```
[^@]+@[^.]+[.].+
```

"Alright," he said, turning to Leo and Jasmina, "let’s break this down piece by piece. This is a simplified regular expression that checks whether a string looks like an email address. Now, before we begin, I want to make something very clear—this is **not** the real regular expression used to validate email addresses. Email formats are actually more complex than they seem, but for now, this will give you a good idea of how regular expressions work."  

He pointed to the first part:  

```
[^@]+
```

"This part might look strange at first, but let’s break it down. The square brackets `[ ]` define what is called a **character class**—a set of characters that are allowed. The `^` at the beginning of the brackets means **negation**. So `[^@]` means ‘any character **except** @.’ The `+` means ‘one or more times,’ so this entire piece ensures that we start with at least **one or more characters that are not an @**."

Jasmina nodded. "So this is making sure that we don’t start the email with @?"

"Exactly," Joaquim said. "Now, let’s move on." He underlined the next part:

```
@
```

"This part is simple. It just says we expect the @ symbol to be there at this exact position."

Leo smirked. "If it wasn’t there, then it wouldn’t be an email."

"Correct. Now, let’s look at the next section."

```
[^.]+
```

"This follows the same pattern as before. The `[^.]` means ‘any character **except** a period (.)’, and the `+` means ‘one or more times.’ So, this ensures that after the @, we have at least one or more characters that **aren’t** a dot."

"So this is the domain name?" Jasmina asked.

"Right, this ensures that we have something like `catonian` in `leo@catonian.net` rather than an email like `leo@.net`, which wouldn’t be valid. Now, let’s move to the next part."

```
[.]
```

"Here, we just have a **literal dot** inside square brackets. That means the next character **must** be a dot (`.`), just like the `@` earlier."

Leo tilted his head. "Why put it inside brackets if it’s just a dot?"

"Good question. Normally, a `.` in a regular expression means ‘any character.’ But we don’t want that—we want to **match an actual dot**. So we put it inside brackets to make sure it’s treated as a literal character."

He pointed to the final part:

```
.+
```

"This last part is simple. The `.` means ‘any character’ and the `+` means ‘one or more times.’ This ensures that **after** the dot, there’s at least one more character. That way, we don’t allow emails like `leo@catonian.` which would be missing a proper domain ending."

Jasmina exhaled. "So this makes sure there’s at least something like `.com`, `.net`, or `.org` at the end."

"Exactly," Joaquim said. "Now, remember, this is just a simplified version. A **real** email validation regular expression is much more complex and accounts for many edge cases. But this should give you an idea of how powerful regular expressions can be."

Leo grinned. "I see why programmers like these. It’s a much shorter way to describe an automaton."

"That’s right," Joaquim said. "And now, let’s test this expression in practice."
`http://closedsourcebook.com/regexp.html`.

