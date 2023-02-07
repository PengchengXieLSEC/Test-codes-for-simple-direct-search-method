% Test codes for simple direct search method
% Copyright: Pengcheng Xie
% xpc@lsec.cc.ac.cn

function [f, center, flag] = subsearch(f, c, alpha, center, func, stragety, level)
    flag = true;
    global NF;
    global points;
    global sucpoints;
    for i = 1:2 * length(center)
        center0 = center;
        [dim, val] = stragety(i, length(center));
        center0(dim) = center0(dim) + val * alpha;
        points(NF,:)=center0(:);
        f0 = func(center0);
        NF=NF+1;

        if (f0 < f - c * alpha * alpha)
            center = center0;
            f = func(center);
            if (level)
                disp(['current center:', mat2str(center)])
                disp(['function value: ', num2str(f)])
                alpha
            end
            return
        end
    end
    flag = false;
end
