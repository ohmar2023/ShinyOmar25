
library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Mi segundo shiny"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel("hola"),
        mainPanel(" hola mundo",
                  br(),
                  br(),
                  h1("Hola mundo, esto es html"))
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {


}

shinyApp(ui = ui, server = server)
