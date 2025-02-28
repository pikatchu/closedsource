
---

The car sped down the empty highway, the city skyline growing smaller in the distance.  

Inside, no one spoke.  

Brielle's grip on the wheel was tight, her eyes fixed on the road.  

"We need to get out of the city as quickly as possible," she finally said, breaking the silence.  

Leo and Jasmina sat in the back, Gentoo curled up between them, his ears twitching anxiously.  

Jasmina glanced at Brielle through the rearview mirror.  

"What about Tyrone?" she asked.  

Brielle didn’t answer at first. She just kept driving, her jaw tense.  

Then, finally, she spoke—her voice quiet, restrained.  

"Tyrone did his duty."  

That was all she said.  

The weight of her words sank into the car like a stone.  

No one responded.  

Gentoo, sensing the grief, let out a low whimper.  

Brielle exhaled sharply, as if shaking off a memory, then spoke again.  

"I know where we can hide," she said. "The monastery where I trained when I was younger."  

Elias turned to her.  

"A Catonian monastery?"  

Brielle’s expression darkened.

"You have a problem with that?" she snapped.  

Elias hesitated.  

He knew better than to argue with someone who had just lost a loved one. 

Brielle didn’t wait for a response.  

"It's true that us Catonians wouldn’t put an implant in a boy!" she said bitterly. "Only a Lecunist would do that!"  

Elias’ expression darkened, but he held his tongue. He could see it in her face—this wasn’t the time for a debate.  

But the words stung.  

They reached a small charging station along the highway.  

Brielle parked and went inside to pay, leaving the others in the car.  

Leo leaned forward, turning to Elias.  

"Catonian? Lecunist?" he asked. "What does it mean?"  

Before Elias could answer, Jasmina spoke up proudly.  

"The Catonians believe that AGI should not exist," she said. "That it *cannot* be controlled."  

Elias nodded.  

"And the Lecunists?" Leo asked.  

Elias sighed.  

"The Lecunists believe that *all* forms of AI—AGI included—are acceptable, as long as they can be controlled. And the only way to control them is by keeping all the code open-source."  

Leo and Jasmina exchanged fascinated looks.  

Leo then turned back to Elias.  

"So… you're a Lecunist?"  

Elias nodded.  

"And so is your mother," he added.  

Leo’s breath caught for a moment at the mention of her.

"And Brielle is a Catonian," Elias continued. "We don’t always see eye to eye on everything."  

Brielle got back into the car, tossing chocolate bars to everyone. "Some candy," she said with a smirk. "After what we’ve been through, I think we deserve it."  

The kids in the back eagerly unwrapped theirs, and even Elias took his with a smile.  

As they pulled onto the road again, Brielle glanced at them in the mirror. "Alright, you two—who knows about hexadecimals?"  

Jasmina and Leo both nodded confidently.  

"Great," she said. "Let's test you. What number does C represent?"  

"C is twelve!" Jasmina answered before Leo could react.  

"Very good," Brielle said. "And how do you represent that in binary?"  

Both of them hesitated. Jasmina scratched her head, and Leo frowned, trying to recall.  

"We… don’t remember," Leo admitted.  

Brielle chuckled. "That’s normal. Programmers memorize a few common ones—like 0, which is all zeros, and F, which is all ones—but for anything in between, sometimes we need to work it out."  

She tapped her fingers against the wheel. "But there’s an easy way to do it."  

Leo and Jasmina leaned in, eager to learn.  

"A hexadecimal number can go up to fifteen, right? And since that fits in four bits, we always break it down into those four bits. The trick is simple: for each bit, we check if it should be a one or a zero."  

She glanced at them in the mirror. "Let’s do this one together. The highest bit in a four-bit number is eight. In other words 1000 is 8 in binary."

"Now, we check—is twelve greater than or equal to eight?"  

"Yes!"  

"Then we know the highest bit is set. We know the binary form we are looking for is 1???."  

She continued, "Now we subtract that bit from our original number. Twelve minus eight is…?"  

"Four," Jasmina answered.  

"Right. Now we move to the next bit. What’s the decimal value of 0100?"  

"Four," they both said at once.  

"And four is greater than or equal to four, so we set that bit as well. Since nothing is left, the remaining bits are zero. So the binary representation of C—twelve—is…"  

"1100!"  

Brielle grinned. "Exactly. Now, let’s code that."  

Leo and Jasmina exchanged glances.  

"Code it?" Leo asked. "You mean, write a program?"  

"Of course," Brielle said. "We’ll write a program that takes a number between 0 and 15 and prints its binary representation on the screen."  

Jasmina and Leo hesitated.  

"Print on the screen?" Jasmina asked. "We don’t know how to do that!"  

