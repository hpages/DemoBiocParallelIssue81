## Helper package to illustrate BiocParallel issue #81

How to reproduce:

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

