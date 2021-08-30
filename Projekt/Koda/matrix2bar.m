function a = matrix2bar(adjacency,indikatorji,i,filename)
a=NaN;

temp=adjacency(:,i);
temp=1.-temp;
[B,I] = sort(temp,"ascend");
idy = find(B==1, 1, 'first');

fig=figure("Visible","off");
set(fig, 'Position', get(0, 'Screensize'));


X=[B(1:idy-1)];
barh(X);
yticks(1:idy-1);
yticklabels(indikatorji{I(1:idy-1),1})
xlim([0.95 1]);
xlabel("p-Value");
title(indikatorji{i,1});


name=table2array(indikatorji);

name=name(i);
str=name+".svg";

str=erase(str,[":" ,"\" ,"/","*","?",' " ',"<" ,">" ,"|" ]);

str="C:\Users\Westlife\Desktop\IJS-projekt\Projekt\Rezultati\Bar\"+filename+"\"+str;

saveas(fig,str)
close(fig);
   
    
end

