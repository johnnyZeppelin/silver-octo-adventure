clear all;
clc;

img_path='..\JPEG\';
img_name='113';
img_xtsn='.png';
sav_path='view_ports\JPEG\4\113\';

img_dis_rgb=imread([img_path,img_name,img_xtsn]);
[phi theta]=select_points(img_dis_rgb);
spoint_radian = [phi' theta'];
img_dis_rgb=imresize(img_dis_rgb,[512 1024]);
im2fov(img_dis_rgb,spoint_radian,[sav_path,img_name]);
