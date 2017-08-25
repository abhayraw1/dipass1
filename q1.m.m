
image = rgb2gray(imread('Assign1_imgs/hist_equal.jpg'));
size(image)
image2 = rgb2gray(imread('Assign1_imgs/hist_equal2.jpg'));
[count1, x] = imhist(image);
[count2, y] = imhist(image2);
tr = round((cumsum(count1)/sum(count1)) * 255);
gr = round((cumsum(count2)/sum(count2)) * 255);
image_size = size(image)
op = zeros(image_size(1),image_size(2));

invt = ones(256) * (-1);

for i = 1:image_size(1)
    for j = 1:image_size(2)
        x = image(i,j);
        if invt(x+1) == -1
            invt(x+1) = findinv(x+1, tr, gr);
        end
        op(i,j) = invt(x);
    end
end

