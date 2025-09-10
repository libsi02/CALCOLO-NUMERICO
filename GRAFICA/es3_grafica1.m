clear
clc

t = linspace(0,2*pi,361)
x = 3 + 6*cos(t);
y = 8 + 6*sin(t); %circonferenza di raggio 6 centrata in (3,8)

plot(x,y)
grid on
axis equal

xlabel('Ascisse')
ylabel('Coordinate')

