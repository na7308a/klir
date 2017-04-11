#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
# Define server logic for slider examples
function(input, output) {
  
  # Reactive expression to compose a data frame containing all of
  # the values
  sliderValues <- reactive({
    
    # Compose data frame
    data.frame(
      Name = c("True", 
               "Hypothesis",
               "Alternative",
               "N Samples",
               "Max Samples",
               "Boot Straps",
               "Confidence Interval",
               "Seed"),
               
      
      Value = as.character(c(input$Reyw, 
                             input$decimal,
                             paste(input$range, collapse=' '),
                             input$format,
                             input$animation)), 
      stringsAsFactors=FALSE)
  }) 
  
  # Show the values using an HTML table
  output$values <- renderTable({
    sliderValues()
  })
}
