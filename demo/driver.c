#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define NB_METAS 31

extern uint64_t rdtsc ();

//extern void sgemm (int n, float a[n][n], float b[n][n], float c[n][n]);

//
extern void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]);

//
static void init_matrice (int n, float a[n][n]) {
   int i, j;

   for (i=0; i<n; i++) {
      for (j=0; j<n; j++) {
         a[i][j] = (float) rand() / RAND_MAX;
      }
   }     
}

//
static void init_array (int n, float a[n]) {
   int i;

   for (i=0; i<n; i++) {
      a[i] = (float) rand() / RAND_MAX;
   }
}

static void print_array (int n, float a[n][n]) {
   int i, j;

   for (i=0; i<n; i++)
      for (j=0; j<n; j++)
         printf ("%f\n", a[i][j]);
}

int main (int argc, char *argv[]) {
   /* check command line arguments */
   if (argc != 4) {
      fprintf (stderr, "Usage: %s <size> <nb warmup repets> <nb measure repets>\n", argv[0]);
      abort();
   }

   int i, m;

   /* get command line arguments */
   //
   unsigned size = atoi (argv[1]); /* matrix size */
   int repw = atoi (argv[2]); /* repetition number */
   int repm = atoi (argv[3]); /* repetition number */

   for (m=0; m<NB_METAS; m++) {
      /* allocate arrays */
      float (*x) = malloc (size * sizeof x[0]);
      float (*y) = malloc (size * sizeof y[0]);
      float (*z)[size] = malloc (size * size * sizeof z[0][0]);

      /* init arrays */
      srand(0);
      init_array (size, x);
      init_array (size, y);
      init_matrice(size,z);

      /* warmup (repw repetitions in first meta, 1 repet in next metas) */
      if (m == 0) {
         for (i=0; i<repw; i++)
            baseline (size, x, y, z);
      } else {
         baseline (size, x, y, z);
      }

      /* measure repm repetitions */
      uint64_t t1 = rdtsc();
      for (i=0; i<repm; i++)
         baseline (size, x, y, z);
      uint64_t t2 = rdtsc();

      /* print performance */
      printf ("%.2f cycles/FMA\n",
              (t2 - t1) / ((float) size * size * size * repm));

      /* print output */
      //if (m == 0) print_array (n, c);

      /* free arrays */
      free (x);
      free (y);
      free (z);
   }

   return EXIT_SUCCESS;
}
