library(shiny)
library(leaflet)

ui <- fluidPage(leafletOutput("map"))

server <- function(input, output, session) {
  
  output$map <- renderLeaflet({
    library(leaflet)
    leaflet() %>%
      addTiles()})}

shinyApp(ui, server)

