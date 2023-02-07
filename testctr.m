% Test codes for simple direct search method
% Copyright: Pengcheng Xie
% xpc@lsec.cc.ac.cn

function [res] = testctr(n, tsd)
    res = true;
    if (n > tsd)
        res = false;
    end
end
