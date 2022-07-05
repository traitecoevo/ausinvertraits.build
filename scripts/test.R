## Test - upload invert data csv

.rs.restartR()
rm(list=ls())


## Setup
# remotes::install_github("traitecoevo/austraits.build@develop")
library(austraits.build)

## Update build (remake.yml)
austraits.build::setup_build_process()

## Build dataset
ausinverts <- remake::make("austraits")
# Delete the cached items to rebuiuld all
# remake::make("tidy") ## delete all
# remake::delete("Cassis_2014") ## delete one study
# remake::delete("Cassis_2014_config")

# Specify an initial study
current_study <- "Cassis_2014"
metadata_create_template(current_study)
metadata_add_traits(current_study)
  ## Add traits > trait_name (as per defintions file)





