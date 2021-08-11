install_paket <- function(pkg) {
  new.pkg <- pkg[!(pkg %in%installed.packages() [, "Package"])]
  
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
  }

paket <- c("tidyverse", "tidytext", "reshape2", "RColorBrewer", "scales", "haven", 
           "topicmodels", "plotly", "DT", "knitr", "readxl", "missForest","htmltools")

install_paket(paket)
