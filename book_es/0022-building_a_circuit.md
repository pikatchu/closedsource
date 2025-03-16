---

Al día siguiente, Leo llegó a la dirección que le había dado el Sr. Lee. Era una casa pequeña, encajada entre edificios más grandes, nada que resaltara. Tocó el timbre y esperó.

Pronto, una voz lo llamó—no desde dentro de la casa, sino desde algún lugar cercano.

"¡Aquí, en el garaje!"

Leo giró la cabeza y caminó hacia la puerta del garaje. La empujó y entró.

Lo primero que notó fue el desorden.

Cables, placas de circuitos, pantallas viejas, componentes de aspecto extraño—había hardware por todas partes. A diferencia de Elías, que parecía vivir en un mundo de libros, el Sr. Lee claramente era un constructor.

En el centro del desorden, el Sr. Lee estaba sujetando un soldador, ajustando algo en una placa de circuito. Levantó la vista cuando vio a Leo.

"Ah, aquí estás." Dejó la herramienta y se sacudió las manos. "Dime, ¿cuánto es 2 elevado a la potencia de 8?"

Leo ni siquiera tuvo que pensar. "¡256!"

El Sr. Lee asintió, satisfecho. "Bien. Solo estaba comprobando que hiciste tu tarea."

Leo sonrió ligeramente.

"Ahora," continuó el Sr. Lee, "¿qué tanto sabes sobre lógica?"

Leo dudó. "No mucho. Mi madre me enseñó lo básico—los operadores AND, OR y NOT."

El Sr. Lee sonrió. "Perfecto. Eso es exactamente lo que necesitamos para empezar."

El Sr. Lee se apoyó en el banco de trabajo, cruzando los brazos. "Comencemos con algo interesante—¿sabes la diferencia entre OR y XOR?"

Leo parpadeó. "¿XOR?"

El Sr. Lee sonrió. "Sí, XOR. El OR que usas en un restaurante."

Leo frunció el ceño. "¿El OR que usas en un restaurante?"

El Sr. Lee agarró una llave inglesa de la mesa y la giró en sus manos. "Vale, imagina que estás en un restaurante. El camarero pregunta, *¿Quieres helado o pastel de postre?* ¿Qué quieren decir?"

Leo pensó por un segundo. "Que tengo que elegir uno. No puedo tener ambos."

"¡Exactamente!" El Sr. Lee le señaló. "Eso es XOR—*OR exclusivo*. Uno u otro, pero no ambos."

Leo asintió lentamente.

"Ahora," continuó el Sr. Lee, "compáralo con cuando alguien dice, *Podemos ir a la escuela en coche o caminando.* No quieren decir que solo puedas hacer una cosa. Podrías conducir parte del camino, luego caminar el resto. Eso es OR regular. Significa uno, el otro, o ambos."

Leo alzó una ceja. "Entonces en el lenguaje hablado, la diferencia depende del contexto?"

El Sr. Lee chasqueó los dedos. "Exactamente. Pero las máquinas no trabajan con contexto. Con las máquinas, OR y XOR son operaciones completamente separadas con comportamientos distintos. Y como estamos tratando con máquinas, tenemos que ser precisos."

Leo asintió, empezando a entender. "Entonces, ¿XOR es un OR que no permite ambas opciones?"

"Bingo," dijo el Sr. Lee, alcanzando una placa de circuito. "Y ahora que sabes eso, vamos a empezar a ponerlo en uso."

Agarró un cable delgado de la mesa y lo sostuvo en alto.

"¿Ves esto? Esto es un bit. Cuando hay electricidad en este cable, lo llamamos ‘1’. Cuando no hay, lo llamamos ‘0’. Eso es todo lo que es un bit—encendido o apagado, electricidad o no hay electricidad."

Leo asintió.

El Sr. Lee tomó un segundo cable y conectó ambos a un pequeño componente con un tercer cable saliendo de él.

"Ahora, añadamos otro bit. Dos cables, dos bits. Acabo de conectarlos a este componente aquí—esta es una puerta AND." Señaló el cable de salida.

"Este cable solo tendrá electricidad si ambos entradas son 1. De lo contrario, se queda en 0."

Leo se inclinó. "Entonces si ambos cables tienen electricidad, el cable de salida también tiene electricidad, pero si falta uno, la salida es 0?"

El Sr. Lee asintió aprobatoriamente. "Exactamente."

El Sr. Lee dejó la puerta AND y se volvió hacia Leo.

"Así es como codificamos operaciones en una computadora. Por supuesto, todo dentro de una computadora real es mucho, mucho más pequeño—cables tan diminutos que no puedes verlos con tus ojos. Pero los principios siguen siendo los mismos."

Revuelto en un cajón y sacó un puñado de pequeñas puertas lógicas. Se las entregó a Leo.

"Vamos a intentar construir algo."

Leo tomó los componentes, examinándolos.

"¿Qué estamos construyendo?"

"Un incrementador," dijo el Sr. Lee. "Algo que suma uno a un número. Tienes cuatro cables como entrada—¿cómo construirías un circuito que sumara uno?"

Leo se rascó la cabeza.

Después de un momento, dijo, "Probablemente bit por bit."

