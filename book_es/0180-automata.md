---

Joaquim llevó a Leo y Jasmina a un aula llena de estudiantes mayores que estaban concentrados en sus pantallas. El constante tecleo de los teclados llenaba la sala. Él les señaló dos asientos vacíos.

"No tengo tiempo para daros una clase separada," dijo. "Así que os sentaréis con los estudiantes mayores y trabajaréis por vuestra cuenta. Si tenéis preguntas, preguntadle a Sebastián."

Sebastián se acercó, sentándose al lado de ellos. "Vale, empecemos."

Joaquim continuó, "Hoy vais a aprender sobre autómatas. Estas son máquinas simples que procesan secuencias de símbolos, moviéndose entre diferentes estados basados en lo que leen. Los autómatas se utilizan en todas partes en la informática—procesamiento de texto, validación de datos, incluso en inteligencia artificial."

Jasmina y Leo se inclinaron hacia adelante.

Sebastián tomó la palabra. "Un autómata es un sistema con reglas. Comienza en un estado, lee caracteres uno a uno y basado en lo que ve, se mueve al siguiente estado o se queda donde está. Cada estado está representado por una etiqueta en nuestro programa de ensamblaje, y las transiciones ocurren cuando comparamos el carácter actual con algo que estamos buscando."

Leo pensó por un momento. "Entonces, ¿es como un diagrama de flujo?"

"Exactamente," dijo Joaquim. "Y hoy, vais a escribir un autómata que verifica si una cadena es un correo electrónico válido. La versión simplificada con la que empezaremos tiene dos estados—primero, buscamos un `@`, y si lo encontramos, pasamos al siguiente estado, donde buscamos un `.`."

Sebastián abrió el programa.

<a href="http://closedsourcebook.com/asm_automaton.html">http://closedsourcebook.com/asm_automaton.html</a>

Sebastián señaló la primera parte. "Este programa comienza buscando un símbolo `@`. Lee cada carácter, lo imprime en la pantalla y verifica si es un `@`. Si encuentra uno, se mueve al estado `find_dot`."

Jasmina siguió la explicación. "Y si no encuentra un `@`, sigue haciendo bucles en `find_at`, ¿verdad?"

"Exactamente," dijo Sebastián. "Si alcanza el final de la cadena sin encontrar `@`, salta a `invalid`, imprimiendo `F` para falso."

Leo trazó la siguiente parte del programa. "Y si encuentra `@`, pasa a `find_dot`, donde hace lo mismo pero ahora buscando un `.`?"

Sebastián asintió. "Correcto. Si encontramos un `.` antes del final de la cadena, pasamos a `valid` e imprimimos `T` para verdadero. De lo contrario, si llegamos al final de la cadena primero, saltamos a `invalid`."

Joaquim intervino. "Esta es la idea fundamental detrás de los autómatas. Avanzas a través de estados basados en condiciones. Ahora bien, este autómata solo tiene dos estados, pero los más complejos pueden tener muchos más."

Jasmina se inclinó hacia adelante. "Entonces, si quisiéramos hacerlo más avanzado, podríamos añadir más estados para verificar otras reglas, ¿como asegurarnos de que haya algo antes y después de `@`?"

"Exactamente," dijo Sebastián. "Pero primero, probad esta versión. Aseguraos de entender cada paso antes de hacerlo más complejo."
