---

Esa tarde, Elias y Leo volvieron a casa.

Elias se sirvió un vaso de agua y se apoyó en la encimera. “De ahora en adelante, no cambies nada en tu rutina.”

Leo asintió.

“Ve a la escuela. Finge que estabas enfermo si alguien pregunta. Actúa con normalidad.”

Leo cruzó los brazos. “¿Y luego?”

Elias tomó un sorbo y exhaló. “Y luego, sigues entrenando. Ve a ver al Sr. Lee como siempre. Tu entrenamiento es importante.”

Leo dudó por un momento, luego habló.

"Dijiste que mi madre era la Comandante en Jefe... ¿Qué significa eso?"

Elias puso su vaso abajo y se encontró seriamente con la mirada de Leo.

"Significa que ella es la líder de los Compañeros."

Leo sintió que se le apretaba el pecho. "Entonces… ¿no puedes contactarla? ¿Podría hablar con ella?"

La expresión de Elias se oscureció un poco. “Si desapareció, hay una razón para ello. Probablemente alguna operación que esté llevando a cabo.”

"Pero—"

Elias lo interrumpió. “No te preocupes. Ella reaparecerá a su tiempo.”

Leo no quedó satisfecho con esa respuesta. Pero podía decir por el tono de Elias que no tenía sentido insistir más.

Por ahora, todo lo que podía hacer era esperar.

---

Al día siguiente, Leo fue al taller del Sr. Lee como de costumbre.

Cuando entró, el Sr. Lee estaba trasteando con unas viejas placas de circuito, pero en el momento en que vio a Leo, hizo una pausa.

“¿Qué pasa, chico?”

Leo dudó, luego le contó todo: sobre el Inquisidor, sobre la reunión del viernes, sobre la extraña situación en la que se encontraba ahora.

El Sr. Lee suspiró. “Lo siento, chico. Eso es duro.”

Luego, después de un breve momento, juntó las manos. “Tengo justo lo que necesitas para distraerte de todo eso.”

Leo levantó una ceja. "¿Sí?"

El Sr. Lee sonrió. “La memoria.”

Leo parpadeó. "¿Memoria?"

"¡Así es! Hoy, te voy a enseñar sobre la memoria."

Leo había oído la palabra antes, pero nunca había entendido realmente lo que significaba.

El Sr. Lee sacó una pequeña pizarra blanca y comenzó a dibujar.

"¿Recuerdas los registros?" preguntó.

Leo asintió.

"Los registros son como los transistores. Sus valores pueden cambiarse mediante programación. También pueden realizar operaciones: suma, resta, multiplicación… ¿Recuerdas?"

"Sí. Están conectados como circuitos."

"¡Exacto! Y cuando agrupas esos circuitos para realizar muchas operaciones, ¿qué obtienes?"

Leo pensó por un momento.

Entonces le llegó. "¿Un procesador?"

El Sr. Lee chasqueó los dedos. "¡Exacto! Lo has entendido."

El Sr. Lee continuó.

“Ahora, aquí está el problema con los procesadores.”

Agarró un rotulador y dibujó un pequeño cuadro en la pizarra.

"Los procesadores solo tienen un número limitado de registros. Eso es un problema porque, a veces, necesitas almacenar *muchos* datos. ¿Qué harías si te pidiera sumar mil números? ¿Qué harías?"

Leo frunció el ceño. "No tendría suficientes registros para almacenarlos todos."

"Exactamente. Por eso necesitamos memoria."

El Sr. Lee subrayó la palabra en la pizarra.

"El procesador puede acceder a la memoria externa, usando dos instrucciones especiales: CARGAR y ALMACENAR."

Leo se inclinó.

El Sr. Lee continuó. "La memoria es como una *rejilla* gigante de transistores, cada uno almacenando una pequeña cantidad de datos. Cada posición en la rejilla tiene un número único, llamado *dirección*. El procesador usa estas direcciones para leer y escribir datos."

Leo asintió lentamente. "¿Como una dirección de calle te dice dónde está una casa?"

"¡Bingo!"

El Sr. Lee sonrió. "Por eso se llama *Memoria de Acceso Aleatorio* —o RAM. Porque puedes acceder a *cualquier* dirección instantáneamente, en *cualquier* orden. A diferencia de algunos tipos de memoria donde tienes que leer cosas en secuencia."

Leo pensó por un momento. “Entonces... tenemos toda esta memoria, y podemos mover datos dentro y fuera de ella cuando necesitamos?”

"Esa es la idea. Vamos a probarlo en la práctica."

El Sr. Lee caminó hacia una computadora y abrió una interfaz de programación.

“Vale, escribamos algunas instrucciones de memoria.”

Él escribió:

```
MOV A, 160
```

"Esto pone el número 160 en el registro A. Esa será nuestra dirección de memoria."

Leo asintió.

"Ahora, vamos a almacenar un valor en esa dirección."

```
MOV [A], 1
```

"¿Ves los corchetes?" El Sr. Lee señaló la pantalla. "Eso significa que estamos escribiendo en la *dirección* almacenada en A, *no* en A en sí."

Los ojos de Leo se abrieron un poco. "Oh, entonces no estamos cambiando A, estamos cambiando la ubicación de la memoria a la que A apunta."

El Sr. Lee sonrió. "Exactamente."

"Ahora, vamos a leer de la memoria."

```
MOV B, [A]
```

"Esto toma lo que está almacenado en la dirección A y lo pone en el registro B."

Leo asintió lentamente. "Entonces en lugar de mantener todo en registros, movemos datos dentro y fuera de la memoria según lo necesitemos."

