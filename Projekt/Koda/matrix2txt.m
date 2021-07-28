function stevilo_vplivov = matrix2txt(povprecje,kons,indikatorji,cause,effect)


fid = fopen( 'rezultati.txt', 'w' );
stevilo_vplivov=0;
for i=1:size(povprecje,1)

    for j=1:size(povprecje,2)
       if povprecje(i,j)>=kons
           pIndikator=indikatorji{cause(i),1};
           dIndikator=indikatorji{effect(j),1};
           print=strcat(pIndikator, " Granger Causes ", dIndikator, ".");
           fprintf(fid,"%s\n",print);
           stevilo_vplivov=stevilo_vplivov+1;
   
       end
    end
end
end

