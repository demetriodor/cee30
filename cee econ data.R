#Get data
library(wbstats)

countries = c("AUT","BEL","BGR","CHE","CYP","CZE","DEU","DNK","ESP","EST",
              "FIN","FRA","GBR","GRC","HRV","HUN","IRL","ISL","ITA","LUX",
              "LTU","LVA","MLT","NLD","NOR","POL","PRT","ROU","SVK","SVN","SWE", 'RUS', 'SRB')

countries.e = c("CZE", "SVN", "SVK", "LTU", "EST", "POL", "HUN","LVA","ROU", "HRV", "BGR","SRB")
countries.e2 = c("CZE", "SVK", "LTU", "EST", "POL", "HUN","LVA")
countries.e3 = c("SVN", "HRV", "BGR","ROU")

countries.w = c("AUT","BEL","DEU","FRA","GBR","IRL", "LUX","NLD")

countries.n = c("DNK", "FIN", "NOR", "SWE")

countries.s = c("ESP", "GRC","ITA","PRT")

#GINI
#poverty
#life expectancy SP.DYN.LE00.MA.IN SP.DYN.LE00.FE.IN
#mortality rate under 5 SH.DYN.MORT
#secondary school enrolment SE.SEC.ENRR
#firms with female top managers 	IC.FRM.FEMM.ZS
#labour force participation rate SL.TLF.CACT.ZS
#employment to population rate SL.EMP.TOTL.SP.ZS
#exports % of GDP NE.EXP.GNFS.ZS
#productivity GDP per person employed SL.GDP.PCAP.EM.KD
#ICT goods exports % of goods exports TX.VAL.ICTG.ZS.UN


d<-wb(indicator = c("SP.POP.TOTL","NY.GDP.PCAP.PP.KD","SL.UEM.TOTL.ZS",'SI.POV.GINI', 'SI.POV.DDAY', 'SI.POV.UMIC', 'SP.DYN.LE00.MA.IN', 'SP.DYN.LE00.FE.IN',
                    'SE.SEC.ENRR', 'SL.TLF.CACT.ZS', 'SL.EMP.TOTL.SP.ZS', 'SH.DYN.MORT', 'NE.EXP.GNFS.ZS', 'SL.GDP.PCAP.EM.KD', 'IC.FRM.FEMM.ZS', 'TX.VAL.ICTG.ZS.UN'), 
       country=countries, startdate = 1990, enddate = 2019,  return_wide = TRUE)

de<-wb(indicator = c("SP.POP.TOTL","NY.GDP.PCAP.PP.KD","SL.UEM.TOTL.ZS",'SI.POV.GINI', 'SI.POV.DDAY', 'SI.POV.UMIC', 'SP.DYN.LE00.MA.IN', 'SP.DYN.LE00.FE.IN',
                     'SE.SEC.ENRR', 'SL.TLF.CACT.ZS', 'SL.EMP.TOTL.SP.ZS', 'SH.DYN.MORT', 'NE.EXP.GNFS.ZS', 'SL.GDP.PCAP.EM.KD', 'IC.FRM.FEMM.ZS', 'TX.VAL.ICTG.ZS.UN'), 
       country=countries.e, startdate = 1990, enddate = 2019,  return_wide = TRUE)
de2<-wb(indicator = c("SP.POP.TOTL","NY.GDP.PCAP.PP.KD","SL.UEM.TOTL.ZS",'SI.POV.GINI', 'SI.POV.DDAY', 'SI.POV.UMIC', 'SP.DYN.LE00.MA.IN', 'SP.DYN.LE00.FE.IN',
                      'SE.SEC.ENRR', 'SL.TLF.CACT.ZS', 'SL.EMP.TOTL.SP.ZS', 'SH.DYN.MORT', 'NE.EXP.GNFS.ZS', 'SL.GDP.PCAP.EM.KD', 'IC.FRM.FEMM.ZS', 'TX.VAL.ICTG.ZS.UN'), 
       country=countries.e2, startdate = 1990, enddate = 2019,  return_wide = TRUE)
