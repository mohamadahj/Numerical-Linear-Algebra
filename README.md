# Numerical-Linear-Algebra
A Givens rotation is a rotation in the plane spanned by two coordinates axes.
When a Givens rotation matrix, G(i, j, θ), multiplies another matrix, A, from the left, G A, only rows i and j of A are affected. Thus we restrict attention to the following counterclockwise problem. Given a and b, find c = cos θ and s = sin θ such that

{\displaystyle {\begin{bmatrix}c&-s\\s&c\end{bmatrix}}{\begin{bmatrix}a\\b\end{bmatrix}}={\begin{bmatrix}r\\0\end{bmatrix}},} \begin{bmatrix} c & -s \\ s & c \end{bmatrix} \begin{bmatrix} a \\ b \end{bmatrix} = \begin{bmatrix} r \\ 0 \end{bmatrix} , 
where {\displaystyle r={\sqrt {a^{2}+b^{2}}}} r = \sqrt{a^2 + b^2}  is the length of the vector {\displaystyle (a,b)}(a,b). Explicit calculation of θ is rarely necessary or desirable. Instead we directly seek c and s. An obvious solution would be

{\displaystyle {\begin{aligned}c&{}\leftarrow a/r\\s&{}\leftarrow -b/r.\end{aligned}}}\begin{align}
 c &{}\larr a / r \\
 s &{}\larr -b / r.
\end{align}[1]
However, the computation for r may overflow or underflow. An alternative formulation avoiding this problem (Golub & Van Loan 1996, §5.1.8) is implemented as the hypot function in many programming languages.
