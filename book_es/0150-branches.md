Jasmina y Leo salieron del salón de entrenamiento, aún recuperando el aliento después de la intensa sesión de Judo. El aire fresco del exterior se sentía refrescante después de la práctica acalorada. Mientras se ajustaban los uniformes, notaron a un hombre en túnicas oscuras y simples esperándolos.

"Ahora es tiempo para su clase de programación", dijo con voz firme pero tranquila. "Síganme."

Los dos intercambiaron una mirada antes de seguirlo.

El hombre los guió a través de una serie de pasillos hasta que llegaron a una pequeña sala poco iluminada, alineada con monitores antiguos y teclados mecánicos. El tenue olor a polvo y aceite de máquina llenaba el aire. Él se volvió para enfrentarlos.

"Soy Joaquim", dijo. "Y hoy les enseñaré sobre la ramificación, uno de los conceptos más fundamentales en programación."

"¿Ramificación?" preguntó Leo, intrigado.

"Sí," confirmó Joaquim. "Hasta ahora, sus programas han seguido una línea recta, ejecutando una instrucción tras otra en secuencia. Pero los programas reales toman decisiones. Siguen diferentes caminos dependiendo de las condiciones. Eso es de lo que trata la ramificación."

Mostró un programa simple en la pantalla y les hizo señas para que lo observaran de cerca.

[http://closedsourcebook.com/asm_branch.html](http://closedsourcebook.com/asm_branch.html).

Joaquim les dejó tomar en consideración el código por un momento antes de continuar. "Este programa toma una decisión simple. Revisa el valor de `A` y sigue un camino diferente dependiendo del resultado."

Jasmina frunció el ceño mientras estudiaba las instrucciones. "Entonces `CMP A, 10` compara `A` con `10`, y si es menor o igual, el programa salta a `branch_if_true`?"

"Exactamente," dijo Joaquim. "Pero veamos cómo funciona realmente. Cuando `CMP A, 10` se ejecuta, el procesador no almacena el resultado como lo haría una adición o sustracción. En cambio, actualiza algo llamado las banderas de condición."

Señaló el lado derecho de la pantalla del emulador. "Vean estas banderas aquí. La bandera `C` —abreviatura de 'Carry'— se establece en `verdadero` si el primer operando es estrictamente menor que el segundo. La bandera `Z` —abreviatura de 'Zero'— se establece en `verdadero` si son iguales."

Leo se inclinó hacia adelante. "Entonces eso significa que si `A` es 5, `C` será verdadero porque 5 es menor que 10?"

"Correcto," dijo Joaquim. "Y si `A` es exactamente 10, la bandera `Z` será verdadera."

Jasmina asintió. "Y `JBE` —'Jump if Below or Equal'— tomará el salto si alguna de esas banderas está establecida?"

"Exactamente," dijo Joaquim. "Si `C` es verdadero porque `A` es menor, o `Z` es verdadero porque `A` es igual, el salto ocurre. De lo contrario, el programa continúa a la siguiente línea y salta a `branch_if_false` en su lugar."

Leo miró la pantalla. "Entonces esto significa que si `A` comienza en `1`, `C` definitivamente será verdadero, así que siempre tomaremos el camino de `branch_if_true`."

Joaquim asintió. "Así es. Pero si `A` fuera, digamos, 12, la bandera `C` sería `falsa`, la bandera `Z` sería `falsa`, y el salto no ocurriría, por lo que iría a `branch_if_false` en su lugar."

Jasmina siguió la lógica. "¿Entonces evalúa la condición una vez y luego toma uno de dos caminos antes de detenerse?"

"Así es," dijo Joaquim. "Este es un ejemplo simple, pero la ramificación es lo que permite a los programas tomar decisiones, reaccionar a la entrada, manejar diferentes situaciones y funcionar dinámicamente en lugar de solo ejecutarse en un orden fijo."

Se apoyó en el escritorio. "Ahora, quiero que ambos modifiquen este programa. Cambien la condición para que `A` comience en `5` en lugar de `1`. Luego, intenten cambiar `JBE` por `JZ` —eso significa 'Jump if Zero'— y vean cómo cambia el comportamiento."

Jasmina y Leo se sentaron en sus estaciones, ansiosos por experimentar.