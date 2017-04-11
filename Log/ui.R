#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
# Define UI for slider demo application
fluidPage(
  
  #  Application title
  titlePanel("Number of Samples Needed for Model Selection with Confidence"),
  
  # Sidebar with sliders that demonstrate various available
  # options
  sidebarLayout(
    sidebarPanel(
      # Simple integer interval
      sliderInput("df.True", "df.True:",df.true <- 5  
                  min=0, max=1000, value=500),
      
      # Decimal interval with step value
      sliderInput("decimal", "Decimal:",
                  min = 0, max = 1, value = 0.5, step= 0.1),
      
      # Specification of range within an interval
      sliderInput("range", "Range:",
                  min = 1, max = 1000, value = c(200,500)),
      
      # Provide a custom currency format for value display,
      # with basic animation
      sliderInput("format", "Custom Format:",
                  min = 0, max = 10000, value = 0, step = 2500,
                  pre = "$", sep = ",", animate=TRUE),
      
      # Animation with custom interval (in ms) to control speed,
      # plus looping
      sliderInput("animation", "Looping Animation:", 1, 2000, 1,
                  step = 10, animate =
                    animationOptions(interval=300, loop=TRUE))
    ),
    
    # Show a table summarizing the values entered
    mainPanel(
      tableOutput("values")
    )
  )
)
