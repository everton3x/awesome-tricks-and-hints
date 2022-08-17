# Transformações com data.frames

Exemplos de transformações e outras operações com data.frames e objetos equivalentes.

---

## data.frame long -> wide

Transforma um data.frame do formato longo (long) para o formato largo (wide)

```r
library(tidyr)

# data.frame de exemplo
df_long <- data.frame(
  name = c("John", "Mary", "Paul", "John", "Mary", "Paul"),
  year = c(2021, 2021, 2021, 2022, 2022, 2022),
  value = c(100, 105, 90, 110, 120, 100)
)
```

|name | year| value|
|:----|----:|-----:|
|John | 2021|   100|
|Mary | 2021|   105|
|Paul | 2021|    90|
|John | 2022|   110|
|Mary | 2022|   120|
|Paul | 2022|   100|

```r
df_wide <- pivot_wider(df_long, names_from = year, values_from = value)
```

|name | 2021| 2022|
|:----|----:|----:|
|John |  100|  110|
|Mary |  105|  120|
|Paul |   90|  100|

---

## data.frame wide -> long

Transforma um data.frame do formato largo (wide) para o formato longo (long)

```r
library(tidyr)

# data.frame de exemplo
df_wide <- data.frame(
  name = c("John", "Mary", "Paul"),
  "2021" = c(100, 105, 90),
  "2022" = c(110, 120, 100)
)
```

|name | X2021| X2022|
|:----|-----:|-----:|
|John |   100|   110|
|Mary |   105|   120|
|Paul |    90|   100|

```r
df_long <- pivot_longer(df_wide, cols = 2:3, names_to = "year", values_to = "value")
```

|name |year  | value|
|:----|:-----|-----:|
|John |X2021 |   100|
|John |X2022 |   110|
|Mary |X2021 |   105|
|Mary |X2022 |   120|
|Paul |X2021 |    90|
|Paul |X2022 |   100|

---
