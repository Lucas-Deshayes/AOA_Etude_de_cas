Pour compiler la version originale : `make sujet2 OPT=NOOPT`
Pour compiler la première version optimisée : `make sujet2 OPT=OPT1`
Pour compiler la seconde version optimisée : `make sujet2 OPT=OPT2`

Pour exécuter avec une taille 300, 100 répétitions de warmup (lors de la première méta) et 30 répétitions de mesure : `./sgemm 300 100 30`

Pour exécuter avec MAQAO :
```
maqao oneview --create-report=one binary=sgemm run_command="<binary> 300 100 30"
```

----
# Makefile
* `make sujet2`
    compile avec "gcc -O0" et cree un executable sujet2
* `make`
    cree tous les executables dans un dossier exe (make gcc + make icc)
* `make gcc`
    cree tous les executables compiles avec gcc dans un dossier exe
* `make icc`
    cree tous les executables compiles avec icc dans un dossier exe
* `make maqao`
    cree tous les maqao selon les variables TABMAQAO - WARMUPMAQAO - REPMAQAO (make maqao_gcc + make maqao_icc)
* `make maqao_gcc`
    cree tous les maqao dont les exécutables ont été compiles avec selon les variables TABMAQAO - WARMUPMAQAO - REPMAQAO
* `make maqao_icc`
    cree tous les maqao dont les exécutables ont été compiles selon les variables TABMAQAO - WARMUPMAQAO - REPMAQAO
* `make clean` 
    supprime les exécutables du dossier exe, "sujet2" et tous les différents fichiers ".o" crées

###########

* DRIVER: le nom du driver peut être changé avec cette variable (défaut: "driver" => le fichier "driver.c")
* OPT: la version du kernel à utiliser (défaut: NOOPT => Cf fichier "kernel.c")
* CACHE: nom du cache utilise en cours
* TABMAQAO: taille de nos tableaux (n)
* WARMUPMAQAO: taille de nos warmups
* REPMAQAO: taille de nos repetitions

###########

exemple d'éxecution de gcc o2 sans opti:
```
$ make gcc_o2
$ ./exe/gcc_o2
```
exemple d'éxecution de icc ofast opti:
```
$ make icc_of_opti
$ ./exe/icc_of_opti
```

###########

exemple d'analyse maqao de gcc -o2 sans opti avec OPT4:
```
$ make maqao_o2 OPT=OPT4
```

exemple d'éxecution maqao de icc -o3 sans opti avec OPT2:
```
$ make maqao_icc_o3 OPT=OPT2
```

###########

## warning: avant de make avec "_para", il faut indiquer OPT=PARA et mettre OMP_NUM_THREADS à 4:
```
$ make clean
$ export OMP_NUM_THREADS=4
$ make maqao_o2_para OPT=PARA
```
rappel: tous les make maqao_* utilisent les variables maqao au debut du makefile