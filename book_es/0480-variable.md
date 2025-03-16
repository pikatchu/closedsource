Jeremy se recostó un poco, dejando que Leo absorbiera la avalancha de nueva información. "Ahora, no es necesario que entiendas todos los detalles de este código ensamblador todavía", dijo. "Este ensamblador es más complejo que lo que estás acostumbrado, pero todos los principios básicos son los mismos. Los registros son más grandes, el conjunto de instrucciones es más amplio, pero en su núcleo, sigue todo lo que ya has aprendido: saltos, llamadas a funciones, una pila de ejecución. Los fundamentos no cambian."

Leo estudiaba las líneas de código ensamblador que se desplazaban en la pantalla. "Pero si C no utiliza explícitamente registros como en ensamblador, ¿cómo le decimos que queremos realizar una operación?"

Jeremy sonrió. "¡Buena pregunta! En un programa de C, actúas como si estuvieras modificando la memoria directamente, no los registros. El compilador se encarga de los detalles por ti."

Él tecleó en el teclado, mostrando un ejemplo simple. "Digamos que quieres trabajar con un número. En lugar de asignarlo a un registro, declaras una variable así:"

```c
int x;
```

"Esto le dice a C, ‘Quiero usar un entero y lo voy a llamar `x`’. No necesitas pensar en dónde exactamente está almacenado."

Leo asintió. "Entonces, ¿qué pasa si quiero poner un valor en `x`?"

Jeremy escribió otra línea debajo de ella.

```c
x = 0;
```

"Esto significa, ‘Almacena el valor 0 en `x`’. Ahora, detrás de escena, el compilador traducirá esto en una instrucción `MOV`, justo como en ensamblador. Pero la parte hermosa es que no necesitas preocuparte de en qué registro termina `x`—el compilador maneja todo eso por ti."

Leo observaba la pantalla cuidadosamente. "Entonces C se ocupa de los registros, y yo solo me enfoco en lo que quiero que haga el programa?"

"Exactamente", dijo Jeremy. "C es poderoso porque te da control sobre la máquina mientras facilita escribir y entender tu código. Y eso es solo el principio."