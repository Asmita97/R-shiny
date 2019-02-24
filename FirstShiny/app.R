library(shiny)

ui <- fluidPage(
  sliderInput(inputId = "num", 
  label = "Guess a number",0,100,10),
  plotOutput(outputId = "hist")
)

server <- function(input, output) {
  output$hist <- renderPlot({ 
    hist(rnorm(input$num))
    
  })
  
}

shinyApp(ui = ui, server = server)