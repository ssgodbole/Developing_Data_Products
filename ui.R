library(shiny)
suppressPackageStartupMessages(library(googleVis))

shinyUI(fluidPage(
    titlePanel("FEMA declared disasters by Year and State"),
    sidebarLayout (
      sidebarPanel(width = 6,
                   h4("Description:"),
                   div('Federal Emergency Management Agency (FEMA) declares and publishes data every year about the major disasters 
            around the united States. This visualization shows data from 2005 to 2016. The geographical map shows the 
            number of disasters that were recorded by State. The table on the right is more descriptive and shows the 
            details of all disasters with exact dates.'),
        sliderInput("animation", "Year", 2005, 2016, 2005, step=1,
                    animate = animationOptions(interval=2000,loop=F)),
        htmlOutput("gchart")
      ),
      mainPanel(width = 6,
        htmlOutput("tchart")
      )
  )
)
)