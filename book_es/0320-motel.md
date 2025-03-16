---

Jasmina, Leo, Sebastián y Brielle se acomodaron en la reducida habitación del motel, cuya tenue iluminación proyectaba largas sombras sobre la alfombra desgastada. El aire olía ligeramente a polvo y tela vieja. Brielle cerró la puerta con llave detrás de ellos y se dirigió al grupo.

"Escuchad bien," dijo. "No hablar con nadie. No salir a menos que yo lo diga. Somos fantasmas hasta que lleguemos al Senado."

Asintieron al unísono. Nadie estaba de humor para discutir.

Brielle lanzó su mochila sobre la cama y se estiró. "Ya que tenemos algo de tiempo, podríamos aprovecharlo. Vamos a programar un poco."

Leo se sentó pesadamente en el borde de la cama. "No sé si estoy de humor para eso."

La expresión de Brielle se endureció. "No hay un humor para programar," dijo. "Somos compañeros. Programamos. Eso es lo que hacemos. Si dejáramos de entrenar cada vez que pasa algo, no entrenaríamos nunca."

Leo exhaló bruscamente. "Pero Elias—"

"Elias estaría de acuerdo conmigo," interrumpió Brielle.

La habitación quedó en silencio.

Brielle se sentó y juntó las manos. "Hoy vais a aprender sobre funciones. Uno de los principios más importantes de la programación. Hasta ahora, cada programa que habéis escrito se usó exactamente una vez, lo que significa que nunca reutilizasteis vuestro código. Pero eso no es cómo funcionan los programas reales. La mayoría de las veces, queremos compartir lógica en lugar de duplicarla. Si tengo un fragmento de código que hace algo útil, no quiero reescribirlo cada vez. Quiero reutilizarlo."

Dejó que las palabras calaran antes de continuar.

"Entonces, ¿cómo lo haríais?" preguntó. "Digamos que tengo dos instrucciones simples: una que imprime el valor del registro B en la pantalla y otra que incrementa el registro A. ¿Qué haríais si quisierais usar esas dos instrucciones varias veces sin reescribirlas?"

Leo pensó por un momento, mirando la mesa mientras procesaba el problema. "Bueno... podríamos poner esas instrucciones bajo una etiqueta," sugirió. "Luego podríamos simplemente saltar a esa etiqueta cada vez que las necesitemos."

Brielle asintió. "Eso es un buen comienzo. Pero una vez que saltamos allí y ejecutamos esas instrucciones, ¿cómo volvemos atrás?"

Leo frunció el ceño, considerando el problema. "Supongo que necesitaríamos otro salto al final para volver a donde empezamos."

"De acuerdo," dijo Brielle, "pero digamos que llamamos a esta sección del código varias veces, desde diferentes lugares del programa. ¿A dónde debería llevarnos ese último salto?"

La expresión de Leo se tensó al darse cuenta del problema. "Oh... no lo sé," admitió.

Jasmina, que había estado siguiendo atentamente, de pronto se animó. "¡Espera! ¿Y si almacenamos la dirección de donde vinimos antes de saltar? De esa manera, al final, podemos recuperarla y saltar de regreso al lugar correcto."

Brielle sonrió. "Exactamente. Esa es la idea clave detrás de las funciones. El código también es memoria, y si guardamos de dónde venimos antes de saltar, siempre podemos encontrar el camino de regreso."

Brielle levantó una ceja, impresionada. "¿Dónde aprendiste que el código también era memoria?"

Jasmina miró a Sebastián antes de admitir, "Erling me lo dijo."

Brielle sonrió con complicidad. "Claro que sí." Tomó su dispositivo y tecleó algo. "Bien, cargad esto:

<a href="http://closedsourcebook.com/asm_function1.html">http://closedsourcebook.com/asm_function1.html</a>

"Este programa hace exactamente lo que Jasmina describió," continuó Brielle. "Definimos una etiqueta llamada `print`, como hemos hecho antes. Pero la diferencia clave es que no solo saltamos a ella y perdemos el rastro de dónde estábamos. En cambio, almacenamos la dirección de donde vinimos en un registro—C, en este caso—y cuando terminamos de ejecutar la función, saltamos de regreso a esa dirección almacenada."

Gesticuló hacia la pantalla. "Recordad, el código también es memoria. Lo que escribís en ensamblador—`MOV`, `INC`, `CMP`—es una representación textual de instrucciones binarias. El procesador no ejecuta estas palabras. Ejecuta su forma binaria. Y si pulsáis STEP en el emulador, veréis en azul qué instrucción está siendo ejecutada actualmente."

Jasmina sonrió. "Eso ya lo sabía."

Brielle asintió con aprobación. "Bien. Ahora mira el registro etiquetado `IP` a la derecha. Representa el **Puntero de Instrucción**. Este registro contiene la dirección de la instrucción que está siendo ejecutada actualmente por el procesador."

Leo se inclinó hacia delante, de pronto intrigado.

"Intenta jugar con ello," dijo Brielle. "Avanza a través de la ejecución, observa cómo cambia el registro IP. Ve si puedes averiguar exactamente cómo la función salta de regreso a donde empezó."