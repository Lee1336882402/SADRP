function initout = init4(N)
%INIT4 此处显示有关此函数的摘要
%   此处显示详细说明
initout = ones(1,N);
epsilon = 0.1;
for index = 1:64
    initout = initout+epsilon*sqrt((index/12)^4*exp(-2*(index/12)^2))*sin(2*pi*index*(linspace(0,1,N)+rand));
end
end