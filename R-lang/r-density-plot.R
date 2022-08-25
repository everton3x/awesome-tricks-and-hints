library(datasets)

ds <- iris[["Sepal.Length"]]

hist(ds, freq = FALSE)
lines(density(ds, lwd = 3, col="blue"))

# freq = FALSE para colocar o histograma em proporção, não em contagem.
