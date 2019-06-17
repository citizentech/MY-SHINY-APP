library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    Degree    <- faithful[, 2] 
    bins <- seq(min(Degree), max(Degree), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(Degree, breaks = bins, col = 'blue', border = 'red')
    
  })
  
})
