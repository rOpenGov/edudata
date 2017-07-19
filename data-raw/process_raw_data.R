library(dplyr)
flies <- list.files("./data-raw/",pattern = ".yml", full.names = TRUE)
for (i in flies){
  tmp <- yaml::yaml.load_file(i) %>%
    plyr::ldply(., data.frame, stringsAsFactors=FALSE)
  objectname <- gsub("\\./data-raw//|\\.yml", "", i)
  assign(objectname, tmp, envir = globalenv())
}
rm(tmp)

dfs <- Filter(function(x) is.data.frame(get(x)) , ls())
for(d in dfs) {
  save(list=d, file=paste0("./data/", d, ".rda"))
}
