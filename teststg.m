% Test codes for simple direct search method
% Copyright: Pengcheng Xie
% xpc@lsec.cc.ac.cn

function [dim, alp] = teststg(idx, len)
    alp = 1;
    if (idx > len)
        alp = -1;
    end
    dim = idx;
    if (idx > len)
        dim = idx - len;
    end
end
