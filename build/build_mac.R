## build for mac
# setwd(rstudioapi::getActiveProject())
app <- basename(getwd())
curr <- setwd("../")
# devtools::install(app)
f <- devtools::build(app)
system(paste0("R CMD INSTALL --build ", f))
setwd(curr)
