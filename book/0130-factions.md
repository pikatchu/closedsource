
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

Here's the rewritten section with a smoother transition into explaining devices before introducing the full program:  

---

Brielle glanced at the rearview mirror as they drove. "Alright, let's do a little test. What number does C represent in hexadecimal?"  

Jasmina answered immediately. "Twelve."  

Brielle nodded, pleased. "And in binary?"  

Jasmina hesitated for just a second, then confidently answered, "1100."  

Leo sighed. "I was just about to say that."  

Brielle smirked. "Alright, next lesson. You’ve been working with numbers, but now, let’s talk about something different—text."  

Jasmina and Leo both looked intrigued.  

"In computers, text isn’t magic," Elias said. "It’s just numbers, like everything else. Each letter, space, or punctuation mark has a numeric code assigned to it. When you see 'Hello' on a screen, what’s really stored in memory are five numbers—one for each letter."  

Brielle pulled up the next piece of code:  

```
hello: DB "Hello"
       DB 0
```

"This," Brielle continued, "is how we store text in memory. `DB` stands for 'Define Byte'. It tells the computer: 'I want to reserve space in memory and fill it with specific values.'"  

"So 'Hello' isn’t actually letters," Leo said. "It’s a set of numbers."  

"Exactly," Elias confirmed. "Each character has a corresponding number in the ASCII encoding system. If you write `DB "Hello"`, what actually gets stored in memory looks like this:"  

```
hello:
       72  101  108  108  111
```

"Those numbers," Brielle said, "represent 'H', 'e', 'l', 'l', and 'o'."  

"And what about the `DB 0`?" Jasmina asked.  

"Good question," Brielle said. "That `0` is a special marker—it tells the program where the text ends. Without it, the program would keep reading into whatever happens to be in memory next."  

Jasmina nodded. "Oh, like a book with a bookmark at the end of a chapter."  

"Exactly!" Elias said.  

Leo was still thinking. "Okay, so we have text stored in memory, but how do we actually make it appear on the screen?"  

Elias smiled. "Good question. Remember when we talked about memory and how it stores everything? Well, the screen is just another part of memory. Instead of storing numbers for calculations, this special part of memory stores the characters that appear on the screen."  

"So... we write to it just like any other memory address?" Jasmina asked.  

"That’s right," Elias confirmed. "In our emulator, the screen starts at memory address 232. If we store a number there, it will appear on the screen as a character."  

Leo raised an eyebrow. "So if I write the number for 'H' at address 232, the screen will show an H?"  

"Exactly," Brielle said. "And that’s how we’ll print our stored text to the screen—by reading each letter from memory and writing it to the screen address, one by one."  

She then pulled up the full program:
<a href="http://closedsourcebook.com/asm_string.html">http://closedsourcebook.com/asm_string.html</a>.

Elias pointed at `MOV B, hello`. "This line assigns B to the memory location where we stored our text. From this point on, B is like a bookmark—it keeps track of which letter we’re currently reading."  

Jasmina followed the loop carefully. "So it prints the letter, moves to the next, and repeats until it finds the `0`?"  

"Exactly," Brielle confirmed. "This is how computers handle text. By storing characters as numbers, reading them one by one, and writing them to the screen."  

Leo leaned forward. "So if I wanted to print my name, I’d just replace 'Hello' with 'Leo'?"  

"That’s right," Elias said. "Try it out."  

Jasmina and Leo exchanged a glance—excited to see the program in action.
