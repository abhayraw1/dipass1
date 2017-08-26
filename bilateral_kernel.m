function z = bilateral_kernel(s,window, sigmas, sigmar)
z = window(:,:);
u2 = sum(window(:))/(s*s);
u = floor((s-1)/2) + 1;
for i = 1:s
    for j = 1:s
        z(i, j) = gauss(i, j, sigmas, sigmas, u, u);
        z(i, j) = z(i,j) * gauss(window(i,j), window(u,u), sigmar, sigmar, u2, u2);
    end
end
z = z/sum(z(:));
end