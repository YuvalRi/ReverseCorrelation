# install packages 
install.packages("viridisLite")
install.packages("rcicr")

# libraries 
library(viridisLite)
library(viridis)
library(rcicr)

# Generating the stimuli (noised images) 
# Constants
number_of_trials <- 100           # number of trials in the experiment
base_image <- "input/mnes.jpg"    # base image path

# -------------------------------

generateStimuli2IFC(base_face_files = list('mnes' = base_image),
                    n_trials = number_of_trials
                    )


