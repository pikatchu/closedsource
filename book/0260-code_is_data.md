


---

Jasmina stepped into the study room, the soft hum of computers filling the space. Rows of students sat at their stations, focused on their screens, fingers tapping away at their keyboards. She scanned the room and spotted Erling at the back. He caught her eye and waved her over with a grin.

"Hey, Jasmina! Sit here," he whispered, patting the chair next to him.

She slid into the seat, opening her emulator. "I want to debug the stack program," she said. "Make sure I really get it."

She loaded the program.

<a href="http://closedsourcebook.com/asm_native_stack.html">http://closedsourcebook.com/asm_native_stack.html</a>

As she pressed the STEP button to begin execution, Erling leaned in slightly. "Wanna know something interesting?" he asked.

Jasmina turned to him, curious.

"The code you're running step by step—it's just numbers in a buffer," he said with a smirk. "Reset it, then press STEP once."

Jasmina followed his instructions. The first instruction in the program highlighted in blue.

"See that?" Erling pointed at the screen. "That blue-highlighted instruction is what’s currently being executed. But now, look at memory. See this address? That’s where the instruction is stored."

Jasmina squinted at the screen. "Okay… what’s this 06 and why is it in blue?"

Erling grinned. "That’s the actual instruction code. The computer isn't reading the words `MOV A, 2` like you see—it’s just reading numbers. This 06 corresponds to a `MOV` instruction. Every instruction has a numeric representation."

Jasmina’s interest deepened. "So what about the numbers after it?"

Erling tapped the screen. "Good question. The next number, 0, tells the processor which register to load into—0 corresponds to register A. The number after that, 2, is the value we want to store in the register."

Jasmina’s eyes widened. "So even the program itself is just stored in memory, like everything else?"

"Exactly!" Erling said, clearly enjoying the conversation. "The processor doesn’t ‘see’ code like we do. It just reads memory, one instruction at a time."

Jasmina stared at the screen, fascinated. "So that means… code is just data?"

Erling leaned back, satisfied. "Bingo."
