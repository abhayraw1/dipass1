image = rgb2gray(imread('Assign1_imgs/portraits.jpg'));
image2 = rgb2gray(imread('Assign1_imgs/portraits2.jpg'));
[count1, x] = imhist(image);
[count2, y] = imhist(image2);
image_size = size(image)
tr = cumsum(count1);
tr = (tr/sum(count1)) * 255;
tr = round(tr);
gr = cumsum(count2);
gr = (gr/sum(count2)) * 255;
gr = round(gr);
op = zeros(image_size(1),image_size(2));
op1 = zeros(image_size(1),image_size(2));
invt = ones(1,256) * (-1);

for i = 1:image_size(1)
    for j = 1:image_size(2)
        x = image(i,j);
        op1(i,j) = tr(x+1);
        if invt(x+1) == -1
            invt(x+1) = findinv(tr(x+1), gr);
        end
        op(i,j) = invt(x+1);
    end
end
subplot(2,2,1)
imshow(image(150:350, 700:1000))
title('image1')

subplot(2,2,2)
imshow(image2)
title('image2')

subplot(2,2,3)
imshow(uint8(op1(150:350, 700:1000)))
title('hist eq')

subplot(2,2,4)
imshow(uint8(op(150:350, 700:1000)))
title('hist maching')

