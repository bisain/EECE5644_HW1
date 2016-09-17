
% Author: Sabin Park
% Description: plots a graph of the likelihood ratio per HW 1, Problem
% 1.1.c

% clear out and set up
clc;
clear;
close all;

% set the axis limits
x = [-10:0.05:10];
y = [0:0.05:6];

% define the case variables
a1=0; b1=1; a2=1; b2=2;

% define the likelihood ratio
func = b2/b1*exp(-abs(x-a1)/b1+abs(x-a2)/b2);

% title the window

% plot the graph with appropriate labels
plot(x,func,'r')
grid;
title('1.1.c Likelihood Ratio');
xlabel('x','Interpreter','latex');
ylabel('$\frac{{p(x|w}_{1})}{{p(x|w}_{2})}$','Interpreter','latex');
set(0,'defaultaxesfontsize',14);
legend('show','likelihood ratio');
% set(gca,'fontsize',14);

% fplot(@(x) 2*exp(-abs(x)+abs(x-1)/2), [-10 10]), ylim([0 6])
