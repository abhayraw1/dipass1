function h = gaussian_filter(x, sigmax, sigmay)
ux = (x+1)/2;
uy = ux;
h = zeros(x);
for i = 1:x
    for j = 1:x
        h(i,j) = gauss(i, j, sigmax, sigmay, ux, uy);
    end
end
h = h/sum(h(:));
end





