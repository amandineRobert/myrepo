library(shiny)
library(maps)
library(mapproj)

counties <- readRDS("data2/counties.rds")
source("helpers.R")

ui <- fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with information from the 2010 US Census"),
      
      selectInput("var",
                  label = "Choose a variable to display",
                  choices = c("Percent White",
                              "Percent Black",
                              "Percent Hispanic",
                              "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("range",
                  label = "Range of interest :",
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      textOutput("selected_var"),
      textOutput("min_max"),
      plotOutput("map")
    )
  )
)

server <- function(input, output){
  # output$selected_var <- renderText({
  #   paste("You have selected ", input$var)
  # })
  # 
  # output$min_max <- renderText({
  #   paste("You have choosen a range that goes from ", input$range[1], "to ", input$range[2])
  # })
  output$map <- renderPlot({
    data <- switch(input$var,
                   "Percent White" = counties$white,
                   "Percent Black" = counties$black,
                   "Percent Hispanic" = counties$hispanic,
                   "Percent Asian" = counties$asian)
    
    color <- switch(input$var,
                    "Percent White" = "darkgreen",
                    "Percent Black" = "black",
                    "Percent Hispanic" = "darkorange",
                    "Percent Asian" = "darkviolet")
    
    legend <- switch(input$var,
                     "Percent White" = "% White",
                     "Percent Black" = "% Black",
                     "Percent Hispanic" = "% Hispanic",
                     "Percent Asian" = "% Asian")
    
    percent_map(data, color, legend, input$range[2], input$range[1])
    
  })
  

}

shinyApp(ui = ui, server = server)