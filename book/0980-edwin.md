

Leaving his mother’s office, Leo felt the weight of their conversation pressing down on him. His mind was spinning with everything she had said—about discipline, about the war, about his training. He knew she was right, but he couldn’t shake the frustration bubbling inside him. He needed to clear his head, to focus on something else, something concrete.  

Instead of returning to his room, he found himself walking toward the Bellardian section. The familiar sounds of typing, low murmurs of deep discussions, and the occasional outburst of laughter greeted him as he stepped into their common room. The air was thick with concentration, a world away from strategy meetings and battlefield decisions.  

He scanned the room, searching for Jeremy, hoping to immerse himself in something—anything—that would take his mind off everything else. Spotting someone he didn’t recognize, he walked over and asked, “Is Jeremy around?”


The man, a stocky programmer with glasses perched on the tip of his nose, looks up from his screen. “No, but can I help you?”  

Leo hesitates for a second, then nods. “I’m looking for a C master.”  

The man grins and extends his hand. “You found one. Name’s Edwin. Have a seat.”  

Leo sits down, pulling out his laptop. Edwin gestures for him to show his latest work. As he skims through the code, his expression shifts from casual curiosity to amusement. “Ah, I see. You’ve come pretty far already. Loops, pointers, arrays—you’ve covered a lot.”  

Leo waits, sensing there’s a ‘but’ coming.  

“But,” Edwin continues, “you’re missing a key concept. The notion of a record.”  

Leo frowns. “A record?”  

Edwin leans back. “Yep. You see, up until now, you’ve been working with arrays. Arrays are great, but they only store one type of data at a time. A list of numbers, a list of strings, a list of pointers. But what if you want to group different kinds of data together?”  

Leo thinks for a moment. “Like… if I wanted to store a player’s name and their score?”  

“Exactly,” Edwin says, snapping his fingers. “Right now, you’d probably use two separate arrays—one for names and one for scores. Then, you’d use an index to match them up.”  

Leo nods. “Yeah, that’s what I’d do.”  

“Well, that’s a fine approach, and it’s actually how databases work,” Edwin admits. “But in C, there’s a better way if you want all that information to be stored together in memory.”  

Leo tilts his head. “How?”  

Edwin’s grin widens. “With a `struct`. It lets you define a new type that holds multiple variables of different types. Check this out.”  

He types:  

```c
typedef struct {
    char* name;
    int points;
} user_t;
```  

Leo studies the code. “So… `typedef struct` lets me create a custom type?”  

“Bingo. And `user_t` is just the name we’re giving it. Now, instead of keeping separate lists for names and scores, we can store them together in one neat package.”  

Leo nods slowly. “And how do I actually use it?”  

Edwin types another snippet:  

```c
user_t player;
player.name = "Leo";
player.points = 100;
```  

Leo’s eyes light up. “Oh, so now `player` is a single variable that holds both the name and the score!”  

“Exactly,” Edwin confirms. “And if you wanted a list of players, like for a leaderboard, you could do this:”  

```c
user_t players[3];
players[0].name = "Leo";
players[0].points = 100;
players[1].name = "Jasmina";
players[1].points = 120;
players[2].name = "Sebastian";
players[2].points = 90;
```  

Leo stares at the screen, his mind racing. “This makes organizing data so much easier.”  

“Right?” Edwin chuckles. “It’s a game-changer. Now, let’s write a program that actually does something with this. You’re going to love this next part.”
