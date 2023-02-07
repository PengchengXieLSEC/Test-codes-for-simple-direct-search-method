% Test codes for simple direct search method
% Copyright: Pengcheng Xie
% xpc@lsec.cc.ac.cn

function f = testfunc(x)
global NF
    f = x(1) * x(1) + x(2) * x(2) * x(2) + exp(-x(2));

end
