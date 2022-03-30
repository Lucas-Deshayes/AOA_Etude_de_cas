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

void swap(double* xp, double* yp)
{
    double temp = *xp;
    *xp = *yp;
    *yp = temp;
}
 
// Function to perform Selection Sort
void selectionSort(double arr[], int n)
{
    int i, j, min_idx;
 
    // One by one move boundary of unsorted subarray
    for (i = 0; i < n - 1; i++) {
 
        // Find the minimum element in unsorted array
        min_idx = i;
        for (j = i + 1; j < n; j++)
            if (arr[j] < arr[min_idx])
                min_idx = j;
 
        // Swap the found minimum element
        // with the first element
        swap(&arr[min_idx], &arr[i]);
    }
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

   //Matrice de double61
   double val[repm][NB_METAS];

   double mediane[repm];

   for (m = 0; m < NB_METAS; m++)
   {
         // Allocation pour les 2 tableaux et la matrice
         float (*x) = malloc (size * sizeof x[0]);
         float (*y) = malloc (size * sizeof y[0]);
         float (*z)[size] = malloc (size * size * sizeof z[0][0]);

         // Initialisation des tableaux et de la matrice
         srand(0);
         init_array (size, x);
         init_array (size, y);
         init_matrice(size,z);

         // Mesure des repetitions
         for (i=0; i<repm; i++){
            uint64_t t1 = rdtsc();
	    baseline (size, x, y, z);
            uint64_t t2 = rdtsc();

            val[i][m] = (double)(t2 -t1);

            // Affichage des performances
            //printf ("%.2f\n",(double)(t2 - t1));
         }
         sleep(2);
         // Libere l'espace memoire
         free (x);
         free (y);
         free (z);
   }
   for (int i = 0; i < repm; i++)
   {
      selectionSort(val[i], NB_METAS);
      mediane[i] = val[i][15];
      printf("%.2f\n",mediane[i]);
   }
   return EXIT_SUCCESS;
}