de3<-wb(indicator = c("SP.POP.TOTL","NY.GDP.PCAP.PP.KD","SL.UEM.TOTL.ZS",'SI.POV.GINI', 'SI.POV.DDAY', 'SI.POV.UMIC', 'SP.DYN.LE00.MA.IN', 'SP.DYN.LE00.FE.IN',
                      'SE.SEC.ENRR', 'SL.TLF.CACT.ZS', 'SL.EMP.TOTL.SP.ZS', 'SH.DYN.MORT', 'NE.EXP.GNFS.ZS', 'SL.GDP.PCAP.EM.KD', 'IC.FRM.FEMM.ZS', 'TX.VAL.ICTG.ZS.UN'), 
       country=countries.e3, startdate = 1990, enddate = 2019,  return_wide = TRUE)

dw<-wb(indicator = c("SP.POP.TOTL","NY.GDP.PCAP.PP.KD","SL.UEM.TOTL.ZS",'SI.POV.GINI', 'SI.POV.DDAY', 'SI.POV.UMIC', 'SP.DYN.LE00.MA.IN', 'SP.DYN.LE00.FE.IN',
                     'SE.SEC.ENRR', 'SL.TLF.CACT.ZS', 'SL.EMP.TOTL.SP.ZS', 'SH.DYN.MORT', 'NE.EXP.GNFS.ZS', 'SL.GDP.PCAP.EM.KD', 'IC.FRM.FEMM.ZS', 'TX.VAL.ICTG.ZS.UN'), 
       country=countries.w, startdate = 1990, enddate = 2019,  return_wide = TRUE)

ds<-wb(indicator = c("SP.POP.TOTL","NY.GDP.PCAP.PP.KD","SL.UEM.TOTL.ZS",'SI.POV.GINI', 'SI.POV.DDAY', 'SI.POV.UMIC', 'SP.DYN.LE00.MA.IN', 'SP.DYN.LE00.FE.IN',
                     'SE.SEC.ENRR', 'SL.TLF.CACT.ZS', 'SL.EMP.TOTL.SP.ZS', 'SH.DYN.MORT', 'NE.EXP.GNFS.ZS', 'SL.GDP.PCAP.EM.KD', 'IC.FRM.FEMM.ZS', 'TX.VAL.ICTG.ZS.UN'), 
       country=countries.s, startdate = 1990, enddate = 2019,  return_wide = TRUE)

dn<-wb(indicator = c("SP.POP.TOTL","NY.GDP.PCAP.PP.KD","SL.UEM.TOTL.ZS",'SI.POV.GINI', 'SI.POV.DDAY', 'SI.POV.UMIC', 'SP.DYN.LE00.MA.IN', 'SP.DYN.LE00.FE.IN',
                     'SE.SEC.ENRR', 'SL.TLF.CACT.ZS', 'SL.EMP.TOTL.SP.ZS', 'SH.DYN.MORT', 'NE.EXP.GNFS.ZS', 'SL.GDP.PCAP.EM.KD', 'IC.FRM.FEMM.ZS', 'TX.VAL.ICTG.ZS.UN'), 
       country=countries.n, startdate = 1990, enddate = 2019,  return_wide = TRUE)

de<-wb(indicator = c("SP.POP.TOTL","NY.GDP.PCAP.PP.KD","SL.UEM.TOTL.ZS",'SI.POV.GINI', 'SI.POV.DDAY', 'SI.POV.UMIC', 'SP.DYN.LE00.MA.IN', 'SP.DYN.LE00.FE.IN',
                     'SE.SEC.ENRR', 'SL.TLF.CACT.ZS', 'SL.EMP.TOTL.SP.ZS', 'SH.DYN.MORT', 'NE.EXP.GNFS.ZS', 'SL.GDP.PCAP.EM.KD', 'IC.FRM.FEMM.ZS', 'TX.VAL.ICTG.ZS.UN'), 
       country=countries.e, startdate = 1990, enddate = 2019,  return_wide = TRUE)

head(dn)

