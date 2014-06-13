#
#
#
# Get slidify running
#
# 11.06.14 MS
#############################
#install.packages("devtools")
require(devtools)
#install_github("slidify","ramnathv")
#install_github("slidifyLibraries","ramnathv")
#install_github("shinyapps","rstudio")
require(slidify)
# Call the slightly populated .Rmd file
author("first_deck")
#
# Run the presentation
slidify("index.Rmd")
library(knitr)
browseURL("index.html")

# Publish the slides:
publish(user="ManfredoS",repo="Slidify",host="github")
publish(user="ManfredoS",repo="Slidify")