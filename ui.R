library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Age Calculator"),
  sidebarPanel(
    p("This is an age calculator application. This application allows user to pick any date of birth for the calenar and calculate the age for the given birtdate."),
    dateInput("birthday", "Birthdate:"),
    em("Click on the textbox to display calendar"),
    p(),
    checkboxGroupInput("display", "Result options:",
                       c("Calculate age" = "1",
                         "Display zodiac" = "2"))
    # h3("Function:"),
    #h5("This is an age calculator application"),
    #h5("You choose what to show by clicking any of the above checkboxes."),
    #h6("The ui.r and server.r scripts can be viewed via GitHub repository at: https://github.com/nazilacj/Developing_Data_Products")
  ),
  mainPanel(
    h1("Results"),
    img(src="zodiac.png", height = 400, width = 400),
    p(),
    strong("Below are the results for the given birthdate with the chosen options:"),
    p('The given birth day and date:'),
    verbatimTextOutput("age"),
    verbatimTextOutput("zod")
    
  )
))