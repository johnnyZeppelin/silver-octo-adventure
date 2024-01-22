# silver-octo-adventure

### About Error Map

- [An Effective Foveated 360° Image Assessment Based on Graph Convolution Network](https://ieeexplore.ieee.org/abstract/document/9878309)

## Install

- pip install Pillow == 6.2.0
- pip install opencv_python == 4.1.0.25
- pip install scipy == 1.2.1
- pip install torch == 1.1.0 torchvision == 0.3.0
- "Edition may not be that important. It seems work as long as the modules above existing. "

## Prepare Data

- Download from google drive [[database]](https://drive.google.com/drive/folders/1dmJ8QwNekwM6QNYBg8LvZYW2k9SWRUpL?usp=sharing): 
    - "This includes a database helping understand how an error map works. "
- Datasets are put in the folder ./Databases where we can find CVIQ and OIQA databases.
- OIQA is not in images form instead it is in .pkl form considering of the 60 GB size of it in images form.

## Training and testing

- cd FoVGCN
- CUDA_LAUNCH_BLOCKING=1 python 'main_multicases.py' --save test

## Viewports

- In some cases obtaining viewports of an image is necessary, so two ways of getting viewports are saved in the folder
  ./Viewports.
  
- Both ways are run in matlab and call for reading in the images. Given that the OIQA data are not provided in images
  form, the CVIQ may be more accessible to get viewports now. 
  
