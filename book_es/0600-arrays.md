Leo se giró hacia Sebastián después de terminar de montar el campamento. "Tenemos un poco de tiempo antes de irnos a dormir. ¿Qué te parece si esta noche tú eres nuestro maestro de C?"

Sebastián levantó una ceja. "¿Yo? No soy ningún Bellardiano..." Dudó, luego encogió los hombros. "Pero puedo intentarlo."

Leo sonrió. "Estoy seguro de que lo harás muy bien."

Sebastián se sentó, sacando su dispositivo. "Vale, veamos... Ambos ya cubrieron las variables, ¿verdad?"

Jasmina asintió. "Estuve al día con Brielle anoche, así que debería estar actualizada."

"Genial," dijo Sebastián. "Entonces aquí va la cosa. En C, solo finges que todo es memoria, y el compilador lo traduce en operaciones sobre registros por ti."

Leo y Jasmina asintieron, siguiendo la explicación.

"Ahora," continuó, "ambos habéis aprendido cómo declarar una sola variable—algo como `int x;` para decirle a C que necesitas un entero. Pero, ¿qué pasa si necesitas almacenar múltiples números, no solo uno? ¿Qué pasa si necesitas un arreglo de valores?"

"¿Como cuando usamos un buffer en ensamblador?" preguntó Jasmina.

"Exactamente," dijo Sebastián. "En C, en lugar de seguir manualmente las ubicaciones de memoria, puedes declarar un arreglo. Si quieres un arreglo de cinco enteros, lo escribes así:

```c
int arr[5];
```

Los ojos de Jasmina se iluminaron. "¿Así que `int arr[5]` le dice a C que reserve espacio para cinco enteros?"

"Así es," confirmó Sebastián.

Leo reflexionó un momento. "Eso significa que cada número tiene su propio espacio de memoria, ¿pero qué tan grande es ese espacio? ¿Los enteros son siempre del mismo tamaño?"

Sebastián negó con la cabeza. "No. Eso es una de las cosas complicadas de C. El tamaño de un entero depende del sistema en el que estás operando. En nuestro caso, el terminal de los Bellardianos es un sistema de 32 bits, lo que significa que cada entero ocupa cuatro bytes."

Jasmina frunció el ceño. "Espera... pero cuando usábamos el emulador de 8 bits, cada número era solo un byte, ¿verdad?"

"Exactamente," dijo Sebastián. "En tu antiguo emulador, un entero era solo 8 bits, lo que significaba que solo podías contar hasta 255. Ahora, en un sistema de 32 bits, puedes contar hasta aproximadamente 4 mil millones cuando es sin signo."

"¿Entonces eso significa que las direcciones de memoria también son de 32 bits? ¿Qué pasa con los valores almacenados en memoria?" preguntó Jasmina. "Recuerdo que en nuestro emulador, si almacenábamos algo en la dirección 40, el siguiente byte estaría en la dirección 41. ¿Eso cambia aquí?"

Sebastián sonrió. "¡Buena reflexión! Pero no, la memoria aún se direcciona por bytes, igual que en tu antiguo emulador. Eso significa que si almacenas un entero en la dirección 40, realmente ocupa las direcciones 40, 41, 42 y 43. Sin embargo, el tamaño de la dirección misma cambia, son de 32 bits en un sistema de 32 bits. Típicamente, los tamaños de las direcciones coinciden con el tamaño de los registros."

Jasmina asintió lentamente. "Vale... así que aunque los números son más grandes, la memoria funciona de la misma manera. Solo más espacio por valor."

"Exactamente," dijo Sebastián. "Ahora, hablemos de cómo usar realmente los arreglos."

Leo se inclinó hacia adelante. "Sí, si declaro `int arr[5];`, ¿cómo pongo valores en él?"

"Usas corchetes," explicó Sebastián. "Por ejemplo, si quieres almacenar el número 10 en la primera posición, escribes:

```c
arr[0] = 10;
```

"Y si quieres almacenar 20 en la segunda posición, escribes:

```c
arr[1] = 20;
```

Los ojos de Leo se agrandaron. "¡Ah! Entonces los corchetes le dicen a C en qué ranura del arreglo queremos usar, ¡y él se encarga de la dirección de memoria real!"

"Exactamente," dijo Sebastián. "En lugar de rastrear manualmente las direcciones como lo hacíamos en ensamblador, solo le dices a C qué índice quieres, y él hace el cálculo por ti."

Jasmina sonrió maliciosamente. "Me gusta esto. Mucho más fácil que calcular manualmente las ubicaciones de memoria."

Sebastián sonrió. "Y esto funciona para más que solo almacenar valores—también funciona para recuperarlos. Si quieres acceder al primer valor que almacenaste, solo escribes:

```c
int y = arr[0];
```

"Ahora `y` contiene lo que se almacenó en `arr[0]`, justo como leer de la memoria en ensamblador."

Leo asintió. "Veo… así que esto es solo una manera más estructurada de trabajar con la memoria."

"Eso es exactamente," dijo Sebastián. "C se asegura de que no tengas que hacer las cosas tediosas a mano."

Jasmina se estiró. "Vale, creo que ya lo entendí."

Sebastián se recostó. "Bueno, porque los arreglos van a ser realmente útiles. Los usaremos mucho."