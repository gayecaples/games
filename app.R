
library(dashboardthemes)
library(shinydashboard)



######

ui <- dashboardPage(

                    
                    
                    
    dashboardHeader(title = "Example UI with R Shiny", titleWidth = 350),
    
    dashboardSidebar( width=250,
  
    sidebarMenu(
    menuItem("Dashboard", tabName = "tab_dashboard", icon = icon("dashboard")),
    menuItem("Awards", tabName = "tab_high_score", icon = icon("trophy")),
    menuItem("Live feed", tabName = "tab_tweet_wall", icon = icon("stream")),
    menuItem("About", tabName = "tab_pic_tweets", icon = icon("images")),
    menuItem("Our values", tabName = "tab_explore", icon = icon("compass"))
    
    )),

        
  
  
  

  
  
  dashboardBody(theme_purple_gradient, 
 
    fluidRow(
      valueBox(10, 'value1',  color = "aqua", width = 3,
               href = NULL),
      valueBox(10, 'value1',  color = "aqua", width = 3,
               href = NULL),
      valueBox(10, 'value1',  color = "aqua", width = 3,
               href = NULL),
      valueBox(10, 'value1',  color = "aqua", width = 3,
               href = NULL),
      valueBox(10, 'value1',  color = "red", width = 3,
               href = NULL),
      valueBox(10, 'value1',  color = "red", width = 3,
               href = NULL),
      valueBox(10, 'value1',  color = "red", width = 3,
               href = NULL),
      valueBox(10, 'value1',  color = "red", width = 3,
               href = NULL),
               )
    ,
  
    
    
    
    fluidRow(
      box(title="Slider", width=3, 
          sliderInput("control_num",
                      "",
                      min = 1, max = 20, value = 15)),

      box(title="Dropdown", width=3,
          selectInput("inSelect","" ,
                      c("label 1" = "option1",
                        "label 2" = "option2"))),
      box(title = 'Buttons', width = 3,
          radioButtons("inRadio", "",
                       c("label 1" = "option1",
                         "label 2" = "option2"))),
      
      box(title="Date Range", width=3,       
          dateRangeInput("inDateRange", "Date range input:") )   
             
    ),
 
    fluidRow(
      box(title="Chart1", width=3, 
          ),
      
      box(title="Chart2", width=3, 
         ),
      box(title = 'Chart3', width = 3, 
          ),
      
      box(title="Chart4", width=3  )
      
    ),
    
      

    
    fluidRow(
    
    tabsetPanel(type = "tabs",
                tabPanel("Figures",
                         
                         box(title="Figure1", width=3, 
                         ),
                         
                         box(title="Figure2", width=3, 
                         ),
                         box(title = 'Figure3', width = 3, 
                         ),
                         
                         box(title="Figure4", width=3  )), 
                         
                tabPanel("Summary"),
                
               tabPanel("Downloads",  
                        downloadButton("downloadData1", "historic data"),
                        downloadButton("downloadData2", "predictions"),
                        )
    )
    
    )
    

  ) 
  
)


server <- function(input, output) { }

shinyApp(ui, server)


