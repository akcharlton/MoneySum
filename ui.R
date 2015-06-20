library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Money Sum"),
        sidebarPanel(
                numericInput('ones','Number of $1 Bills', 0, min=0,max=1000,step=1),
                numericInput('fives','Number of $5 Bills', 0, min=0,max=1000,step=1),
                numericInput('tens','Number of $10 Bills', 0, min=0,max=1000,step=1),
                numericInput('twenties','Number of $20 Bills', 0, min=0,max=1000,step=1),
                numericInput('fifties','Number of $50 Bills', 0, min=0,max=1000,step=1),
                numericInput('hundreds','Number of $100 Bills', 0, min=0,max=1000,step=1),
                submitButton('Calculate')
                
        ),
        mainPanel(
                tabsetPanel(
                  tabPanel("Value", verbatimTextOutput('sum')),
                  tabPanel("Documentation", "Enter the number of each type of bill to calculate the total value.")
        ))
))
