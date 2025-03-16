Jeremy se inclinó hacia adelante, sus dedos danzaban sobre el teclado mientras mostraba otro ejemplo. "Y no solo se trata de operaciones básicas como la asignación: todo lo que has aprendido hasta ahora, como ramificaciones y bucles, tiene un equivalente directo en C. Pero en lugar de escribir múltiples líneas de ensamblador, puedes expresar la misma lógica de una manera mucho más sencilla."

Escribió:
```c
if (x == 0) {
  printf("Hello\n");
} else {
  printf("Hola\n");
}
```

"¿Ves?" dijo Jeremy, volteando hacia Leo. "Eso es una ramificación."

Los ojos de Leo se abrieron de par en par. "¿Entonces eso es lo mismo que escribir un `CMP` seguido de un salto condicional?"

"Exactamente," confirmó Jeremy. "Pero es mucho más legible, ¿verdad? En lugar de manejar manualmente las instrucciones de salto, simplemente escribes qué quieres que suceda en cada caso."

Leo asintió con entusiasmo mientras Jeremy continuaba. "Y esto—" tecleó otro bloque de código, "—es un bucle."

```c
while (x < 5) {
  printf("%d\n", x);
  x = x + 1;
}
```

"Este bucle imprime los números `0, 1, 2, 3, 4` antes de detenerse", explicó Jeremy. "El `%d` aquí es un especificador de formato especial que le dice a `printf` que imprima un entero y `\n` es otro carácter especial que significa nueva línea."

Leo se inclinó hacia adelante. "Entonces, en lugar de escribir un `CMP`, un salto condicional y actualizar manualmente el valor de `x`, ¿C simplemente lo maneja?"

Jeremy sonrió. "¡Lo tienes! Te dije, C es simplemente ensamblador de alto nivel. Es lo mismo, pero mucho más conveniente."