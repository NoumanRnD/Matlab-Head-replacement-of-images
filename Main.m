clc;
clear all;
FDetect = vision.CascadeObjectDetector;
I = imread('a.png');
I2 = imread('b.jpg');
AA = step(FDetect,I2);
BB = step(FDetect,I);
figure,
imshow(I); hold on


for i = 1:size(BB,1)
     rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
     cutImg =  imcrop(I, BB(i,:));
   
 
end
for i2 = 1:size(AA,1)
    rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
     cutImg2 =  imcrop(I2, AA(i2,:));
   
   
end

h = subimage(70,30,cutImg2); 
 
title('Face Cropped');
hold off;

