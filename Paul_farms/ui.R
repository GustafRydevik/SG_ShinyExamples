
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Paul Network data"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    sliderInput("epi_day",label="Day of the epidemic",
                min = 1,
                max = 154,
                value = 154)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))
