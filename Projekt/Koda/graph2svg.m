function a = graph2svg(G,indikatorji,indi,i,filename)
a=NaN;
fig=figure("Visible","Off");
set(fig, 'Position', get(0, 'Screensize'));
plot(G,'Layout','force','ArrowSize',15,"NodeFontSize",10,'EdgeLabel',G.Edges.Weight);

name=table2array(indikatorji);

name=name(indi(i));
str=name+".svg";

str=erase(str,[":" ,"\" ,"/","*","?",' " ',"<" ,">" ,"|" ]);

str="C:\Users\Westlife\Desktop\IJS-projekt\Projekt\Rezultati\Graf\"+filename+"\"+str;

saveas(fig,str)
close(fig);
   
    
end

