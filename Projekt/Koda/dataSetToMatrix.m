function [drzave,indikatorji,matrika] = dataSetToMatrix(ds)
% dataSetToMatrix Function takes a data set from https://data.worldbank.org/ and returns a 3D matrix where the first componets is
% the country, the second is the time series and the last one is the
% indicator.
%
% Inputs:
%
%   ds : data set from https://data.worldbank.org/
%
% Outputs:
%
%   drzave : array of the countries in the data set ( Used to reference the countries later on)
%
%   indikators : array of the indcators in the data set ( Used to reference the indikators later on)

%Dobimo vse drzave iz ds urejene leksikografsko
drzave=unique(ds(:,1));

%Dobimo vse indikatorje iz ds urejene leksikografsko
indikatorji=unique(ds(:,3));

%ds uredimo najprej po indikatorjih nato po državah
ds=sortrows(ds,[3 1]);

%Pripravimo matriko 
matrika=NaN(size(drzave,1),61,size(indikatorji,1));

%Iz ds vnesemo vrednosti v matriko
for i=1:size(indikatorji,1)
    matrika(:,:,i)=ds{(i-1)*size(drzave,1)+1:i*size(drzave,1),5:65};
    
end

end

