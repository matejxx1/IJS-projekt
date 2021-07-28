function povprecje = povprecje(cell,cause,effect,lags)

povprecje=zeros(size(cause,1),size(effect,1));
for k=1:size(lags,2)
    lag=cell{k};
    lag(isnan(lag))=-1;
    povprecje=povprecje+lag;
end

povprecje=povprecje/4;
end

