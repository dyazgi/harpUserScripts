#!/usr/bin/env Rscript
# Read vobs data and save it in sqlite format

library(harp)
library(argparse)
library(here)
library(yaml)
parser <- ArgumentParser()


parser$add_argument("-start_date", type="character",
    default="None",
    help="First date to process [default %(default)s]",
    metavar="String")

parser$add_argument("-end_date", type="character",
    default="None",
    help="Last date to process [default %(default)s]",
    metavar="String")

parser$add_argument("-config_file", type="character",
    default="config_examples/config.yml",
    help="Last date to process [default %(default)s]",
    metavar="String")

args <- parser$parse_args()
start_date <- args$start_date
end_date <- args$end_date
config_file <- args$config_file

CONFIG <- yaml.load_file(here(config_file))

# The following variables are expected to change for each user / use case
# Some defined in config file above, some command-line arguments
vobs_path   <- CONFIG$pre$vobs_path
obs_path   <- CONFIG$verif$obs_path
by_step         <- CONFIG$verif$by_step  #Read from config file
fcst_model <- CONFIG$verif$fcst_model
lead_time  <- CONFIG$verif$lead_time


cat("Collecting vobs data  from ",start_date," to ",end_date)

obs_data <- read_obs_convert(
  start_date  = start_date,
  end_date    = end_date,
  obs_path    = vobs_path,
  sqlite_path = obs_path
  )


