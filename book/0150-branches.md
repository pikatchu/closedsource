

Jasmina and Leo stepped out of the training hall, still catching their breath from the intense Judo session. The cool air outside felt refreshing after the heated practice. As they adjusted their uniforms, they noticed a man in simple, dark robes waiting for them.  

"Now it's time for your programming class," he said in a firm yet calm voice. "Follow me."  

The two exchanged a glance before falling into step behind him.  

The man led them through a series of corridors until they reached a small, dimly lit room lined with old monitors and mechanical keyboards. The faint scent of dust and machine oil filled the air. He turned to face them.  

"I am Joaquim," he said. "And today, I will teach you about branching—one of the most fundamental concepts in programming."  

"Branching?" Leo asked, intrigued.  

"Yes," Joaquim confirmed. "Up until now, your programs have followed a straight line, executing one instruction after another in sequence. But real programs make decisions. They follow different paths depending on conditions. That’s what branching is all about."  

He pulled up a simple program on the screen and motioned for them to look closely.  

<a href="http://closedsourcebook.com/asm_branch.html">http://closedsourcebook.com/asm_branch.html</a>.

Joaquim let them take in the code for a moment before continuing. "This program makes a simple decision. It checks the value of `A` and follows a different path depending on the result."  

Jasmina furrowed her brow as she studied the instructions. "So `CMP A, 10` compares `A` to `10`, and if it's less than or equal, the program jumps to `branch_if_true`?"  

"Exactly," Joaquim said. "But let’s look at how that actually works. When `CMP A, 10` runs, the processor doesn’t store the result like an addition or subtraction would. Instead, it updates something called the condition flags."  

He pointed to the right side of the emulator screen. "See these flags here? The `C` flag—short for 'Carry'—is set to `true` if the first operand is strictly smaller than the second one. The `Z` flag—short for 'Zero'—is set to `true` if they are equal."  

Leo leaned forward. "So that means if `A` is 5, `C` will be true because 5 is smaller than 10?"  

"Correct," Joaquim said. "And if `A` is exactly 10, the `Z` flag will be true."  

Jasmina nodded. "And `JBE`—'Jump if Below or Equal'—will take the jump if either of those flags is set?"  

"Exactly," Joaquim said. "If `C` is true because `A` is smaller, or `Z` is true because `A` is equal, the jump happens. Otherwise, the program continues to the next line and jumps to `branch_if_false` instead."  

Leo glanced at the screen. "So this means if `A` starts at `1`, `C` will definitely be true, so we’ll always take the `branch_if_true` path."  

Joaquim nodded. "That’s right. But if `A` was, say, 12, the `C` flag would be `false`, the `Z` flag would be `false`, and the jump wouldn't happen—so it would go to `branch_if_false` instead."  

Jasmina followed the logic. "So it evaluates the condition once and then takes one of two paths before stopping?"  

"That’s right," Joaquim said. "This is a simple example, but branching is what allows programs to make decisions—to react to input, handle different situations, and run dynamically instead of just executing in a fixed order."  

He leaned against the desk. "Now, I want you both to modify this program. Change the condition so that `A` starts at `5` instead of `1`. Then, try switching `JBE` to `JZ`—that means 'Jump if Zero'—and see how the behavior changes."  

Jasmina and Leo sat down at their stations, eager to experiment.
