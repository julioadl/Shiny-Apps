library(shiny)    
shinyUI(
  pageWithSidebar(
    headerPanel("2/3 of the Average")
    ,
    sidebarPanel(
      numericInput('id1', 'Guess 1', 0, min = 0, max = 10, step = 1),
      numericInput('id2', 'Guess 2', 0, min = 0, max = 10, step = 1),
      numericInput('id3', 'Guess 3', 0, min = 0, max = 10, step = 1),
      numericInput('id4', 'Guess 4', 0, min = 0, max = 10, step = 1),
      numericInput('id5', 'Guess 5', 0, min = 0, max = 10, step = 1),
      numericInput('id6', 'Guess 6', 0, min = 0, max = 10, step = 1),
      numericInput('id7', 'Guess 7', 0, min = 0, max = 10, step = 1),
      numericInput('id8', 'Guess 8', 0, min = 0, max = 10, step = 1),
      numericInput('id9', 'Guess 9', 0, min = 0, max = 10, step = 1),
      numericInput('id10', 'Guess 10', 0, min = 0, max = 10, step = 1),
      submitButton('Submit')
    )
    ,
    mainPanel(
      h4('Each of you people announces an integer from 0 to 10. The person who gets 2/3 of the average
         wins 10 extra-points.'),
      plotOutput('Hist'),
      h3('Average:'),
      verbatimTextOutput("avg")
      )
  ))