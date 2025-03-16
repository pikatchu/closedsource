---

Angelo se inclinó hacia adelante, apoyando los codos en la mesa. "Bueno, lo primero que necesitarás es una función para determinar la longitud de una cadena. Así es como la definimos:"

```c
int length(char* str)
```

Jasmina lo consideró por un momento. "¿Entonces solo necesitamos recorrer la cadena hasta encontrar el terminador nulo, el byte `0`?"

"Exactamente," confirmó Angelo. "Dado que las cadenas en C son simplemente arrays de caracteres que terminan en `0`, puedes contar los caracteres hasta que encuentres el terminador nulo."

Sebastián asintió. "Una vez que tengas esa función, podrás escribir otra función—`concatenate`—que toma dos cadenas y las une en una nueva."

"Espera," dijo Leo, "si estamos creando una nueva cadena, necesitamos asignar memoria para ella, ¿verdad?"

"Sí, y ahí es donde `malloc` entra en juego," explicó Angelo. "`malloc` es una función que te permite solicitar un bloque de memoria del sistema. Como es parte de la biblioteca estándar C, necesitamos incluir su encabezado en la parte superior del programa así:"

```c
#include <malloc.h>
```

Los ojos de Jasmina se iluminaron. "¡Ah! Eso es como `#include <stdio.h>`. Siempre me pregunté para qué servía eso."

"Buena pregunta," dijo Angelo. "`stdio.h` significa ‘entrada/salida estándar’. Es una biblioteca que proporciona funciones como `printf`, que nos permite imprimir texto en la pantalla."

Leo frunció el ceño. "Pero pensé que `printf` era manejado por el núcleo. ¿No es una llamada al sistema?"

"No exactamente," dijo Angelo. "`printf` hace mucho trabajo extra—formatea la cadena, procesa caracteres especiales y solo entonces llama a una función de nivel más bajo que interactúa con el núcleo. La llamada al sistema real ocurre dentro de `printf`, pero para nosotros, simplemente la usamos como una función de la biblioteca estándar."

Jasmina asintió. "Eso tiene sentido. El compilador no asumiría que todas las funciones existen, necesitan ser declaradas explícitamente."

"Exactamente," dijo Angelo. "Bien, aquí está la solución completa. Intenta implementarla tú mismo antes de mirar el código."

---

### Solución:

```c
#include <stdio.h>
#include <malloc.h>

int length(char* str) {
  int i = 0;
  while (str[i] != 0) {
    i++;
  }
  return i;
}
```

```c
char* concatenate(char* str1, char* str2) {
  int i = 0, j = 0;

  // Asignar memoria para la nueva cadena
  // (+1 para el terminador nulo)
  char* result = malloc(
    length(str1) + length(str2) + 1
  );

  // Copiar la primera cadena
  while (str1[j] != 0) {
    result[i] = str1[j];
    i++;
    j++;
  }

  // Copiar la segunda cadena
  j = 0;
  while (str2[j] != 0) {
    result[i] = str2[j];
    i++;
    j++;
  }

  // Terminar la nueva cadena con nulo
  result[i] = 0;

  return result;
}
```

```c
int main(void) {
  char* hello = "Hello ";
  char* world = "world!";
  char* msg = concatenate(hello, world);
  printf("%s\n", msg);
  free(msg);
  return 0;
}
```