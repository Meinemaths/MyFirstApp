library(shiny)

# Define server logic required to draw a plot
shinyServer(function(input, output) {
   
  # selection of the chosen X and Y variables
  selectedData = reactive({
    trees[,c(input$xcol, input$ycol)]
  })
  
  # plot of the X and Y variables
  output$TreePlot <- renderPlot({
    plot(selectedData(), main = "Plot of the X variable and Y variable")
  })
  
})
