---

Jasmina entró en la sala de estudio, el suave zumbido de las computadoras llenaba el espacio. Filas de estudiantes estaban sentados en sus estaciones, concentrados en sus pantallas, tecleando en sus teclados. Escaneó la sala y avistó a Erling al fondo. Él la vio y la llamó con una sonrisa.

"¡Hey, Jasmina! Siéntate aquí," susurró, golpeando la silla a su lado.

Ella se deslizó en el asiento, abriendo su emulador. "Quiero depurar el programa de pila," dijo. "Asegurarme de entenderlo bien."

Cargó el programa.

<a href="http://closedsourcebook.com/asm_native_stack.html">http://closedsourcebook.com/asm_native_stack.html</a>

Al presionar el botón PASO para comenzar la ejecución, Erling se inclinó un poco. "¿Quieres saber algo interesante?" preguntó.

Jasmina se volvió hacia él, curiosa.

"El código que estás ejecutando paso a paso—son solo números en un búfer," dijo con una sonrisa pícara. "Réstalo, luego presiona PASO una vez."

Jasmina siguió sus instrucciones. La primera instrucción del programa se resaltó en azul.

"¿Ves eso?" Erling señaló la pantalla. "Esa instrucción destacada en azul es la que se está ejecutando actualmente. Pero ahora, mira la memoria. ¿Ves esta dirección? Ahí es donde está almacenada la instrucción."

Jasmina entrecerró los ojos hacia la pantalla. "Okay… ¿qué es este 06 y por qué está en azul?"

Erling sonrió. "Ese es el código de la instrucción real. El computador no está leyendo las palabras `MOV A, 2` como tú ves—solo está leyendo números. Este 06 corresponde a una instrucción de `MOV`. Cada instrucción tiene una representación numérica."

El interés de Jasmina se profundizó. "¿Y qué hay de los números después de eso?"

Erling tocó la pantalla. "Buena pregunta. El siguiente número, 0, le dice al procesador en qué registro cargar—0 corresponde al registro A. El número después de eso, 2, es el valor que queremos almacenar en el registro."

Los ojos de Jasmina se agrandaron. "Entonces, ¿incluso el programa en sí mismo está solo almacenado en la memoria, como todo lo demás?"

"¡Exactamente!" dijo Erling, claramente disfrutando la conversación. "El procesador no ‘ve’ el código como nosotros. Solo lee la memoria, una instrucción a la vez."

Jasmina miró la pantalla, fascinada. "Entonces eso significa… ¿el código es solo datos?"

Erling se recostó, satisfecho. "Bingo."