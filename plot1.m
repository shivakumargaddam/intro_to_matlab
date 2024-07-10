clear all
close all
clc

xvalues = -5:0.01:5;

figure('Name',"polynomial");
plot(xvalues,poly1(xvalues),'DisplayName','poly1');

grid off;
box on;
axis on;
xlabel x-axis
ylabel y-axis
set(gca,'FontSize',12)
set(gca, 'color', 'none');                                  % To remove background
set(gcf,'units','pixels','position',[300 300 550 500]);     % To change the size of the figure


hold on
plot(xvalues,poly2(xvalues),'DisplayName','poly2');
legend

function [y] = poly1(x)
y = 2.*x.^2 + 3.*x + 4;
end

function [y] = poly2(x)
y = 2.*x.^2 - 3.*x + 4;
end