Las cejas del Sr. Lee se levantaron. "¡Exactamente!" Señaló el bit más a la derecha. "Siempre comienzas con el bit que está más a la derecha. Pero antes de avanzar, déjame introducirte algo importante—algo llamado un medio sumador."

Leo inclinó la cabeza. "¿Un medio sumador?"

El Sr. Lee asintió. "Sí. Un medio sumador es el circuito de suma más sencillo. Toma dos bits y produce dos salidas—una para la suma y una para el acarreo. La razón por la que se llama medio sumador es que no maneja la entrada de acarreo de una adición anterior—solo funciona con dos bits a la vez."

Leo pensó en eso. "Entonces, puede sumar bits individuales, pero no maneja el acarreo?"

"Exactamente. Déjame mostrarte."

El Sr. Lee agarró una pequeña placa con puertas lógicas cableadas en ella. Señaló dos entradas.

"Aquí, tenemos dos bits. Vamos a llamarlos A y B. La suma de A y B es igual que en la adición normal—0 + 0 es 0, 0 + 1 es 1, 1 + 0 es 1, pero cuando sumamos 1 + 1, obtenemos...?"

"Dos."

"Correcto. Pero en binario, no hay '2'—en su lugar, lo escribimos como '10', que significa '0 con un acarreo de 1'. Así que necesitamos dos salidas: una para la suma y una para el acarreo."

El Sr. Lee señaló la primera puerta.

"La suma es simple—sigue la regla XOR. Si uno de los entradas es 1 pero no ambos, la suma es 1. De lo contrario, es 0."

Conectó los cables a través de una puerta XOR, llevando a la salida de la suma.

Luego, señaló otro cable.

"El bit de acarreo es aún más simple—sigue la regla AND. Es 1 solo cuando ambos entradas son 1."

Conectó las mismas dos entradas a través de una puerta AND, llevando a la salida del acarreo.

El Sr. Lee dio un golpecito en la placa. "Y eso es un medio sumador."

Leo examinó el circuito. "Así que esto suma dos bits juntos, pero no toma ningún acarreo de una adición anterior?"

"Exactamente. Por eso se llama medio sumador. Para hacer una suma completa, necesitas manejar un acarreo entrante también. Ahí es donde entra un sumador completo."

El Sr. Lee dejó la placa de circuito a un lado y se volvió hacia Leo. "Antes de avanzar, es hora de usar el palo que te di."

Leo sacó el pequeño dispositivo metálico de su bolsillo y lo miró.

El Sr. Lee señaló un viejo computador en el banco de trabajo. "Conéctalo y ve a esta dirección."

Agarró un pedazo de papel y escribió:

<a href="http://closedsourcebook.com/half_adder.html">http://closedsourcebook.com/half_adder.html</a>

Leo insertó el palo en la máquina polvorienta pero funcional. La pantalla parpadeó y automáticamente se abrió una ventana de terminal.

Leo escribió la dirección y presionó Enter.

Se cargó una nueva página, mostrando una simulación de circuito digital de un medio sumador, completa con interruptores de entrada para 1s y 0s.

Leo hizo clic en las entradas, alternándolas entre 0 y 1. Las salidas de suma y acarreo se actualizaban en tiempo real.

"Guau."

El Sr. Lee sonrió con suficiencia. "Ahora puedes ver cómo funciona, no solo escucharme explicarlo. Juega con eso un minuto. Luego avanzamos."

Leo experimentó por un momento, viendo cambiar las salidas. Era simple, pero se sentía real de una manera que nada de la escuela había sentido.

---

El Sr. Lee agarró otro circuito de medio sumador idéntico y lo colocó junto al primero.

"Ahora, pensemos en cómo incrementar un número. Recuerda, tienes cuatro cables como entrada, representando un número de cuatro bits. ¿Qué pasa cuando le sumas 1?"

Leo pensó por un momento. "El bit más a la derecha cambia. Pero si ya era 1, ese acarreo necesita moverse al siguiente bit."

El Sr. Lee asintió. "Exactamente. Entonces, ¿qué pasa si tomamos la salida de acarreo de nuestro primer medio sumador y la alimentamos en otro medio sumador conectado al siguiente bit?"

Los ojos de Leo se abrieron grandes al entender la idea.

"¡Ah! ¡El segundo medio sumador manejará el acarreo para el segundo bit! Y si ese bit también es 1, enviará un acarreo al tercer bit."

El Sr. Lee sonrió. "Ahora lo entiendes. Sigues encadenando medios sumadores de esta forma—uno por bit. Cada uno toma el resultado del acarreo anterior y lo suma al siguiente bit. Y así, mi amigo, es como construimos un incrementador."

Leo miró las puertas lógicas frente a él, su mente acelerándose.

El Sr. Lee añadió otro enlace al pedazo de papel:

<a href="http://closedsourcebook.com/circuit.html">http://closedsourcebook.com/circuit.html</a>

"¡Échale un vistazo! Por supuesto, esto no es cómo se representaría un circuito real, pero te ayudará a entender".

El Sr. Lee le entregó algunas puertas adicionales. "Ahora, vamos a conectarlo y ver si funciona."

Leo tomó los componentes y se puso a trabajar, sus dedos moviéndose con un nuevo sentido de propósito.

---