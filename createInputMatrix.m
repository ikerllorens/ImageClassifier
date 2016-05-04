function [ input_matrix, minimum_length ] = createInputMatrix( varargin )

argC = length(varargin);
minimum_length = 10000000000000000;
input_matrix = [];
if argC <= 0
    
else
    % Averiguar el menor arreglo de los inputs para truncar la matriz
    for i = 1:argC
        if length(varargin{i}) < minimum_length
            minimum_length = length(varargin{i}(1,:));
        end
    end
    
    %Truncar las matrices al tama?o obtenido arriba y concatenarlas
    for i = 1:argC
        varargin{i} = varargin{i}(1:length(varargin{i}(:,1)), 1:minimum_length);
        input_matrix = horzcat(input_matrix, varargin{i});
    end
end
end

