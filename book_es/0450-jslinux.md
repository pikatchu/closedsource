Jeremy se reclinó un poco, observando cómo los dedos de Leo flotaban sobre el teclado. "Bien, empecemos con lo básico. Escribe `ls` y pulsa enter."

Leo hizo lo indicado, y una lista de nombres de archivos apareció en la pantalla.

"Ves," explicó Jeremy, "esto lista todos los archivos en tu directorio actual. Estos son los archivos almacenados en esta máquina."

Leo examinó la lista. "¿Y si quiero ver qué hay dentro de uno de estos archivos?"

"Buena pregunta," dijo Jeremy. "Ahí es donde entra `cat`. Escribes `cat` seguido del nombre del archivo, y se imprimirá el contenido de ese archivo en la pantalla."

Leo asintió. "Entonces, si escribo `cat hello.c`, ¿veré lo que hay dentro de `hello.c`?"

"Exactamente," confirmó Jeremy. "Adelante."

Leo ingresó el comando y en la pantalla aparecieron unas líneas de código. Las observó, frunciendo el ceño. "Esto no se parece en nada a lo que he visto antes."

"Es normal," dijo Jeremy con una sonrisa. "Bienvenido a C."

Señaló una línea específica. "¿Ves esto? `int main(void)`. Así es como declaras una función en C. Y la parte entre las llaves `{}`—eso es el cuerpo de la función, donde van las instrucciones."

Los ojos de Leo se abrieron ligeramente en reconocimiento. "Espera... ¿entonces es como cuando tenía una etiqueta llamada `main` en ensamblador y usaba `CALL` para saltar a ella?"

"Exactamente," dijo Jeremy, complacido. "C tiene funciones, igual que el ensamblador tiene etiquetas a las que puedes saltar. La principal diferencia es que en C, las funciones son más estructuradas—no tienes que almacenar y recuperar manualmente las direcciones de retorno porque el lenguaje lo maneja por ti."

Jeremy se inclinó hacia adelante. "Mira, C es lo que llamamos un lenguaje de ensamblaje de alto nivel. Lo que eso significa es que cada construcción que ves aquí eventualmente se traduce en ensamblaje—justo como el lenguaje que has estado usando hasta ahora."

Leo asintió lentamente, asimilándolo.

"Pero aquí está la parte importante," continuó Jeremy. "Con ensamblador, estás escribiendo instrucciones que son específicas para un procesador. Y eso es un problema. Diferentes procesadores tienen diferentes números de registros, diferentes tamaños de registros, diferentes conjuntos de instrucciones... Si escribes ensamblador para una máquina, puede que no funcione en otra."

"¿Entonces C resuelve eso?" preguntó Leo.

"Exactamente," dijo Jeremy. "C abstrae los detalles específicos de cualquier procesador. Te permite escribir código sin preocuparte por cuántos registros hay o qué tamaño tienen. Y cuando estás listo para ejecutar tu programa, un compilador traduce tu código C a ensamblador para el procesador que estás usando."

La mente de Leo corría. Había pasado tanto tiempo trabajando en ensamblador, pensando en términos de registros y saltos. Ahora, comenzaba a ver cómo un lenguaje de nivel superior como C podría facilitar las cosas, mientras aún estaba lo suficientemente cerca de la máquina para dar control real.

Jeremy sonrió con satisfacción. "¿Bastante genial, no? Ahora, desglosemos este programa y veamos exactamente qué hace."