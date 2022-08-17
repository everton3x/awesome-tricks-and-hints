# Dicas & Truques para knitr::kable

---

## Padronizar tabelas

```r
app.table.default <- function(data, align = NULL, caption = NULL, format.args = list(big.mark = ".", decimal.mark =",", nsmall = 2), col.names = NULL) {
  tbl <- knitr::kable(data, align=align, caption = caption, format.args = format.args, col.names = col.names)
  tbl <- kable_classic(tbl)
  tbl <- kable_styling(tbl, position = "center", bootstrap_options = c("condensed"))
  return(tbl)
}
```

---
