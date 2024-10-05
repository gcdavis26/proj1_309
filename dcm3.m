function [dcm] = dcm3(angle)
dcm = [cos(angle),sin(angle),0
    -sin(angle),cos(angle),0
    0,0,1];
end