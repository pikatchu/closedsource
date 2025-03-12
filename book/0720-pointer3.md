

Angelo clapped his hands together. “I want you both to modify the previous program so that instead of accessing the array directly, you use a pointer.”

Leo and Jasmina opened their laptops, ready to try.

“This time,” Angelo continued, “you’re going to create a pointer called `ptr` that starts at the *second* element of the array.”

He scribbled on a notepad:

```
int* ptr = &arr[1];  // Pointer starts at the second element
```

“Now,” he said, “inside the loop, instead of writing `arr[i]`, you’ll dereference the pointer like this: `*ptr`.

Leo looked at the example Angelo had given earlier and started typing. After a few minutes, he said, “Okay, I think I’ve got it.”

Jasmina finished her own version and compared it to the example solution:

```

int min = arr[0];   // Start with the first element as the minimum
int i = 1;
int* ptr = &arr[1]; // Pointer to the second element

while(i < 5) {
    if(*ptr < min) {  // Compare value at pointer with current min
        min = *ptr;   // Update min if a smaller value is found
    }
    i++;
    ptr++;  // Move pointer to the next element
}

printf("%d\n", min);  // Print the smallest value
return 0;
```

Angelo glanced at their screens and smiled. “That’s it! Now you’re really thinking like C programmers. Using pointers like this is the first step to understanding how real-world programs handle memory efficiently.”

Jasmina leaned back, satisfied. “I think I like pointers,” she admitted.

