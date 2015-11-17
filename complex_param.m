% Julia set 

c = -0.52+0.57i;
z0 = 0; 
zs = [z0]; 
N = 25; 

for i = 1:N 
    zs(end+1) = zs(end)^2 + c; 
end

plot(real(zs), imag(zs), 'o--')
figure 
plot(1:N+1, real(zs), 'r', 1:N+1, imag(zs), 'b')

% plot(x, G_r, 'b', x, G_i, 'r'); 