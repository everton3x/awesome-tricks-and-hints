# Como formatar os valores dos eixos X/Y para milhares/milhões em um gráfico do ggplot (linguagem R)?

[Resposta](https://pt.quora.com/Como-formatar-os-valores-dos-eixos-X-Y-para-milhares-milh%C3%B5es-em-um-gr%C3%A1fico-do-ggplot-linguagem-R/answer/Marcelo-Carvalho-Dos-Anjos?__filter__=all&__nsrc__=notif_page&__sncid__=30298378376&__snid3__=40943438248) de [Marcelo CArvalho dos Anjos](https://pt.quora.com/profile/Marcelo-Carvalho-Dos-Anjos) no Quora.PT

---

Não sei se entendi bem a pergunta mas você pode usar funções do pacote scales exemplo

```r
library(tidyverse) 
library(gapminder) 
library(scales) 
 
#exemplo resumo para K = 1000, M = milhão , B = bilhão 
demo_continuous(c(1,1000000000), 
                labels = label_number(scale_cut = cut_short_scale())) 
```

Vamos tentar fazer sem as escalas. Vamos usar os dados de renda média

```r
#exemplo sem casas decimais 
gapminder %>% 
  filter(country == "Brazil") %>%  
  ggplot(aes(x = year, y = gdpPercap)) + 
  geom_line() 
```

Agora vamos usar as escalas com separador de milhar usado no Brasil e um prefixo em $ pois o dado é em dólar.

```r
#exemplo casas decimais 
gapminder %>% 
  filter(country == "Brazil") %>%  
  ggplot(aes(x = year, y = gdpPercap)) + 
  geom_line() + 
  scale_y_continuous(labels = label_comma(accuracy =  0.01,  
                                          big.mark = ".", 
                                          decimal.mark = ",", 
                                          prefix = "$")) 
```

Espero ter ajudado

---
