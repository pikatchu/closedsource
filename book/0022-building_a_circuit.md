
---

The next day, Leo arrived at the address Mr. Lee had given him. It was a small house, tucked between larger buildings, nothing that stood out. He rang the bell and waited.

Before long, a voice called out—not from inside the house, but from somewhere nearby.

"In here! In the garage!"

Leo turned his head and walked toward the garage door. He pushed it open and stepped inside.

The first thing he noticed was the mess.

Wires, circuit boards, old screens, strange-looking components—hardware was everywhere. Unlike Elias, who seemed to live in a world of books, Mr. Lee was clearly a builder.

At the center of the clutter, Mr. Lee was holding a soldering iron, carefully adjusting something on a circuit board. He looked up when he saw Leo.

"Ah, there you are." He set the tool down and dusted off his hands. "Tell me, what's 2 to the power of 8?"

Leo didn't even have to think. "256!"

Mr. Lee nodded, satisfied. "Good. I was just checking that you did your homework."

Leo smirked slightly.

"Now," Mr. Lee continued, "how much do you know about logic?"

Leo hesitated. "Not much. My mother taught me the basics—AND, OR, and NOT operators."

Mr. Lee grinned. "Perfect. That's exactly what we need to get started."

Mr. Lee leaned against the workbench, crossing his arms. "Let's start with something interesting—do you know the difference between OR and XOR?"  

Leo blinked. "XOR?"  

Mr. Lee smirked. "Yeah, XOR. The OR you use at a restaurant."  

Leo frowned. "The OR you use at a restaurant?"  

Mr. Lee grabbed a wrench from the table and spun it in his hands. "Okay, imagine you're at a restaurant. The waiter asks, *Do you want ice cream or cake for dessert?* What do they mean?"  

Leo thought for a second. "That I have to pick one. I can't have both."  

"Exactly!" Mr. Lee pointed at him. "That's XOR—*exclusive OR*. One or the other, but not both."  

Leo nodded slowly.  

"Now," Mr. Lee continued, "compare that to when someone says, *We can go to school either by car or by walking.* They don't mean you can only do one. You could drive part of the way, then walk the rest. That's regular OR. It means one, the other, or both."  

Leo raised an eyebrow. "So in spoken language, the difference depends on context?"  

Mr. Lee snapped his fingers. "Exactly. But machines don't work with context. With machines, OR and XOR are completely separate operations with different behaviors. And because we're dealing with machines, we have to be precise."  

Leo nodded, starting to understand. "So XOR is an OR that doesn't allow both options?"  

"Bingo," Mr. Lee said, reaching for a circuit board. "And now that you know that, let's start putting it to use."

He grabbed a thin wire from the table and held it up.

"You see this? This is one bit. When there's electricity in this wire, we call it ‘1'. When there's none, we call it ‘0'. That's all a bit is—on or off, electricity or no electricity."

Leo nodded.

Mr. Lee picked up a second wire and plugged both into a small component with a third wire coming out of it.

"Now, let's add another bit. Two wires, two bits. I just plugged them into this component here—this is an AND gate." He pointed at the output wire.

"This wire will only have electricity if both inputs are 1. Otherwise, it stays 0."

Leo leaned in. "So if both wires have electricity, the output wire also has electricity, but if either one is missing, the output is 0?"

Mr. Lee nodded approvingly. "Exactly."

Mr. Lee set down the AND gate and turned to Leo.

"This is how we encode operations in a computer. Of course, everything inside an actual computer is much, much smaller—wires so tiny you can't see them with your eyes. But the principles remain the same."

He rummaged through a drawer and pulled out a handful of small logic gates. He handed them to Leo.

"Let's try building something."

Leo took the components, examining them.

"What are we building?"

"An incrementer," Mr. Lee said. "Something that adds one to a number. You have four wires as input—how would you go about building a circuit that adds one?"

Leo scratched his head.

After a moment, he said, "Probably bit by bit?"

Mr. Lee's eyebrows lifted. "Exactly!" He pointed to the rightmost bit. "You always start with the bit that's furthest to the right. But before we move forward, let me introduce you to something important—something called a half adder."  

