

Angelo clapped his hands together. “I want you both to modify the previous program so that instead of accessing the array directly, you use a pointer.”

Leo and Jasmina opened their laptops, ready to try.

“This time,” Angelo continued, “you’re going to create a pointer called `ptr` that starts at the *second* element of the array.”

He scribbled on a notepad:

```c
int* ptr = &arr[1];
```

“Now,” he said, “inside the loop, instead of writing `arr[i]`, you’ll dereference the pointer like this: `*ptr`.

Leo looked at the example Angelo had given earlier and started typing. After a few minutes, he said, “Okay, I think I’ve got it.”

Jasmina finished her own version and compared it to the example solution:

```c
int min = arr[0];
int i = 1;
int* ptr = &arr[1];

while(i < 5) {
    if(*ptr < min) {
        min = *ptr;
    }
    i++;
    ptr++;
}

printf("%d\n", min);
return 0;
```

Angelo glanced at their screens and smiled. “That’s it! Now you’re really thinking like C programmers. Using pointers like this is the first step to understanding how real-world programs handle memory efficiently.”

Jasmina leaned back, satisfied. “I think I like pointers,” she admitted.

