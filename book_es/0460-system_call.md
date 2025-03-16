Jeremy tocó la pantalla. "Lo primero que necesitas saber es que todo programa en C tiene una función `main`. Ahí es donde empieza la ejecución."

Leo examinó el código. "Entonces, ¿cuando ejecuto un programa, siempre comienza en `main`?"

"Exactamente," confirmó Jeremy. "Y observa cómo `main` devuelve un entero. Eso es porque cada programa tiene algo llamado estado de retorno. Es la manera en que el programa le dice al sistema operativo si se ejecutó correctamente."

Leo levantó una ceja. "¿Como... cómo?"

Jeremy se recostó. "Bueno, recuerda cuando ejecutaste `ls` o `cat`? Esos también son solo programas que se ejecutan en Linux. Cada vez que un programa termina, devuelve un código de estado. Un valor de retorno de `0` significa que todo funcionó bien. Si es cualquier cosa distinta de `0`, eso significa que hubo un error."

Leo asintió. "Entonces, cuando esta función `main` devuelve `0`, básicamente está diciendo, 'Terminé, y todo salió bien'?"

"Exactamente," dijo Jeremy. "Ahora, vamos a mirar la primera instrucción real dentro de `main`."

Señaló la línea:

```c
printf("Hello, world\n");
```

"Esto imprime `Hello, world` en la pantalla," explicó Jeremy.

Leo frunció el ceño. "Entonces... ¿es como escribir en la dirección `232` en el emulador?"

Jeremy sonrió. "No exactamente. En el emulador, sí, estabas escribiendo directamente en la memoria mapeada a la pantalla. Pero en la mayoría de los sistemas reales, no permitimos que los programas de usuarios escriban directamente en el hardware."

"¿Por qué no?" preguntó Leo.

"Porque sería demasiado peligroso," explicó Jeremy. "Imagina si cualquier programa pudiera sobrescribir tu memoria de pantalla—o peor aún, si pudiera empezar a modificar otras partes de la memoria, como tu entrada de teclado, datos de red o archivos en el disco. Por eso los sistemas operativos tienen una capa intermedia: el **kernel**."

Leo se mostró intrigado. "Entonces, ¿cómo funciona realmente la impresión en la pantalla?"

Jeremy continuó, "En lugar de escribir directamente en la memoria, los programas hacen una **llamada al sistema**—una solicitud especial al sistema operativo. Cuando llamas a `printf`, no imprime por sí mismo. En su lugar, le pide al kernel que imprima algo en tu nombre. El kernel verifica si tienes permiso para hacer eso, y si todo está bien, imprime el texto por ti."

Leo se recostó, procesando la idea. "Entonces... cada vez que un programa necesita acceder a algo como la pantalla, o quizás el teclado, o un archivo... pasa por el kernel?"

Jeremy asintió. "Exactamente. El kernel está a cargo de gestionar todo el hardware y asegurarse de que los programas no interfieran entre sí."

Leo sonrió. "Vale... creo que ya empiezo a entenderlo."