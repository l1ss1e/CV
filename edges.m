pkg load image;
img = imread('C:\Users\Liza\Desktop\bestie.png');

gaus_size = 21;
gaus_sigma = 3;
filter=fspecial('gaussian', gaus_size, gaus_sigma);

smoothed=imfilter(img, filter, 'replicate');
figure;
imshow(smoothed);
