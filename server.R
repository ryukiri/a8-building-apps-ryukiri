# server.R
library(dplyr)
library(plotly)

# Read in data
setwd("C:/Users/Austin Quach/Google Drive/College/Sophomore/Info 201/Homework/a8-building-apps-ryukiri")
data <- read.table('data/cereal.tsv', stringsAsFactors = FALSE)

shinyServer(function(input, output) {
  output$rolePlot <- renderPlot({
    if(input$cereal == "100% Bran") {
      plot.data <- data %>% filter('name' == '100%_Bran')
    } else if (input$cereal == "100% Natural Bran") {
      plot.data <- data %>% filter(cereal == "100%_Natural_Bran")
    } else {
      plot.data <- data
    }
    
    #Define a y axis value based on the input Agree or Disagree
    if(input$ratings == "25") {
      plot.data <- data %>% filter('rating' > "25")
    } else {
      ratings = plot.data$disagree
    }
    
    #Using the values you just defined, construct a scatterplot using ggplot2
    #x will be defined by education, y by agree/disagree
    #Bonus: Factor the color field by sex 
    #(this will allow you to visually see the difference between Men and Women when Both are selected)
    ggplot(plot.data, aes(x=education, y=thoughts, color=factor(sex))) + geom_point()
    
  })
  
})
