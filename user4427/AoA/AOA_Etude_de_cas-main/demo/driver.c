#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>

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
   //int repw = atoi (argv[2]);

   // Nombre de repetition de la mesure
   int repm = atoi (argv[3]);

   double mediane[repm];

   for (m=0; m<repm; m++) {

      // Allocation pour les 2 tableaux et la matrice
      float (*x) = malloc (size * sizeof x[0]);
      float (*y) = malloc (size * sizeof y[0]);
      float (*z)[size] = malloc (size * size * sizeof z[0][0]);

      // Initialisation des tableaux et de la matrice
      srand(0);
      init_array (size, x);
      init_array (size, y);
      init_matrice(size,z);

      double mesures[NB_METAS];

      // Mesure des repetitions
      for (i=0; i<NB_METAS; i++){
         for (int j = 0; j < m; j++) {
              baseline (size, x, y, z);
         }
         uint64_t t1 = rdtsc();
         baseline(size,x,y,z);
         uint64_t t2 = rdtsc();
         // Affichage des performances
	 mesures[i] = (double)(t2-t1);
         sleep(2);
	 //printf ("%d;%.2f\n",((m*repm)+i), (double)(t2 - t1));
      }
      //Sort the array in ascending order
      for (int i = 0; i < NB_METAS; i++) {
         for (int j = i+1; j < NB_METAS; j++) {
            if(mesures[i] > mesures[j]) {
                double temp = mesures[i];
                mesures[i] = mesures[j];
                mesures[j] = temp;
            }
         }
      }
      mediane[m] = mesures[15];
      // Libere l'espace memoire
      free (x);
      free (y);
      free (z);
   }

   for (int i = 0; i < repm; i++) {
       printf("%d;%.2f\n",i,mediane[i]);
   }

   return EXIT_SUCCESS;
}