library(dplyr)
de<-de %>%
  group_by(date) %>% 
  mutate(gdppc.wm = weighted.mean(NY.GDP.PCAP.PP.KD, SP.POP.TOTL, na.rm=TRUE),
         unempl.wm = weighted.mean(SL.UEM.TOTL.ZS, SP.POP.TOTL, na.rm=TRUE),
         empl.wm = weighted.mean(SL.EMP.TOTL.SP.ZS, SP.POP.TOTL, na.rm=TRUE),
         labour.wm = weighted.mean(SL.TLF.CACT.ZS, SP.POP.TOTL, na.rm=TRUE),
         product.wm = weighted.mean(SL.GDP.PCAP.EM.KD, SP.POP.TOTL, na.rm=TRUE),
         exports.wm = weighted.mean(NE.EXP.GNFS.ZS, SP.POP.TOTL, na.rm=TRUE),
         ict.wm = weighted.mean(TX.VAL.ICTG.ZS.UN, SP.POP.TOTL, na.rm=TRUE),
         fmanager.wm = weighted.mean(IC.FRM.FEMM.ZS, SP.POP.TOTL, na.rm=TRUE),
         secondary.wm = weighted.mean(SE.SEC.ENRR, SP.POP.TOTL, na.rm=TRUE),
         mortality.wm = weighted.mean(SH.DYN.MORT, SP.POP.TOTL, na.rm=TRUE),
         lifeexpm.wm = weighted.mean(SP.DYN.LE00.MA.IN, SP.POP.TOTL, na.rm=TRUE),
         lifeexpf.wm = weighted.mean(SP.DYN.LE00.FE.IN, SP.POP.TOTL, na.rm=TRUE),
         gini.wm = weighted.mean(SI.POV.GINI, SP.POP.TOTL, na.rm=TRUE),
         poverty.wm = weighted.mean(SI.POV.DDAY, SP.POP.TOTL, na.rm=TRUE),
         poverty2.wm = weighted.mean(SI.POV.UMIC, SP.POP.TOTL, na.rm=TRUE))

de2<-de2 %>%
  group_by(date) %>% 
  mutate(gdppc.wm = weighted.mean(NY.GDP.PCAP.PP.KD, SP.POP.TOTL, na.rm=TRUE),
         unempl.wm = weighted.mean(SL.UEM.TOTL.ZS, SP.POP.TOTL, na.rm=TRUE),
         empl.wm = weighted.mean(SL.EMP.TOTL.SP.ZS, SP.POP.TOTL, na.rm=TRUE),
         labour.wm = weighted.mean(SL.TLF.CACT.ZS, SP.POP.TOTL, na.rm=TRUE),
         product.wm = weighted.mean(SL.GDP.PCAP.EM.KD, SP.POP.TOTL, na.rm=TRUE),
         exports.wm = weighted.mean(NE.EXP.GNFS.ZS, SP.POP.TOTL, na.rm=TRUE),
         ict.wm = weighted.mean(TX.VAL.ICTG.ZS.UN, SP.POP.TOTL, na.rm=TRUE),
         fmanager.wm = weighted.mean(IC.FRM.FEMM.ZS, SP.POP.TOTL, na.rm=TRUE),
         secondary.wm = weighted.mean(SE.SEC.ENRR, SP.POP.TOTL, na.rm=TRUE),
         mortality.wm = weighted.mean(SH.DYN.MORT, SP.POP.TOTL, na.rm=TRUE),
         lifeexpm.wm = weighted.mean(SP.DYN.LE00.MA.IN, SP.POP.TOTL, na.rm=TRUE),
         lifeexpf.wm = weighted.mean(SP.DYN.LE00.FE.IN, SP.POP.TOTL, na.rm=TRUE),
         
         gini.wm = weighted.mean(SI.POV.GINI, SP.POP.TOTL, na.rm=TRUE),
         poverty.wm = weighted.mean(SI.POV.DDAY, SP.POP.TOTL, na.rm=TRUE),
         poverty2.wm = weighted.mean(SI.POV.UMIC, SP.POP.TOTL, na.rm=TRUE))

