function y=skew2vect(v)

%This is a function to generate the vector v from its skew symmetric form
%[v]
%Usage:
%   skew2vect([V])
%       [V]: a 3x3 skew symmetric matrix

y=[-v(2,3);v(1,3);v(2,1)];

end