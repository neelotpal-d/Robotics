function t=expon(omega,theta)

%This function gives the matrix exponential $e^{[w](\theta)}$ where [w] is a
%skew symmetric form for a rotation or a screw axis.
%Usage:
%  expon(omega,theta)
%       omega: vectorised form of roatation/screw axis
%       theta: angle in radians
% Alternative: use the inbuilt function <a href="matlab:help expm">expm</a>

    if length(omega)==3
        w=vect2skew(omega);
        t=eye(3)+sin(theta)*w+(1-cos(theta))*w*w; %could use expm instead
    elseif length(omega)==6
        w=omega(1:3);
        v=omega(4:6);
        W=vect2skew(w);
        g=(eye(3)*theta+(1-cos(theta))*W+(theta-sin(theta))*W*W)*v; %could use expm instead
        t=[expon(w,theta) g;0 1];
    end
end