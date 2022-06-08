# harp installation instructions

The instructions for installing harp can be found [here](https://harphub.github.io/harp/)
and in the [2022 tutorial page](https://harphub.github.io/harp-training-2022/about.html).

## Setup your environment
As described in section 1.5 of this [tutorial](https://harphub.github.io/harp_tutorial),
it is not a bad idea to isolate your harp installation using the *renv* package. 
This might be a good idea if you want to test different versions of harp. 
The instructions should be as follows:
```
install.packages("renv")
renv::init()
renv::install("remotes")
renv::install("harphub/harp")
renv::install_github("harphub/Rgrib2")
renv::install("ncdf4")
renv::install("tidyverse")
renv::install("here")
renv::snapshot()
```

Things to note:
When using renv with an R script, add this line at the top of the script:

```
renv::load("/home/nhd/R/harpUserScripts")
```
See example in R/verification/point_verif.R

Note that by loading the renv environment and using Rscript inside it you might be missing some 
libraries that are not in the standard R base package loaded by renv.
