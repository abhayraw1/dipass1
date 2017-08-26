img =imread('Assign1_imgs/portraits2.jpg');
kernel_s = [3 5 8];

subplot(3,4,1)
imshow(img)
title('Original')
for i = 1:numel(kernel_s)
    kernel = gaussian_filter(kernel_s(i), 0.2,0.2);
    blur_img = imfilter(img, kernel);
    subplot(3,4, 4*i-2)
    imshow(blur_img)
    edge_map = img - blur_img;
    subplot(3,4, 4*i-1)
    imshow(edge_map)
    new_img = img + blur_img;
    subplot(3,4,4*i)
    imshow(new_img)    
end
