clear
syms alpha;
syms k v;
Re = exp(-v*k)*(alpha*sin(3*k)-(4*alpha+1/6)*sin(2*k)+(5*alpha+4/3)*sin(k)-k)^2;
q =int(Re,k,0,pi);
myfun = subs(q,v,9);
myfun = @(alpha) myfun;
fminsearch(myfun,1/30);
