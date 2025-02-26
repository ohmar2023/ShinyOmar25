
library(shiny)


ui <- fluidPage(
  
  titlePanel("Mi primera APP", windowTitle = "Nombre Pestaña"),

    sidebarLayout(
      
      sidebarPanel("Hola", width = 2),
      
      mainPanel("Hola *******************************************", width = 10)
      
    )
    
)

server <- function(input, output) {

  
}

# Run the application 
shinyApp(ui = ui, server = server)
