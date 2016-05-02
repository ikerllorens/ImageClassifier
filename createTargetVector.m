function [targets] = createTargetVector(input_samples_per_class, classes)

diagonal = ones(1, classes);
diag_mat = diag(diagonal);
targets = repeatelem(diag_mat, input_samples_per_class);

end