img = imread('Assign1_imgs/portraits2.jpg');
img_size = size(img);
ax = 20;
ay = 30;
tx = 120;
ty = 150;

op = zeros(img_size);
for i = 1:img_size(3)
    for j = 1:img_size(1)
        for k = 1:img_size(2)
            x = j + ax * sin(2*pi*k/tx);
            y = k + ay * sin(2*pi*j/ty);
            fx = floor(x);
            fy = floor(y);
            cx = ceil(x);
            cy = ceil(y);
            if fx <= 0 ||fy <= 0
                op(j,k,i) = 0;
                continue
            end
            if cx >img_size(1) || cy >img_size(2);
                op(j,k,i) = 0;
                continue
            end
            a1 = (img(fx, fy, i)-img(cx,fy, i))*(x - fx) + img(fx, fy, i);
            a2 = (img(fx, cy, i)-img(cx,cy, i))*(x - fx) + img(fx, cy, i);
            op(j,k,i) = round((a2 - a1)*(y - fy) + a1);
        end
    end
end

imshow(uint8(op))