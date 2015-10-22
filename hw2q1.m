% Andrew Milich 
% 10/9/15
% Math 51M: Homework 2

%%%%%%%%%%%%%%
% Question 1 %
%%%%%%%%%%%%%%

% Algorithm for matrix multiplication using only multiplication by
% scalars.%

function product = hw2q1(A, B)
[m1,n1] = size(A); 
[m2,n2] = size(B);
base_matrix = zeros(m1, n2); 
for i = 1:m1
    for j = 1:n2 
        for k = 1:m2 
            base_matrix(i,j) = base_matrix(i,j) + A(i,k)*B(k,j); 
        end
    end
end
product = base_matrix;
end