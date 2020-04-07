A=imread('image3.jpg');
subplot(3,2,1),imshow(A);
title('原图像');
A=rgb2gray(A);
B=fftshift(fft2(A));
B1=B;
E= ifft2(ifftshift(B));
subplot(3,2,2),imshow(log(abs(E)), [ ]);
title('未滤波的逆变换图像');

[m,n]=size(A);

freq=90;

for i=1:m
    for j=1:n
        temp=(i - (m - 1) / 2) ^ 2 + (j - (n - 1) / 2) ^ 2;
        if  temp < freq ^ 2
            B(i, j) = 1;

        end
    end
end


C=ifft2(ifftshift(B));
subplot(3,2,3),imshow(log(abs(B)), [ ]);title('高通1');
subplot(3,2,4),imshow(log(abs(C)), [ ]);title('高通1变换图像');

freq=10;

for i=1:m
    for j=1:n
        temp=(i - (m - 1) / 2) ^ 2 + (j - (n - 1) / 2) ^ 2;
        if  temp < freq ^ 2
            B1(i, j) = 1;

        end
    end
end

D=ifft2(ifftshift(B1));

subplot(3,2,5),imshow(log(abs(B1)), [ ]);title('高通2');

subplot(3,2,6),imshow(log(abs(D)), [ ]);title('高通2逆变换图像');