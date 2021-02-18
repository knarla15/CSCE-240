% Kundana Narla
% Math 344L, Lab 4
% mySolve.m
% basically using backward.m and forward.m functions in one file

%declaring the function
function x = mySolve(A,b) % solve function
    if (size(A,1) == size(A,2)       
        [L,U] = MYLU(A); //lu
        y = forward(L,b);
    if (size(A,1) == size(b,1))
        x = backward(U,y);
        end 
    end
end
