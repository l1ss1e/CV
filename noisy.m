img=imread('C:\Users\Liza\Desktop\bestie.png');
sigma=10;
noise=randn(size(img)).*sigma;
noisy=img+noise;
imshow(noisy);