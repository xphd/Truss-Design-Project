% Name
% Date
% Description

clear all
close all
clc

% [filename, pathname] = uigetfile('*.csv','Select Data File');
% fullpath = [pathname filename]
% cd pathname;
fullpath = '/Users/aaron/Dropbox/Documents/BU/Classes/EK 301/Straw Lab/Spring 2013 Straw Test Data.csv';
s = importdata(fullpath,',',1);
L = 0.01*s.data(:,1);                % length (m)
L_fit = 0.01*linspace(0,18);         % range of lengths to calculate (cm)
W = 9.8*s.data(:,2)/1000;            % force (N)
app = s.data(:,3);

% plot all data
figure('WindowStyle','docked')          % make a new figure
plot(L,W,'bx','Markersize',12)          % plot all the data
fs = 16;                                % font size
set(gca,'Fontsize',fs)                  % set axes font size
xlabel('Length (cm)','FontSize',fs+2)    % axis labels
ylabel('Load (N)','FontSize',fs+2)
xlim([0.05 0.18])
ylim([0 50])
hold on

%% plot from different apparatus
symbol = {'ro','go','ko','mo','co','bo','rd','gd','kd','md','cd'};
for i = 1:11
    plot(L(app == i),W(app == i),symbol{i},'linewidth',2,'markersize',15)
    disp(['Apparatus ',num2str(i)])
    pause
end

%%
A = 0.08;                            % Lower bound
W_fit = A*L_fit.^(-2);
plot(L_fit,W_fit,'r','linewidth',2)
clc
percent_below = 100*sum(W < A*L.^(-2))/length(W)

%%
A = 0.25;                           % Upper bound
W_fit = A*L_fit.^(-2);
plot(L_fit,W_fit,'r','linewidth',2)
clc
percent_above = 100*sum(W > A*L.^(-2))/length(W)

%%
A = 0.1719;                         % best fit
W_fit = A*L_fit.^(-2);
hold on
plot(L_fit,W_fit,'color',[0 0.8 0],'linewidth',3)


%%
A = 0.3;
W_fit = A*L_fit.^(-2);
hold on
plot(L_fit,W_fit,'k--','linewidth',2)


A = 0.06;
W_fit = A*L_fit.^(-2);
hold on
plot(L_fit,W_fit,'k--','linewidth',2)   


d1 = 7.3e-3;
d2 = 7e-3;
I = (pi/64)*(d1^4-d2^4);
E = 0.8e9;
K = 1;
A = pi^2*E*I/K^2

%% Linear fit
close all
figure('WindowStyle','docked')          % make a new figure

z = L.^(-2);
L_fit = 0.01*linspace(7,18);
z_fit = L_fit.^(-2);
[P,S] = polyfit(z,W,1); 
P
[W_fit delta] = polyval(P,z_fit,S);

plot(z,W,'bo')
hold on
xlabel('1/L^2','FontSize',fs)
ylabel('Load (N)','FontSize',fs)
plot_style(gcf,0,1,0,10)
%xlim([0.003 0.02])

% 2 sigma
plot(z_fit,W_fit,'g','linewidth',2)
plot(z_fit,W_fit+2*delta,'r','linewidth',2)
plot(z_fit,W_fit-2*delta,'r','linewidth',2)


% Confidence intervals:
% http://www.mathworks.com/help/matlab/data_analysis/programmatic-fitting.html