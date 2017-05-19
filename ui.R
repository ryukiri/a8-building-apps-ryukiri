# ui.R
library(shiny)
library(plotly)

shinyUI(fluidPage(
  # Add a descriptive application title
  titlePanel("Cereal"),
  
  sidebarLayout(
    sidebarPanel(
      
      selectInput(inputId = "ratings",
                  label = "Ratings:",
                  choices = c("1 Star", "2 Stars", "3 Stars", "4 Stars", "5 Stars"),
                  selected = "1 Star"),
      
      selectInput(inputId = "label",
                  label = "Label:",
                  choices = c("Calories", "Protein", "Sodium", "Fiber", "Carbs", "Sugars", "Potassium", "Vitamins"),
                  selected= "0")
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      #give your plot a descriptive name
      plotOutput("rolePlot")
    )
  )
))