library(shiny)
shinyServer(
 function(input, output) {
    output$Hist <- renderPlot({
      data <- c(input$id1,input$id2,input$id3,input$id4,input$id5,
                input$id6,input$id7,input$id8,input$id9, input$id10)
      hist(data, xlab="Guesses", col="blue", main="Guesses of Eqbm")
      avg <- mean(data)
      lines(c(avg,avg), c(0, 200),col="red",lwd=5)
    })
    output$avg <- renderText({
      data <- c(input$id1,input$id2,input$id3,input$id4,input$id5,
                input$id6,input$id7,input$id8,input$id9, input$id10)
      avg <- mean(data)
      avg
    })
 } 
)

