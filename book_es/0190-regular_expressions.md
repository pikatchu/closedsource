Joaquim avanzó, observando las expresiones fascinadas en los rostros de Jasmina y Leo. "Ahora que ya sabéis cómo funciona un autómata, permitidme presentaros una forma más compacta y conveniente de representarlos: un lenguaje que los programadores usan todo el tiempo. Se llaman expresiones regulares."

Jasmina y Leo intercambiaron una mirada.

Joaquim continuó, "Una expresión regular es una manera de describir un autómata sin necesidad de escribir manualmente los estados y transiciones como acabamos de hacer. En vez de construir el autómata paso a paso, escribimos una única expresión que captura la misma lógica. Puede parecer abstracto al principio, pero una vez que os acostumbréis, es una herramienta increíblemente poderosa."

Se giró hacia la pizarra y escribió:

```
ab
```

"Esta es nuestra primera regla básica: la concatenación. Esto significa que ‘b’ debe venir directamente después de ‘a’. Simple, ¿verdad?"

Jasmina asintió. "Como escribir una palabra: una letra sigue a la otra."

"Exactamente," dijo Joaquim. "Ahora vamos a introducir otra operación: la unión." Escribió:

```
a(b|c)
```

"Esto significa que empezamos con ‘a’, y después de eso, podemos tener ‘b’ o ‘c’. La barra vertical `|` significa ‘o’. Así que esta expresión coincide con ‘ab’ o ‘ac’."

Los ojos de Leo se iluminaron. "Entonces es como un camino bifurcado en el autómata."

"Precisamente," dijo Joaquim. "Ahora, la última operación esencial—la estrella." Escribió:

```
a*
```

"Esto significa que ‘a’ puede aparecer cero o más veces. Podría coincidir con una cadena vacía, ‘a’, ‘aa’, ‘aaa’ y así sucesivamente, infinitamente."

Jasmina se inclinó hacia adelante. "Entonces, ¿es como un bucle?"

"Exactamente. Y estas tres operaciones—concatenación, unión y la estrella—son todo lo que necesitáis para definir cualquier expresión regular. Son los bloques de construcción de todo lo demás."

Joaquim se volvió hacia la clase. "Por supuesto, para comodidad, tenemos otros símbolos que simplifican las cosas. Por ejemplo, `+` es similar a `*`, excepto que significa ‘una o más’ en lugar de ‘cero o más’. El `?` significa ‘cero o uno’: hace que algo sea opcional. También hay maneras de expresar la negación, rangos de caracteres y más. Pero todo puede expresarse finalmente usando solo las tres operaciones fundamentales."

Mostró algunos ejemplos más, enseñando cómo se podrían construir patrones más complejos a partir de estos bloques básicos.

"Ahora," dijo Joaquim, "aquí está algo muy importante que recordar: las expresiones regulares y los autómatas son dos caras de la misma moneda. Cada autómata puede ser escrito como una expresión regular, y cada expresión regular puede convertirse en un autómata. De hecho, cuando los ordenadores procesan expresiones regulares, primero las convierten en un autómata tras bambalinas, justo como el que escribimos antes. Luego usan un programa—muy similar al que acabáis de implementar—para ejecutar el autómata y coincidir patrones."

Los ojos de Leo se agrandaron. "Entonces, ¿cada vez que buscamos algo en un archivo de texto usando una expresión regular, hay un autómata funcionando en segundo plano?"

"Exactamente," confirmó Joaquim. "Ahora, vamos a poner esto en práctica. Vamos a escribir una expresión regular que coincida con una dirección de correo electrónico, igual como lo hizo nuestro autómata."