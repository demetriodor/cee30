s=1

pdf("./figures/pdf/unempl_country.pdf",width=12.80, height=10.24)
#png("./figures/unempl_country.png",width=1280*s, height=1024*s, res=96)

par(mfrow=c(3,4),
    oma=c(6*s,5*s,10*s,5*s),
    par(mar=c(1*s,1*s,1*s,1*s)),
    bg=background.color,
    bty='n',
    family='Montserrat')

for (i in countries.e){

plot(NULL,type='n',axes=F,ann=FALSE, xlim=c(1,31), ylim=c(0,30)) #start with an empty plot
#abline(v=seq(1, 31, 1), col='grey95') #add the vertical grid
abline(v=seq(1, 31, 5), col='grey88', lwd=1*s) #add the vertical grid
#abline(h=seq(0,35000,1000), col='grey95') #add the vertical grid
abline(h=seq(0,30,5), col='grey88', lwd=1*s) #add the vertical grid

lines (x=1:30, y=d$SL.UEM.TOTL.ZS[d$iso3c==i], lwd=2*s, lty=1, col=main.color)
#points (x=1:30, y=de$SL.UEM.TOTL.ZS[de$iso3c==i], pch=16, cex=1, col=main.color)
text (labels=d$country[d$iso3c==i][20], x=30.5, y=d$SL.UEM.TOTL.ZS[d$iso3c==i][30]-1.5, cex=1.3*s, col=main.color, adj=1)

lines (x=1:30, y=d$SL.UEM.TOTL.ZS[d$country=='Greece'], lwd=2*s, lty=1, col=color3)
#points (x=1:30, y=de$SL.UEM.TOTL.ZS[de$country=='Greece'], pch=16, cex=1, col=color3)
text (labels='Greece', x=30.5, y=d$SL.UEM.TOTL.ZS[d$country=='Greece'][30]-1.5, cex=1.3*s, col=color3, adj=1)

#horizontal axis
ifelse(i=='ROU' | i=='BGR' | i=='SRB' | i=='HRV',
axis (1, font=2, tck=-0.01, col=background.color, col.axis=dark.color, at=seq(1, 31, 5),line=1, labels=seq(1990,2020,5), cex.axis=1*s), 
axis (1, col.ticks=NA, col=NA, labels=FALSE)) 

ifelse(i=='CZE' | i=='SVN' | i=='SVK' | i=='LTU',
axis (3, font=2, tck=-0.01, col=background.color, col.axis=dark.color, at=seq(1, 31, 5),line=1, labels=seq(1990,2020,5), cex.axis=1*s), 
axis (3, col.ticks=NA, col=NA, labels=FALSE)) 

ifelse(i=='CZE' | i=='EST' | i=='ROU',
axis (2, font=2, tck=-0.00, lwd=0, col=background.color, col.axis=dark.color, at=seq(0,30,5),line=1, labels=paste0(seq(0,30,5), '%'),las=1, cex.axis=1*s), 
axis (2, col.ticks=NA, col=NA, labels=FALSE)) 

ifelse(i=='LTU' | i=='LVA' | i=='SRB',
       axis (4, font=2, tck=-0.00, lwd=0, col=background.color, col.axis=dark.color, at=seq(0,30,5),line=1, labels=paste0(seq(0,30,5), '%'),las=1, cex.axis=1*s), 
       axis (4, col.ticks=NA, col=NA, labels=FALSE)) 
}

#title
mtext(expression(bold('30 Years of Unemployment in Central and Eastern Europe')),
      line=8*s, font=1, at=-0.03, col=dark.color, cex=2*s, adj=0, padj=1, outer=T)
mtext(expression(italic('Total unemployment, as % of total labor force (modeled ILO estimate)')),
      line=4.5*s, font=1, at=-0.03, col=dark.color, cex=1.2*s, adj=0, padj=1, outer=T)
#data statement
mtext(text=expression("Data: " * phantom("World Bank [SL.UEM.TOTL.ZS]")), side=1, line=3*s, outer=T, font=1, family='Cairo', col=dark.color, cex=1.0*s, adj=0, padj=1, at=-0.03)
mtext(text=expression(phantom("Data: ") * "World Bank [SL.UEM.TOTL.ZS]"), side=1, line=3*s, outer=T, font=1, family='Cairo', col=main.color, cex=1.0*s, adj=0, padj=1, at=-0.03)
#signature
mtext(text=expression(phantom("@DToshkov ") * " -http://dimiter" * phantom(".eu") * "-"), side=1, line=3*s, outer=T, font=1, family='Cairo', col=dark.color, cex=1.0*s, adj=1, padj=1, at=1.03)
mtext(text=expression(phantom("@DToshkov -http://dimiter") * ".eu" * phantom("-")),side=1, line=3*s, outer=T, font=1, family='Cairo', col=main.color, cex=1.0*s, adj=1, padj=1, at=1.03)
mtext(text=expression("@DToshkov " * phantom(" -http://dimiter.eu-")), side=1, line=3*s, outer=T, font=1, family='Cairo', col=color3, cex=1.0*s, adj=1, padj=1, at=1.03)

dev.off()
