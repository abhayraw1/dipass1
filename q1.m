image = rgb2gray(imread('Assign1_imgs/hist_equal.jpg'))
image2 = rgb2gray(imread('Assign_imgs/hist_equal2.jpg'))
[count1, x] = imhist(image)
[count2, y] = imhist(image2)
tr = (cumsum(count1)/sum(count1)) * 255
sr = (cumsum(count2)/sum(count2)) * 255
image_size = size(image)
op = zeros(image_size(1:2))

for i = 1:image_size(1):
    for j = 1:image_size(2):
        op(i,j) = image(i, j)
    end
end