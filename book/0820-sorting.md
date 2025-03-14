
Angelo leaned forward, pushing his plate aside. “Tonight, you’re going to write your first sorting algorithm.”  

Leo and Jasmina exchanged intrigued glances.  

“You’ll find yourself sorting numbers all the time when working with computers,” Angelo continued.  

Jasmina nodded. “So putting them in order, from smallest to largest?”  

“Exactly,” Angelo said. “Now, how would you go about it? And remember, you already know how to find the minimum value in an array. That’s going to come in handy.”  

Leo thought for a moment. “We could take the smallest number, put it in a new array, then take the second smallest…”  

Angelo held up a hand. “Let’s say we don’t want to create a new array. Instead, we’ll modify the existing one. We call this sorting ‘in place.’ So let’s go again. You walk through the array, find the minimum, then what?”  

Jasmina’s eyes lit up. “We could swap it with the first element?”  

“Exactly,” Angelo said.  

Leo furrowed his brow. “And then we restart the process from the second element?”  

“Now you’re getting it,” Angelo said. “Let’s write it down.”  

He grabbed a notepad and sketched out the first step. “Before we can sort, we need a function that finds the smallest value’s position, not the value itself. We’ll modify our previous minimum function to return the index of the smallest number. Also, we need to specify at which index we start scanning.”  

He wrote the function signature on the notepad:  

```c
int minimum_index(
  int* arr,
  int start,
  int size
)
```  

“Try writing it yourself,” Angelo said, handing them the notepad.  

Jasmina and Leo got to work, scribbling their solutions. A few minutes later, they compared theirs to the correct version:  

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

Once they had it down, Angelo continued. “Now, let’s use that function to write our sorting algorithm. Since we’re modifying the array directly, our function won’t need to return anything.” He wrote down the function signature:  

```c
void sort(int* arr, int size)
```  

“Try writing it yourself first,” he encouraged.  

They worked through the logic, and when they finished, Angelo revealed the full solution:  

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

“For the final step,” Angelo said, “I want you to test your sorting function. In your `main` function, create an array, sort it, then check that each element is smaller or equal to the next. If you find a mistake, return an error code.”  

Here was the final test code:  

```c
int main(void) {
  int arr[4] = {44, 33, 22, 12};
  sort(arr, 4);
  
  int i = 0;
  while (i < 3) {
    if (arr[i] > arr[i + 1]) {
      printf("Something went wrong\n");
      return 2;
    }
    i++;
  }
  
  printf("OK\n");
  return 0;
}
```  

Jasmina and Leo reviewed their work. “This makes so much sense now,” Leo said.  

Angelo grinned. “Sorting is just the beginning. Get used to solving problems like this—because from here on out, things only get more interesting.”