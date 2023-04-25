function Pdelta = DRP(inarray)
%DRP DRP格式推进
%   此处显示详细说明
Pdelta = 0.79926643*([inarray(2:end),inarray(2)]-[inarray(end-1),inarray(1:end-1)])-0.18941314*([inarray(3:end),inarray(2:3)]-[inarray(end-2:end-1),inarray(1:end-2)])+0.02651995*([inarray(4:end),inarray(2:4)]-[inarray(end-3:end-1),inarray(1:end-3)]);

end

