Angelo se inclinó hacia adelante, tocando algunas teclas en su laptop. “Ahora, aquí hay algo realmente interesante sobre los punteros,” dijo. “No solo pueden almacenar direcciones de memoria, sino que realmente puedes *moverlos* de un lado a otro. Esto se llama aritmética de punteros.”

Leo y Jasmina escuchaban atentamente.

“Digamos que tengo un puntero a un entero, declarado así: `int* ptr = &arr[0];`. Eso significa que `ptr` está apuntando actualmente al primer elemento del arreglo. ¿Hasta ahora todo bien?”

Ambos asintieron.

“Ahora,” continuó Angelo, “¿qué pasa si quiero moverme al segundo elemento del arreglo? En lugar de escribir `&arr[1]`, puedo hacer esto: `ptr + 1`. En C, cuando añades `1` a un puntero, se mueve hacia adelante en la memoria—no por un *byte*, sino por el tamaño del tipo al que apunta. Como `ptr` está apuntando a un entero, y los enteros en un sistema de 32 bits ocupan *cuatro* bytes, añadir `1` a `ptr` lo mueve cuatro bytes hacia adelante, directamente al siguiente entero en el arreglo.”

Los ojos de Jasmina se agrandaron. “Entonces `*(ptr + 1)` me daría el segundo elemento, y `*(ptr + 2)` me daría el tercero?”

“Exactamente," dijo Angelo. “Y esto también funciona para la resta. Si haces `ptr - 1`, se mueve hacia atrás en la memoria al entero anterior.”

Jasmina inclinó la cabeza, pensativa. “Y sabe cuánto añadir o restar porque conoce el tamaño de un entero, ¿verdad? Entonces si los enteros son cuatro bytes en este sistema, `ptr + 1` realmente significa ‘avanzar cuatro bytes’, y `ptr + 2` significa ‘avanzar ocho bytes’?”

Angelo sonrió. “¡Exactamente eso! La belleza de esto es que la aritmética de punteros funciona *en diferentes arquitecturas*. En algunos sistemas, los enteros pueden ser de dos bytes, o incluso de ocho bytes, pero no tienes que preocuparte por eso. El compilador lo averigua por ti.”

Leo asintió. “Tiene sentido. Así que en lugar de calcular manualmente las direcciones de memoria, simplemente dejas que el puntero haga el trabajo.”

“Bingo,” dijo Angelo. “Y por eso los punteros son tan poderosos. Te dan control directo sobre la memoria, pero de una manera que se adapta a diferentes máquinas. ¡Ahora, vamos a probarlo!”