A=imread('image3.jpg');
subplot(3,2,1),imshow(A);
title('原图像');
A=rgb2gray(A);
B=fftshift(fft2(A));
E= ifft2(ifftshift(B));
subplot(3,2,2),imshow(log(abs(E)), [ ]);
title('未滤波的逆变换图像');

[m,n]=size(A);
%m1=m/2;n1=n/2;
H1=ones(m,n);
freq=80;
%H1(m1-freq:m1+freq, n1-freq:n1+freq)=1;

for i=1:m
    for j=1:n
        temp=(i - (n - 1) / 2) ^ 2 + (j - (m - 1) / 2) ^ 2;
        if  temp >= freq ^ 2
            H1(i, j) = 0;

        end
    end
end
LOWPASS1=B.* H1;
size(LOWPASS1)

C=ifft2(ifftshift(LOWPASS1));

subplot(3,2,3),imshow(log(abs(LOWPASS1)), [ ]);
title('低通1');
subplot(3,2,4),imshow(log(abs(C)), [ ]);
title('低通1变换图像');

freq=30;
H2=ones(m,n);
%H2(m1-freq:m1+freq, n1-freq:n1+freq)=1;

for i=1:m
    for j=1:n
        temp=(i - (n - 1) / 2) ^ 2 + (j - (m - 1) / 2) ^ 2;
        if  temp >= freq ^ 2
            H2(i, j) = 0;

        end
    end
end

LOWPASS2=B.* H2;
D=ifft2(ifftshift(LOWPASS2));
subplot(3,2,5),imshow(log(abs(LOWPASS2)), [ ]);title('低通2');
subplot(3,2,6),imshow(log(abs(D)), [ ]);title('低通2逆变换图像');