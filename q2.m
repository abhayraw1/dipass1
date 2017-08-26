img =imread('Assign1_imgs/portraits2.jpg');
h = ones(10);

v = [1, 8];
subplot(1,3,1)
imshow(img(200:600, 320:960, :))
title('Original')

for i = 2:3
    h = gaussian_filter(8, v(i-1), v(i-1));
    new_img = imfilter(img, h);
    subplot(1,3,i)
    imshow(new_img(200:600, 320:960, :))
    title(strcat('sigma: ', num2str(v(i-1))));
end
