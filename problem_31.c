#include <stdio.h>

int main(int argc, char const *argv[])
{
 
  int target = 200; 
  int ways = 0;
  int a,b,c,d,e,f,g,h;

  for (a = 0; a * 200 <= target; a++) {
    for (b = 0; a * 200 + b * 100 <= target; b++) {
      for (c = 0; a * 200 + b * 100 + c * 50 <= target; c++) {
        for (d = 0; a * 200 + b * 100 + c * 50 + d * 20 <= target; d++) {
          for (e = 0; a * 200 + b * 100 + c * 50 + d * 20 + e * 10 <= target; e++) {
            for (f = 0; a * 200 + b * 100 + c * 50 + d * 20 + e * 10 + f * 5 <= target; f++) {
              for (g = 0; a * 200 + b * 100 + c * 50 + d * 20 + e * 10 + f * 5 + g * 2 <= target; g++) {
                // for (h = 0; a * 200 + b * 100 + c * 50 + d * 20 + e * 10 + f * 5 + g * 2 + h <= target; h++) {
                  ways++; 
                // }
              }
            }
          }
        }
      }
    }
  }

  printf("%d\n", ways);
  return 0;
}

