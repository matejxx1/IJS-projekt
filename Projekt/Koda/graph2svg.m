function a = graph2svg(G,indikatorji,indi,i)
a=NaN;
fig=figure("Visible","Off");
set(fig, 'Position', get(0, 'Screensize'));
plot(G,'Layout','force','ArrowSize',15,"NodeFontSize",10);

name=table2array(indikatorji);

name=name(indi(i));
str=name+".svg";

str=erase(str,[":" ,"\" ,"/","*","?",' " ',"<" ,">" ,"|" ]);
saveas(fig,str)

   
    
end

