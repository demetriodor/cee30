s=1 #change to 1 for pdf

pdf("./figures/pdf/gdppc_region.pdf",width=12.80, height=10.24)
#png("./figures/gdppc_region.png",width=1280*s, height=1024*s, res=96)

par(mfrow=c(1,1),
    oma=c(3*s,4*s,5*s,1*s),
    par(mar=c(1*s,1*s,1*s,1*s)),
    bg=background.color,
    bty='n',
    family='Montserrat')

  plot(NULL,type='n',axes=F,ann=FALSE, xlim=c(1,31), ylim=c(0,50000)) #start with an empty plot
  abline(v=seq(1, 31, 1), col='grey94', lwd=0.75*s) #add the vertical grid
  abline(v=seq(1, 31, 5), col='grey88', lwd=1*s) #add the vertical grid
  abline(h=seq(0,50000,1000), col='grey94', lwd=0.75*s) #add the vertical grid
  abline(h=seq(0,50000,5000), col='grey88', lwd=1*s) #add the vertical grid
  
  lines (x=1:30, y=de2$gdppc.wm[de2$iso3c=='POL'], lwd=2.5*s, lty=1, col=color4)
  points (x=1:30, y=de2$gdppc.wm[de2$iso3c=='POL'], pch=16, cex=1*s, col=color4)
  text (labels='Central Eastern Europe', x=1.1, y=min(de2$gdppc.wm[de2$iso3c=='POL'], na.rm=TRUE)+2900, cex=1.2*s, col=color4, adj=0)
  
  lines (x=1:30, y=de3$gdppc.wm[de3$iso3c=='BGR'], lwd=2.5*s, lty=1, col=color5)
  points (x=1:30, y=de3$gdppc.wm[de3$iso3c=='BGR'], pch=16, cex=1*s, col=color5)
  text (labels='South Eastern Europe', x=1.1, y=min(de3$gdppc.wm[de3$iso3c=='BGR'], na.rm=TRUE)-1800, cex=1.2*s, col=color5, adj=0)
  
  lines (x=1:30, y=ds$gdppc.wm[ds$iso3c=='GRC'], lwd=2.5*s, lty=1, col=color3)
  points (x=1:30, y=ds$gdppc.wm[ds$iso3c=='GRC'], pch=16, cex=1*s, col=color3)
  text (labels='Southern Europe', x=1.1, y=min(ds$gdppc.wm[ds$iso3c=='GRC'], na.rm=TRUE)-1200, cex=1.2*s, col=color3, adj=0)
  
  lines (x=1:30, y=dw$gdppc.wm[dw$iso3c=='NLD'], lwd=2.5*s, lty=1, col=color2)
  points (x=1:30, y=dw$gdppc.wm[dw$iso3c=='NLD'], pch=16, cex=1*s, col=color2)
  text (labels='Western Europe', x=1.1, y=min(dw$gdppc.wm[dw$iso3c=='NLD'], na.rm=TRUE)-1000, cex=1.2*s, col=color2, adj=0)
  
  lines (x=1:30, y=dn$gdppc.wm[dn$iso3c=='DNK'], lwd=2.5*s, lty=1, col=color1)
  points (x=1:30, y=dn$gdppc.wm[dn$iso3c=='DNK'], pch=16, cex=1*s, col=color1)
  text (labels='Northern Europe', x=1.1, y=min(dn$gdppc.wm[dn$iso3c=='DNK'], na.rm=TRUE)+2900, cex=1.2*s, col=color1, adj=0)
  
  #horizontal axis
  axis (1, font=2, tck=-0.01, col=background.color, col.axis=dark.color, at=seq(1, 31, 5),line=-1, labels=seq(1990,2020,5), cex.axis=1*s)
  
   #vertical axis       
   axis (2, font=2, tck=-0.00, lwd=0, col=background.color, col.axis=dark.color, at=seq(0,50000,5000),line=-0.5, labels=seq(0,50000,5000),las=1, cex.axis=1*s) 
         
#title
x=-36*s 
y=0.94
z=1.2*s 
mtext(expression(bold('Economic Wealth in Europe, per geographic region (1990-2018)')),
      line=3.5*s, font=1, at=-0.033, col=dark.color, cex=2.2*s, adj=0, padj=1, outer=T)
mtext(expression(italic('Gross Domestic Product (GDP) per capita, based on purchasing power parity (PPP), in constant 2011 international dollars')),
      line=0.75*s, font=1, at=-0.033, col=dark.color, cex=1.2*s, adj=0, padj=1, outer=T)
mtext(expression(italic('Northern Europe: population-weighted mean of Norway, Denmark, Sweden and Finalnd')),
      line=x, font=1, at=y, col=color1, cex=1*s, adj=1, padj=1, outer=T)
mtext(expression(italic('Western Europe: population-weighted mean of Germany, France, Austria, Benelux, UK and Ireland')),
      line=x-1*z, font=1, at=y, col=color2, cex=1*s, adj=1, padj=1, outer=T)
mtext(expression(italic('Southern Europe: population-weighted mean of Spain, Italy, Portugal and Greece')),
      line=x-2*z, font=1, at=y, col=color3, cex=1*s, adj=1, padj=1, outer=T)
mtext(expression(italic('Central Eastern Europe: population-weighted mean of Poland, Hungary, Czechia, Slovakia and the Baltics')),
      line=x-3*z, font=1, at=y, col=color4, cex=1*s, adj=1, padj=1, outer=T)
mtext(expression(italic('South Eastern Europe: population-weighted mean of Slovenia, Croatia, Bulgaria and Romania')),
      line=x-4*z, font=1, at=y, col=color5, cex=1*s, adj=1, padj=1, outer=T)

#data statement
mtext(text=expression("Data: " * phantom("World Bank [NY.GDP.PCAP.PP.KD]")),
      side=1, line=1*s, outer=T, font=1, family='Cairo', col=dark.color, cex=1.0*s, adj=0, padj=1, at=-0.033)
mtext(text=expression(phantom("Data: ") * "World Bank [NY.GDP.PCAP.PP.KD]"),
      side=1, line=1*s, outer=T, font=1, family='Cairo', col=main.color, cex=1.0*s, adj=0, padj=1, at=-0.033)
#signature
mtext(text=expression(phantom("@DToshkov ") * " -http://dimiter" * phantom(".eu") * "-"), side=1, line=1*s, outer=T, font=1, family='Cairo', col=dark.color, cex=1.0*s, adj=1, padj=1, at=0.98)
mtext(text=expression(phantom("@DToshkov -http://dimiter") * ".eu" * phantom("-")),side=1, line=1*s, outer=T, font=1, family='Cairo', col=main.color, cex=1.0*s, adj=1, padj=1, at=0.98)
mtext(text=expression("@DToshkov " * phantom(" -http://dimiter.eu-")), side=1, line=1*s, outer=T, font=1, family='Cairo', col=color3, cex=1.0*s, adj=1, padj=1, at=0.98)
dev.off()
