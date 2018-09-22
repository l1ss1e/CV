%this is quiz task to the 2nd lesson of Basics of CV course on Udacity, 16 point.
%so here the task is to smoothe the picture with Gaussian noise

hsize=31;
sigma=5;
pkg load image;
h=fspecial('gaussian', hsize, sigma);%we have created the kernel(?) with sigma=5 and size 31

%lets draw it

%surf(h);%it draws a graph
%figure;
%im=imagesc(h);%it shows an image
%outim=imfilter(im, h);
%imshow(outim);

%%%noising
img=imread('C:\Users\Liza\Desktop\bestie.png');
filter_size=100;
filter_sigma=100;
noise=randn(size(img)).*filter_sigma;
noisy_img= noise + img;
%imshow(noisy_img);

%%%removing with gaussian filter(smoothing)
sm_size=10;
sm_sigma=2;
A=fspecial('gaussian', sm_size, sm_sigma);
smoothed=imfilter(noisy_img, A);
imshow(smoothed);
