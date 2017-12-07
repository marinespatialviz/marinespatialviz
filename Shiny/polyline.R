library(shiny)
library(leaflet)

x = c(-180, 180)
y = c(0, 0)
e = data.frame(x, y)

ui <- fluidPage(leafletOutput("mymap"))

server <- function(input, output, session) {
  
  output$mymap <- renderLeaflet({
    library(leaflet)
    leaflet() %>%
      addTiles() %>%
      setView(lng = 0, lat = 0, zoom = 2) %>%
      addPolylines(lng = e$x, lat = e$y, color = "red") %>%
      addProviderTiles(providers$Esri.OceanBasemap)})}

shinyApp(ui, server)