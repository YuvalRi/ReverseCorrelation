# Reverse Correlation Project
## Generating stimuli
This code enables a creation of noised images which are used for psychological and neurophysiological research.

## How to run ```generating_stimuli.R``` File

1. Install the relevant packages - "virdisLite" and "rcicr"

2. Call the libraries- 'virdisLite', 'virdis', 'rcicr'.

3. In order to create the pictures with the noise on it, you should define two parameters, depends on your experiment:
    1. Number of trials  (remember that each trial includes 2 pictures, so if the number of trials set as '100', you will get 200 images in total).
    2. Base image - the image you want to add noise on. This parameter should include the path of that image. (remember that the size of the image should be exactly 512X512 pixels).

