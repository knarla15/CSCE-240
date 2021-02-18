% Kundana Narla
% Math 344L, Lab 4
% forward.m

% same format for function as the given format for backward function in the lab sheet: function x = backward4(A,b
function x = forward(A,b)
      % need to make a variable n to represent the size of a random matrix
      n = size(A,1);
      % in lab sheet, given x = zeros(4,1), replace 4 with n because we are now trying to perfrom forward substitution on 
      % a matrix of size n
      x = zeros(n,1);
      
      % given x(4) = b(4)/A(4,4) in the lab sheet, this was given for the backward function, which is why it started at the 
      % end of the matrix, or 4. Forwards would be doing the opposite, starting from the beginning, so you would start with x(1), 
      % replace all the 4's with 1's
      x(1) = b(1)/A(1,1);
      
      % given for i = 3:-1:1 in the lab sheet for backward, because we are going forward, we already found x(1) in the line above,
      % therefore we would start the for loop from 2
      % and then we would travel from the beginning of the for loop to the nth index
      for i = 2:1:n
              % given x(3) = (b(3) - A(3,4:4)*x(4:4))/A(3,3)
              % similar to explanations given in the backward.m file, replace all 3s with i
              % replace all of the 4's with i-1 because we are doing the opposite of the backwards function
              % in which we replaced 4 with i+1
              x(i) = (b(i) - A(i,1:i-1)*x(1:i-1))/A(i,i);
      end
end

       