de3<-de3 %>%
  group_by(date) %>% 
  mutate(gdppc.wm = weighted.mean(NY.GDP.PCAP.PP.KD, SP.POP.TOTL, na.rm=TRUE),
         unempl.wm = weighted.mean(SL.UEM.TOTL.ZS, SP.POP.TOTL, na.rm=TRUE),
         empl.wm = weighted.mean(SL.EMP.TOTL.SP.ZS, SP.POP.TOTL, na.rm=TRUE),
         labour.wm = weighted.mean(SL.TLF.CACT.ZS, SP.POP.TOTL, na.rm=TRUE),
         product.wm = weighted.mean(SL.GDP.PCAP.EM.KD, SP.POP.TOTL, na.rm=TRUE),
         exports.wm = weighted.mean(NE.EXP.GNFS.ZS, SP.POP.TOTL, na.rm=TRUE),
         ict.wm = weighted.mean(TX.VAL.ICTG.ZS.UN, SP.POP.TOTL, na.rm=TRUE),
         fmanager.wm = weighted.mean(IC.FRM.FEMM.ZS, SP.POP.TOTL, na.rm=TRUE),
         secondary.wm = weighted.mean(SE.SEC.ENRR, SP.POP.TOTL, na.rm=TRUE),
         mortality.wm = weighted.mean(SH.DYN.MORT, SP.POP.TOTL, na.rm=TRUE),
         lifeexpm.wm = weighted.mean(SP.DYN.LE00.MA.IN, SP.POP.TOTL, na.rm=TRUE),
         lifeexpf.wm = weighted.mean(SP.DYN.LE00.FE.IN, SP.POP.TOTL, na.rm=TRUE),
         
         gini.wm = weighted.mean(SI.POV.GINI, SP.POP.TOTL, na.rm=TRUE),
         poverty.wm = weighted.mean(SI.POV.DDAY, SP.POP.TOTL, na.rm=TRUE),
         poverty2.wm = weighted.mean(SI.POV.UMIC, SP.POP.TOTL, na.rm=TRUE))

dw<-dw %>%
  group_by(date) %>% 
  mutate(gdppc.wm = weighted.mean(NY.GDP.PCAP.PP.KD, SP.POP.TOTL, na.rm=TRUE),
         unempl.wm = weighted.mean(SL.UEM.TOTL.ZS, SP.POP.TOTL, na.rm=TRUE),
         empl.wm = weighted.mean(SL.EMP.TOTL.SP.ZS, SP.POP.TOTL, na.rm=TRUE),
         labour.wm = weighted.mean(SL.TLF.CACT.ZS, SP.POP.TOTL, na.rm=TRUE),
         product.wm = weighted.mean(SL.GDP.PCAP.EM.KD, SP.POP.TOTL, na.rm=TRUE),
         exports.wm = weighted.mean(NE.EXP.GNFS.ZS, SP.POP.TOTL, na.rm=TRUE),
         ict.wm = weighted.mean(TX.VAL.ICTG.ZS.UN, SP.POP.TOTL, na.rm=TRUE),
         #fmanager.wm = weighted.mean(IC.FRM.FEMM.ZS, SP.POP.TOTL, na.rm=TRUE),
         secondary.wm = weighted.mean(SE.SEC.ENRR, SP.POP.TOTL, na.rm=TRUE),
         mortality.wm = weighted.mean(SH.DYN.MORT, SP.POP.TOTL, na.rm=TRUE),
         lifeexpm.wm = weighted.mean(SP.DYN.LE00.MA.IN, SP.POP.TOTL, na.rm=TRUE),
         lifeexpf.wm = weighted.mean(SP.DYN.LE00.FE.IN, SP.POP.TOTL, na.rm=TRUE),
         
         gini.wm = weighted.mean(SI.POV.GINI, SP.POP.TOTL, na.rm=TRUE),
         poverty.wm = weighted.mean(SI.POV.DDAY, SP.POP.TOTL, na.rm=TRUE),
         poverty2.wm = weighted.mean(SI.POV.UMIC, SP.POP.TOTL, na.rm=TRUE))

