clear
clc
rng(1);
alpha_MDCD = 0.0463783;
beta_MDCD = 0.001;
total_t = 10;
CFL = 0.3;
N = 256; %domain [0,1]
delta_x = 1/(N-1);
delta_t = CFL*delta_x;
total_steps = int32(total_t/delta_t);
m = 120;
data = init3(N,m);
init_data = data;
for step = 1:total_steps
    temp_data = data;
    for index = 1:4
        temp_data = data - delta_t/(5-index)*DRP(temp_data)/delta_x;
        
    end
    data=temp_data;
end
plot(linspace(0,1,N),data,'sr','DisplayName','DRP');
exact_solution = circshift(init_data(1:end-1),int32(total_t*(N-1)));
hold on;
plot(linspace(0,1,N),[exact_solution,exact_solution(1)],'-k','LineWidth',1,'DisplayName','exact');
legend();
%save('DRP.mat','data');
Error = sqrt(sum((data(1:N-1)-init_data(1:N-1)).^2)/(N-1));
load('L2.mat')
L2(1,6) = Error;
save('L2.mat','L2')
disp(Error)