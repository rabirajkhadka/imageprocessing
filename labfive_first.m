%Title: To study Image Enhancement with contrast streching, Histogram Equalization
%and Specification
%Author:Saurav Shrestha
%Date:June 20, 2017
%--------------------------------------------------------------------------
% Three Critical Statements
%--------------------------------------------------------------------------
close all;
clear variables;
clc;
%--------------------------------------------------------------------------
%Read an Image
%--------------------------------------------------------------------------
myimage = imread('C:\Users\hp\Pictures\Camera Roll\WIN_20170526_073554.JPG');
myimage=rgb2gray(myimage);
img_lowcontrast=imadjust(myimage,[0.0,1.0],[0.3,0.6]); %contrast streching 
img_equalization = histeq(myimage);
subplot(2,3,1);
imshow(myimage);
title('Original');
subplot(2,3,4);
imhist(myimage);
title('original histogram');
subplot(2,3,2);
imshow(img_lowcontrast);
title('lowcontrast image');
subplot(2,3,5);
imhist(img_lowcontrast);
title('lowcontrast histogram');
subplot(2,3,3);
imshow(img_equalization);
title('Equalized Image');
subplot(2,3,6);
imhist(img_equalization);
title('Equalized histogram');