Angelo juntó sus manos. "Quiero que ambos modifiquen el programa anterior para que, en lugar de acceder directamente al arreglo, usen un puntero."

Leo y Jasmina abrieron sus portátiles, listos para intentarlo.

"Esta vez", continuó Angelo, "van a crear un puntero llamado `ptr` que empiece en el *segundo* elemento del arreglo."

Él garabateó en un bloc de notas:

```c
int* ptr = &arr[1];
```

"Ahora", dijo, "dentro del bucle, en lugar de escribir `arr[i]`, vas a desreferenciar el puntero así: `*ptr`."

Leo miró el ejemplo que Angelo había dado anteriormente y comenzó a teclear. Después de unos minutos, dijo, "Vale, creo que ya lo tengo."

Jasmina terminó su propia versión y la comparó con la solución de ejemplo:

```c
int min = arr[0];
int i = 1;
int* ptr = &arr[1];

while(i < 5) {
    if (*ptr < min) {
        min = *ptr;
    }
    i++;
    ptr++;
}

printf("%d\n", min);
return 0;
```

Angelo echó un vistazo a sus pantallas y sonrió. "¡Eso es! Ahora realmente están pensando como programadores en C. Usar punteros de esta manera es el primer paso para entender cómo los programas del mundo real manejan la memoria de manera eficiente."

Jasmina se recostó, satisfecha. "Creo que me gustan los punteros," admitió.