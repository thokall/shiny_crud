file.sources = list.files("R", pattern="*.R", full.names = TRUE)
sapply(file.sources, source, .GlobalEnv)
source("R/cars_table_module.R")
ui <- fluidPage(
  shinytoastr::useToastr(),
  shinyFeedback::useShinyFeedback(),
  shinyjs::useShinyjs(),
  # Application Title
  titlePanel(
    h1("Shiny CRUD Application", align = 'center'),
    windowTitle = "Shiny CRUD Application"
  ),
  cars_table_module_ui("cars_table")
)

