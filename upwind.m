function Pdelta = upwind(inarray,jieshu)
%upwind 迎风格式格式推进
%   此处显示详细说明
if jieshu == 1
    Pdelta = inarray-[inarray(end-1),inarray(1:end-1)];
else 
    if jieshu ==2
        Pdelta = 0.5*(3*inarray-4*[inarray(end-1),inarray(1:end-1)]+[inarray(end-2:end-1),inarray(1:end-2)]);
    else
        if jieshu == 3
            Pdelta = 1/6*(2*[inarray(2:end),inarray(2)]+3*inarray-6*[inarray(end-1),inarray(1:end-1)]+[inarray(end-2:end-1),inarray(1:end-2)]);
        end
    end
end
end

