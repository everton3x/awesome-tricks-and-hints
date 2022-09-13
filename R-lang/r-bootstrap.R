library(boot)# pacote para bootstrapping
library(datasets)# exemplos de datasets
ds <- iris[["Sepal.Length"]]
# Função que calcula a estatística, no caso a média
stat_func <- function(x, idx) median(x[idx])

boot_obj <- boot(ds, R = 1000, statistic = stat_func)
boot_obj

# Output:
# ORDINARY NONPARAMETRIC BOOTSTRAP
# Call:
# boot(data = ds, statistic = stat_func, R = 1000)
# Bootstrap Statistics :
#     original   bias    std. error
# t1*      5.8 -0.01145   0.1032572
