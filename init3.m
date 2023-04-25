function initout = init3(N,m)
%INIT3 此处显示有关此函数的摘要
%   此处显示详细说明
initout = zeros(1,N);
for index = 1:m
    initout = initout+1/m*sin(2*pi*index*linspace(0,1,N));
end
end