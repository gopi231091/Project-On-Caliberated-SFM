function E = eight_point_algo( x1, x2, K1, K2 )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

% homogenous
x1 = inv(K1) * [x1;ones(1,size(x1,2))];
x2 = inv(K2) * [x2;ones(1,size(x2,2))];

L =[];

for i = 1:size(x1,2)
    
    L = [L; kron(x2(:,i)',x1(:,i)')];

end

[U,D,V] = svd(L);
E = reshape(V(:,end),3,3);
end

