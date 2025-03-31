library(shiny)
library(shinythemes)

source("my_ui.R", local = TRUE)
source("my_server.R")

shinyApp(ui = my_ui, 
         server = my_server)


