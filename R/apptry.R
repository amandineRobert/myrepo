library(shiny)
source("./addme.R")
ui <- fluidPage(
  h1("1st Shiny app"),
  flowLayout(
    numericInput(inputId = "num1",
                 "Number 1", value = 0),
    # uiOutput("n1"),
    
    numericInput(inputId = "num2",
                 "Number 2", value = 0),
    # uiOutput("n2"),
    
    actionButton(inputId = "add",
                 label = "Add"),
    

    textOutput("res")
  )
)

server <- function(input, output){

  result <- eventReactive(input$add, {
    addme(input$num1, input$num2)
  })
  output$res <- renderText({
    result()
  })
  
}

shinyApp(ui = ui, server = server)