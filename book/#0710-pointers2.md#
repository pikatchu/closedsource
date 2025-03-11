Angelo leaned forward, tapping a few keys on his laptop. “Now, here’s something really interesting about pointers,” he said. “Not only can they store memory addresses, but you can actually *move* them around. This is called pointer arithmetic.”

Leo and Jasmina listened carefully.

“Let’s say I have a pointer to an integer, declared like this: `int* ptr = &arr[0];`. That means `ptr` is currently pointing to the first element of the array. So far so good?”

They both nodded.

“Now,” Angelo continued, “what if I want to move to the second element of the array? Instead of writing `&arr[1]`, I can actually do this: `ptr + 1`. In C, when you add `1` to a pointer, it moves forward in memory—not by one *byte*, but by the size of the type it points to. Since `ptr` is pointing to an integer, and integers on a 32-bit system take up *four* bytes, adding `1` to `ptr` moves it four bytes ahead, straight to the next integer in the array.”

Jasmina’s eyes widened. “So `*(ptr + 1)` would give me the second element, and `*(ptr + 2)` would give me the third?”

“Exactly,” Angelo said. “And this works for subtraction too. If you do `ptr - 1`, it moves backwards in memory to the previous integer.”

Jasmina tilted her head, thinking. “And it knows how much to add or subtract because it knows the size of an integer, right? So if integers are four bytes on this system, `ptr + 1` actually means ‘move forward by four bytes,’ and `ptr + 2` means ‘move forward by eight bytes’?”

Angelo grinned. “That’s exactly right! The beauty of this is that pointer arithmetic works *across different architectures*. On some systems, integers might be two bytes, or even eight bytes, but you don’t have to worry about that. The compiler figures it out for you.”

Leo nodded. “That makes sense. So instead of manually calculating memory addresses, you just let the pointer do the work.”

“Bingo,” Angelo said. “And that’s why pointers are so powerful. They give you direct control over memory, but in a way that adapts to different machines. Now, let’s try it out!”

