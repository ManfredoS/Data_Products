library(shiny)
library(HistData)
data(PearsonLee)
summary(lm.fit <- lm(child~parent+gp-1,weight=frequency, data=PearsonLee))

Height <- function(height,select) predict(lm.fit,data.frame(parent=height,gp=as.factor(select)),type="response")

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({data.frame(Inches=input$height,Centimeters=input$height*2.54)})
    output$inputValue2 <- renderPrint({input$select})
    output$prediction <- renderPrint({round(data.frame(Inches=Height(input$height,input$select),
                                                 Centimeters=Height(input$height,input$select)*2.54),2)})
  }
)
