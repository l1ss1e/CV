pkg load image;
im=imread('C:\Users\Liza\Desktop\bestie.png');
img=rgb2gray(im);
new = imnoise(img, 'salt & pepper', 0.02);
%median filter only for one color images
med = medfilt2(new);
imshow(med);
