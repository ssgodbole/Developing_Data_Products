library(shiny)
library(lubridate)
suppressPackageStartupMessages(library(googleVis))
library(plyr)

# Read data into the server
fema.data <- read.csv("FEMA data.csv", header = TRUE, stringsAsFactors = FALSE)

colnames(fema.data) <- c("ID", "Date", "State", "Incident", "Declaration.Type")

# Convert Date column
fema.data$Date <- as.Date(fema.data$Date, "%m/%d/%Y")



shinyServer(
  function(input, output) {
    fema.data.subset <- reactive({
                          fds <- fema.data[year(fema.data$Date) == input$animation,]
                          nr <- as.data.frame(table(fds$State, year(fds$Date)))
                          for(i in 1:nrow(nr)) {
                            fds$Disasters[fds$State == nr[i, 1]] <- nr[i, 3]
                          }
                          return(fds)
                        })
    fema.data.subset1 <- reactive({
                          fds1 <- fema.data[year(fema.data$Date) == input$animation,]
                          fds1 <- subset(fds1, select=c(Date,State,Incident,Declaration.Type))
                        })
    
    output$gchart <- renderGvis({
      gvisGeoChart(fema.data.subset(), locationvar = "State", colorvar = "Disasters", 
                   options = list(region = "US", resolution = "provinces", 
                                  colorAxis = "{colors:['red']}",
                                  width=800, height=600))
    })
    
    output$tchart <- renderGvis({
      gvisTable(fema.data.subset1(), options = list(title="Details of disasters"))
    })
  }
)