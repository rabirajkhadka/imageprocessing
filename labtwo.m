%Title: Introduction to basic image operation using MATLAB
%Author:Rabi Raj Khadka
%---------------------------------------------------------
%Three Critical Statements 
%---------------------------------------------------------
close all;
clear variables;
clc;
%---------------------------------------------------------
%Operations: Input
%---------------------------------------------------------
kheclogo=imread('C:\Users\rabiraj\Desktop\ImageProcessingLab\img\kheclogo.jpg');
%---------------------------------------------------------
%Operations: Manipulation
%---------------------------------------------------------
%negkheclogo=255-kheclogo;
%imwrite(negkheclogo,'negativekhec.jpg');
negative_kheclogo=255-kheclogo;
grayscale_kheclogo=rgb2gray(kheclogo);
grayscale_of_negative_kheclogo=rgb2gray(negative_kheclogo);
blackandwhie_kheclogo=im2bw(kheclogo);
negative_of_blackandwhite_kheclogo=1-im2bw(kheclogo);

%---------------------------------------------------------
%Operations: Output
%---------------------------------------------------------
%Shortcuts method to display images ;) 
%imshow(kheclogo);
%imshow(255-kheclogo);
%imshow(rgb2gray(kheclogo));
%imshow(rgb2gray(negkheclogo));
%imshow(im2bw(kheclogo));
%imshow(1-im2bw(kheclogo));
%not recommended for beginners
subplot(3,2,1);
imshow(kheclogo);
title('Original Image');
subplot(3,2,2);
imshow(negative_kheclogo);
title('Negative Image');
subplot(3,2,3);
imshow(grayscale_kheclogo);
title('Grayscale Image');
subplot(3,2,4);
imshow(grayscale_of_negative_kheclogo);
title('Grayscale of Negative');
subplot(3,2,5);
imshow(blackandwhie_kheclogo);
title('B/W of Original Image');
subplot(3,2,6);
imshow(negative_of_blackandwhite_kheclogo);
title('B/W of Negative Image');
