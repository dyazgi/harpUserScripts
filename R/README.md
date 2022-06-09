# Basic harp scripts

This folder contains a set of basic harp scripts to carry out
a deterministic or ensemble point verification.


## pre_processing
Scripts to create the sqlite files. Currently only vobs and vfld files, but contributions for other input formats are welcome.
- `vfld2sql.R`: convert vfld files to sqlite
- `vobs2sql.R`: convert vobs files to sqlite

## verification
Scripts to do the verification

- `point_verif.R`: Wrapper to produce the point verification scores and save them in rds files.
- `point_verif_local.R`: As above but with additional groupings in the verification scores. This script also calls fn_plot_point_verif.R in order to produce png files for a standard set of point verification scores, and fn_plot_aux_scores.R to compute and plot some additional scores. 
- `create_scorecards.R`: Wrapper to create the scorecards.
- `fn_scorecard.R`: Function to calculate the scorecards.

## visualization
Scripts to make plots

- `plot_from_rds.R`: Takes an rds file and produces some png files using harp's plot_point_verif.
- `fn_plot_point_verif.R`: Takes an rds file or harp verification object and produces a suite of pngs for standard point verification scores which are available in the rds file/harp object. Uses ggplot for the majority of cases, with harp's plot_point_verif for specific EPS scores.
- `fn_plot_aux_scores.R`: Takes harp forecast object and computes/plots daily variation, forecast timeseries, frequency distribution, and scatterplots (al just using ggplot).
- `fn_plot_helpers.R`: Some useful functions used in the png plotting.

## config_files
Example config files

## sample_data
Added 2 days of sample data (vfld,vobs)

# Package dependencies
The following packages are used here
- harp
- purrr
- argparse
- yaml
- shiny
- lubridate
- tidyverse (note that parts of this package are included in harp, but not all!)
- ggsci
- pracma

## harp versions
The scripts have been tested with these versions of harp

- harp_0.0.0.9034 
- harpPoint_0.0.0.9105  
- harpIO_0.0.0.9186     
- harpSpatial_0.0.1.9003 
- harpVis_0.0.0.9070    

A forked version of harp based on these versions can be [found here](https://github.com/carlos9917/harp-20220607)

