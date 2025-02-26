
library(shiny)


ui <- fluidPage(

    # Application title
    titlePanel("Mi APP", windowTitle = "Hola Omar"),

    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        mainPanel(
          
          tabsetPanel(
            tabPanel("Tablas", DTOutput("salida_3")),
            tabPanel("Graficos", plotOutput("distPlot")),
            tabPanel("Resumen", tableOutput("salida_2"))
          )
           
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
    output$salida_3 <- renderDT({
      iris
      
    })
  
    output$salida_2 <- renderTable({
      summary(mtcars)
      
    })

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
