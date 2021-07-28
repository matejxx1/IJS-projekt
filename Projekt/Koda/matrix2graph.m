function G = matrix2graph(povprecje,indikatorji,indi,i)

adjacency=zeros(size(indikatorji,1));
povprecje(povprecje<1)=0;
adjacency(indi(i),:)=povprecje(i,:);

A=table2array(indikatorji);


G=digraph(adjacency,A','omitselfloops'); 

D = indegree(G);
P= outdegree(G);
index = find((D == 0)&(P==0));
if size(i)==1
    if (index(i)==1)&&(i~=1)
        index=index(1:i-1,i+1:end);
    end
    if (index(1)==1)&&(i==1)
         index=index(2:end);
    end
end
G = rmnode(G,index); 


end

