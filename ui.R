library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel(em("Predict your offsprings height")),
  
    sidebarPanel(
      img(src="Band.png", height = 200, width = 200),
      numericInput('height', label=h4('Specify your height in inches:'),70.5 , min = 35, max = 90, step = 0.5),
      br(),
      selectInput("select", label = h4("Select your gender and the expected gender of your offspring:"), 
                  choices = list("male; male (fs)" = "fs", "male; female (fd)" = "fd",
                                 "female; male (ms)" = "ms", "female; female (md)" = "md"), selected = "md"),
      br(),
      submitButton('Submit')
    ),
    mainPanel(
      h4(div("Lucky you,", style = "color:blue")),
      h4(div("congratulations to the upcomming birth of your beloved offspring!", style = "color:blue")),
      p("In order to give you the possiblity to plan a little ahead (on room heights, cloth sizes, etc.)
        you have now the possiblity to predict your offsprings adult height!"),
      br(),
            strong("Please fill in your specifications like your height in inches (inches=centimeters/2.54), your gender and the expected gender of your offspring"),
            strong("into the control panel on the left. Push the submit button, in order to obtain the predictions in inches and centimeters."),
      p("The output below will supply you with the predicted size of your offspring in inches and centimeters."),      
      img(src="Sizes.png", height = 300, width = 300),
      p("The applied multiple linear regression model is based on the"),
      code("PearsonLee"), p("data set of the R-package"),
      code("HistData"),
          br(),
        h4('Your personal inputs:'),
        verbatimTextOutput("inputValue1"),
        verbatimTextOutput("inputValue2"),
      h4('Your specifications resulted in the following prediction of the height of your offspring:'),
        verbatimTextOutput("prediction")
    )
  )
)

