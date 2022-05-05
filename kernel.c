#ifdef OPT1

/* Removing of store to load dependency (array ref replaced by scalar) */
/*void sujet2 (int n, float a[n][n], float b[n][n], float c[n][n]) {
   int i, j, k;

   for (i=0; i<n; i++)
      for (j=0; j<n; j++) {
         float s = 0.0f;

         for (k=0; k<n; k++)
            s += a[i][k] * b[k][j];

         c[i][j] = s;
      }
}
*/
void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]) {
   unsigned i, j;

   for (i=0; i<n; i++) {
      for(j=0; j<n; j++) {
         x[i] += z[i][j] /y[i];
      }
   }
}

#elif defined OPT2

//#include <string.h> // memset

/* ijk -> ikj permutation to make stride 1 the innermost loop */
/*void sujet2 (int n, float a[n][n], float b[n][n], float c[n][n]) {
   int i, j, k;

   memset (c, 0, n * n * sizeof c[0][0]);

   for (i=0; i<n; i++)
      for (k=0; k<n; k++)
         for (j=0; j<n; j++)
            c[i][j] += a[i][k] * b[k][j];
}*/


void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]) {
   unsigned i, j;

   for (i=0; i<n; i++) {
      for(j=0; j<n; j++) {
         x[i] += z[i][j] * (1 / y[i]);
      }
   }
}

#elif defined OPT3

//#include <string.h> // memset

/* ijk -> ikj permutation to make stride 1 the innermost loop */
/*void sujet2 (int n, float a[n][n], float b[n][n], float c[n][n]) {
   int i, j, k;

   memset (c, 0, n * n * sizeof c[0][0]);

   for (i=0; i<n; i++)
      for (k=0; k<n; k++)
         for (j=0; j<n; j++)
            c[i][j] += a[i][k] * b[k][j];
}*/


void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]) {
   unsigned i, j;
   float k = 0.0;

   for (i=0; i<n; i++) {
      k = 1 / y[i];
      for(j=0; j<n; j++) {
         x[i] += z[i][j] * k;
      }
   }
}

#elif defined OPT4

//#include <string.h> // memset

/* ijk -> ikj permutation to make stride 1 the innermost loop */
/*void sujet2 (int n, float a[n][n], float b[n][n], float c[n][n]) {
   int i, j, k;

   memset (c, 0, n * n * sizeof c[0][0]);

   for (i=0; i<n; i++)
      for (k=0; k<n; k++)
         for (j=0; j<n; j++)
            c[i][j] += a[i][k] * b[k][j];
}*/

#include <assert.h>

unsigned min(unsigned a, unsigned b) {
    if(a < b)
        return a;
    return b;
}

void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]) {

   int tile = n;

   assert(n%tile == 0);

   unsigned i, j, ii, jj;

   float k = 0.0;

   for (i = 0; i<n; i+=tile) {
       k = 1 / y[i];
       for(j = 0; j<n; j+=tile) {
           for(ii=i; ii<min(i+tile,n); ii++){
               for(jj=j; jj<min(j+tile,n);jj++){
                   x[ii] += z[ii][jj] * k;
               }
           }
       }
   }
}

#elif defined OPT5

//#include <string.h> // memset

/* ijk -> ikj permutation to make stride 1 the innermost loop */
/*void sujet2 (int n, float a[n][n], float b[n][n], float c[n][n]) {
   int i, j, k;

   memset (c, 0, n * n * sizeof c[0][0]);

   for (i=0; i<n; i++)
      for (k=0; k<n; k++)
         for (j=0; j<n; j++)
            c[i][j] += a[i][k] * b[k][j];
}*/

void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]) {
   unsigned i, j;

   float k = 0.0;

   for (i=0; i<n; i++) {
       k = 1 / y[i];
       for(j=0; j<n; j+=16) {
          x[i] += z[i][j] * k;
          x[i] += z[i][j+1] * k;
          x[i] += z[i][j+2] * k;
          x[i] += z[i][j+3] * k;
          x[i] += z[i][j+4] * k;
          x[i] += z[i][j+5] * k;
          x[i] += z[i][j+6] * k;
          x[i] += z[i][j+7] * k;
          x[i] += z[i][j+8] * k;
          x[i] += z[i][j+9] * k;
          x[i] += z[i][j+10] * k;
          x[i] += z[i][j+11] * k;
          x[i] += z[i][j+12] * k;
          x[i] += z[i][j+13] * k;
          x[i] += z[i][j+14] * k;
          x[i] += z[i][j+15] * k;
      }
   }
}

#elif defined PARA // base sur OPT3

#include <omp.h>
#define NB_THREADS 4

void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]) {
   unsigned i, j;
   float k = 0.0;

   // nb threads dans les variables globales
   // 
   // -fopenmp avant de compiler

   #pragma omp parallel 
   {
      #pragma omp for schedule(static, n / NB_THREADS)
      for (i=0; i<n; i++) {
         k = 1 / y[i];
         for(j=0; j<n; j++) {
            x[i] += z[i][j] * k;
         }
      }
   }
}

#else

/* original */
/*void sujet2 (int n, float a[n][n], float b[n][n], float c[n][n]) {
   int i, j, k;

   for (i=0; i<n; i++)
      for (j=0; j<n; j++) {
         c[i][j] = 0.0f;

         for (k=0; k<n; k++)
            c[i][j] += a[i][k] * b[k][j];
      }
}*/

/* original */
void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]) {
   unsigned i, j;

   for (j=0; j<n; j++) {
      for(i=0; i<n; i++) {
         x[i] += z[i][j] / y[i];
      }
   }
}

#endif