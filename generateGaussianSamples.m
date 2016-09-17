function [data, classIndex] = generateGaussianSamples(mu, sigma, nSamples, prior);
%
% Function to simulate data from k Gaussian densities (1 for each class) in
% d dimensions.
%
% INPUTS:
% mu       - k-by-1 cell with the class dependent d-dimensional mean vector
% sigma    - k-by-1 cell with the class dependent d-by-d covariance matrix
% nSamples - scalar indicating number of samples to be generated
% prior    - k-by-1 vector with class dependent mean
%
% OUTPUTS:
% data       - nSamples-by-d array with the simulated data distributed 
%              along the rows
% classIndex - vector of length nSamples with the class index for each 
%              datapoint

max_dim=size(mu);
k=max_dim(1);

% classIndex = zeros(1, nSamples);

for i=1:k
    % stores the nSamples of data
    r = mvnrnd(mu{i}, sigma{i}, nSamples*prior(i));
    % stores the class index
    ci(1:nSamples*prior(i))=i;
    
    if i==1
        % set the class index
        classIndex = ci;
        % associate the data with the class index (i)
        data=r;
    else
        % set the class index
        classIndex=horzcat(classIndex,ci);
        % associate the data with the class index (i)
        data=vertcat(data,r);
    end
   
end

classIndex=classIndex';
