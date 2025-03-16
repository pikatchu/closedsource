As they finished dinner, Angelo leaned back in his chair and then suddenly pushed all the plates aside with a grin. “Alright! Let’s code!” he announced, clearly eager to begin.

Leo, Jasmina, and Sebastian grabbed their laptops and opened them. Angelo leaned in to take a look at their screens. “Let me see your last program,” he said. He scanned the code for a moment and nodded. “Ah, I see. You’ve been introduced to arrays, but no pointers yet, huh?”

Leo and Jasmina shook their heads.

“Well,” Angelo continued, “the first thing we’re going to do is rewrite your code to use a pointer. It’s not strictly necessary in this case, but we’ll need pointers later, so better to start now.”

Jasmina looked up. “What exactly is a pointer?”

“A pointer,” Angelo said, “is an address in memory.”

“So… like in assembly?” Leo asked. “Where we would use `[A]` to access whatever was stored at address `A`?”

“Exactly!” Angelo said, pleased. “In C, we use pointers to store memory addresses instead of values. Here’s how we write one: `int* ptr`. The asterisk `*` is the important part—it tells the compiler that `ptr` is not holding an integer itself, but rather the address of an integer.”

Jasmina nodded, still thinking it through. “But how do we actually get the address of something? Normally, we just work with variables.”

Angelo smiled. “Good question! C gives us a special operator for that. If you want the address of a variable, you use `&`. Think of it as saying, ‘Where is this variable stored?’ For example, if you write `int* ptr = &min`, that means `ptr` is now holding the address of `min` instead of its value.”

Jasmina’s eyes widened slightly. “Wait… so `&min` doesn’t mean the value of `min`, it means the location of `min` in memory?”

“Exactly,” Angelo confirmed. “Every variable lives somewhere in memory. Instead of working with its value directly, you can store and pass around its address.”

Leo leaned in. “And does that work for arrays too?”

“Absolutely,” Angelo said. “Each element of an array has its own address in memory. If you write `&arr[2]`, you get the address of the third element in the array, rather than its value.”

Jasmina processed this for a moment. “Okay… but if I have a pointer, how do I actually read from or write to the address it’s pointing at?”

“That’s where the `*` operator comes in,” Angelo explained. “If you want to read the value at the address a pointer is holding, you write `*ptr`. If you want to change the value at that address, you assign something to `*ptr`. So, `*ptr = 42` would store `42` in the memory location that `ptr` is pointing to.”

Jasmina thought for a second, then asked, “So when I write `*ptr`, it will give me the value stored at the memory address inside `ptr`?”

“Exactly!” Angelo said.

