s=3 #change to 1 for pdf

#pdf("./figures/pdf/exports_region.pdf",width=12.80, height=10.24)
png("./figures/exports_region.png",width=1280*s, height=1024*s, res=96)

par(mfrow=c(1,1),
    oma=c(3*s,4*s,5*s,1*s),
    par(mar=c(1*s,1*s,1*s,1*s)),
    bg=background.color,
    bty='n',
    family='Montserrat')

  plot(NULL,type='n',axes=F,ann=FALSE, xlim=c(1,31), ylim=c(15,70)) #start with an empty plot
  abline(v=seq(1, 31, 1), col='grey94', lwd=1*s) #add the vertical grid
  abline(v=seq(1, 31, 5), col='grey86', lwd=1*s) #add the vertical grid
  #abline(h=seq(1,79,1), col='grey94', lwd=1*s) #add the vertical grid
  abline(h=seq(0,70,5), col='grey86', lwd=1*s) #add the vertical grid
  
  lines (x=1:30, y=de2$exports.wm[de2$iso3c=='POL'], lwd=3*s, lty=1, col=color4)
  points (x=1:30, y=de2$exports.wm[de2$iso3c=='POL'], pch=16, cex=1*s, col=color4)
  text (labels='C Eastern', x=29.2, y=de2$exports.wm[de2$iso3c=='POL'][29], cex=1.2*s, col=color4, adj=0)
  
  lines (x=1:30, y=de3$exports.wm[de3$iso3c=='BGR'], lwd=3*s, lty=1, col=color5)
  points (x=1:30, y=de3$exports.wm[de3$iso3c=='BGR'], pch=16, cex=1*s, col=color5)
  text (labels='S Eastern', x=29.2, y=de3$exports.wm[de3$iso3c=='BGR'][29], cex=1.2*s, col=color5, adj=0)
  
  lines (x=1:30, y=ds$exports.wm[ds$iso3c=='GRC'], lwd=3*s, lty=1, col=color3)
  points (x=1:30, y=ds$exports.wm[ds$iso3c=='GRC'], pch=16, cex=1*s, col=color3)
  text (labels='Southern', x=29.2, y=ds$exports.wm[ds$iso3c=='GRC'][29], cex=1.2*s, col=color3, adj=0)
  
  lines (x=1:30, y=dw$exports.wm[dw$iso3c=='NLD'], lwd=3*s, lty=1, col=color2)
  points (x=1:30, y=dw$exports.wm[dw$iso3c=='NLD'], pch=16, cex=1*s, col=color2)
  text (labels='Western', x=29.2, y=dw$exports.wm[dw$iso3c=='NLD'][29]-1, cex=1.2*s, col=color2, adj=0)
  
  lines (x=1:30, y=dn$exports.wm[dn$iso3c=='DNK'], lwd=3*s, lty=1, col=color1)
  points (x=1:30, y=dn$exports.wm[dn$iso3c=='DNK'], pch=16, cex=1*s, col=color1)
  text (labels='Northern', x=29.2, y=dn$exports.wm[dn$iso3c=='DNK'][29], cex=1.2*s, col=color1, adj=0)
  
  #horizontal axis
  axis (1, font=2, tck=-0.01, col=background.color, col.axis=dark.color, at=seq(1, 31, 5),line=-1, labels=seq(1990,2020,5), cex.axis=1*s)
  
   #vertical axis       
   axis (2, font=2, tck=-0.00, lwd=0, col=background.color, col.axis=dark.color, at=seq(0,70,10),line=-0.5, labels=paste0(seq(0,70,10), "%"),las=1, cex.axis=1*s) 
         
#title
x=-3*s 
y=0.07
z=1.2*s 
mtext(expression(bold('Exports in Europe, per geographic region (1990-2018)')),
      line=3.5*s, font=1, at=-0.033, col=dark.color, cex=2.2*s, adj=0, padj=1, outer=T)
mtext(expression(italic('Exports of goods and services (% of GDP)')),
      line=0.75*s, font=1, at=-0.033, col=dark.color, cex=1.2*s, adj=0, padj=1, outer=T)
mtext(expression(italic('Northern Europe: population-weighted mean of Norway, Denmark, Sweden and Finalnd')),
      line=x-z*2, font=1, at=y, col=color1, cex=1*s, adj=0, padj=1, outer=T)
mtext(expression(italic('Western Europe: population-weighted mean of Germany, France, Austria, Benelux, UK and Ireland')),
      line=x-3*z, font=1, at=y, col=color2, cex=1*s, adj=0, padj=1, outer=T)
mtext(expression(italic('Southern Europe: population-weighted mean of Spain, Italy, Portugal and Greece')),
      line=x-4*z, font=1, at=y, col=color3, cex=1*s, adj=0, padj=1, outer=T)
mtext(expression(italic('Central Eastern Europe: population-weighted mean of Poland, Hungary, Czechia, Slovakia and the Baltics')),
      line=x-0*z, font=1, at=y, col=color4, cex=1*s, adj=0, padj=1, outer=T)
mtext(expression(italic('South Eastern Europe: population-weighted mean of Slovenia, Croatia, Bulgaria and Romania')),
      line=x-1*z, font=1, at=y, col=color5, cex=1*s, adj=0, padj=1, outer=T)

#data statement
mtext(text=expression("Data: " * phantom("World Bank [NE.EXP.GNFS.ZS]")),
      side=1, line=0.75*s, outer=T, font=1, family='Cairo', col=dark.color, cex=1.0*s, adj=0, padj=1, at=-0.033)
mtext(text=expression(phantom("Data: ") * "World Bank [NE.EXP.GNFS.ZS]"),
      side=1, line=0.75*s, outer=T, font=1, family='Cairo', col=main.color, cex=1.0*s, adj=0, padj=1, at=-0.033)
#signature
mtext(text=expression(phantom("@DToshkov ") * " -http://dimiter" * phantom(".eu") * "-"), side=1, line=0.75*s, outer=T, font=1, family='Cairo', col=dark.color, cex=1.0*s, adj=1, padj=1, at=0.98)
mtext(text=expression(phantom("@DToshkov -http://dimiter") * ".eu" * phantom("-")),side=1, line=0.75*s, outer=T, font=1, family='Cairo', col=main.color, cex=1.0*s, adj=1, padj=1, at=0.98)
mtext(text=expression("@DToshkov " * phantom(" -http://dimiter.eu-")), side=1, line=0.75*s, outer=T, font=1, family='Cairo', col=color3, cex=1.0*s, adj=1, padj=1, at=0.98)
dev.off()
