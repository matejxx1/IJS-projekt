%1
adjacency=zeros(size(indikatorji,1));
for i=1:size(indi,1)
adjacency(indi(i),:)=povprecje(i,:).*povprecje1(i,:);
end



1
cause=indiPoverty;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Poverty");
graph2svg(G,indikatorji,cause,i,"Poverty");
end
%2
2
cause=indiHunger;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Hunger");
graph2svg(G,indikatorji,cause,i,"Hunger");
end

%3
3
cause=indiHealth;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Health");
graph2svg(G,indikatorji,cause,i,"Health");
end

%4
4
cause=indiEducation;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Education");
graph2svg(G,indikatorji,cause,i,"Education");
end
%5
5
cause=indiEquality;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Equality");
graph2svg(G,indikatorji,cause,i,"Equality");
end
%6
6
cause=indiWater;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Water");
graph2svg(G,indikatorji,cause,i,"Water");
end
%7
7
cause=indiEnergy;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Energy");
graph2svg(G,indikatorji,cause,i,"Energy");
end
%8
8
cause=indiGrowth;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Growth");
graph2svg(G,indikatorji,cause,i,"Growth");
end
%9
9
cause=indiIndustry;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Industry");
graph2svg(G,indikatorji,cause,i,"Industry");
end
%10
10
cause=indiInequality;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Inequality");
graph2svg(G,indikatorji,cause,i,"Inequality");
end
%11
11
cause=indiSustainability;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Sustainability");
graph2svg(G,indikatorji,cause,i,"Sustainability");
end
%12
12
cause=indiProduction;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Production");
graph2svg(G,indikatorji,cause,i,"Production");
end
%13
13
cause=indiUnderwater;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Underwater");
graph2svg(G,indikatorji,cause,i,"Underwater");
end
%14
14
cause=indiAbovewater;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Abovewater");
graph2svg(G,indikatorji,cause,i,"Abovewater");
end
%15
15
cause=indiPeace;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Peace");
graph2svg(G,indikatorji,cause,i,"Peace");
end
%16
16
cause=indiPartnership;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Partnership");
graph2svg(G,indikatorji,cause,i,"Partnership");
end
%17
17
cause=indiClimate;
for i=1:size(cause,1)  
G=matrix2ingraph(adjacency,indikatorji,cause(i));
matrix2bar(adjacency,indikatorji,cause(i),"Climate");
graph2svg(G,indikatorji,cause,i,"Climate");
end
%18
