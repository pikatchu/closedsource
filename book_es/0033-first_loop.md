Jasper se inclinó sobre el escritorio, señalando la pantalla. "Bien, ahora vamos a complicar un poco las cosas."

Los ojos de Jasmina se iluminaron.

"Como puedes imaginar, no puedes simplemente seguir escribiendo una instrucción por línea para siempre", continuó Jasper. "A veces, un ordenador necesita realizar *millones* de operaciones, y no queremos escribirlas todas manualmente."

Jasmina asintió.

"Entonces, en lugar de eso, usamos algo llamado un *bucle*. Un bucle nos permite repetir instrucciones sin tener que escribirlas una y otra vez. Vamos a escribir nuestro primer bucle."

Jasper tomó un cuaderno y rápidamente garabateó el plan.

"Vamos a escribir un programa que sume números del 1 al 4."

Jasmina levantó una ceja. "Entonces... ¿1 + 2 + 3 + 4?"

"Exacto." Jasper asintió. "Ahora, claro, *podríamos* simplemente escribir cuatro instrucciones de SUMA seguidas, pero no queremos hacer eso — queremos usar un bucle."

Jasmina crujó sus nudillos. "Bien, hagámoslo."

Jasper tocó el teclado.

"Vamos a modificar nuestro programa anterior. Primero, mantenemos `MOV A, 1` igual, pero cambiaremos B a 0."

Escribió:

```
MOV A, 1
```
```
MOV B, 0
```

"Ahora, aquí es donde se pone interesante. Vamos a añadir una *etiqueta* — es solo un marcador en el código, como un marcador de libro."

Escribió la siguiente línea:

```
loop:
```

"Ahora, comienza la acción."

Escribió:

```
ADD B, A
```

Jasper se volvió hacia Jasmina. "De acuerdo, primera iteración — ¿cuál es el nuevo valor de B después de esta instrucción?"

Jasmina pensó por un segundo. "¡1!"

Jasper asintió aprobatoriamente. "Correcto. La primera vez, B se convierte en 1. Pero necesitamos seguir sumando el siguiente número en la secuencia — entonces, ¿qué hacemos a continuación?"

Jasmina pensó por un momento. "¿Aumentamos A?"

"¡Exactamente!" Jasper escribió:

```
INC A
```

"Recuerda ese incrementador que construimos con compuertas lógicas? Es lo mismo, excepto que ahora lo estamos haciendo directamente en un registro. `INC A` añade 1 a A, llevándonos al siguiente número en la secuencia."

Jasmina asintió emocionada.

"Ahora viene la parte más complicada — la condición para detener el bucle."

Jasper continuó:

```
CMP A, 5
```

Jasmina se detuvo, frunciendo el ceño. "Espera... ¿5? Pero estamos sumando números *hasta* 4, no 5."

La sonrisa de Jasper se ensanchó. "¡Eso es! Acabas de cometer tu primer *error de desfase por uno*!"

Jasmina cruzó los brazos, molesta. "Odio eso."

Jasper se rió. "No te sientas mal. Todos los programadores cometen este error todo el tiempo."

Se inclinó hacia adelante. "Piénsalo, si nos detuviéramos en 4, nos faltaría la última adición. El bucle se detendría *un paso demasiado pronto*."

Jasmina suspiró. "Bien, ahora lo veo. Necesitamos comprobar con 5 para que se sume correctamente el 4."

Jasper asintió. "Exactamente. Ahora, esta siguiente instrucción es lo que hace que el bucle realmente *bucle*."

Escribió:

```
JNZ loop
```

"Esto significa: *Vuelve a ‘loop’ si la bandera Z no está activada.*"

Jasmina entrecerró los ojos. "¿Bandera Z?"

Jasper señaló el lado derecho de la pantalla. "Mira el estado de `Z`. Ahora mismo, dice `false`. Pero cuando `CMP A, 5` encuentra que A y 5 son iguales, la bandera se volverá `true`."

Jasmina asintió lentamente. "Entonces, mientras A *no* sea 5, ¿sigue iterando?"

"Exacto. Cuando A *sí* llegue a 5, el bucle se romperá y continuará con la siguiente instrucción, que es—"

```
HLT
```

"Detener. Esto detiene el programa."

Jasmina sonrió. "Vale, ¡veámoslo en acción!"

Jasper le pasó a Jasmina el teclado. "De acuerdo, ve a esta dirección: <a href="http://closedsourcebook.com/asm2.html">http://closedsourcebook.com/asm2.html</a> y paso a paso a través del programa."

Ella cargó la página, sus manos se movían rápidamente.

Presionó "PASO" una vez.

La primera instrucción se ejecutó.

Siguió pasando y pasando, observando cómo B aumentaba cada vez que los números se sumaban.

Finalmente, cuando A llegó a 5, la bandera `Z` cambió a verdadero — y en lugar de iterar, el programa continuó hacia HLT y se detuvo.

Los ojos de Jasmina se dirigieron al resultado final.

"¡Oh, mira! ¡El valor final en B es `0A`!"

La cara de Jasper se iluminó. "Eso es hexadecimal, ¿verdad?"

Jasmina asintió con entusiasmo. "¡Sí! Y `0A` en decimal es… ¡10!"

Jasper aplaudió. "¡Exactamente! ¡Lo entendiste!"

Jasmina se recostó con pura satisfacción, mirando la máquina que acababa de seguir sus órdenes, paso a paso.

Esto era programación real.