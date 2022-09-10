# Reverse Correlation Project
## Generating stimuli
This code enables a creation of noised images which are used for psychological and neurophysiological research.

## How to run ```generating_stimuli.R``` File

1. Install the relevant packages - "virdisLite" and "rcicr"

2. Call the libraries- 'virdisLite', 'virdis', 'rcicr'.

3. In order to create the pictures with the noise on it, you should define two parameters, depends on your experiment:
    1. Number of trials  (remember that each trial includes 2 pictures, so if the number of trials set as '100', you will get 200 images in total).
    2. Base image - the image you want to add noise on. This parameter should include the path of that image. (remember that the size of the image should be exactly 512X512 pixels).

4. Run ```generateStimuli2IFC``` function with the relevant arguments. This function will create a new file in your project file called 'stimuli'- there you can find all the noised images and R file that will be used in the analysis step. 

## Classification Images
This code enables analysis of the experiment results. 
The code based on the file which created in generating the stimulus and additional file which includes the experiment results. 

The code includes 2 types of analysis:
1. Analysis by subject - computing a classification imae for each participant, using ```batchGenerateCI2IFC``` function.
2. Analysis by group - computing a single classification image where the data of all participants is lumped together, using ```generateCI2IFC``` function.

## How to run ```classification_images.R``` File

1. Call the libraries- 'virdisLite', 'virdis', 'rcicr'.

2. Create three parameters:
    1. baseimage - The base image in the experiment.
    2. rdata - Name of the R file which created during stimulus generation.
    3. responsedata - File which contains the results of the experiment (the answers of all participants)

3. For the subject analysis run ```batchGenerateCI2IFC``` function.

4. For the group analysis run ```generateCI2IFC``` function.

These functions created a new file called 'cis' that includes the classification images. 






