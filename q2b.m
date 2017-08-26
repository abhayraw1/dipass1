img =imread('Assign1_imgs/Einstein.jpg');
h = ones(10);
kernel_s = [3,5,8];
image_s = size(img);
subplot(2,2,1)
imshow(img)
title('Original')
for i = 1:numel(kernel_s)
    if numel(image_s)==3
        a = zeros(image_s);
        for j=1:image_s(3)
            a(:,:,j) = median_filt(img(:,:,j), kernel_s(i));
        end
    else
        a = median_filt(img, kernel_s(i));
    end
    subplot(2,2,i+1);
    imshow(uint8(a(:,:,:)));
    title(strcat('kernel size: ', num2str(kernel_s(i))));
end