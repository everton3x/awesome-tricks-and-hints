# Template de app Shine com layout fluído

```r
library(shiny)

# Define UI
ui <- fluidPage(
  # Título mostrado no browser. Caso omitido, é utilizado titlePanel()
  # Qualquer código HTML gerado em titlePanel() será mostrado no título da página
  title = "My app",
  # Tema do app
  # NULL: usa "stock" com Bootstrap 3
  # bslib::bs_theme()
  # string com o caminho para um arquivo css de tema do Bootstrap, como www/bootstrap.css
  theme = NULL,
  # Linguagem do app que será usado na tag <html lang="">. O padrão é NULL
  lang = "pt",
  
  # Título da página
  titlePanel(
    # Título do app
    title = h1("My app", align = "left"),
    # Título da janela do browser, caso não use fluidPage(title)
    # windowTitle = "My app"
  ),
  
  # layout com uma sidebar
  sidebarLayout(
    # posição da sidebar: left|right
    position = "left",
    # TRUE para layout fluído; FALSE para layout fixo
    fluid = TRUE,
    # side bar
    sidebarPanel = sidebarPanel(
      # Largura. O padrão é 1/3 para a sidebar (4)
      # width = 4,
      "SideBar"
    ),
    
    # main panel
    mainPanel = mainPanel(
      # Largura. O padrão é 2/3 para o mainPanel (8)
      # width = 8,
      p("Olá, mundo!")
    )
  )
)

# Define aserver logic
server <- function(input, output) {}

# Run app
shinyApp(
  ui = ui,
  server = server,
  # Função que será chamada após o app estar executando
  # onStart = NULL,
  # Opções nomeadas que devem ser passadas para a chamada runApp (podem ser qualquer 
  # uma das seguintes: "port", "launch.browser", "host", "quiet", "display.mode" e "test.mode"). 
  # Você também pode especificar parâmetros de width e height que fornecem uma 
  # dica para o ambiente de incorporação sobre a altura/largura ideal para o aplicativo.
  # options = list(),
  # Uma expressão regular que será aplicada a cada solicitação GET para determinar 
  # se a interface do usuário deve ser usada para lidar com a solicitação. 
  # Observe que todo o caminho da solicitação deve corresponder à expressão regular 
  # para que a correspondência seja considerada bem-sucedida.
  # uiPattern = "/",
  # Pode ser "url", "server" ou "disable". O valor padrão, NULL, respeitará a 
  # configuração de qualquer chamada anterior para enableBookmarking(). 
  # Consulte enableBookmarking() para obter mais informações sobre como marcar seu 
  # aplicativo como favorito.
  # enableBookmarking = NULL
)

```
