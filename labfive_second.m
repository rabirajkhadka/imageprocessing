%Title: To study Image Enhancement with Specification
%Author:Saurav Shrestha
%Date:June 20, 2017
%--------------------------------------------------------------------------
% Three Critical Statements
%--------------------------------------------------------------------------
close all;
clear variables;
clc;
%--------------------------------------------------------------------------
%Two image Read
%--------------------------------------------------------------------------
myimage = imread('D:\pictures\koshi tappu\20161016_140957.jpg');
reference = imread('D:\pictures\koshi tappu\20161016_140923.jpg');
%--------------------------------------------------------------------------
%Source Image Channel Decomposition
%--------------------------------------------------------------------------
myimage_R=myimage(:,:,1);
myimage_G=myimage(:,:,2);
myimage_B=myimage(:,:,3);
%--------------------------------------------------------------------------
%Reference Image Channel Decomposition
%--------------------------------------------------------------------------
reference_R=reference(:,:,1);
reference_G=reference(:,:,2);
reference_B=reference(:,:,3);
%--------------------------------------------------------------------------
%Histogram Source Image Decomposed Channel
%--------------------------------------------------------------------------
hist_myimage_R=imhist(myimage_R);
hist_myimage_G=imhist(myimage_G);
hist_myimage_B=imhist(myimage_B);
%--------------------------------------------------------------------------
%Histogram Reference Image Decomposed Channel
%--------------------------------------------------------------------------
hist_reference_R=imhist(reference_R);
hist_reference_G=imhist(reference_G);
hist_reference_B=imhist(reference_B);
%--------------------------------------------------------------------------
%Histogram Equalization Reference Image Decomposed Channel
%--------------------------------------------------------------------------
outr =histeq(myimage_R,hist_reference_R);
outg=histeq(myimage_G,hist_reference_G);
outb=histeq(myimage_B,hist_reference_B);
%--------------------------------------------------------------------------
%Histogram Specification for output 
%--------------------------------------------------------------------------
histsp(:,:,1)=outr;
histsp(:,:,2)=outg;
histsp(:,:,3)=outb;
%--------------------------------------------------------------------------
%output  
%--------------------------------------------------------------------------
figure;
subplot(1,3,1);
imshow(myimage);
title('Original Image');
subplot(1,3,2);
imshow(reference);
title('Reference image');
subplot(1,3,3);
imshow(histsp);
title('Output Image');


figure;
subplot(3,3,1);
plot(hist_myimage_R);
title('Red Input');
subplot(3,3,2);
plot(hist_myimage_G);
title('Green Input');
subplot(3,3,3);
plot(hist_myimage_B);
title('Blue Input');
subplot(3,3,4);
plot(hist_reference_R);
title('Red Reference');
subplot(3,3,5);
plot(hist_reference_G);
title('Green Reference');
subplot(3,3,6);
plot(hist_reference_B);
title('Blue Reference');
subplot(3,3,7);
plot(imhist(outr));
title('output R');
subplot(3,3,8);
plot(imhist(outg));
title('output G');
subplot(3,3,9);
plot(imhist(outb));
title('output B');
