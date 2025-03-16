Al terminar la cena, Angelo se recostó en su silla y de repente apartó todos los platos con una sonrisa. “¡Vale! ¡Vamos a programar!” anunció, claramente ansioso por comenzar.

Leo, Jasmina y Sebastián agarraron sus portátiles y los abrieron. Angelo se inclinó para mirar sus pantallas. “Déjame ver tu último programa,” dijo. Examinó el código por un momento y asintió. “Ah, ya veo. Ya conocéis los arrays, pero aún no los punteros, ¿eh?”

Leo y Jasmina negaron con la cabeza.

“Bueno,” continuó Angelo, “lo primero que vamos a hacer es reescribir vuestro código para usar un puntero. No es estrictamente necesario en este caso, pero necesitaremos los punteros más adelante, así que mejor empezar ahora.”

Jasmina levantó la vista. “¿Qué es exactamente un puntero?”

“Un puntero,” explicó Angelo, “es una dirección en la memoria.”

“Entonces... ¿como en ensamblador?” preguntó Leo. “¿Donde usaríamos `[A]` para acceder a lo que esté almacenado en la dirección `A`?”

“¡Exactamente!” dijo Angelo, complacido. “En C, usamos punteros para almacenar direcciones de memoria en lugar de valores. Así es como escribimos uno: `int* ptr`. El asterisco `*` es la parte importante: le indica al compilador que `ptr` no contiene un entero, sino la dirección de un entero.”

Jasmina asintió, aún pensándolo. “Pero, ¿cómo obtenemos realmente la dirección de algo? Normalmente, solo trabajamos con variables.”

Angelo sonrió. “¡Buena pregunta! C nos da un operador especial para eso. Si quieres la dirección de una variable, usas `&`. Piénsalo como si dijeras, ‘¿Dónde está almacenada esta variable?’ Por ejemplo, si escribes `int* ptr = &min`, eso significa que `ptr` ahora está guardando la dirección de `min` en lugar de su valor.”

Los ojos de Jasmina se abrieron un poco. “Espera... entonces `&min` no significa el valor de `min`, ¿sino la ubicación de `min` en la memoria?”

“Exactamente,” confirmó Angelo. “Cada variable vive en algún lugar de la memoria. En lugar de trabajar directamente con su valor, puedes almacenar y pasar su dirección.”

Leo se inclinó. “¿Y eso funciona para los arrays también?”

“Por supuesto,” dijo Angelo. “Cada elemento de un array tiene su propia dirección en la memoria. Si escribes `&arr[2]`, obtienes la dirección del tercer elemento del array, en lugar de su valor.”

Jasmina procesó esto por un momento. “Vale… pero si tengo un puntero, ¿cómo leo o escribo en la dirección a la que está apuntando?”

“Ahí es donde entra en juego el operador `*`,” explicó Angelo. “Si quieres leer el valor en la dirección que un puntero está guardando, escribes `*ptr`. Si quieres cambiar el valor en esa dirección, le asignas algo a `*ptr`. Así, `*ptr = 42` almacenaría `42` en la ubicación de memoria a la que `ptr` está apuntando.”

Jasmina pensó por un segundo, luego preguntó, “Entonces, cuando escribo `*ptr`, ¿me dará el valor almacenado en la dirección de memoria dentro de `ptr`?”

“¡Exactamente!” dijo Angelo.