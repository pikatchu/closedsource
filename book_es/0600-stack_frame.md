Leo frunció el ceño. "Pero, ¿a dónde va toda esta memoria en realidad? Quiero decir, cuando escribo `int x;` o `int arr[5];`, C asigna espacio en la memoria, okay, genial... pero ¿dónde exactamente? ¿Y cómo sabe cuándo ya no se necesita esa memoria?"

Sebastián sonrió. "¡Excelente pregunta! Las variables y arreglos con los que has trabajado hasta ahora están todos asignados en la pila."

Los ojos de Jasmina se iluminaron. "¿La pila de ejecución?"

"Exactamente," confirmó Sebastián.

Jasmina pensó por un segundo, luego preguntó, "Entonces, eso significa que cada vez que ingresamos a una función, todas las variables y arreglos se asignan, y cuando salimos, simplemente... desaparecen?"

"Eso es exactamente correcto," dijo Sebastián. "Cuando se llama a una función, C crea una nueva sección de memoria en la pila para contener todas las variables y arreglos necesarios para esa función. Esta sección se llama marco de pila. Es como un bloque de memoria reservado que pertenece a la función mientras está en ejecución. Luego, cuando escribes cosas como `arr[0] = ...`, estás modificando memoria dentro de ese marco de pila."

Leo asintió lentamente. "Entonces cada función obtiene su propio pequeño espacio de trabajo en la memoria."

"Sí," dijo Sebastián. "Y aquí está la parte importante: cuando la función retorna, el marco de pila se destruye. Toda la memoria que usó se libera automáticamente."