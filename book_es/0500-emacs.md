Jeremy se recostó, observando cómo Leo absorbia todo. “Ahora,” dijo, “sería bueno que intentaras ejecutar el programa, ¿verdad?”

Leo asintió con entusiasmo.

“Bueno,” continuó Jeremy, “antes de que podamos hacer eso, necesitas aprender a usar un editor de código. Un editor de código es el programa que usas para escribir y modificar tu código. Dado que programar es en gran parte trabajar con texto, tener un buen editor—y saber cómo usarlo bien—es crucial.”

Leo escuchaba atentamente mientras Jeremy seguía. “El más poderoso de todos los editores de código se llama Emacs. La belleza de Emacs es que no solo es increíblemente poderoso, sino que también es personalizable. Puedes modificarlo, ampliarlo, incluso compartir tus propias extensiones con otros.”

Los ojos de Leo se iluminaron. “¿Entonces puedo cambiar mi propio editor de código?”

Jeremy sonrió. “No solo cambiarlo—es prácticamente una plataforma de programación en sí misma. Algunos incluso bromeando dicen que Emacs es un sistema operativo completo. Puedes hacer casi cualquier cosa con él.”

Leo estaba intrigado. “Vale, probémoslo.”

Jeremy asintió. “Escribe este comando: `emacs hello.c`.”

Cuando Leo presionó enter, Jeremy añadió, “La primera vez que lo lances, podría tardar un poco más—hay mucho código cargándose. Pero no te preocupes, será mucho más rápido la próxima vez.”

Apareció una nueva interfaz en la pantalla. Jeremy señaló. “Ahora, vamos a modificar tu programa. Reemplaza el cuerpo de la función `main`—la parte dentro de las llaves rizadas—con esto:”

```c
x = 0;
while (x < 5) {
  printf("%d\n", x);
  x = x + 1;
}
return 0;
```

Leo lo tecleaba cuidadosamente, asegurándose de que coincidiera exactamente.

“Vale,” dijo Jeremy, “ahora necesitas guardar y salir. Para hacer eso, escribe: `Control-x` seguido de `Control-c`. En Emacs, usarás mucho las teclas Control y Meta. La tecla Control normalmente se escribe como `C-`, así que, por ejemplo, `C-x C-c` significa mantener Control y presionar x, luego mantener `Control` y presionar `c`.”

Leo repitió la secuencia en su mente antes de presionar las teclas.

Jeremy continuó, “La tecla Meta normalmente se escribe como `M-`, y en la mayoría de los casos, accedes a ella presionando Escape primero. Así que cuando veas algo como `M-x`, significa presiona Escape, luego presiona `x`.”

Leo asintió, comenzando a dominarlo. Jeremy le pasó una tarjeta de referencia. “Puedes encontrar una lista completa de comandos aquí: <a href="http://closedsourcebook.com/emacs.html">http://closedsourcebook.com/emacs.html</a>. Estúdiala. Conocer bien Emacs te hará un programador mucho mejor.”

Leo echó un vistazo a la lista de referencia. Había mucho que asimilar.

“Ahora que hemos modificado el programa, vamos a compilarlo,” dijo Jeremy. “Escribe:”

```
gcc hello.c
```

“Esto traducirá tu programa en C a un archivo ejecutable. Por defecto, el archivo de salida se llamará `a.out`. Para ejecutarlo, escribe:”

```
./a.out
```

Leo hizo lo que se le indicó. La pantalla imprimió:

```
0
1
2
3
4
```

Una sonrisa se extendió por su rostro.

Jeremy le dio una palmada en la espalda. “¡Felicidades! Acabas de escribir, editar, compilar y ejecutar tu primer programa real en C. Ahora, sigue practicando—abre tu Emacs, experimenta con diferentes comandos y asegúrate de aprender los atajos. Se convertirán en algo natural antes de que te des cuenta.”