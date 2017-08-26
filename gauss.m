function z = gauss(x, y, sigmax, sigmay, ux, uy)
z = exp(-1 * ((((x - ux)^2)/ 2 * sigmax) + (((y - uy)^2)/2 * sigmay)));
z = z/(2 * pi * sigmax *sigmay);
end
