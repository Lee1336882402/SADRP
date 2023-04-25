function Pdelta = DRP_M(inarray)
%DRP_M DRP_M格式推进
%   此处显示详细说明
Pdelta = 0.770882380518*([inarray(2:end),inarray(2)]-[inarray(end-1),inarray(1:end-1)])-0.166705904415*([inarray(3:end),inarray(2:3)]-[inarray(end-2:end-1),inarray(1:end-2)])+0.020843142770*([inarray(4:end),inarray(2:4)]-[inarray(end-3:end-1),inarray(1:end-3)]);

end

