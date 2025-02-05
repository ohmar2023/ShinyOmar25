
library(shiny)

shinyServer(function(input, output) {

    output$salida_1 <- renderText({
      if (input$boton_1 == 1){
        print("hola")
      }else{
        print("chao")
      }
    })
    
    output$salida_boton_2 <- renderText({
     print(input$goButton)
    })
    
    output$distPlot <- renderPlot({

      # Take a dependency on input$goButton
      input$goButton

      # Use isolate() to avoid dependency on input$obs
      dist <- isolate(rnorm(input$obs))
      hist(dist)
    })
    
})
