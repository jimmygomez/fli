
library(shiny)
library(shinydashboard)


shinyUI(dashboardPage(


# Head --------------------------------------------------------------------

    dashboardHeader(title = "WANUY"),

    
    
# Sider -------------------------------------------------------------------        
    
    dashboardSidebar(
      
      sidebarMenu(
        menuItem("Presentacion", tabName = "intro", icon = icon("dashboard")),
        menuItem("unidades", tabName = "und", icon = icon("cog")),
        menuItem("requerimentos", tabName = "req", icon = icon("leaf")),
        menuItem("fertilizantes", tabName = "fert", icon = icon("tint")),
        menuItem("resumen", tabName = "res", icon = icon("list"))
      )
      
      
    ),
    
    
    
# Body --------------------------------------------------------------------    


    dashboardBody(
      
      
      tabItems(
        
        # presentacion
        
        tabItem(tabName = "intro",
                
                h2("descripcion de la aplicacion"),
                
                fluidRow(
                  box(plotOutput("plot1", height = 250)),
                  
                  box(
                    title = "Controls",
                    sliderInput("slider", "Number of observations:", 1, 100, 50)
                  )
                )
                
        ),
        
        
        # unidades
        
        tabItem(tabName = "und",
                
                h2(" moneda, area, peso")
                
                
        ),
        
        
        # requerimientos
        
        tabItem(tabName = "req",
                
                h2("cultivo, suelo, area de siembra")
                
        ),
        
        
        # fertilizantes
        
        tabItem(tabName = "fert",
                
                h2("lista de fertilizantes")
                
        ),
        
        # resumen
        
        tabItem(tabName = "res",
                
                h2("resultados, comentarios, sugerencias")
                
        )
        
        
        
        
      )
      
      
      
    )
    
  )
)



