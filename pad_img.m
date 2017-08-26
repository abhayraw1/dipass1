function z =  pad_img(x, sy)
s_original = size(x);
t = floor(sy/2);
s = s_original + [2*t, 2*t];
z = zeros(s);
z(t+1:s_original(1)+t, t+1:s_original(2)+t,:)= x(:,:,:);
end


