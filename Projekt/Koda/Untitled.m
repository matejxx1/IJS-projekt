%%%%%%%%%%%%%%%%
idDrzave=256;

cause=linspace(1,1443,1443)';
effect=linspace(1,1443,1443)';
indi=[];

for i =1:size(cause,1)
    non_nan=nnz(~isnan(matrika(idDrzave,:,cause(i))));
    if non_nan>=20
        indi=[indi ;cause(i)];
    end
    
end
cause=indi;




adjacencyUruguay=zeros(size(indikatorji,1));
for i=1:size(indi,1)
adjacencyUruguay(indi(i),:)=povprecjeUruguay(i,:).*povprecjeUruguay(i,:);
end







