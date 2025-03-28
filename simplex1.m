disp("Ingrese el número de ecuaciones (n):");
n = input("");

matriz = zeros(n, n+1);
literales = cell(1, n);

for i = 1:n
    disp(["Ingrese la literal de la variable ", num2str(i), ":"]);
    literales{i} = input("", 's');
end

for i = 1:n
    for j = 1:n
        disp(["Ingrese el coeficiente de la variable ", literales{j}, " de la ecuación ", num2str(i), ":"]);
        matriz(i, j) = input("");
    end
    disp(["Ingrese la constante de la ecuación ", num2str(i), ":"]);
    matriz(i, n+1) = input("");
end

disp("");

for i = 1:n
    if matriz(i, i) == 0
        disp("Error: división entre cero.");
        disp("");
    end
    
    for k = 1:n
        if k ~= i
            termino = matriz(k, i)/matriz(i, i);
            for j = 1:n+1
                matriz(k, j) = matriz(k, j) - termino*matriz(i, j);
            end
        end
    end
end

disp("Solución:");
disp("");

for i = 1:n
    termino = matriz(i, n+1)/matriz(i, i);
    disp([literales{i}, " = ", num2str(termino)]);
end
