---

Angelo se recostó en su silla, estirando los brazos. "Bien, hasta ahora has estado trabajando con enteros y arreglos de enteros. Pero las cadenas de caracteres funcionan un poco diferente."

Jasmina se animó. "¿Cadenas de caracteres? Quieres decir, simplemente arreglos de caracteres, ¿verdad?"

Angelo asintió. "Exactamente. En C, una cadena de caracteres es realmente solo un arreglo de valores char. Un char es simplemente un entero de 8 bits, lo que significa que cada carácter se almacena como un solo byte. Y al igual que cualquier otro arreglo, se almacenan en memoria como una secuencia de bytes. La principal diferencia es que las cadenas en C siempre terminan en null, lo que significa que terminan con un byte 0."

Los ojos de Jasmina se iluminaron. "¡Eso es exactamente cómo manejamos las cadenas en ensamblador!"

"Así es," dijo Angelo. "Pero aquí es donde las cosas comienzan a complicarse. Cuando escribes una cadena usando comillas, como `"Hello"`, no se almacena en la pila como tus arreglos de enteros. En cambio, se coloca en una parte especial de la memoria reservada para constantes, lo que significa que permanece allí durante toda la duración del programa."

Leo frunció el ceño. "Espera, ¿entonces si creo una cadena dentro de una función, no desaparecerá automáticamente cuando la función retorne?"

"Depende," explicó Angelo. "Si declaras una cadena así:

```c
char str[] = "Hello";
```

entonces *sí* se almacena en la pila porque estás creando explícitamente un arreglo. Pero si haces esto en su lugar:

```c
char* str = "Hello";
```

entonces `str` es solo un puntero a una cadena constante en memoria. La cadena en sí no desaparecerá, pero el puntero puede cambiar para apuntar a otro lugar."

Sebastian asintió lentamente. "Entonces esa es la diferencia entre usar `[]` y `*` con cadenas?"

"Exactamente."

Jasmina pensaba intensamente. "Pero ¿qué pasa si no sabemos qué tan grande será la cadena con antelación? ¿Y si necesitamos crear una nueva que sea más larga o más corta dependiendo de la situación?"

Angelo sonrió. "Ahora estás haciendo las preguntas correctas. Hasta ahora, has estado trabajando con arreglos de tamaño fijo. Eso está bien cuando sabes de antemano cuánto espacio necesitas, pero a veces no lo sabes. Eso sucede mucho al tratar con cadenas."

Leo reflexionó por un momento. "Entonces... necesitamos una manera de asignar memoria *dinámicamente*?"

"Exactamente," dijo Angelo. "Hay una función especial en C llamada `malloc`. Te permite solicitar un bloque de memoria en *tiempo de ejecución*. Le dices cuántos bytes necesitas, y te da un puntero al espacio recién asignado."

Jasmina levantó una ceja. "¿Y si ya no lo necesitamos?"

"Entonces tienes que liberarlo tú mismo, usando `free()`. De lo contrario, estás desperdiciando memoria."

Sebastian se recostó. "Entonces si no lo liberamos, esa memoria simplemente... sigue usándose?"

"Así es. El sistema operativo no lo recuperará hasta que tu programa se cierre. Eso se llama una *fuga de memoria*, y puede ser un gran problema si sigues asignando memoria sin liberarla."

Jasmina asintió. "De acuerdo, digamos que queremos juntar dos cadenas, como `"hello "` y `"world"`, en una nueva cadena. No sabemos el tamaño de antemano, así que tendremos que asignar espacio dinámicamente, ¿verdad?"

Angelo chasqueó los dedos. "Exactamente. Para concatenar dos cadenas, necesitamos suficiente espacio para *ambas* cadenas, más un byte extra para el terminador nulo al final."

Jasmina contó con los dedos. "Entonces el tamaño de la nueva cadena debería ser la longitud de la primera cadena... más la longitud de la segunda cadena... más uno?"

"¡Exactamente!" dijo Angelo. "Vamos a escribir una función para hacer eso. Tomará dos cadenas como entrada, asignará memoria para una nueva cadena, copiará ambas cadenas en ella y devolverá la nueva cadena."

Él escribió la firma de la función:

```c
char* concatenate(
  const char* s1,
  const char* s2
);
```

Leo frunció el ceño. "¿Qué pasa con el `const`?"

"Buena observación," dijo Angelo. "Simplemente significa que la función promete *no* modificar las cadenas originales. Es solo una medida de seguridad para prevenir cambios accidentales. Ahora, implementemos esta función juntos."