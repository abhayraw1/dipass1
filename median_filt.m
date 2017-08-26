function new_img = median_filt(img, kernel_s)
image_s = size(img);
padded_img = uint8(pad_img(img, kernel_s));
new_img = zeros(image_s);
del_p = floor(kernel_s/2);
for j = 1:image_s(1)
    j2 = j + 2*del_p;
    for k = 1:image_s(2)
        k2 = k + 2*del_p;
        neighbourhood = padded_img(j:j2, k:k2, :);
        new_img(j, k) = find_median(neighbourhood(:,:));            
    end
end
end