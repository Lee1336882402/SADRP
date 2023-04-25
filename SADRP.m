function Pdelta = SADRP(inarray)
%SADRP SADRP格式推进
%   此处显示详细说明
epsilon = 1e-8;
S1 = [inarray(2:end),inarray(2)]-2*inarray+[inarray(end-1),inarray(1:end-1)];
S2 = ([inarray(3:end),inarray(2:3)]-2*inarray+[inarray(end-2:end-1),inarray(1:end-2)])/4;
S3 = [inarray(3:end),inarray(2:3)]-2*[inarray(2:end),inarray(2)]+inarray;
S4 = ([inarray(4:end),inarray(2:4)]-2*[inarray(2:end),inarray(2)]+[inarray(end-1),inarray(1:end-1)])/4;
C1 = [inarray(2:end),inarray(2)]-inarray;
C2 = ([inarray(3:end),inarray(2:3)]-[inarray(end-1),inarray(1:end-1)])/3;
len = length(inarray);
k_ESW = acos(2*min([ones(1,len);(abs(abs(S1+S2)-abs(S1-S2))+abs(abs(S3+S4)-abs(S3-S4))+abs(abs(C1+C2)-abs(C1-C2)/2)+2*epsilon*ones(1,len))./(abs(S1+S2)+abs(S1-S2)+abs(S3+S4)+abs(S3-S4)+abs(C1+C2)+abs(C1-C2)+epsilon*ones(1,len))])-1);
gama_disp = zeros(1,len);
gama_diss = zeros(1,len);
for index = 1:len
    if k_ESW(index)<0.01
        gama_disp(index)=1/30;
    else
        if k_ESW(index)<2.5
            gama_disp(index)=(k_ESW(index)+sin(2*k_ESW(index))/6-4/3*sin(k_ESW(index)))/(sin(3*k_ESW(index))-4*sin(2*k_ESW(index))+5*sin(k_ESW(index)));
        else 
            gama_disp(index)=0.1985842;
        end
    end
end
for index = 1:len
    if k_ESW(index)<=1
        gama_diss(index)=0.001;
    else 
        gama_diss(index)=min([0.012,0.001+0.011*sqrt((k_ESW(index)-1)/(pi-1))]);
    end
end
f = (0.5*gama_disp+0.5*gama_diss).*[inarray(end-2:end-1),inarray(1:end-2)]+(-1.5*gama_disp-2.5*gama_diss-1/12*ones(1,len)).*[inarray(end-1),inarray(1:end-1)]+(gama_disp+5*gama_diss+7/12*ones(1,len)).*inarray+(gama_disp-5*gama_diss+7/12*ones(1,len)).*[inarray(2:end),inarray(2)]+(-1.5*gama_disp+2.5*gama_diss-1/12*ones(1,len)).*[inarray(3:end),inarray(2:3)]+(0.5*gama_disp-0.5*gama_diss).*[inarray(4:end),inarray(2:4)];
Pdelta = f-[f(end-1),f(1:end-1)];
end

