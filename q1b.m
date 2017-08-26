img = rgb2gray(imread('Assign1_imgs/hist_equal2.jpg'));
image_size = size(img);
op = img;
boundary_side = 200;
for i = 1: 20: image_size(1) - boundary_side
	for j = 20: 1: image_size(2) - boundary_side
        
		sub_image = img(i:i+boundary_side, j:j+boundary_side);
		[count1, x] = imhist(sub_image);
		tr = cumsum(count1);
		tr = (tr/sum(count1)) * 255;
		tr = round(tr);
		for k = i:i+boundary_side - 1 
			for l = j:j+boundary_side - 1
				x = img(k,l);
				op(k,l) = tr(x+1);
			end
		end
	end
end

subplot(1,2,1)
imshow(img)
title('Original Image')

subplot(1,2,2)
imshow(uint8(op))
title('Final Image')
