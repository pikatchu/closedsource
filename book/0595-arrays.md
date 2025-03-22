Leo turned to Sebastian as they finished setting up camp. "We've got a bit of time before bed. How about you be our C master for the night?"  

Sebastian raised an eyebrow. "Me? I'm no Bellardian…" He hesitated, then shrugged. "But I can try."  

Leo grinned. "I'm sure you'll do just fine."  

Sebastian sat down, pulling out his device. "Alright, let's see… You both covered variables, right?"  

Jasmina nodded. "I kept up with Brielle last night, so I should be up to date."  

"Great," Sebastian said. "So here's the thing. In C, you just pretend everything is memory, and the compiler translates it into operations on registers for you."  

Leo and Jasmina nodded, following along.  

"Now," he continued, "you've both learned how to declare a single variable—something like `int x;` to tell C that you need an integer. But what if you need to store multiple numbers, not just one? What if you need an array of values?"  

"Like when we used a buffer in assembly?" Jasmina asked.  

"Exactly," Sebastian said. "In C, instead of manually keeping track of memory locations, you can declare an array. If you want an array of five integers, you write it like this:  

```c
int arr[5];
```  

Jasmina's eyes lit up. "So `int arr[5]` tells C to reserve space for five integers?"  

"Yep," Sebastian confirmed.  

Leo thought for a moment. "That means each number gets its own memory space, but how big is that space? Are integers always the same size?"  

Sebastian shook his head. "Nope. That's one of the tricky things about C. The size of an integer depends on the system you're running on. In our case, the Bellardians' terminal is a 32-bit system, which means each integer takes up four bytes."  

Jasmina frowned. "Wait… but when we were using the 8-bit emulator, each number was just one byte, right?"  

"Exactly," Sebastian said. "In your old emulator, an integer was just 8 bits, which meant you could only count up to 255. Now, on a 32-bit system, you can count up to roughly 4 billion when unsigned."  

"So does that mean memory addresses are also 32 bits? What about the values stored in memory?" Jasmina asked. "I remember that on our emulator, if we stored something at address 40, the next byte would be at address 41. Does that change here?"  

Sebastian smiled. "Good thinking! But no, memory is still addressed by bytes, just like in your old emulator. That means if you store an integer at address 40, it actually occupies addresses 40, 41, 42, and 43. The size of the address itself changes though, they are 32 bits on a 32 bits system. Typically, address sizes match the size of the registers."  

Jasmina nodded slowly. "Okay… so even though the numbers are bigger, the memory still works the same way. Just more space per value."  

"Exactly," Sebastian said. "Now, let's talk about how to actually use arrays."  

Leo leaned forward. "Yeah, if I declare `int arr[5];`, how do I put values in it?"  

"You use brackets," Sebastian explained. "For example, if you want to store the number 10 in the first position, you write:  

```c
arr[0] = 10;
```  

"And if you want to store 20 in the second position, you write:  

```c
arr[1] = 20;
```  

Leo's eyes widened. "Oh! So the brackets tell C which slot in the array we want to use, and it takes care of the actual memory address!"  

"Exactly," Sebastian said. "Instead of manually tracking addresses like we did in assembly, you just tell C which index you want, and it does the math for you."  

Jasmina smirked. "I like this. Way easier than manually calculating memory locations."  

Sebastian grinned. "And this works for more than just storing values—it works for retrieving them too. If you want to access the first value you stored, you just write:  

```c
int y = arr[0];
```  

"Now `y` holds whatever was stored at `arr[0]`, just like reading from memory in assembly."  

Leo nodded. "I see… so this is just a more structured way of working with memory."  

"That's exactly it," Sebastian said. "C is just making sure you don't have to do the tedious stuff by hand."  

Jasmina stretched. "Alright, I think I've got it."  

Sebastian leaned back. "Good, because arrays are going to be really useful. We'll be using them a lot."  
