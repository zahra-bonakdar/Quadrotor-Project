clc; clear all; close all
global m k A w F l M
%% Paramter
m = 1;
k = 2;
M = 2;
l = 1;
w = sqrt(1);
A = 0;
%% Initial Condition
x_0 = [0.05 0 pi/12 0 0];
%% simulation
[t,x] = ode45(@fuc2, 0:0.01:20, x_0);
subplot(6,1,1), plot(t,x(:,1))
xlabel('Time (s)'); ylabel('Position (m)')
grid on
grid minor
subplot(6,1,2), plot(t,x(:,2),'r')
xlabel('Time (s)');ylabel('Velocity (m/s)');
grid on
grid minor
subplot(6,1,3), plot(t,((m .* l .* sin(x(:,3))) .* x(:,4) .^ 2 - k .* x(:,1) - (m .* sin(x(:,3)) .* cos(x(:,3))) .* x(:,2) .* x(:,4) + F) / (M + m - m .* (cos(x(:,3))).^2),'r')
xlabel('Time (s)'); ylabel('Acciliration (m/s^2)');
grid on
grid minor
subplot(6,1,4), plot(t,x(:,3))
xlabel('Time (s)'); ylabel('Position (rad)')
grid on
grid minor
subplot(6,1,5), plot(t,x(:,4),'r')
xlabel('Time (s)');ylabel('Velocity (rad/s)');
grid on
grid minor
subplot(6,1,6), plot(t,((m .* l .* sin(x(:,3))) .* cos(x(:,3)) .* x(:,4) .^ 2 - k .* x(:,1) .* cos(x(:,3)) - (M + m) * (sin(x(:,3))) .* x(:,2) .* x(:,4) + F .* cos(x(:,3))) / (m .* l .* (cos(x(:,3))) .^ 2 - (M + m) * l),'r')
xlabel('Time (s)'); ylabel('Acciliration (rad/s^2)');
grid on
grid minor