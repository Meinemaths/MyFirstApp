library(shiny)
varname <- names(trees)


# Define UI for application that draws the plot
shinyUI(fluidPage(
  
  # Title
  titlePanel("Tree Data"),
  
  # Sidebar where you can choose two variables of the dataset
  sidebarLayout(
    sidebarPanel(
      fluidRow(style = "padding-bottom: 20px;",
               column(4, selectInput('xcol', 'X Variable', varname)),
               column(4, selectInput('ycol', 'Y variable', varname,
                                     selected = varname[2]))
      )
    ),
    
    # Show a plot with the generated axes
    mainPanel(
       plotOutput("TreePlot")
    )
  )
))
