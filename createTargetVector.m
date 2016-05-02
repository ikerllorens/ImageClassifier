function [targets] = createTargetVector(input_samples_per_class, classes)

diagonal = ones(1, classes);
diag_mat = diag(diagonal);

%Para MATLAB >= 2015 descomentar esta linea
%targets = repelem(diag_mat, input_samples_per_class);

%Para MATLAB <= 2015 comentar esta linea
targets = reshape(repmat(reshape(diag_mat',[],1),1,input_samples_per_class)',[],size(diag_mat,1))';

end