"Lo has captado. Ahora, puedes practicar en este enlace: http://closedsourcebook.com/asm_memory.html."

Leo hizo clic en el enlace y empezó a probar las instrucciones.

Después de unos minutos de experimentar, Leo preguntó:

"Pero... ¿por qué estructurar las cosas de esta manera? ¿No sería más fácil si toda la memoria funcionara como los registros?"

El Sr. Lee se rió. "¡Ah! Buena pregunta."

Sacó una pequeña placa de circuito.

"¿Recuerdas cuánto cableado necesitábamos solo para construir un *incrementador*?"

Leo asintió.

"Ahora imagina tener millones de direcciones de memoria, cada una capaz de hacer todas esas operaciones. La cantidad de hardware necesario sería *insana*."

Leo lo pensó. Los circuitos que habían construido ya eran complicados.

Escalar eso a millones de direcciones?

Sería imposible.

"Por eso separamos la memoria del procesamiento," continuó el Sr. Lee. "El procesador hace todo el *pensamiento*, y la memoria solo *almacena* los datos. Movemos los datos dentro y fuera según sea necesario. Así es como funcionan las computadoras, Leo."

Leo se echó hacia atrás, procesando todo.

Así era como las computadoras almacenaban información.

No era magia.

Era solo electricidad. Solo puertas lógicas.

Y él estaba empezando a entenderlo.

---

El Sr. Lee se recostó un poco, frotándose las manos mientras observaba la pantalla del terminal.

"Bien, probemos algo práctico," dijo. "Vamos a escribir algunos números en la memoria."

Los ojos de Leo se iluminaron.

"Vamos a escribir todos los números del 0 al 10 en la memoria, comenzando en la dirección 160," continuó el Sr. Lee. "Y para hacer eso, necesitaremos un bucle."

Leo asintió, ya imaginándose cómo podría funcionar el bucle.

"Entonces, ¿qué necesitamos?" preguntó el Sr. Lee.

Leo pensó por un momento. "¿Dos registros?"

"¡Exactamente!" Sonrió el Sr. Lee. "Un registro sostendrá el número que queremos escribir, y el otro sostendrá la dirección donde queremos escribirlo."

Comenzó a escribir en el terminal.

"Comencemos configurando sus valores iniciales."

Escribió:

```
MOV A, 160
```
```
MOV B, 0
```

"El registro A es nuestra dirección de memoria—160—donde comenzaremos a escribir. Y el registro B es el valor que vamos a escribir, comenzando en 0."

Leo siguió, asintiendo.

"Ahora," continuó el Sr. Lee, "¿cómo es el cuerpo del bucle?"

Leo pensó en ello. "Necesitamos escribir B en la memoria en la dirección A."

"¡Correcto! ¿Y recuerdas cómo escribir en la memoria?"

Leo escribió rápidamente:

```
MOV [A], B
```

El Sr. Lee sonrió. "¡Exactamente!"

"Ahora, pensemos en qué sucede después de la primera iteración," continuó el Sr. Lee. "A está apuntando a 160, B sostiene 0, y hemos almacenado B en la memoria."

Leo seguía atentamente.

"Bien," dijo el Sr. Lee. "¿Qué pasa después?"

Leo pensó por un segundo. "¿Incrementamos el valor?"

"¡Correcto! Pero falta algo."

Leo frunció el ceño, mirando las instrucciones.

"Si solo incrementamos B," explicó el Sr. Lee, "entonces en la próxima iteración, todavía estaríamos escribiendo en la dirección 160, lo que significa que simplemente seguiríamos sobreescribiendo el primer número una y otra vez."

Los ojos de Leo se abrieron al darse cuenta del error.

"¡Ah! ¡También necesitamos incrementar A!"

"¡Exactamente!" dijo el Sr. Lee. "De lo contrario, seguiríamos escribiendo en el mismo sitio. Necesitamos que A se mueva a la siguiente dirección de memoria cada vez, igual que B se mueve al siguiente número."

Leo rápidamente añadió:

```
INC A
```
```
INC B
```

"¡Buen trabajo!" dijo el Sr. Lee. "Y finalmente, ¿cuál es nuestra condición de parada?"

Leo pensó por un momento. "¿Paramos cuando B llega a 11?"

"¡Correcto otra vez!"

El Sr. Lee señaló la pantalla. "Prueba ejecutando el programa completo aquí: http://closedsourcebook.com/asm_memory2.html."

Leo, emocionado, abrió la página e introdujo el código.

"Pero esta vez, en lugar de usar PASO, haz clic en EJECUTAR."

Leo dudó. "¿EJECUTAR?"

El Sr. Lee asintió. "Es útil cuando hay mucho código que ejecutar. En lugar de pasar por cada instrucción una por una, esto ejecutará todo el bucle de una sola vez."

Leo hizo clic en EJECUTAR.

Inmediatamente, el lado derecho de la pantalla se iluminó, mostrando una gran matriz de números.

El Sr. Lee señaló.

"¿Ves esta gran matriz? Ese es el estado de la memoria."

Los ojos de Leo recorrían la misma,observando cómo los valores se actualizaban en tiempo real.

"Mira aquí," señaló el Sr. Lee a una fila. "Los números se están escribiendo uno tras otro. Puedes ver cómo la memoria cambia mientras el programa se ejecuta."

Leo observaba, fascinado.

"¿Entonces así es como las computadoras almacenan información?"

El Sr. Lee asintió. "Así es como funciona todo, Leo. Cada juego que juegas, cada dato que guardas, todo es solo números en la memoria."

---