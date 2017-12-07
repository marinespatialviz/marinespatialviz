library(shiny)
library(leaflet)

ui <- fluidPage(leafletOutput("mymap"))

server <- function(input, output, session) {
  
  output$mymap <- renderLeaflet({
    leaflet() %>%
      addTiles() %>%
      setView(lng = 142, lat = 11, zoom = 3) %>%
      addMarkers(lng = 142.1999992, lat = 11.3499986, popup = 'Mariana Trench') %>%
      addProviderTiles(providers$CartoDB.Positron)})}

shinyApp(ui, server)