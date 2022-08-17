# Dicas e Truques para ggplot

---

## Padronizar aplicação de opções de temas

```r
app.plot.theming <- function(g, xlabel = NULL, ylabel = NULL) {
  return(
    g +
      theme(
        legend.position = "top",
        legend.justification = "left",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_blank(),
        panel.background = element_rect(fill = "transparent"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        plot.background = element_rect(fill = "transparent")
        ) +
      xlab(xlabel) +
      ylab(ylabel)
  )
}
```

---
