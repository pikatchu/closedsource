Joaquim se giró hacia la pizarra y escribió:

```
.*@.*[.].*
```

"Bien," dijo, enfrentándose a Leo y Jasmina, "vamos a desglosar esto paso a paso. Esta es una expresión regular simplificada para verificar si una cadena se parece a una dirección de correo electrónico. Pero antes de comenzar, quiero dejar claro que esta **no** es la manera oficial de validar direcciones de correo electrónico. Los formatos de correo electrónico son en realidad mucho más complejos, pero esto les dará una buena comprensión de cómo funcionan las expresiones regulares."

Señaló la primera parte:

```
.*
```

"Esta parte puede parecer simple, pero es muy poderosa. El `.` significa 'cualquier carácter' —puede ser una letra, un número, un símbolo, cualquier cosa. El `*` significa 'cero o más veces', lo que permite cualquier secuencia de caracteres, incluyendo una cadena vacía."

Jasmina inclinó la cabeza. "Entonces esto significa que podemos tener cualquier cosa antes del @?"

"Exactamente", asintió Joaquim. "Ahora sigamos."

```
@
```

"Esta parte es directa. Significa que esperamos el símbolo @ aquí, exactamente en esta posición."

Leo sonrió. "Si no estuviera ahí, entonces no sería un correo electrónico."

"Precisamente", dijo Joaquim, avanzando a la siguiente sección.

```
.*
```

"Esto es lo mismo que antes: cualquier número de cualquier carácter. Esto asegura que después del @, haya al menos algo, como un nombre de dominio."

"¿Entonces esto permitiría `@.`?" preguntó Leo.

"Buena pregunta", dijo Joaquim. "Por ahora, sí, lo permitiría. Pero la siguiente parte soluciona eso."

```
[.]
```

"Este es un **punto literal** dentro de corchetes, lo cual significa que el próximo carácter debe ser un punto (`.`). Normalmente, un `.` en una expresión regular significa 'cualquier carácter', pero como **realmente queremos** un punto, lo ponemos dentro de corchetes para asegurarnos de que se trate como un punto real."

Jasmina asintió. "Así que esto asegura que haya un punto después de lo que esté después del @?"

"Exactamente", dijo Joaquim, señalando la sección final.

```
.*
```

"Funciona igual que antes: cualquier número de cualquier carácter. Asegura que haya algo después del punto, como `.com`, `.net` o `.org`."

Jasmina exhaló. "Entonces esto asegura que un correo tenga una estructura básica: algo antes del @, algo después de él, un punto y luego caracteres arbitrarios."

"Así es", dijo Joaquim. "De nuevo, esta **no** es una forma completamente precisa de validar un correo, pero les muestra cómo las expresiones regulares describen patrones de manera eficiente."

Leo sonrió. "Veo por qué a los programadores les gustan estas. Es una manera de escribir un autómata en una sola línea."

"Exactamente", dijo Joaquim. "Y ahora, vamos a probar esta expresión en la práctica."

Les indicó una consola donde podrían probar diferentes cadenas usando:

<a href="http://closedsourcebook.com/regexp.html">http://closedsourcebook.com/regexp.html</a>.