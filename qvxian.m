syms alpha beta;
%alpha = 1/30;
%beta = 0;
k = linspace(0,pi);
subplot(1,2,1);
plot(k,k,'DisplayName','exact');
hold on;
subplot(1,2,2);
plot(k,zeros(1,100),'DisplayName','exact');
hold on;
for i = 1:5
    alpha = 1/30+(i-3)*1/60;
    beta = (i-3)*1/30;
    Re = alpha*sin(3*k)-(4*alpha+1/6)*sin(2*k)+(5*alpha+4/3)*sin(k);
    Im = beta*cos(3*k)-6*beta*cos(2*k)+15*beta*cos(k)-10*beta;
    subplot(1,2,1);
    plot(k,Re,'DisplayName',sprintf('alpha = %0.3e',alpha));
    subplot(1,2,2);
    plot(k,Im,'DisplayName',sprintf('beta = %0.3e',beta))

end
subplot(1,2,1);
legend;
title('色散曲线');
subplot(1,2,2);
legend;
title('耗散曲线');
