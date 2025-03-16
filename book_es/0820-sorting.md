Angelo se inclinó hacia adelante, apartando su plato. "Esta noche vas a escribir tu primer algoritmo de ordenamiento."

Leo y Jasmina intercambiaron miradas intrigadas.

"Te encontrarás ordenando números todo el tiempo cuando trabajes con computadoras", continuó Angelo.

Jasmina asintió. "Entonces, ¿ponerlos en orden, del más pequeño al más grande?"

"Exactamente", dijo Angelo. "Ahora, ¿cómo lo harías? Y recuerda, ya sabes cómo encontrar el valor mínimo en un arreglo. Eso va a ser útil."

Leo pensó por un momento. "Podríamos tomar el número más pequeño, ponerlo en un nuevo arreglo, luego tomar el segundo más pequeño..."

Angelo levantó una mano. "Digamos que no queremos crear un nuevo arreglo. En su lugar, modificaremos el existente. A esto lo llamamos ordenamiento 'en su lugar'. Así que vamos de nuevo. Recorres el arreglo, encuentras el mínimo, ¿luego qué?"

Los ojos de Jasmina se iluminaron. "¿Podríamos intercambiarlo con el primer elemento?"

"Exactamente", dijo Angelo.

Leo frunció el ceño. "¿Y luego reiniciamos el proceso desde el segundo elemento?"

"Ahora lo estás entendiendo", dijo Angelo. "Vamos a escribirlo."

Agarró un bloc de notas y esbozó el primer paso. "Antes de que podamos ordenar, necesitamos una función que encuentre la posición del valor más pequeño, no el valor en sí. Modificaremos nuestra función mínima anterior para que devuelva el índice del número más pequeño. Además, necesitamos especificar en qué índice comenzamos a escanear."

Escribió la firma de la función en el bloc de notas:

```c
int minimum_index(
  int* arr,
  int start,
  int size
)
```

"Intenta escribirlo tú mismo", dijo Angelo, pasándoles el bloc de notas.

Jasmina y Leo se pusieron a trabajar, garabateando sus soluciones. Unos minutos más tarde, compararon las suyas con la versión correcta:

```c
int minimum_index(
  int* arr,
  int start,
  int size
) {
  int cand = arr[start];
  int cand_idx = start;
  int i = start + 1;
  
  while (i < size) {
    if (arr[i] < cand) {
      cand = arr[i];
      cand_idx = i;
    }
    i++;
  }
  
  return cand_idx;
}
```

Una vez que lo tenían claro, Angelo continuó. "Ahora, usemos esa función para escribir nuestro algoritmo de ordenamiento. Dado que estamos modificando el arreglo directamente, nuestra función no necesitará devolver nada." Escribió la firma de la función:

```c
void sort(int* arr, int size)
```

"Intenta escribirlo primero tú mismo", les animó.

Trabajaron a través de la lógica, y cuando terminaron, Angelo reveló la solución completa:

```c
void sort(int* arr, int size) {
  int i = 0;
  
  while (i < size - 1) {
    int min_idx = minimum_index(arr, i, size);
    int tmp = arr[min_idx];
    arr[min_idx] = arr[i];
    arr[i] = tmp;
    i++;
  }
}
```

"Para el paso final", dijo Angelo, "quiero que pruebes tu función de ordenamiento. En tu función `main`, crea un arreglo, ordénalo, luego verifica que cada elemento sea más pequeño o igual al siguiente. Si encuentras un error, devuelve un código de error."

Aquí estaba el código de prueba final:

```c
int main(void) {
  int arr[4] = {44, 33, 22, 12};
  sort(arr, 4);
  
  int i = 0;
  while (i < 3) {
    if (arr[i] > arr[i + 1]) {
      printf("Algo salió mal\n");
      return 2;
    }
    i++;
  }
  
  printf("OK\n");
  return 0;
}
```

Jasmina y Leo revisaron su trabajo. "Ahora esto tiene mucho sentido", dijo Leo.

Angelo sonrió. "El ordenamiento es solo el comienzo. Acostúmbrate a resolver problemas como este, porque a partir de aquí las cosas solo se vuelven más interesantes."