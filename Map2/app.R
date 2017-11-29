library(shiny)
library(leaflet)

ui <- fluidPage(leafletOutput("mymap"))

server <- function(input, output, session) {
  
  output$mymap <- renderLeaflet({
    library(leaflet)
    leaflet() %>%
      setView(lng = -15, lat = 20, zoom = 1) %>%
      addTiles() %>%
      addProviderTiles(providers$Esri.WorldImagery)})}

shinyApp(ui, server)