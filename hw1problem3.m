%
clc;
clear;
close all;
%

% part a
mu=cell(2,1);
mu{1}=[0,0];
mu{2}=[3,3]; 
sigma=cell(2,1);
sigma{1}=eye(2);
sigma{2}=eye(2);
nSamples = 400; 
prior=[.5,.5]';

[data, class] = generateGaussianSamples(mu, sigma, nSamples, prior);
gscatter(data(:,1),data(:,2),class(:,1),['r','b'],['x','o'])
grid on

% % plot 1-200
% subplot(2,1);
% scatter(data(1,nSamples*prior(1)),data(1,nSamples*prior(1)));
% hold on
% % plot 201-400
% subplot(2,2);
% scatter(data(nSamples*prior(1):nSamples*prior(1)+nSamples*prior(2)),...
%     data(nSamples*prior(1):nSamples*prior(1)+nSamples*prior(2)));
% hold off
        
% part b
% nSamples = 400; 
% mu{1}=[0,0]; sigma{1}=[3 1; 1 0.8];
% mu{2}=[3,3]; sigma{2}=[3 1; 1 0.8];
% prior1=0.5;
% prior2=(1-prior1);

% part c
% nSamples = 400; 
% mu{1}=[0,0]; sigma{1}=[2 0.5; 0.5 1];
% mu{2}=[2,2]; sigma{2}=[2 -1.9; -1.9 5];
% prior1=0.5;
% prior2=(1-prior1);

% part d
% nSamples = 400; 
% mu{1}=[0,0]; sigma{1}=eye;
% mu{2}=[3,3]; sigma{2}=eye;
% prior1=0.05;
% prior2=(1-prior1);

% part e
% nSamples = 400; 
% mu{1}=[0 0]; sigma{1}=[3 1; 1 0.8];
% mu{2}=[3 3]; sigma{2}=[3 1; 1 0.8];
% prior1=0.05;
% prior2=(1-prior1);

% part f
% nSamples = 400; 
% mu{1}=[0 0]; sigma{1}=[2 0.5; 0.5 1];
% mu{2}=[2 2]; sigma{2}=[2 -1.9; -1.9 5];
% prior1=0.05;
% prior2=(1-prior1);

% [data1, class1] = generateGaussianSamples(mu{1}, sigma{1}, nSamples, prior);
% plot(data1(:,1),data1(:,2),'bO');
% hold;
% 
% 
% [data2, class2] = generateGaussianSamples(mu{2}, sigma{2}, nSamples, prior);
% plot(data2(:,1),data2(:,2),'rX');
% 
% grid on;

% part b