Brielle se recostó contra la recepción del motel, con los brazos cruzados. "Ahora, ¿qué problema tiene este enfoque?" preguntó. "Funciona, pero es muy limitante. ¿Por qué?"

Sebastián sonrió socarronamente. "Porque solo podemos llamar a una capa en profundidad."

Brielle lo miró fijamente. "Sí, pero tú ya sabes todo eso. Deja que ellos lo piensen."

Leo miraba fijamente la pantalla, observando cómo el programa se ejecutaba paso a paso. Después de un momento, dijo, "Entiendo. El problema es que si una función llama a otra función, necesitaríamos otro registro para almacenar la dirección de retorno. Pero los registros son limitados, se nos acabarían muy rápido."

"¡Exacto!" dijo Brielle. "Si queremos que las funciones puedan llamar a otras funciones, necesitamos una manera de almacenar las direcciones de retorno de forma dinámica, sin depender de un número fijo de registros."

Los ojos de Jasmina se iluminaron. "¡Necesitamos una pila!"

Brielle la señaló. "¡Sí! El problema es casi idéntico al que enfrentaste con los autómatas. Recuerda, en un autómata, tú transitas de un estado al siguiente basado en la entrada que lees. La instrucción de salto funciona de la misma manera: salta basándose en una condición. Pero no tiene memoria. Una vez que salta, olvida de dónde vino. Si necesitamos hacer algo después de que el salto termine, estamos sin suerte."

Ella caminó hacia la mesa y tomó una pequeña libreta, hojeando sus páginas. "En lugar de eso, necesitamos una manera de *recordar* de dónde venimos antes de saltar. Ahí es donde entra la pila. Justo antes de saltar, empujamos la dirección de retorno a la pila. Cuando la función termina, sacamos esa dirección y regresamos a donde nos quedamos."

Se volvió hacia la pantalla. "Aquí está el mismo programa utilizando la pila de ejecución, pero con una indirección extra, así que con una función que llama a 'print', en lugar de llamar directamente a 'print'." Envío un enlace a sus terminales:

<a href="http://closedsourcebook.com/asm_function2.html">http://closedsourcebook.com/asm_function2.html</a>

"Este programa se comporta igual que el anterior, pero ahora soporta llamadas a funciones más profundas. Si 'print' tuviera que llamar a otra función, todavía funcionaría. La pila nos permite almacenar múltiples direcciones de retorno sin quedarnos sin registros."

Jasmina presionó PASO en el emulador, observando cuidadosamente la ejecución.

Brielle continuó, "Ahora, habrás notado que manejar manualmente la pila de esta manera es un poco torpe. Configurar etiquetas, empujar direcciones y asegurarse de que todo coincida, es mucho para rastrear. Afortunadamente, el procesador tiene instrucciones incorporadas para manejar esto por nosotros."

Escribió dos palabras en la pantalla:

**CALL** y **RET**

"Estas dos instrucciones automatizan todo lo que acabamos de hacer. `CALL` empuja la dirección de retorno a la pila y salta a una función. `RET` saca la dirección de retorno de la pila y salta de vuelta. Es exactamente lo mismo que lo que escribimos antes, pero mucho más rápido y está incorporado en el propio procesador."

Jasmina asintió. "Entonces es solo un atajo para lo que ya estábamos haciendo, pero manejado automáticamente."

"Precisamente," confirmó Brielle.

Hizo una pausa, luego añadió, "Y ahora entiendes por qué se llama una *pila de ejecución*. En su núcleo, la pila se usa para almacenar direcciones de retorno, puntos a los que necesitamos regresar después de una llamada a función. Es una pila de puntos de ejecución, una pila de instrucciones. Esa es su función principal."

Miró a los demás. "Por supuesto, la pila puede almacenar otras cosas también. Si una función necesita memoria temporal, variables que solo necesitan existir mientras la función está ejecutando, se pueden empujar a la pila también. Pero el papel más crítico de la pila de ejecución es almacenar direcciones de retorno, asegurando que las llamadas a función puedan anidarse tan profundamente como sea necesario."

Se recostó en su silla. "Ahora, veamos si puedes modificar el programa para llamar a una función desde dentro de otra función. Intenta."

<a href="http://closedsourcebook.com/asm_function3.html">http://closedsourcebook.com/asm_function3.html</a>