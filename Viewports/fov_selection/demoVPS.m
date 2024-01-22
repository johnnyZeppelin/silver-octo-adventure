clear all;
clc;

% img_path=['..\..\..\images\',imgdistt];
img_path='..\CVIQ\';
    
n=int16(0);
while n<544
    imgnum=num2str(n + 1);
    if n < 9
        imgnum=['00',imgnum];
    elseif n < 99
        imgnum=['0',imgnum];
    end
    
    %img_name=imgnum;
    sav_path = ['.\vpSets\', imgnum, '\'];
    mkdir(sav_path);
    
    img_xtsn='.png';
    
    img_dis_rgb=imread([img_path,imgnum,img_xtsn]);
    [phi, theta]=select_points(img_dis_rgb);
    spoint_radian = [phi' theta'];
    img_dis_rgb=imresize(img_dis_rgb,[512 1024]);
    im2fov(img_dis_rgb,spoint_radian,[sav_path,imgnum]);
    
    n=n+1;
end
