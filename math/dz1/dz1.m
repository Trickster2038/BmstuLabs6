A1 = [
31.2000       -1.3200        -7.6800         4.0900;
7.2300      -126.0000         7.1400         3.0400;
9.4900         6.4000         6.0000         8.4500;
2.6800        -3.2900         0.2800        13.4000
];

F1 = [-83.3200;    38.9000;    -56.7000;    -504.0900];

D1 = [10; 1; 30; -40];

A2 = [
16.3820        -2.0490       -41.8290        16.3920;    
307.6480       -38.4660      -840.3660       312.5280;      
0.4560        -0.0570        -1.1770         0.4560;      
23.2720        -2.9090       -66.3090        23.8720     
];

F2 = [33.6130; 710.3420; 0.9490; 57.6730];

D2 = [2; 60; -1; 5];

function G = Gauss(A,F)
    [imax, jmax] = size(A);               
      AF = [A F];
      % Приведение матрицы к треугольной методом Гаусса AF = rref([AF])
            for j = 1:jmax
                  AF(j, :) = AF(j, :) / AF(j, j); % Нормализация
                  for i = [1:j-1 j+1:imax]
                        AF(i, :) = AF(i, :)- (AF(j, :) * AF(i, j));
                  end
            end
      disp('Решение СЛАУ методом Гаусса:')
      X = AF(:, 5:1:end);
      disp(X);
      G = X;
end

function [G] = Gauss2(A)
    N = size(A, 1);
    E = eye(N);
    G = Gauss(A, E);
end

% =====================================================

disp('Решение СЛАУ 1 реализованным методом:');
X1 = Gauss(A1,F1);
disp('Решение СЛАУ 2 реализованным методом:');
X2 = Gauss(A2,F2);     
   
disp(' ');
disp('Решение СЛАУ 1 встроенным методом:');
X11 = A1 \ F1    ;                               
disp(X11);
disp('Решение СЛАУ 2 встроенным методом:');
X22 = A2 \ F2    ;                               
disp(X22);
 
disp(' ');
R1 = F1 - A1*X1;
disp('Невязка первого решения: ');
disp(R1);
R2 = F2 - A2*X2;
disp('Невязка второго решения: ');
disp(R2);

disp(' ')
disp('Нормы невязки для СЛАУ 1:');
norm1_1 = norm(R1, 1)                    
norm1_inf = norm(R1', inf)
disp(' ');
disp('Нормы невязки для СЛАУ 2:');
norm2_1 = norm(R2, 1)                           
norm2_inf = norm(R2, inf)  
disp(' ')

disp('Абсолютные и относительные погрешности решений СЛАУ 1')
abs_norm1_1 =  norm(D1-X1,1) %Абсолютная погрешность по единочной норме
abs_norm1_inf = norm(D1-X1,inf) %Абсолютная погрешность по бесконечной норме
 
delta_norm1_1 =  norm(D1-X1,1)/norm(D1,1) %Относительная погрешность по единочной норме
delta_norm1_inf = norm(D1-X1,inf)/norm(D1,inf) %Относительная погрешность по бесконечной норме

disp(' ')
disp('Абсолютные и относительные погрешности решений СЛАУ 2')
abs_norm2_1 =  norm(D2-X2,1) %Абсолютная погрешность по единочной норме
abs_norm2_inf = norm(D2-X2,inf) %Абсолютная погрешность по бесконечной норме
 
delta_norm2_1 =  norm(D2-X2,1)/norm(D2,1) %Относительная погрешность по единочной норме
delta_norm2_inf = norm(D2-X2,inf)/norm(D2,inf) %Относительная погрешность по бесконечной норме
 
format bank

disp(' ')
disp('A1^-1: ');
A1_1 = Gauss2(A1);

disp('A1^-1 * A1:');
disp(A1*A1_1);
 
disp(' ')
disp('A2^-1: ');
A2_1 = Gauss2(A2);
disp('A2^-1 * A2:');
disp(A2*A2_1);

format short
 
disp(' ')
disp('Числа обусловленности СЛАУ 1:');
cond1_1 = cond(A1,1);
fprintf('Число обусловленности, с помощью единичной нормы: %6.3f \n',cond1_1);
cond1_inf = cond(A1,inf);
fprintf('Число обусловленности, с помощью бесконечной нормы: %6.3f \n',cond1_inf);

disp(' ')
fprintf('Числа обусловленности СЛАУ 2: \n');
cond2_1 = cond(A2, 1)   ;                        
fprintf('Число обусловленности, с помощью единичной нормы: %6.3f \n',cond2_1);
cond2_inf = cond(A2, inf);
fprintf('Число обусловленности, с помощью бесконечной нормы: %6.3f \n',cond2_inf);
 

