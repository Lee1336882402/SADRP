clear
clc
N = 128;
m = 20;
rng(1)
exact_data = init4(N);
load('DRP.mat');
DRP=data;
load('DRP_M.mat');
DRP_M = data;
load('MDCD.mat');
MDCD = data;
load('SA_DRP.mat');
SA_DRP = data;
X = linspace(0,1,N);
plot(X,exact_data,'-k','LineWidth',1.5,'DisplayName','exact');
hold on
plot(X,DRP,'sr','DisplayName','DRP');
plot(X,DRP_M,'vy','DisplayName','DRP-M');
plot(X,MDCD,'^g','DisplayName','MDCD');
plot(X,SA_DRP,'ob','DisplayName','SA-DRP');
%xlim([0.8,1])
%ylim([-1,0.4])
legend
title('distributions of solution at t = 1');