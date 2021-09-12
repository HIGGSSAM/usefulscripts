# usefulscripts

A collection of useful Bash scripts. 

[Full list of Bash commands.](https://ss64.com/bash/)

[List of useful Slurm commands.](https://bookstack.surrey.ac.uk/books/high-performance-computing-%28hpc%29/page/useful-slurm-commands)

## g16_linda.sub

An example submission file for a gaussian/16-avx-linda jobs.

For information on Linda usage for Gaussian16 jobs please see the links bellow: 


- [Gaussian 16 Rev. C.01 Release Notes](https://gaussian.com/relnotes/)

- [Gaussian 16 linda manual](https://gaussian.com/g16/lindamanual.pdf.gz)

(correct as of 12/09/2021)

**USAGE**
* Slurm Job parameters can be specified by changing the #SBATCH commands.
* Change the JobFile variable to the desired input file name.  

```shell
sbatch g16_linda.sub
```

## g16_parallel.sub

More example submission files can be found at:
[Gaussian16 example files](https://gitlab.eps.surrey.ac.uk/rcs/eureka-examples/-/tree/master/gaussian/gaussian16)

An example submission file for a gaussian/16-avx job.

**USAGE**
* Slurm Job parameters can be specified by changing the #SBATCH commands.
* Change the input and output file names to the desired filename.

```shell
sbatch g16_parallel.sub
```

## venv.sh

