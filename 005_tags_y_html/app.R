
library(shiny)


ui <- fluidPage(

    tags$h1("Los tags permiten modificar la aparincia de mi app."),
    tags$h2("Los tags permiten modificar la aparincia de mi app."),
    tags$h3("Los tags permiten modificar la aparincia de mi app."),
    tags$h4("Los tags permiten modificar la aparincia de mi app."),
    
    tags$br(), # es un salto de linea
    tags$a("Link de esta clase", href = "https://www.youtube.com/watch?v=iO48ICNHuPk&t=106s"),
    
    tags$p("Tags$p nos sirve para crear parrafos",
           tags$em("tags$em"),
           tags$b("tags$b"),
           "seguimos escribiendo el parrafo"), 
    
    br(), 
    tags$code(" Aqui podemos escribrir codigo.")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

   
}

# Run the application 
shinyApp(ui = ui, server = server)
