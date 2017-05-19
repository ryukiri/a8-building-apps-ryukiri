# ui.R
library(shiny)
library(plotly)

shinyUI(fluidPage(
  # Add a descriptive application title
  titlePanel("Cereal"),
  
  sidebarLayout(
    sidebarPanel(
      
      selectInput(inputId = "cereal",
                  label = "Cereal:",
                  choices = c("100% Bran", 
                              "100% Natural Bran", 
                              "All Bran", 
                              "All Bran with Extra Fiber", 
                              "Almond Delight",
                              "Apple Cinnamon Cheerios", 
                              "Apple Jacks", 
                              "Basic 4",
                              "Bran Chex", 
                              "Cap n Crunch", 
                              "Cheerios",
                              "Cinnamon Toast Crunch",
                              "Clusters",
                              "Cocoa Puffs",
                              "Corn Chex",
                              "Corn Flakes",
                              "Corn Pops",
                              "Count Chocula",
                              "Cracklin Oat Bran", 
                              "Cream of Wheat",
                              "Crispix",
                              "Crispy Wheat & Raisins",
                              "Double Chex",
                              "Fruit Loops",
                              "Frosted Flakes",
                              "Frosted Mini Wheats",
                              "Fruit & Fibre Dates, Walnuts, and Oats",
                              "Fruitful Bran",
                              "Fruity Pebbles",
                              "Golden Crisp",
                              "Golden Grahams",
                              "Grape Nut Flakes",
                              "Grape Nuts",
                              "Great Grains Pecan",
                              "Honey Graham Ohs",
                              "Honey Nut Cheerios",
                              "Honeycomb",
                              "Just RIght Crunchy Nuggets",
                              "Just Right Fruit & Nut",
                              "Kix",
                              "Life",
                              "Lucky Charms",
                              "Maypo",
                              "Muesli Raisins, Dates, & Almonds",
                              "Muesli Raisins, Peaches, & Pecans",
                              "Mueslix Crispy Blend",
                              "Multi-Grain Cheerios",
                              "Nut & Honey Crunch",
                              "Nutri-Grain Almond-Raisin",
                              "Nutri-grain Wheat",
                              "Oatmeal Raisin Crisp",
                              "Post Nat. Raisin Bran",
                              "Product 19",
                              "Puffed Rice",
                              "Puffed Wheat",
                              "Quaker Oat Squares",
                              "Quaker Oatmeal",
                              "Raisin Bran",
                              "Raisin Nut Bran",
                              "Raisin Squares",
                              "Rice Chex",
                              "Rice Krispies",
                              "Shredded Wheat",
                              "Shredded Wheat n Bran",
                              "Shredded Wheat Spoon Size",
                              "Smacks",
                              "Special K",
                              "Strawberry Fruit Wheats",
                              "Total Corn Flakes",
                              "Total Raisin Bran",
                              "Total Whole Grain",
                              "Triples",
                              "Trix",
                              "Wheat Chex",
                              "Wheaties",
                              "Wheaties Honey Gold"),
                  selected = "Both"),
      
      selectInput(inputId = "ratings",
                  label = "Ratings:",
                  choices = c("0", "25", "50", "75"),
                  selected= "0")
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      #give your plot a descriptive name
      plotOutput("rolePlot")
    )
  )
))