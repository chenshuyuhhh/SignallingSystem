img0=imread('image1.bmp');
img=rgb2gray(img0);
img=double(img);
f=fft2(img);        %傅里叶变换
f=fftshift(f);      %使图像对称
r=real(f);          %图像频域实部
i=imag(f);          %图像频域虚部
margin=log(abs(f));      %图像幅度谱，加log便于显示
phase=log(angle(f)*180/pi);     %图像相位谱
l=log(f);           
subplot(2,2,1),imshow(img0),title('源图像');
subplot(2,2,2),imshow(l,[]),title('图像频谱');
subplot(2,2,3),imshow(margin,[]),title('图像幅度谱');
subplot(2,2,4),imshow(phase,[]),title('图像相位谱');
