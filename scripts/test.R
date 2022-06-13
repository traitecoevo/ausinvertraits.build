## Test - upload invert data csv
rm(list=ls())
.rs.restartR()

## Setup
# remotes::install_github("traitecoevo/austraits.build@develop")
library(austraits.build)
# devtools::load_all()

## Update build (remake.yml)
austraits.build::setup_build_process()

## Build dataset
ausinverts <- remake::make("austraits")

## Add studies..
current_study <- "Cassis_2014"
metadata_create_template(current_study)
metadata_add_traits(current_study)





