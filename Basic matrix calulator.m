function [a,b,c,d] = getcoeffs(x1,y1,x2,y2,x3,y3,x4,y4)
%Defining function now im going to give matrix

cord = [-2,-20,0,4,2,68,4,508];

X = [x1^3 x1^2 x1 1;
 x2^3 x2^2 x2 1;
 x3^3 x3^2 x3 1;
 x4^3 x4^2 x4 1]

Y = [y1; y2; y3; y4]; 

Allvars = X\Y ;

a = Allvars(1)
b = Allvars(2)
c = Allvars(3)
d = Allvars(4)

fig = figure; 
fig.Color = 'w';

x = linspace(x1,x4) ;
y = a*x.^3 + b*x.^2 + c.*x + d;

function_plot = subplot(1,1,1)
plot(x,y,'Color',[0.6 0 0.6],'LineWidth',2)
hold on 

plot(x1,y1,'^','MarkerEdgeColor',[0 0.75 1],'MarkerFaceColor',[0 0.75 1],'MarkerSize',10)
plot(x2,y2,'^','MarkerEdgeColor',[0 0.75 1],'MarkerFaceColor',[0 0.75 1],'MarkerSize',10)
plot(x3,y3,'^','MarkerEdgeColor',[0 0.75 1],'MarkerFaceColor',[0 0.75 1],'MarkerSize',10)
plot(x4,y4,'^','MarkerEdgeColor',[0 0.75 1],'MarkerFaceColor',[0 0.75 1],'MarkerSize',10)
%formatting
xlabel('X')
ylabel('Y')
title('Graph of function y(x)= ax^3 + bx^2 + cx + d')
grid on 
grid minor

end 