Elias finally spoke up. "It’s easier than you think," he reassured them. "Every device a computer interacts with—screen, keyboard, speakers—works through memory. There’s a special address assigned to each device. When you write data to that address, the device processes it."  

Leo and Jasmina were fascinated.  

"So what’s the address for the screen?" Leo asked.  

"In your emulator," Elias said, "the output buffer starts at address 232 and goes up to 256."  

Leo’s eyes widened. "So if I write a number at address 232, that number will appear on the screen?"  

"Not exactly," Elias corrected. "The screen doesn’t display numbers directly—it displays characters. Each character has a corresponding number. For example, if you write 33, you’ll get an exclamation mark (!). If you write 66, you’ll get an uppercase ‘B’."  

"So what’s the number for ‘0’ and ‘1’?" Jasmina asked.  

"‘0’ is 48, and ‘1’ is 49."  

Leo nodded slowly, processing it. "So we need to write a sequence of 48s and 49s to memory to print the binary number?"  

"Exactly."  

Brielle turned her focus back to the road. "Alright. We start with a number between 0 and 15 in a register. What’s next?"  

Jasmina thought for a second. "We need to compare it to eight?"  

"Yes," Brielle said. "And we use the CMP instruction for that. It sets two special flags: the carry flag, which is true when the first number is smaller, and the zero flag, which is true when they are equal."  

She continued, "Now, we need a new concept—branching. Unlike loops, which repeat until a condition is false, branching lets us follow different paths based on conditions."  

Jasmina was intrigued. "So… if the number is smaller than eight, we print ‘0’, and if it’s bigger, we print ‘1’?"  

"Exactly," Brielle confirmed. "But instead of doing it all in one place, we split the logic. First, we check if A ≤ B with `CMP A, B`. Then we use `JBE print1`—Jump if Below or Equal—to go to the part of the code that prints ‘1’. If the condition isn’t met, the program just keeps going and prints ‘0’ instead."  

Leo’s mind was racing. "So at that point, the code could be in two different places, either printing a ‘0’ or a ‘1’?"  

"Yes! That’s why it’s called a branch—the program can follow two different paths."  

She continued, "But after printing, both paths need to merge back to the same point. That’s what `JMP` does—it jumps past the other branch, bringing everything back together."  

Elias nodded. "You’ll see the logic when you step through the program."  

Brielle smiled. "You can find the full example here: [http://closedsourcebook.com/branch.html](http://closedsourcebook.com/branch.html)."  

Leo eagerly pulled out the stick and loaded the emulator.  

"Now," Brielle said, "after handling the first bit, we move to the next one. That means incrementing the output address (C) and shifting A to the right (SHR A, 1)."  

Jasmina was already testing the program. "Look! It’s updating!" she said, pointing to the changing values.  

Leo noticed something on the right side of the screen. "What’s all the text after the semicolons?"  

"Comments," Brielle said. "Everything after a `;` is ignored by the machine. It’s just there to help humans understand the code."  

"That’s useful," Jasmina said.  

"It is," Brielle agreed. "When your programs get longer, you’ll be grateful for them."


Elias leaned back in his seat, watching as Leo and Jasmina continued stepping through the program. After a few moments, he spoke.  

"This is the most complicated program you've seen so far," he said. "You should study it carefully, step by step. Try running it multiple times with different inputs—see how it behaves, where it jumps, what happens at each stage."  

Jasmina nodded, still focused on the screen.  

"But more than anything," Elias continued, "there's one key lesson here that I want you to take away. This program introduces you to something fundamental: control flow."  

Leo looked up. "Control flow?"  

"Yes," Elias said. "A program isn't just a list of instructions that run from top to bottom. It jumps—sometimes forward, sometimes backward—based on conditions. Without control flow, computers would just keep repeating the same thing over and over, unable to make decisions or change their behavior."  

Jasmina’s eyes lit up. "Like a loop!"  

"Exactly," Elias said. "Loops are one example. But sometimes, instead of repeating, a program needs to choose between different paths. That’s what the `JBE` instruction does—it makes a decision about where to go next, depending on the value it just compared."  

Leo frowned slightly. "So the program doesn’t just keep going in order?"  

"Not at all," Elias said. "In fact, almost no real program does. They jump from one part to another all the time. And later, when you write bigger programs, you'll be able to express these jumps in more readable ways. But deep down, every choice a computer makes—every reaction, every decision—is made through jumps, just like the one in this program."  

He leaned forward, tapping the screen. "Focus on the `JBE` part. What does it do? Why does it work? Try tweaking the program, changing values, removing the jump—see what happens. Understanding how and why a program moves through its instructions is one of the most important lessons you'll ever learn."  

Leo and Jasmina exchanged glances, then turned back to the emulator, more determined than ever.
