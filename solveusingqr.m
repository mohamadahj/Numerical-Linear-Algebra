function [x] = solveusingqr(A,b)
  [m,n] = size(A);
  Q = eye(m);
  R = A;

  for j = 1:n
    for i = m:-1:(j+1)
      G = eye(m);
      [c,s] = givensrotation( R(i-1,j),R(i,j) );
      G([i-1, i],[i-1, i]) = [c -s; s c];
      R = G'*R;
      Q = Q*G;
    end
  end
disp('Q:');
disp(Q);
disp('R:');
disp(R);
x = inv(R)*Q'*b; %Rx = Q'*b
disp('x:');
disp(x);
end
