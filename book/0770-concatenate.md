


---

Angelo leaned forward, resting his elbows on the table. “Alright, the first thing you'll need is a function to determine the length of a string. Here's how we define it:”

```c
int length(char* str)
```

Jasmina considered it for a moment. “So we just need to walk through the string until we find the null terminator, the `0` byte?”

“Exactly,” Angelo confirmed. “Since C strings are just arrays of characters ending in `0`, you can count the characters until you hit the null terminator.”

Sebastian nodded. “Once you have that function, you'll be able to write another function—`concatenate`—that takes two strings and joins them together into a new one.”

“Wait,” Leo said, “if we're creating a new string, we need to allocate memory for it, right?”

“Yep, and that's where `malloc` comes in,” Angelo explained. “`malloc` is a function that lets you request a chunk of memory from the system. Since it's part of the standard C library, we need to include its header at the top of the program like this:”

```c
#include <malloc.h>
```

Jasmina's eyes lit up. “Oh! That's just like `#include <stdio.h>`. I always wondered what that was for.”

“Good question,” Angelo said. “`stdio.h` stands for ‘standard input/output.' It's a library that provides functions like `printf`, which lets us print text to the screen.”

Leo frowned. “But I thought `printf` was handled by the kernel? Isn't it a system call?”

“Not exactly,” Angelo said. “`printf` does a lot of extra work—it formats the string, processes special characters, and only then calls a lower-level function that interacts with the kernel. The actual system call happens deep inside `printf`, but for us, we just use it as a function from the standard library.”

Jasmina nodded. “That makes sense. The compiler wouldn't just assume every function exists—it needs them to be explicitly declared.”

“Exactly,” Angelo said. “Alright, here's the full solution. Try implementing it yourself before looking at the code.”

---

### Solution:

```c
#include <stdio.h>
#include <malloc.h>

int length(char* str) {
  int i = 0;
  while (str[i] != 0) {
    i++;
  }
  return i;
}
```

```c
char* concatenate(char* str1, char* str2) {
  int i = 0, j = 0;

  // Allocate memory for the new string
  // (+1 for the null terminator)
  char* result = malloc(
    length(str1) + length(str2) + 1
  );

  // Copy the first string
  while (str1[j] != 0) {
    result[i] = str1[j];
    i++;
    j++;
  }

  // Copy the second string
  j = 0;
  while (str2[j] != 0) {
    result[i] = str2[j];
    i++;
    j++;
  }

  // Null-terminate the new string
  result[i] = 0;

  return result;
}
```

```c
int main(void) {
  char* hello = "Hello ";
  char* world = "world!";
  char* msg = concatenate(hello, world);
  printf("%s\n", msg);
  free(msg);
  return 0;
}
```