ds<-ds %>%
  group_by(date) %>% 
  mutate(gdppc.wm = weighted.mean(NY.GDP.PCAP.PP.KD, SP.POP.TOTL, na.rm=TRUE),
         unempl.wm = weighted.mean(SL.UEM.TOTL.ZS, SP.POP.TOTL, na.rm=TRUE),
         empl.wm = weighted.mean(SL.EMP.TOTL.SP.ZS, SP.POP.TOTL, na.rm=TRUE),
         labour.wm = weighted.mean(SL.TLF.CACT.ZS, SP.POP.TOTL, na.rm=TRUE),
         product.wm = weighted.mean(SL.GDP.PCAP.EM.KD, SP.POP.TOTL, na.rm=TRUE),
         exports.wm = weighted.mean(NE.EXP.GNFS.ZS, SP.POP.TOTL, na.rm=TRUE),
         ict.wm = weighted.mean(TX.VAL.ICTG.ZS.UN, SP.POP.TOTL, na.rm=TRUE),
         fmanager.wm = weighted.mean(IC.FRM.FEMM.ZS, SP.POP.TOTL, na.rm=TRUE),
         secondary.wm = weighted.mean(SE.SEC.ENRR, SP.POP.TOTL, na.rm=TRUE),
         mortality.wm = weighted.mean(SH.DYN.MORT, SP.POP.TOTL, na.rm=TRUE),
         lifeexpm.wm = weighted.mean(SP.DYN.LE00.MA.IN, SP.POP.TOTL, na.rm=TRUE),
         lifeexpf.wm = weighted.mean(SP.DYN.LE00.FE.IN, SP.POP.TOTL, na.rm=TRUE),
         
         gini.wm = weighted.mean(SI.POV.GINI, SP.POP.TOTL, na.rm=TRUE),
         poverty.wm = weighted.mean(SI.POV.DDAY, SP.POP.TOTL, na.rm=TRUE),
         poverty2.wm = weighted.mean(SI.POV.UMIC, SP.POP.TOTL, na.rm=TRUE))

dn<-dn %>%
  group_by(date) %>% 
  mutate(gdppc.wm = weighted.mean(NY.GDP.PCAP.PP.KD, SP.POP.TOTL, na.rm=TRUE),
         unempl.wm = weighted.mean(SL.UEM.TOTL.ZS, SP.POP.TOTL, na.rm=TRUE),
         empl.wm = weighted.mean(SL.EMP.TOTL.SP.ZS, SP.POP.TOTL, na.rm=TRUE),
         labour.wm = weighted.mean(SL.TLF.CACT.ZS, SP.POP.TOTL, na.rm=TRUE),
         product.wm = weighted.mean(SL.GDP.PCAP.EM.KD, SP.POP.TOTL, na.rm=TRUE),
         exports.wm = weighted.mean(NE.EXP.GNFS.ZS, SP.POP.TOTL, na.rm=TRUE),
         ict.wm = weighted.mean(TX.VAL.ICTG.ZS.UN, SP.POP.TOTL, na.rm=TRUE),
         fmanager.wm = weighted.mean(IC.FRM.FEMM.ZS, SP.POP.TOTL, na.rm=TRUE),
         secondary.wm = weighted.mean(SE.SEC.ENRR, SP.POP.TOTL, na.rm=TRUE),
         mortality.wm = weighted.mean(SH.DYN.MORT, SP.POP.TOTL, na.rm=TRUE),
         lifeexpm.wm = weighted.mean(SP.DYN.LE00.MA.IN, SP.POP.TOTL, na.rm=TRUE),
         lifeexpf.wm = weighted.mean(SP.DYN.LE00.FE.IN, SP.POP.TOTL, na.rm=TRUE),
         
         gini.wm = weighted.mean(SI.POV.GINI, SP.POP.TOTL, na.rm=TRUE),
         poverty.wm = weighted.mean(SI.POV.DDAY, SP.POP.TOTL, na.rm=TRUE),
         poverty2.wm = weighted.mean(SI.POV.UMIC, SP.POP.TOTL, na.rm=TRUE))

