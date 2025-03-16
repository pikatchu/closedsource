---

Esa noche, tras un agotador día montando drones, Angelo se recostó en su silla, estirando los brazos con un suspiro de satisfacción.

"Está bien," dijo frotándose las manos. "¿Qué tal si hacemos algo más de programación en C? Tengo la sensación de que no te quedarás aquí mucho tiempo, así que mejor aprovechamos el tiempo que tenemos."

Leo, Jasmina y Sebastián intercambiaron miradas divertidas. Podían decir que a Angelo realmente le gustaba enseñarles.

"Suena bien," dijo Leo.

"Genial," respondió Angelo, acercando su portátil. "La última vez, aprendimos sobre punteros y aritmética de punteros. Resulta que vas a necesitar punteros cada vez que quieras pasar arrays a una función. Pensemos en esto—hasta ahora, hemos estado escribiendo nuestros bucles directamente dentro de `main`, pero ¿y si quisiéramos hacer una función llamada `minimum` que devuelva el entero más pequeño de un array?"

Los miró expectante.

Leo y Jasmina pensaron por un momento. Luego Leo dijo, "Espera, ¿cómo pasamos argumentos a una función? En ensamblador, teníamos que usar registros."

"Buena pregunta", dijo Angelo. "Recuerda, en C, ya no trabajamos con registros, pero el compilador todavía necesita pasar valores entre funciones. ¿Cómo crees que lo hace?"

Jasmina frunció el ceño pensativa. "¿Podría asignar espacio en el marco de pila y escribir los valores allí?"

Angelo señaló hacia ella. "¡Exactamente! Eso es lo que hace el compilador de C: empuja los argumentos al marco de pila antes de llamar a la función. Pero, ¿cuál es el problema de pasar arrays de esta manera?"

Leo vaciló, luego dijo, "¿Pueden ser realmente grandes?"

Jasmina asintió. "Sí, copiar un array entero ocuparía mucha memoria."

"¡Y tiempo!" agregó Angelo. "Copiar arrays grandes ralentiza las cosas, por eso casi nunca lo hacemos. Entonces, ¿qué podríamos hacer en su lugar?"

Los ojos de Leo se iluminaron. "¡Podríamos pasar un puntero!"

"¡Exactamente!" Angelo sonrió. "En lugar de copiar todo el array, pasamos un puntero a su primer elemento. De esa manera, la función trabaja con la misma memoria, en lugar de hacer copias innecesarias."

Se inclinó hacia adelante, escribiendo en su portátil. "Ahora, vamos a intentar reescribir tu función `minimum` utilizando este enfoque. Aquí está la estructura de cómo debería verse:

```c
int minimum(int* arr, int size) {
   ...
}

int main(void) {
   ...
   printf("%d\n", minimum(arr, 5));
   ...
}
```

"¿Entendido?"

Ambos asintieron.

"Está bien, ahora intenta escribirla tú mismo. ¡Sin mirar!"

Sonrió con picardía y giró su pantalla, pero después de un momento, añadió, "Solo en caso de que te atasques, aquí está la solución completa."

```c
int minimum(int* arr, int size) {
  int cand = arr[0];
  int i = 1;
  while(i < size) {
    if(arr[i] < cand) {
      cand = arr[i];
    }
    i++;
  }
  return cand;
}
 
int main(void)
{
  int arr[5];
  arr[0] = 22;
  arr[1] = 44;
  arr[2] = 12;
  arr[3] = 99;
  arr[4] = 56;
 
  printf("%d\n", minimum(arr, 5));
  return 0;
}
```

Jasmina y Leo intercambiaron miradas decididas y se pusieron a trabajar.

Mientras Leo escribía su función, algo le llamó la atención. Miró el ejemplo de Angelo y notó algo raro.

"Espera un segundo," dijo Leo, frunciendo el ceño. "Pensaba que debíamos usar punteros, pero en tu función, estás usando `arr[i]` en lugar de `*arr`. ¿No significa eso que estás accediendo al array directamente?"

Angelo sonrió. "¡Ah, buena observación! Pero aquí está el asunto—los arrays y los punteros son en realidad la misma cosa en C. Cuando escribes `arr[i]`, realmente es solo una abreviatura de `*(arr + i)`. El compilador los trata de la misma manera."

Los ojos de Leo se agrandaron. "Entonces, ¿cada vez que uso la notación de array con corchetes, en realidad solo estoy usando aritmética de punteros detrás de todo?"

"¡Exactamente!" Angelo asintió. "Esa es una de las peculiaridades de C. Los arrays y los punteros están profundamente conectados. Incluso puedes usar la notación de punteros con un array, o viceversa—ambos funcionan. Los corchetes solo hacen que las cosas sean más fáciles de leer."

Jasmina sonrió socarronamente. "Entonces, ¿C solo nos deja pretender que estamos trabajando con arrays, pero en realidad, solo estamos moviendo punteros?"

"Prácticamente," dijo Angelo con una risa.