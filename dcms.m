function [dcm1] = dcm1axis(angle1)

end

function [dcm2] = dcm2axis(angle2)
dcm2 = [cos(angle2),0,-1*sin(angle2)
    0,1,0
    sin(angle2),0,cos(angle2)]
end

function [dcm3] = dcm3axis(angle3)
dcm3 = [cos(angle3),sin(angle3),0
    -1*sin(angle3), cos(angle3), 0
    0 , 0 1]
end