
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(ggplot2)
paul_farms<-read.csv("SingleFarms.csv")
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    infected_farms<-subset(paul_farms,infDay<input$epi_day)
    
    # draw the histogram with the specified number of bins
    p<-ggplot(paul_farms,aes(x=x,y=y))+geom_point()+geom_point(data = infected_farms,col="red")
  print(p)
  
  
  })
  
})
