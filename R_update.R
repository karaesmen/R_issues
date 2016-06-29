old_libPath <- "/Library/Frameworks/R.framework/Versions/3.2/Resources/library" ## previous library before the update
new_libPath <- .libPaths()
pkgs <- list.files(old_libPath)
pkgs2inst <- pkgs[!(pkgs %in% list.files(new_libPath))] 
install.packages(pkgs2inst)
libs <- library()$results
bioC <- pkgs2inst[!(pkgs2inst %in% libs)]   # list of bioconductor packages
source("https://bioconductor.org/biocLite.R")
biocLite(bioC)  # install bioC packages
