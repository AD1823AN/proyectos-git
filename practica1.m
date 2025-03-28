% Resolución gráfica de un problema de optimización lineal
% Función objetivo
Z = @(A, B) 10 * A + 9 * B;
% Restricciones
R1 = @(A, B) A + 2 * B - 12;
R2 = @(A, B) 2 * A + B - 10;
% Definir rango de valores para A y B
A = linspace(0, 10, 100);
B = linspace(0, 10, 100);
% Crear una malla de puntos para evaluar la función y las restricciones
[A, B] = meshgrid(A, B);
% Calcular los valores de Z, R1 y R2 para cada punto de la malla
Z_vals = Z(A, B);
R1_vals = R1(A, B);
R2_vals = R2(A, B);
% Graficar las restricciones
figure;
contour(A, B, R1_vals, [0 0], 'LineWidth', 2);
hold on;
contour(A, B, R2_vals, [0 0], 'LineWidth', 2);
xlabel('A');
ylabel('B');
title('Restricciones');
legend('A + 2B > 12', '2A + B > 10');
grid on;
% Encontrar el máximo y mínimo de Z dentro de las restricciones
Z_vals_valid = Z_vals;
Z_vals_valid(R1_vals <= 0 | R2_vals <= 0) = NaN;
[Z_max, idx_max] = max(Z_vals_valid(:));
[Z_min, idx_min] = min(Z_vals_valid(:));
[A_max, B_max] = ind2sub(size(Z_vals_valid), idx_max);
[A_min, B_min] = ind2sub(size(Z_vals_valid), idx_min);
% Mostrar los resultados
fprintf('Máximo:\n');
fprintf('Z = %f\n', Z_max);
fprintf('A = %f\n', A(A_max, B_max));
fprintf('B = %f\n', B(A_max, B_max));
fprintf('\n');
fprintf('Mínimo:\n');
fprintf('Z = %f\n', Z_min);
fprintf('A = %f\n', A(A_min, B_min));
fprintf('B = %f\n', B(A_min, B_min));
% Graficar los puntos máximo y mínimo en la función objetivo
figure;
contour(A, B, Z_vals, 20);
hold on;
plot(A(A_max, B_max), B(A_max, B_max), 'ro', 'MarkerSize', 10, 'LineWidth', 2);
plot(A(A_min, B_min), B(A_min, B_min), 'bo', 'MarkerSize', 10, 'LineWidth', 2);
xlabel('A');
ylabel('B');
title('Función Objetivo');
legend('Z', 'Máximo', 'Mínimo');
grid on;
