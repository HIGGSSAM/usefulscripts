# usefulscripts

Roth Group. Department of Chemistry: p.roth@surrey.ac.uk.

Author: Samuel James Higgs: s.higgs@surrey.ac.uk.

A collection of useful Bash scripts. 

- [Full list of Bash commands.](https://ss64.com/bash/)
- [List of useful Slurm commands.](https://bookstack.surrey.ac.uk/books/high-performance-computing-%28hpc%29/page/useful-slurm-commands)

## g16_array.sub

An example submission file for gaussian/16-avx array jobs.

- [Slurm array job documentation.](https://slurm.schedmd.com/job_array.html)

__USAGE__
* Required an array.txt file with a list of all the input file command lines.  
* Requires the length of the array to be specified.

```shell
# prints out the number of lines in array.txt
cat array.txt | wc -l

# saves number of lines in array.txt to length variable
length = $(cat array.txt | wc -l)

# submits a single array
sbatch --array=0-$length g16_array.sub array.txt
```

To submit two arrays one with a dependancy on the other:

```shell

# saves number of lines in array.txt to length variable
length = $(cat array.txt | wc -l)

# submits first array and save job id to job_id.txt
sbatch --array=0-"$length" g16_array.sub array.txt > job_id.txt

# saves number of lines in array2.txt to length variable
length $(cat array2.txt | wc -l)

# save dependant array job id to $dep variable
dep = $(cat job_id.txt | cut -d " " -f 4)

sbatch --array=0-"$length" --dependency=afterok:$dep g16_array.sub array2.txt

```

## g16_linda.sub

An example submission file for a gaussian/16-avx-linda jobs.

For information on Linda usage for Gaussian16 jobs please see the links bellow: 


- [Gaussian 16 Rev. C.01 Release Notes.](https://gaussian.com/relnotes/)
- [Gaussian 16 linda manual.](https://gaussian.com/g16/lindamanual.pdf.gz)

__USAGE__
* Slurm Job parameters can be specified by changing the #SBATCH commands.
* Change the $JobFile variable to the desired input file name.  

```shell
sbatch g16_linda.sub
```

## g16_parallel.sub

An example submission file for a gaussian/16-avx job.

- [More Gaussian 16 example files.](https://gitlab.eps.surrey.ac.uk/rcs/eureka-examples/-/tree/master/gaussian/gaussian16)

__USAGE__
* Slurm Job parameters can be specified by changing the #SBATCH commands.
* Change the input and output file names to the desired file name.

```shell
sbatch g16_parallel.sub
```

## venv.sh

An example bash file for creating a python virtual environment with anaconda/2019.03.

- [Using Python and R on the HPC](https://bookstack.surrey.ac.uk/books/high-performance-computing-%28hpc%29/page/using-python-and-r-on-hpc)

__USAGE__

```shell
# loads and activates python virtual environment
bash venv.sh

# deactivate environment
exit

# activating an already loaded environment 
cd ./testing_venv/bin

source activate

cd ../..
```
