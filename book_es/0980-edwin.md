Al salir de la oficina de su madre, Leo sentía el peso de su conversación oprimiéndolo. Su mente giraba con todo lo que ella había dicho: sobre la disciplina, sobre la guerra, sobre su entrenamiento. Sabía que ella tenía razón, pero no podía deshacerse de la frustración que burbujeaba dentro de él. Necesitaba despejar su mente, enfocarse en algo más, algo concreto.

En lugar de regresar a su habitación, se encontró caminando hacia la sección Bellardiana. Los sonidos familiares de las tecleadas, los murmullos bajos de discusiones profundas y las ocasionales explosiones de risa lo recibieron al entrar en su sala común. El aire estaba cargado de concentración, un mundo lejos de las reuniones de estrategia y decisiones en el campo de batalla.

Escaneó la sala, buscando a Jeremy, esperando sumergirse en algo—cualquier cosa— que le distrajera de todo lo demás. Al notar a alguien que no reconocía, se acercó y preguntó: "¿Está Jeremy?"

El hombre, un programador fornido con gafas en la punta de la nariz, levantó la vista de su pantalla. "No, pero ¿puedo ayudarte?"

Leo dudó un segundo, luego asintió. "Busco a un maestro de C."

El hombre sonrió y extendió la mano. "Me encontraste. Me llamo Edwin. Toma asiento."

Leo se sentó, sacando su laptop. Edwin le hizo señas para que mostrara su último trabajo. Mientras revisaba el código, su expresión pasó de curiosidad casual a diversión. "Ah, veo. Ya has avanzado bastante. Bucles, punteros, arreglos—has cubierto mucho."

Leo esperó, intuyendo que venía un 'pero'.

"Pero," continuó Edwin, "te falta un concepto clave. La nocion de un registro."

Leo frunció el ceño. "¿Un registro?"

Edwin se recostó. "Sí. Hasta ahora, has estado trabajando con arreglos. Los arreglos son geniales, pero solo almacenan un tipo de dato a la vez. Una lista de números, una lista de cadenas, una lista de punteros. Pero ¿y si quieres agrupar diferentes tipos de datos?"

Leo pensó por un momento. "Como... si quisiera almacenar el nombre de un jugador y su puntuación."

"Exactamente," dijo Edwin, chasqueando los dedos. "Ahora probablemente usarías dos arreglos separados: uno para los nombres y otro para las puntuaciones. Entonces, usarías un índice para emparejarlos."

Leo asintió. "Sí, eso haría."

"Bueno, esa es una buena aproximación, y es de hecho cómo funcionan las bases de datos," admitió Edwin. "Pero en C, hay una mejor manera si quieres que toda esa información esté almacenada junta en la memoria."

Leo inclinó la cabeza. "¿Cómo?"

La sonrisa de Edwin se amplió. "Con un `struct`. Te permite definir un nuevo tipo que contenga múltiples variables de diferentes tipos. Mira esto."

Escribió:

```c
typedef struct {
    char* name;
    int points;
} user_t;
```

Leo estudió el código. "Entonces... `typedef struct` me permite crear un tipo personalizado."

"Bingo. Y `user_t` es solo el nombre que le estamos dando. Ahora, en lugar de mantener listas separadas para nombres y puntuaciones, podemos almacenarlas juntas en un solo paquete."

Leo asintió lentamente. "¿Y cómo lo uso realmente?"

Edwin escribió otro fragmento:

```c
user_t player;
player.name = "Leo";
player.points = 100;
```

Los ojos de Leo se iluminaron. "¡Ah, entonces ahora `player` es una variable única que contiene tanto el nombre como la puntuación!"

"Exactamente," confirmó Edwin. "Y si quisieras una lista de jugadores, como para un tablero de líderes, podrías hacer esto:"

```c
user_t players[3];
players[0].name = "Leo";
players[0].points = 100;
players[1].name = "Jasmina";
players[1].points = 120;
players[2].name = "Sebastián";
players[2].points = 90;
```

Leo miró la pantalla, su mente acelerada. "Esto hace que organizar datos sea mucho más fácil."

"¿Verdad?" Edwin soltó una risa. "Es un cambio de juego. Ahora, escribamos un programa que realmente haga algo con esto. Te va a encantar esta próxima parte."