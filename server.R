# server.R
library(dplyr)
library(plotly)

# Read in data
# setwd("C:/Users/Austin Quach/Google Drive/College/Sophomore/Info 201/Homework/a8-building-apps-ryukiri")
setwd("~/Documents/a8-building-apps-ryukiri")
data <- read.table('data/cereal.tsv', stringsAsFactors = FALSE)
data <- data %>% "["(.,2:78,)

shinyServer(function(input, output) {
  output$rolePlot <- renderPlot({
    
    # Select ratings of cereal to show
    if(input$ratings == "1 Star") {
      plot.data <- data %>% filter(V16 < 20)
    } else if(input$ratings == "2 Stars"){
      plot.data <- data %>% filter(V16 > 20) %>% filter(V16 < 40)
    } else if(input$ratings == "3 Stars"){
      plot.data <- data %>% filter(V16 > 40) %>% filter(V16 < 60)
    } else if(input$ratings == "4 Stars"){
      plot.data <- data %>% filter(V16 > 60) %>% filter(V16 < 80)
    } else if(input$ratings == "5 Stars"){
      plot.data <- data %>% filter(V16 > 80)
    } else {
      plot.data <- data
    }
    
    
    #Shows calories, Protein, Sodium, Fiber, Carbs, Sugars, Potassium, or Vitamins
    if(input$label == "Calories") {
      nutrition <- plot.data$V4
    } else if(input$label == "Protein") {
      nutrition <- plot.data$V5
    } else if(input$label == "Sodium") {
      nutrition <- plot.data$V7
    } else if(input$label == "Fiber") {
      nutrition <- plot.data$V8
    } else if(input$label == "Carbs") {
      nutrition <- plot.data$V9
    } else if(input$label == "Sugars") {
      nutrition <- plot.data$V10
    } else if(input$label == "Potassium") {
      nutrition <- plot.data$V11
    } else if(input$label == "Vitamins") {
      nutrition <- plot.data$V12
    }
    
    # Consturcts a bar plot with selected nutrition and rating of cerael
    ggplot(data = plot.data, aes(x=V1, y=nutrition)) + 
      geom_bar(stat = "identity") + 
      theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))
    
  })
})
