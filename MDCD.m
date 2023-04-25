function Pdelta = MDCD(inarray,alpha,beta)
%MDCD MDCD格式推进
%   此处显示详细说明
Pdelta = (2.5*alpha-15/2*beta+2/3)*[inarray(2:end),inarray(2)]+(-2.5*alpha-15/2*beta-2/3)*[inarray(end-1),inarray(1:end-1)]+(-2*alpha+3*beta-1/12)*[inarray(3:end),inarray(2:3)]+(2*alpha+3*beta+1/12)*[inarray(end-2:end-1),inarray(1:end-2)]+(0.5*alpha-0.5*beta)*[inarray(4:end),inarray(2:4)]+(-0.5*alpha-0.5*beta)*[inarray(end-3:end-1),inarray(1:end-3)]+10*beta*inarray;

end

