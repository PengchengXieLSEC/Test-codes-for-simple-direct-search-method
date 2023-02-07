% Test codes for simple direct search method
% Copyright: Pengcheng Xie
% xpc@lsec.cc.ac.cn

function search(c, alpha, func, center, criter, stragety, level)
    n = 1;
    f = func(center);
    if (level)
        disp(['current center:', mat2str(center)])
        disp(['function value: ', num2str(f)])
    end
    alpha0 = alpha;
    while (criter(n, f, center))
        flag = false;
        alpha = alpha0;
        while (~flag)
            [f, center, flag] = subsearch(f, c, alpha, center, func, stragety, level);
            alpha = alpha / 2;
        end
        n = n + 1;
    end
end
