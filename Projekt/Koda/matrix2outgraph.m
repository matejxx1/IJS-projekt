function G = matrix2outgraph(adjacency,indikatorji,i)


A=table2array(indikatorji);


G=digraph(adjacency,A','omitselfloops'); 

D = indegree(G);
P= outdegree(G);
index = find((D == 0)&(P==0));
try
if size(i)==1
    if (index(i)==1)&&(i~=1)
        index=index(1:i-1,i+1:end);
    end
    if (index(1)==1)&&(i==1)
         index=index(2:end);
    end
end
catch
end
G = rmnode(G,index); 


end

