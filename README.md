## Helper package to illustrate BiocParallel issue #81

### How to reproduce

- Clone and install BiocParallel and DemoBiocParallelIssue81:

```
git clone https://github.com/Bioconductor/BiocParallel.git
git clone https://github.com/hpages/DemoBiocParallelIssue81.git
R CMD INSTALL BiocParallel DemoBiocParallelIssue81
```

- Then from R:
```
athing <- readRDS("DemoBiocParallelIssue81/inst/extdata/athing.rds")
```

- Trying to display `athing` triggers the error:
```
show(athing)
# Loading required package: DemoBiocParallelIssue81
# Error: package or namespace load failed for ‘DemoBiocParallelIssue81’:
#  .onLoad failed in loadNamespace() for 'DemoBiocParallelIssue81', details:
#   call: .Object$initialize(...)
#   error: attempt to apply non-function
# Error in .requirePackage(package) : 
#   unable to find required package ‘DemoBiocParallelIssue81’

```

- However, DemoBiocParallelIssue81 can be loaded _manually_:
```
library(DemoBiocParallelIssue81)
```

### sessionInfo()

```
> sessionInfo()
R version 3.5.1 Patched (2018-08-01 r75051)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 16.04.5 LTS

Matrix products: default
BLAS: /home/hpages/R/R-3.5.r75051/lib/libRblas.so
LAPACK: /home/hpages/R/R-3.5.r75051/lib/libRlapack.so

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
 [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
 [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] DemoBiocParallelIssue81_0.0.1 BiocParallel_1.15.12         

loaded via a namespace (and not attached):
[1] compiler_3.5.1
```

