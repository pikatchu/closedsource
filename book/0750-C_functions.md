

---

That night, after an exhausting day of assembling drones, Angelo leaned back in his chair, stretching his arms with a satisfied sigh.  

"Alright," he said, rubbing his hands together. "How about we do some more C programming? I have a feeling you won't be staying here long, so we may as well make the best of the time we have."  

Leo, Jasmina, and Sebastian exchanged amused glances. They could tell Angelo genuinely enjoyed teaching them.  

"Sounds good," Leo said.  

"Great," Angelo replied, pulling his laptop closer. "So last time, we learned about pointers and pointer arithmetic. Well, it turns out you're going to need pointers whenever you want to pass arrays to a function. Let's think about this—so far, we've been writing our loops directly inside `main`, but what if we wanted to make a function called `minimum` that returns the smallest integer in an array?"  

He looked at them expectantly.  

Leo and Jasmina thought for a moment. Then Leo said, "Wait, how do we even pass arguments to a function? In assembly, we had to use registers."  

"Good question," Angelo said. "Remember, in C, we're not working with registers anymore, but the compiler still needs to pass values between functions. How do you think it does that?"  

Jasmina frowned in thought. "Could it allocate space in the stack frame and write the values there?"  

Angelo nodded. "That's the right way to think about it. You can imagine that arguments are passed as if they were placed in the stack frame before calling the function. In reality, the compiler might use registers or memory, depending on what's most efficient for the system it's running on."

He paused. "But what's the problem with passing arrays this way?"

Leo hesitated, then said, "They can be really big?"  

Jasmina nodded. "Yeah, copying an entire array would take up a lot of memory."  

"And time!" added Angelo. "Copying large arrays slows things down, which is why we almost never do it. So, what could we do instead?"  

Leo's eyes lit up. "We could pass a pointer!"  

"Exactly!" Angelo grinned. "Instead of copying the whole array, we pass a pointer to its first element. That way, the function works with the same memory, instead of making unnecessary copies."  

He leaned forward, typing on his laptop. "Now, let's try rewriting your `minimum` function using this approach. Here's the structure of what it should look like:  

```c
int minimum(int* arr, int size) {
   ...
}

int main(void) {
   ...
   printf("%d\n", minimum(arr, 5));
   ...
}
```

"Got it?"  

They both nodded.  

"Alright, now try to write it yourselves. No peeking!"  

He smirked and turned his screen away, but after a moment, he added, "Just in case you get stuck, here's the full solution."  

```c
int minimum(int* arr, int size) {
  int cand = arr[0];
  int i = 1;
  while(i < size) {
    if(arr[i] < cand) {
      cand = arr[i];
    }
    i++;
  }
  return cand;
}
 
int main(void)
{
  int arr[5];
  arr[0] = 22;
  arr[1] = 44;
  arr[2] = 12;
  arr[3] = 99;
  arr[4] = 56;
 
  printf("%d\n", minimum(arr, 5));
  return 0;
}
```

Jasmina and Leo exchanged determined looks and got to work.

As Leo typed out his function, something caught his eye. He glanced at Angelo's example and noticed something odd.  

"Wait a second," Leo said, frowning. "I thought we were supposed to use pointers, but in your function, you're using `arr[i]` instead of `*arr`. Doesn't that mean you're accessing the array directly?"  

Angelo grinned. "Ah, good catch! But here's the thing—arrays and pointers are actually the same thing in C. When you write `arr[i]`, it's really just a shorthand for `*(arr + i)`. The compiler treats them the same way."  

Leo's eyes widened. "So whenever I use array notation with brackets, I'm actually just using pointer arithmetic behind the scenes?"  

"Exactly!" Angelo nodded. "That's one of the quirks of C. Arrays and pointers are deeply connected. You can even use pointer notation with an array, or vice versa—both work. The brackets just make things easier to read."  

Jasmina smirked. "So C just lets us pretend we're working with arrays, but really, we're just moving pointers around?"  

"Pretty much," Angelo said with a chuckle.
