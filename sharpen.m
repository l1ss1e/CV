pic=imread('C:\Users\Liza\Pictures\wow.jpg');
red_ch_pic=pic(:,:,1);
a=pic(:,:,2);
b=pic(:,:,3);
imshow(a);
figure;

imshow(b);
figure;

imshow(red_ch_pic);
%figure;
img=im2double(red_ch_pic);
S=[-1 -1 -1; -1 9 -1; -1 -1 -1];
new=conv2(img, S);
newest=imresize(new, 10);
imshow(newest);