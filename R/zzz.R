setClass("Thing", slots=c(stuff="ANY"))

.onLoad <- function(libname, pkgname)
{
    BPPARAM <- BiocParallel::SerialParam()
}

