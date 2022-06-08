# Basic harp scripts

This folder contains a set of basic harp scripts to carry out
a deterministic or ensemble point verification.


## pre_processing
Scripts to create the sqlite files. Currently only vobs and vfld files, but contributions for other input formats are welcome.
- vfld2sql.R: convert vfld files to sqlite
- vobs2sql.R: convert vobs files to sqlite

## verification
Scripts to do the verification

- `point_verif.R`: do a simple deterministic (ensemble) verification and produce rds files with the scores, which could be visualized with shiny or used to make plots (see below)
- `point_verif_local.R`: produce a whole set of plots for the most common scores found in monitor

## visualization
Scripts to make plots

## config_files
Example config files
