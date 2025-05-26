
library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  hr(),
  "Hola, este es mi primer layout", 
  hr(),
  fluidRow("Fluidrow me permite dividir mi app en renglones"),
  fluidRow("Puedo definir los renglones que yo desee"),
  fluidRow("De esta manera nuestra app se va definiendo de manera vertical"),
  fluidRow(actionButton("Boton_1", label = "Da click")),
  hr(),
  fluidRow(column("Podemos organizar nuestra app de manera horizontal", width = 3),
           column("Podemos agregar varias columnas", width = 3), 
           column("Tenemos 12 partes horizontalmente que podemos usarlas", width = 3), 
           column("Y de manera vertical podemos agregar todos lo que queramos", width = 3)),
  hr(),
  fluidRow(column(actionButton("Boton_1", "Da Click"),width = 3),
           column(actionButton("Boton_2", "Da Click"),width = 3),
           column(actionButton("Boton_3", "Da Click"),width = 3),
           column(actionButton("Boton_4", "Da Click"),width = 3)), 
  hr(),
  "Con well Panel puedo crear un rectangulo y agrupar mi infromación:",
  wellPanel(fluidRow(column(actionButton("Boton_1", "Da Click"),width = 3),
                     column(actionButton("Boton_2", "Da Click"),width = 3),
                     column(actionButton("Boton_3", "Da Click"),width = 3),
                     column(actionButton("Boton_4", "Da Click"),width = 3))), 
  hr(), 
  wellPanel(column("hola", width = 6), 
            column("chao", width = 3))

   
)

# Define server logic required to draw a histogram
server <- function(input, output) {

   
}

# Run the application 
shinyApp(ui = ui, server = server)
