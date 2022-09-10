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
cis <- batchGenerateCI2IFC(responsedata, 'subject', 'stimulus', 'response', baseimage, rdata)

# anti classification images (CIs) by subject
anti_cis <- batchGenerateCI2IFC(responsedata, 'subject', 'stimulus', 'response', baseimage, rdata, antiCI = TRUE, label='anti')

# Batch generate classification images by trait
groupcis <- batchGenerateCI2IFC(responsedata, 'trait', 'stimulus', 'response', baseimage, rdata)

# anti classification images (CIs) by trait
anti_groupcis <- batchGenerateCI2IFC(responsedata, 'trait', 'stimulus', 'response', baseimage, rdata, antiCI = TRUE, label='anti')
