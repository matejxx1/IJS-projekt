function [celicaP,celicaVplivov] = vplivi(matrika,cause,effect,idDrzave,lags,alpha,test)
%vplivi.m returns a matrix or a cell of matrices (if size(lags)>1) where
%for a given country the (i,j)-th component is the granger causallity of
%the i-th indicator to the j-th indicator.
%
% Inputs:
%
%   matrika : 3D matrix given by the function dataSetToMatrix.m
%
%
%   cause : array of indicator ids given by the function dataSetToMatrix.m
%   used for testing wheter the cause granger causes the effect.
%
%
%   effect : array of indicator ids given by the function dataSetToMatrix.m
%   used for testing wheter the cause granger causes the effect.
%
%
%   idDrzave : id of the country in dataSetToMatrix.m that we are
%   interested in.
%
%   lags : number of lags for the granger causallity function
%
%
%   alpha : the maximum value for which we accept the H_0 hypothesis that i-th indicator granger causes the j-th indicator
%
%
%   test : either the "F" test or the "chi-square" test for the granger
%   causallity function
%
% Outputs:
%
%   celicaVplivov : cell of matrices where each matrix represents the granger causallity for the desired lag. The values in the matrix mean
%   the following.
%
%   NaN : if there is not enough information given or Granger Causally
%   cannot be computed.
%
%   1 : if the i-th indicator granger causes the j-th indicator
%
%   0 : if the i-th indicator does not granger cause the j-th indicator 
%


%Pripravimo output
celicaVplivov={};
celicaP={};
for i=1:size(lags,2)
    celicaVplivov{i}=NaN(size(cause,1),size(effect,1));
    celicaP{i}=NaN(size(cause,1),size(effect,1));
    
end


L=size(effect,1)
M=size(cause,1)

%Za vsak izbrani lag naredimo matriko kavzalnosti
tic
 parfor k=1:size(lags,2)
    warning('off', 'all')
    lag=celicaVplivov{k};
    lag1=celicaP{k};
    
    for i=1:M
       warning('off', 'all')

       
       
        prva_sprem=diff(matrika(idDrzave,:,cause(i)))';
        
        k
        i
        for j=1:L
         
            
            if effect(j)==cause(i)
                continue
            else
                try
                   

                        druga_sprem=diff(matrika(idDrzave,:,effect(j)))';
                        [h,p]=gctest(prva_sprem,druga_sprem,"NumLags",lags(k),"Test",test,"Alpha",alpha);
                        lag(i,j)=h;
                        lag1(i,j)=p;
                      
                     
                catch
                    %sem gre error
                end
            end
        end
       
    end
     celicaVplivov{k}=lag;
     celicaP{k}=lag1;
  
 end
 toc   
    
end













