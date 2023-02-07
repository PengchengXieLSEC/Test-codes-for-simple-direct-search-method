% Test codes for simple direct search method
% Copyright: Pengcheng Xie
% xpc@lsec.cc.ac.cn

global NF;
global points;
global sucpoints;
points=zeros(1210,2);
sucpoints=zeros(50,2);
NF=1;
c = 0.5;
alpha = 3;
center = [1, 0];
func = @(x)(testfunc(x));
criter = @(n, ~, ~)(testctr(n, 10));
stragety = @(idx, len)(teststg(idx, len));
search(c, alpha, func, center, criter, stragety, true);
NF
points