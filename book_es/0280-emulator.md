Jasmina frunció el ceño. —Pero no entiendo. ¿Por qué el sistema te permite modificar el código en absoluto? Eso parece como un fallo de seguridad obvio.

Los ojos de Erling se iluminaron. —Esa *es* una excelente pregunta —dijo, señalándola—. Y tienes toda la razón—la mayoría de las veces, un programa no tiene permiso para cambiar su propio código mientras se ejecuta.

Se recostó en su silla, tamborileando los dedos sobre el escritorio. —Mira, la memoria en un computador está organizada en páginas—pequeñas secciones de unos pocos miles de bytes cada una. Para cada página, el sistema asigna permisos. ¿Puede el programa *escribir* en esta página? ¿Puede *leer* de ella? ¿Puede *ejecutarla*? Estos permisos ayudan a mantener las cosas seguras.

Jasmina asintió, empezando a entender. —Entonces, normalmente, un programa *sólo* puede ejecutar su código, ¿no modificarlo?

—Exactamente —confirmó Erling—. La mayoría de los programas se ejecutan con permisos estrictos para que *no puedan* alterar sus propias instrucciones. Pero… —Sonrió—. Hay excepciones.

Jasmina alzó una ceja. —¿Como cuáles?

—Bueno —continuó Erling—, a veces, un programa *necesita* generar nuevo código mientras se está ejecutando. Tal vez se está optimizando, tal vez está creando instrucciones de manera dinámica. Pero cuando lo hace, tiene que escribir el nuevo código en algún lugar de la memoria. Y una vez que ha terminado, tiene que *ejecutarlo*. Eso significa que debe haber *alguna* parte de la memoria que sea tanto escribible *como* ejecutable.

Jasmina reflexionó sobre esto. —¿Y eso fue lo que hackeaste?

Erling sonrió con suficiencia. —Bingo.

Se inclinó un poco hacia adelante. —Entonces... ¿quieres intentarlo?

Jasmina dudó. —Quiero decir, sí, pero... —Suspiró—. Solo sé programar ese emulador de 8 bits. Los drones probablemente usen algo completamente diferente.

Erling se rió entre dientes. —Pensé que dirías eso. —Sacó su portátil, picoteó un poco y luego giró la pantalla hacia ella—. Ahí está. Lo configuré para que puedas acceder a todo desde un emulador de 8 bits—tu favorito.

Giró el portátil y señaló la pantalla. —Sólo sigue este enlace.