
my_ui <-  navbarPage(
  
  title = "Mi app",
  theme = shinytheme("cerulean"),
  
  tabPanel("Panel 1", 
           "Estoy en el primer panel",
           wellPanel(fluidRow(column(actionButton("boton_1", "Presionar"), width = 4),
                              column(actionButton("boton_2", "Presionar"), width = 4),
                              column(actionButton("boton_3", "Presionar"), width = 4))),
           hr(),
           selectInput("boton_4", 
                       label = "Opciones:",
                       choices = c("a","b","c"),
                       multiple = T)
           ),
  
  tabPanel("Panel 2", 
           sidebarLayout(
             sidebarPanel(),
             mainPanel ()
           )
           
           ),
  tabPanel("Parte 3")
)
