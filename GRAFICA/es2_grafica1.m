clear
clc

%Sei grafici in uno
for m=1:6
   x = linspace(-m,0,50)
   y = linspace(0,m,50)

   fx = (m-x.^2/m).^m
   fy = (y.^2/m +m).^m

   semilogy(x,fx)
   hold on;
   semilogy(y,fy)
   grid on
   xlabel('Ascisse')
   ylabel('Coordinate')
 end



 %Sei grafici separati
 for m=1:6
   x = linspace(-m,0,50)
   y = linspace(0,m,50)

   fx = (m-x.^2/m).^m
   fy = (y.^2/m +m).^m

   subplot(2,3,m)
   plot(x,fx)
   hold on;
   plot(y,fy)
   grid on
   xlabel('Ascisse')
   ylabel('Coordinate')
 end







