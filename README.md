# harpUserScripts
Repository for harp users to share scripts

## How to contribute
- Fork this repository
- Clone the forked repository to your local system
- Add a directory with a descriptive name - you will make all of your changes in this directory
- Under your new directory\:
  - Make a README.md file briefly describing what is in the directory and the intended use case 
  - Make a directory called "R" and add your R scripts there, e.g. R/harpFun.R
  - Make a directory called "man" and add documenation for each script using markdown, e.g. man/harpFun.md
  - For other languages create directories:

  <br>
  
  |Directory|Language|
  |---|---|
  |py|Python|
  |c|C|
  |cpp|C++|
  |fortran|FORTRAN|
  |scr|shell scripts|
  
- Commit changes to your local repository and push to your fork on github
- From your fork on github, click on Contribute > Open Pull Request and follow the instructions

## Useful reading
[Happy Git With R](https://happygitwithr.com)


## harp standare verification set
as a start:
As a starting point, chose Carlos' UWC scripts for runnung harp.

Set up working environment:
Copy input data to a convenient location

Input: 
vobs, vfld, grib (FA)  converted into sqlite
blacklisting of stations
quality control based on preset tolerances for obs-fc (harp function)

Features (available in Monitor):
ok means available in the UWC-script

Deterministic (for arbitrary station lists):
scores as function of lead time, ok
scores at stations as maps, ok,  may be issues inside harp det_verify.R (Nina)
scatter plots
scores as functions of valid time, also variables
scores and variables as function of height(presure) (and time?)
daily variation of variables
scores as functio of thresholds, ok 

Spatial verification:
SAL, FSS

Ensembles: keep as is for the time being

Spatial verification:
Degree of agreement, FSS

Tasks:
make available the UWC scripts
Carlos, James

input from grib-files:
Florian

scores as function of lead time, vertical coordinate
Carl

scatter plots

daily variation


spatial verification:
Daniel, Alex, Ahto, Fabiola

code review
Nina, Gema


documentation:
everybody to provide documentation for their respective documentation



