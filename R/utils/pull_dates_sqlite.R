#!/usr/bin/env Rscript

# Print available dates in a given sqlite file

# If you are using renv, uncomment these two lines (change path to local version)
#library(renv)
#print("Using renv. Loading environment")
#renv::load("/home/nhd/R/harpUserScripts")
library(DBI)
library(RSQLite)
library(dplyr)
library(harp)
library(argparse)

parser <- ArgumentParser()

parser$add_argument("-dbase", type="character",
    default="None",
    help="Path to the database [default %(default)s]",
    metavar="SQlite file path")

parser$add_argument("-table", type="character",
    default="FC",
    help="Table name [default %(default)s]",
    metavar="The name of the table (FC for forecast,SYNOP,TEMP for obs,etc )")

args <- parser$parse_args()
dbase <- args$dbase
table <- args$table

db <- dbConnect(SQLite(), dbase)
#to check the tables
#dbListTables(db)

#This prints an overview of the table
#tbl(db, table)
#print available dates
cat("Dates available in ",dbase,"\n")
tbl(db, table) %>% pull(fcdate) %>% unique() %>% unix2datetime()
dbDisconnect(db)
