function dx = fuc2(~,x)
dx = zeros(5,1);
global m k A w F l M
%% Defining of States
% x(1) = x;
% x(2) = x_dot;
% x(3) = theta;
% x(4) = theta_dot;
% x(5) = t;
%% Force
F = A*sin(w*x(5));
%% State Space Equations
dx(1) = x(2);
dx(2) = ((m * l * sin(x(3))) * x(4) ^ 2 - k * x(1) - (m * sin(x(3)) * cos(x(3))) * x(2) * x(4) + F) / (M + m - m * (cos(x(3)))^2);
dx(3) = x(4);
dx(4) = ((m * l * sin(x(3))) * cos(x(3)) * x(4) ^ 2 - k * x(1) * cos(x(3)) - (M + m) * (sin(x(3))) * x(2) * x(4) + F * cos(x(3))) / (m * l * (cos(x(3))) ^ 2 - (M + m) * l);
dx(5) = 1;
end