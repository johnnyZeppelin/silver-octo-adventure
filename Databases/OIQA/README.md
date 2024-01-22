# OIQA: Omnidirectional Image Quality Assessment database

- Huiyu Duan - Email: huiyuduan@sjtu.edu.cn

- URL: http://multimedia.sjtu.edu.cn/Data/View/968 (Not available now)

## REFERENCES

- Huiyu Duan, Guangtao Zhai , Xiongkuo Min, Yucheng Zhu, Yi Fang and 
Xiaokang Yang, "Perceptual Quality Assessment of Omnidirectional Images", 
in IEEE International Symposium on Circuits and Systems (ISCAS), 2018.

## DESCRIPTION

### 1. General info

- The OIQA consists of 16 reference images and 320 distorted images.
- For each reference image, it corresponds to 20 distorted images with JPEG, JPEG2000, noise, and blur distortions in sequence.
- Each distortion type has 5 images with degraded quality from the first to the last. 

### 2. Filenaming convention

- The file folder naming convention is as follows.

  - reference_images: the reference images.
  - distorted_images: the distorted images.
  - MOS: the MOS and MOSz of subjective quality measures.
    - row1-320: MOS or MOSz of distorted images
    - row321-336: MOS or MOSz of reference images
  - eye_tracking_data: the eye tracking data of reference images.
    - *_eye:  the eye tracking data
    - *_head: the head tracking data

## DOWNLOAD

- I am afraid that I have to provide the download address for trained OIQA in .pkl form because of the enormous size of the complete OIQA dataset of about 60 GB.
- You can download the trained model via:

  - [OIQA: baidu yun](https://pan.baidu.com/s/1kwG3tp5UOP9AeiKBaqH42g)  password：39we
