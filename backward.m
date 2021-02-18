% Kundana Narla
% Math 344L, Lab 4
% backward.m
function x = backward(A,b)
    % have to have variable n that specifies the size of the matrix, since we're going from solving a 4X4 to an nxn
    n = size(A,1);
    % same as x = zeros(4,1), taken from the lab 4 file, replaced 4 with n, since we don't know what size the matrices are
    x = zeros(n,1);
    % same as x(4) = b(4)/A(4,4), taken from the lab sheet, replaced all of the 4's with n's,
    % since we don't know what size the matrices are
    x(n) = b(n)/A(n,n);
    % same as for i = 3:-1:1, taken from the lab sheet, except we replace 3 with n, since we calculated from the nth index minus 1
    for i= n-1:-1:1
        % given on lab sheet: x(3) = (b(3) - A(3,4:4)*x(4:4))/A(3,3)
        % replace: x(3) with x(i), replace: b(3) with b(i)
        % replace: all 3's with i, because 3 represents the last index in an matrix of size 4, so in an n size matrix
        % "i" would represent the last index in an array
        % replace all 4's with i+1 because 4 represents the last index of matrix of size 4 + 1, so in a matrix of n size,
        % that would be i + 1, with i representing the current matrix
        % replace x(4:4) is going through the i +1 index of a matrix of size 4 so you would replace that with
        % with x(i+1:n), which is going to the last index of a matrix of size n, plus 1
        % replace A(3,3) with A(i,i), self explanatory
        x(i) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i);
    end
end
