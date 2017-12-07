library(shiny)
library(leaflet)

x = c(-180, 180, 180, -180)
y = c(23.5, 23.5, -23.5, -23.5)
e = data.frame(x, y)

ui <- fluidPage(leafletOutput("mymap"))

server <- function(input, output, session) {
  
  output$mymap <- renderLeaflet({
    library(leaflet)
    leaflet() %>%
      addTiles() %>%
      setView(lng = 0, lat = 0, zoom = 2) %>%
      addPolygons(lng = e$x, lat = e$y, color = "orange", fillOpacity = .5) %>% 
      addProviderTiles(providers$Hydda.Base)})}

shinyApp(ui, server)