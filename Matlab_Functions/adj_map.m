function Ad=adj_map(t)
    R=t(1:3,1:3);
    p=t(1:3,4);
    p_s=vect2skew(p);
    Ad=[R zeros(3,3);p_s*R R];
end