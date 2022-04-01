#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define NB_METAS 31

extern uint64_t rdtsc ();

extern void baseline(unsigned n, float x[n], const float y[n], const float z[n][n]);

// Initialisation d'une matrice de float
static void init_matrice (int n, float a[n][n]) {
   int i, j;

   for (i=0; i<n; i++) {
      for (j=0; j<n; j++) {
         a[i][j] = (float) rand() / RAND_MAX;
      }
   }     
}

// Initialisation d'un tableau de float
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
   
   // Vérification des arguments
   if (argc != 4) {
      fprintf (stderr, "Usage: %s <size> <nb warmup repets> <nb measure repets>\n", argv[0]);
      abort();
   }

   int i, m;

   // Taille de la matrice
   unsigned size = atoi (argv[1]);

   // Nombre de repetition de warmup
   int repw = atoi (argv[2]);

   // Nombre de repetition de la mesure
   int repm = atoi (argv[3]);

   for (m=0; m<NB_METAS; m++) {
      
      // Allocation pour les 2 tableaux et la matrice
      float (*x) = malloc (size * sizeof x[0]);
      float (*y) = malloc (size * sizeof y[0]);
      float (*z)[size] = malloc (size * size * sizeof z[0][0]);

      // Initialisation des tableaux et de la matrice
      srand(0);
      init_array (size, x);
      init_array (size, y);
      init_matrice(size,z);

      // Warmup
      if (m == 0) {
         for (i=0; i<repw; i++){
            baseline (size, x, y, z);
         }
      } else {
         baseline (size, x, y, z);
      }

      // Mesure des repetitions
      uint64_t t1 = rdtsc();
      for (i=0; i<repm; i++){
         baseline (size, x, y, z);
      }   
      uint64_t t2 = rdtsc();

      // Affichage des performances
      printf ("%.2f cycles/FMA\n",(t2 - t1) / ((float) size * size * size * repm));

      // Libere l'espace memoire
      free (x);
      free (y);
      free (z);
   }
   return EXIT_SUCCESS;
}