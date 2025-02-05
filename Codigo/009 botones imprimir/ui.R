library(shiny)

shinyUI(fluidPage(

    titlePanel("Clase 001"),

    sidebarLayout(
        sidebarPanel(
           
          #primer boton
          actionButton(inputId = "boton_1",
                       label = "aplastar"),
        
        
        sliderInput("obs", "Number of observations:",
                    min = 0, max = 1000, value = 500),
        
        actionButton("goButton", "Go!")

        ),
        mainPanel(
           verbatimTextOutput(outputId = "salida_1"), 
           
           plotOutput("distPlot"),
           
           verbatimTextOutput("salida_boton_2")
        )
    )
))
