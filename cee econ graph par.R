library(extrafont) #to use custom fonts
library(sysfonts) #to load custom fonts
library(jsonlite) #needed by sysfonts
library(RCurl)
library(curl)
library(showtext) #to use the custom fonts
library(ggplot2)
library(tweenr)
library(gganimate)


#fonts
font_add_google('Cairo') #get the fonts 
font_add_google("Montserrat")
font.families() #check that the fonts are installed and available
showtext_auto() #this is to turn on the custom fonts availability
showtext_opts(dpi = 96) #set the resolution: 96 is default

background.color=rgb(255, 255, 255, max=255) #color for the background
dark.color=rgb(45, 45, 68, max=255) # dark color
main.color=rgb(255, 0, 51, alpha=235, max=255) #main color
main.colort=rgb(255, 0, 51, alpha=55, max=255) #main color

background.color=rgb(255, 255, 255,max=255) #color for the background
dark.color=rgb(45, 45, 68, max=255) # dark color
main.color=rgb(255, 0, 51, alpha=255, max=255) #main color

color4=rgb(230, 25, 75, alpha=255, max=255) #red
color3=rgb(0, 0, 128, alpha=255, max=255) #navy   
color5=rgb(60, 180, 75, alpha=255, max=255) #green
color1=rgb(245, 130, 48, alpha=255, max=255)  #orange
color2=rgb(128, 0, 0, alpha=255, max=255)  #maroon
