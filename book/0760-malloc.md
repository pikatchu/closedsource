

---

Angelo leaned back in his chair, stretching his arms. “Alright, up until now, you’ve been working with integers and integer arrays. But strings work a little differently.”  

Jasmina perked up. “Strings? You mean, just arrays of characters, right?”  

Angelo nodded. “Exactly. In C, a string is really just an array of `char` values. And just like any other array, it’s stored in memory as a sequence of bytes. The main difference is that strings in C are always **null-terminated**, meaning they end with a `0` byte.”  

Jasmina’s eyes lit up. “That’s exactly how we handled strings in assembly!”  

“Yep, same principle,” Angelo said. “But here’s where things start getting tricky. When you write a string using quotes, like `"Hello"`, it isn’t stored on the stack like your integer arrays. Instead, it gets placed in a special part of memory reserved for constants—meaning it stays there for the whole duration of the program.”  

Leo frowned. “Wait, so if I create a string inside a function, it won’t automatically disappear when the function returns?”  

“Depends,” Angelo explained. “If you declare a string like this:  

```c
char str[] = "Hello";
```  

then it *is* stored on the stack because you’re explicitly creating an array. But if you do this instead:  

```c
char* str = "Hello";
```  

then `str` is just a pointer to a constant string in memory. The string itself won’t disappear, but the pointer can be changed to point somewhere else.”  

Sebastian nodded slowly. “So that’s the difference between using `[]` and `*` with strings?”  

“Exactly.”  

Jasmina was thinking hard. “But what if we don’t know how big the string is ahead of time? What if we need to create a new one that’s longer or shorter depending on the situation?”  

Angelo grinned. “Now you’re asking the right questions. See, up until now, you’ve been working with arrays that have a fixed size. That’s fine when you know in advance how much space you need, but sometimes you don’t. That happens a lot when dealing with strings.”  

Leo thought for a moment. “So… we need a way to allocate memory *dynamically*?”  

“Exactly,” Angelo said. “There’s a special function in C called `malloc`. It lets you request a chunk of memory at *runtime*. You tell it how many bytes you need, and it gives you a pointer to the newly allocated space.”  

Jasmina raised an eyebrow. “And if we don’t need it anymore?”  

“Then you have to free it yourself, using `free()`. Otherwise, you’re wasting memory.”  

Sebastian leaned back. “So if we don’t free it, that memory just… stays used?”  

“Yep. The operating system won’t take it back until your program exits. That’s called a *memory leak*, and it can be a big problem if you keep allocating memory without freeing it.”  

Jasmina nodded. “Okay, so let’s say we want to put two strings together—like `"hello "` and `"world"`—into one new string. We don’t know the size in advance, so we’ll have to allocate space dynamically, right?”  

Angelo snapped his fingers. “Exactly. To concatenate two strings, we need enough space for *both* strings, plus one extra byte for the null terminator at the end.”  

Jasmina counted on her fingers. “So the new string’s size should be the length of the first string… plus the length of the second string… plus one?”  

“Exactly!” Angelo said. “Let’s write a function to do that. It’ll take two strings as input, allocate memory for a new string, copy both strings into it, and return the new string.”  

He wrote down the function signature:  

```c
char* concatenate(const char* s1, const char* s2);
```  

Leo frowned. "What’s with the `const`?"  

"Good catch," Angelo said. "It just means that the function promises *not* to modify the original strings. It’s just a safety measure to prevent accidental changes. Now, let's implement this function together."
