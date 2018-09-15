img=imread('C:\Users\Liza\Desktop\bestie.png');
grimg=rgb2gray(img); 

B=fspecial('Gaussian',5,5);
dgrimg=im2double(grimg);

new=conv2(dgrimg, B);

imshow(grimg);
figure;
imshow(new);