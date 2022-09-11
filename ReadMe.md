# Reverse Correlation Project
## Generating stimuli
The code enables a creation of noised images which are used for psychological and neurophysiological research.

### How to run ```generating_stimuli.R``` Script

1. Install the relevant packages - "virdisLite" and "rcicr"

2. Call the libraries- 'virdisLite', 'virdis', 'rcicr'.

3. In order to create the pictures with the noise on them, Two constants are avalible, these should be changed depending on tour experiment needs:
    - Number of trials - number of trails to conduct.
    Remember that each trial outputs 2 pictures, so if the number of trials is set to 100, you will get 200 images in total.
    - Base image - the image you want to add noise on. This parameter should include the path of the image. image size should be exactly 512X512 pixels.

4. Run ```generateStimuli2IFC``` function with the relevant arguments. This function will create a new folder in your workspace called 'stimuli'- inside it, you can find all the noised images and R file that will be used in the analysis step. 

## Classification Images
The code enables analysis of the experiment results. 
The code based on the file which created in generating the stimulus and additional file which includes the experiment results. 

The code includes 2 types of analysis:
1. Analysis by subject - computing a classification image for each participant, using ```batchGenerateCI2IFC``` function.
2. Analysis by group - computing a single classification image where the data of all participants is lumped together, using ```generateCI2IFC``` function.

## How to run ```classification_images.R``` Script

1. Call the libraries- 'virdisLite', 'virdis', 'rcicr'.

2. The relevant arguments for the analysis are:
    - rdata - Path of the R file which created during stimulus generation.
    - responsedata - csv file which contains the results of the experiment (the answers of all participants)

3. For the subject analysis run ```batchGenerateCI2IFC``` function.

4. For the group analysis run ```generateCI2IFC``` function.

The functions will create a new folder called 'cis' that includes the classification images. 






