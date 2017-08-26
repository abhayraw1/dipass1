img = imread('Assign1_imgs/portraits2.jpg');
img_size = size(img);
kernel_s = 11;
sigmas = 6;
sigmar = 0.2;
del = floor(kernel_s/2);
new_img = double(padarray(img, [del, del]));
op = zeros(img_size);
for z = 1:img_size(3)
	for i = 1:img_size(1)
		for j = 1:img_size(2)
	        window = new_img(i:i+kernel_s-1, j:j+kernel_s-1, z);
	        b_k = bilateral_kernel(kernel_s, window, sigmas, sigmar);
	        b_k = b_k .* window;
			op(i, j, z) = sum(b_k(:));
		end
	end
end
subplot(1,2,1)
imshow(img)
subplot(1,2,2)
op = uint8(op);
imshow(op)