Leo tilted his head. "A half adder?"  

Mr. Lee nodded. "Yes. A half adder is the simplest kind of addition circuit. It takes in two bits and produces two outputs—one for the sum and one for the carry. The reason it's called a half adder is that it doesn't handle carry input from a previous addition—it only works with two bits at a time."  

Leo thought about that. "So it can add single bits, but it doesn't handle carrying over?"  

"Exactly. Let me show you."  

Mr. Lee grabbed a small board with logic gates wired onto it. He pointed to two inputs.  

"Here, we have two bits. Let's call them A and B. The sum of A and B is just like in normal addition—0 + 0 is 0, 0 + 1 is 1, 1 + 0 is 1, but when we add 1 + 1, we get…?"  

"Two."  

"Right. But in binary, there is no ‘2'—instead, we write it as ‘10', which means ‘0 with a carry of 1.' So we need two outputs: one for the sum and one for the carry."  

Mr. Lee pointed at the first gate.  

"The sum is simple—it follows the XOR rule. If one of the inputs is 1 but not both, the sum is 1. Otherwise, it's 0."  

He connected the wires through an XOR gate, leading to the sum output.  

Then, he pointed at another wire.  

"The carry bit is even simpler—it follows the AND rule. It's 1 only when both inputs are 1."  

He connected the same two inputs through an AND gate, leading to the carry output.  

Mr. Lee tapped the board. "And that's a half adder."  

Leo examined the circuit. "So this adds two bits together, but it doesn't take in any carry from a previous addition?"  

"Exactly. That's why it's called a half adder. To do full addition, you need to handle an incoming carry as well. That's where a full adder comes in."  

Mr. Lee set the circuit board aside and turned to Leo. "Before we move forward, it's time to use the stick I gave you."  

Leo pulled the small, metallic device from his pocket and looked at it.  

Mr. Lee pointed to an old computer on the workbench. "Plug it in, and go to this address."  

He grabbed a scrap of paper and wrote:  

<a href="http://closedsourcebook.com/half_adder.html">http://closedsourcebook.com/half_adder.html</a>  

Leo inserted the stick into the dusty but functional machine. The screen flickered, and a terminal window opened automatically.  

Leo typed in the address and hit Enter.  

A new page loaded, showing a simple digital circuit simulation of a half adder, complete with input toggles for 1s and 0s.  

Leo clicked on the inputs, flipping them between 0 and 1. The sum and carry outputs updated in real time.  

"Whoa."  

Mr. Lee smirked. "Now you can see how it works, not just hear me explain it. Play with it for a minute. Then we move on."  

Leo experimented for a moment, watching the outputs change. It was simple, but it felt real in a way nothing from school ever had.  

---

Mr. Lee grabbed another identical half-adder circuit and placed it next to the first one.  

"Now, let's think about how to increment a number. Remember, you have four wires as input, representing a four-bit number. What happens when you add 1?"  

Leo thought for a moment. "The rightmost bit flips. But if it was already 1, that carry needs to move to the next bit."  

Mr. Lee nodded. "Exactly. So what happens if we take the carry output from our first half adder and feed it into another half adder connected to the next bit?"  

Leo's eyes widened as the idea clicked.  

"Oh! The second half adder will handle the carry for the second bit! And if that bit is also 1, it will send a carry to the third bit!"  

Mr. Lee grinned. "Now you're getting it. You keep chaining half adders like this—one per bit. Each one takes the result of the previous carry and adds it to the next bit. And that, my friend, is how we build an incrementer."  

Leo looked at the logic gates in front of him, his mind racing.

Mr. Lee added another link to the scrap of paper:

<a href="http://closedsourcebook.com/circuit.html">http://closedsourcebook.com/circuit.html</a>

"Have a look! Of course, this is a not how a real circuit would be represented, but it will help you understand".

Mr. Lee handed him some additional gates. "Now, let's wire it up and see if it works."  

Leo took the components and got to work, his fingers moving with a new sense of purpose.
