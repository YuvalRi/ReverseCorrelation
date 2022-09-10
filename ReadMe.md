# Reverse Correlation Project
## Generating stimuli
This code enables a creation of noised images which are used for psychological and neurophysiological research.

## How to run ```generating_stimuli.R``` File

1. Install the relevant packages - "virdisLite" and "rcicr"

2. Call the libraries- 'virdisLite', 'virdis', 'rcicr'.

3. In order to create the pictures with the noise on it, you should define two parameters, depends on your experiment:
    1. Number of trials  (remember that each trial includes 2 pictures, so if the number of trials set as '100', you will get 200 images in total).
    2. Base image - the image you want to add noise on. This parameter should include the path of that image. (remember that the size of the image should be exactly 512X512 pixels).

## Classification Images
This code enables analysis of the experiment results. 
The code based on the file which created in generating the stimulus and additional file which includes the experiment results. 

The code includes 2 types of analysis:
1. Analysis by subject - computing a classification imae for each participant, using ```batchGenerateCI2IFC``` function.
2. Analysis by group - computing a single classification image where the data of all participants is lumped together, using ```generateCI2IFC``` function.

