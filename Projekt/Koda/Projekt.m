 %Importamo data set pri tem izpustimo prvo vrstico
ds=WDIData;
ds=ds(2:end,:);
%Ustvarimo 3D matriko kjer prva so komponente (drzava, cas vrsta,
%indikator)
[drzave,indikatorji,matrika]=dataSetToMatrix(ds);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Naredimo celico vplivov za vsak lag posebiza npr. Slovenijo

%Izberemo število lagov ki jih želimo
lags=[1 2 3 4];

%Izberimo test (ali "chi-square" ali "F"
test="chi-square";

%izberimo interval zaupanja
alpha=0.05;


%Izberimo katero drzavo iz tabele "drzave" (id Slovenije je 216)
idDrzave=216;

%izklopimo warning da gre hitreje
warning("off","all")

%Od tu naprej, gledam samo idkatorje, ki imajo v svojem dataset-u vsaj 20
%ne NaN vrednosti.

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



%naredimo celico size(lags) matrik kjer vsaka matrika predstavlja izide GC za določen lag. 
%Traja zelo dolgo bolj priporočjivo je da naložiš datoteko s podatki, ki
%je bila že poračunana (Podatki20.mat)



[pValueUruguay,kavzalostUruguay]=vplivi(matrika,cause,effect,idDrzave,lags,alpha,test);

%PovprecjeKavzalnosti vrne size(indikatorji)^2 matriko kjer je (i,j)=1 samo
%če je bil GC test pozitiven za vse lag-e, drugače (i,j)=0

povprecje=povprecjeKavzalnosti(kavzalost1,cause,effect,lags);
povprecje(povprecje<1)=0;

povprecje1=povprecjeKavzalnosti(pValue,cause,effect,lags);

%Za vsak indikator, ki ga testiramo naredimo usmerjen graf, kjer je matrika
%sosedov enaka "povprecje". Grafi se tudi shranijo v trenutno datoteko.


for i=1:size(cause,1)  
G=matrix2outgraph(adjacency,indikatorji,i);
graph2svg(G,indikatorji,indi,i,"Grafi");
end

%Naredimo txt datoteko v trenutni mapi kjer izpisemo vse granger
%kavzalnosti
matrix2txt(povprecje,indikatorji,cause,effect,1);




