clear
clc
%Grafico A
x = linspace(0,1,101)

f1 =@(x) ((1-x./24) ./ (1+(x./24) + (x.^2/384))).^8
figure;
hold on;
plot(x, f1(x));
xlabel('Ascisse')
ylabel('Coordinate')
grid on

%Grafico B
y1 = linspace(-2,0,101)
y2 = linspace(0,2,101)
fy1 = (2-y1.^2/2).^2
fy2 = (y2.^2/2 + 2).^2
figure;
hold on;
plot(y1, fy1, y2, fy2)
xlabel('Ascisse')
ylabel('Coordinate')
grid on
legend('ramo 1', 'ramo 2')

%Grafico C
g1 = linspace(-pi,0,101)
g2 = linspace(0,pi,101)
fg1 = exp(-g1.^2)
fg2 = cos(g2)
figure;
hold on;
plot(g1, fg1, g2, fg2)
xlabel('Ascisse')
ylabel('Coordinate')
grid on
legend('ramo 1', 'ramo 2')

