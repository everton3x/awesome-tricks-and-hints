library(datasets)# Dados de exemplo
quantile(iris[["Sepal.Length"]], p=c(0.05, 0.25, 0.5, 0.75, 0.95))

# quantile(x, probs = seq(0, 1, 0.25), na.rm = FALSE,
#          names = TRUE, type = 7, digits = 7, ...)
# 
# x	
#   numeric vector whose sample quantiles are wanted, or an object of a class for which a method has been defined (see also ‘details’). NA and NaN values are not allowed in numeric vectors unless na.rm is TRUE.
# 
# probs	
#   numeric vector of probabilities with values in [0,1][0,1]. (Values up to ‘⁠2e-14⁠’ outside that range are accepted and moved to the nearby endpoint.)
# 
# na.rm	
#   logical; if true, any NA and NaN's are removed from x before the quantiles are computed.
# 
# names	
#   logical; if true, the result has a names attribute. Set to FALSE for speedup with many probs.
# 
# type	
#   an integer between 1 and 9 selecting one of the nine quantile algorithms detailed below to be used.
# 
# digits	
#   used only when names is true: the precision to use when formatting the percentages. In R versions up to 4.0.x, this had been set to max(2, getOption("digits")), internally.
# 
# ...	
#   further arguments passed to or from other methods.
