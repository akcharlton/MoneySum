moneySum <- function(ones, fives, tens, twenties, fifties, hundreds) ones + 5*fives + 10*tens + 20*twenties + 50*fifties + 100*hundreds
shinyServer(
        function(input,output){
                output$sum <- renderPrint({moneySum(input$ones,input$fives,input$tens,input$twenties,input$fifties,input$hundreds)})
        }
)

