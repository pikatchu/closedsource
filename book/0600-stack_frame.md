Leo furrowed his brow. "But where does all this memory actually go? I mean, when I write `int x;` or `int arr[5];`, C allocates space in memory, okay, great… but where exactly? And how does it know when that memory isn't needed anymore?"  

Sebastian grinned. "Excellent question! The variables and arrays you've worked with so far are all allocated on the stack."  

Jasmina's eyes lit up. "The execution stack?"  

"Exactly," Sebastian confirmed.  

Jasmina thought for a second, then asked, "So that means that every time we enter a function, all the variables and arrays are allocated, and when we leave, they just… disappear?"  

"That's exactly right," Sebastian said. "When a function is called, C creates a new section of memory on the stack to hold all the variables and arrays needed for that function. This section is called the stack frame. It's like a reserved chunk of memory that belongs to the function while it's running. Then, when you write things like `arr[0] = ...`, you're modifying memory inside that stack frame."  

Leo nodded slowly. "So every function gets its own little workspace in memory."  

"Yep," Sebastian said. "And here's the important part: when the function returns, the stack frame is destroyed. All the memory it used is automatically freed."  

