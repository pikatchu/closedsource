---

Joaquim led Leo and Jasmina into the classroom filled with older students focused on their screens. The steady tapping of keyboards filled the room. He gestured toward two empty seats.

"I don’t have time to run a separate lesson for you," he said. "So you’ll sit with the older students and work on your own. If you have questions, ask Sebastian."

Sebastian walked over, dropping into the seat next to them. "Alright, let’s get started."

Joaquim continued, "Today, you’re going to learn about automatons (sometimes also called automata, which is the traditional plural form). These are simple machines that process sequences of symbols, moving between different states based on what they read. Automatons are used everywhere in computing—text processing, data validation, even artificial intelligence."

Jasmina and Leo leaned in.

Sebastian took over. "An automaton is a system with rules. It starts in one state, reads characters one by one, and based on what it sees, it moves to the next state or stays where it is. Each state is represented by a label in our assembly program, and transitions happen when we compare the current character to something we’re looking for."

Leo thought for a moment. "So it’s like a flowchart?"

"Exactly," Joaquim said. "And today, you’re going to write an automaton that checks if a string is a valid email. The simplified version we’ll start with has two states—first, we look for an `@`, and if we find it, we move to the next state, where we look for a `.`."

Sebastian pulled up the program.

<a href="http://closedsourcebook.com/asm_automaton.html">http://closedsourcebook.com/asm_automaton.html</a>

Sebastian pointed to the first part. "This program starts by looking for an `@` symbol. It reads each character, prints it to the screen, and checks if it’s an `@`. If it finds one, it moves to the `find_dot` state."

Jasmina followed along. "And if it doesn’t find an `@`, it keeps looping through `find_at`, right?"

"Exactly," Sebastian said. "If it reaches the end of the string without finding `@`, it jumps to `invalid`, printing `F` for false."

Leo traced the next part of the program. "And if it finds `@`, it moves to `find_dot`, where it does the same thing but now searching for a `.`?"

Sebastian nodded. "Right. If we find a `.` before the end of the string, we go to `valid` and print `T` for true. Otherwise, if we hit the end of the string first, we jump to `invalid`."

Joaquim stepped in. "This is the fundamental idea behind automatons. You move through states based on conditions. Right now, this automaton has only two states, but more complex ones can have many more."

Jasmina leaned forward. "So if we wanted to make it more advanced, we could add more states to check other rules—like making sure there’s something before and after `@`?"

"Exactly," Sebastian said. "But first, try this version out. Make sure you understand every step before we make it more complex."
