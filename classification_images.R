# libraries
library(viridisLite)
library(viridis)
library(rcicr)

# Creating Classification Images (CIs)

# Base image name used during stimulus generation
baseimage <- 'base'

# File containing the contrast parameters (this file was created during stimulus generation)
rdata <- 'rcicrdemo.Rdata'

# Load response data
responsedata <- read.csv('rcicrdemo.csv')

# Batch generate classification images by subject
cis <- batchGenerateCI2IFC(responsedata, by = 'subject', stimuli = 'ID', responses = 'response', baseimage, rdata)

# anti classification images (CIs) by subject
anti_cis <- batchGenerateCI2IFC(responsedata, by = 'subject', stimuli = 'ID', responses = 'response', baseimage, rdata, antiCI = TRUE, label='anti')

# Group Analysis - Classification Image
groupcis <- generateCI2IFC(stimuli = 'ID', responses = 'response', baseimage, rdata, scaling = "matched")

# Group Analysis - Anti Classification Image
anti_groupcis <- generateCI2IFC(stimuli = 'ID', responses = 'response', baseimage, rdata, scaling = "matched", antiCI = TRUE, label='anti')
