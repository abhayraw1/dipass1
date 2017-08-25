function y = findinv(q,g)
temp(:,1) = transpose([0:255]);
temp(:,2) = transpose(g);
temp(:,3) = abs(transpose(g) - q);
z = sortrows(temp, 3);
y = z(1,2);
end
