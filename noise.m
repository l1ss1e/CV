im=imread('C:\Users\Liza\Desktop\bestie.png');
img=rgb2gray(im);
noise=randn(size(img)).*60;
new=img + noise;
imshow(new);
