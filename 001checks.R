###revisión calidad de los datos

#revisión rápida descriptivos univariantes
#ver tabla en consola
print(data.frame(
  tibble::enframe(colnames(dfori), name = "nomb")[2],
  tibble::enframe(lapply(dfori,min, na.rm=TRUE), value = "mini")[2],
  tibble::enframe(lapply(dfori,max, na.rm=TRUE), value = "maxi")[2],
  tibble::enframe(lapply(dfori,median, na.rm=TRUE), value = "medi")[2],
  tibble::enframe(lapply(dfori,mean, na.rm=TRUE), value = "prom")[2],
  tibble::enframe(lapply(dfori,sd, na.rm=TRUE), value = "desv")[2],
  tibble::enframe(lapply(dfori, function(y) sum(length(which(is.na(y))))), value="perd")[2]),digits=3)

#ver tabla html en visor rstudio
  data.frame(
  tibble::enframe(colnames(dfori), name = "nomb", value ="nomb")[2],
  tibble::enframe(lapply(dfori,min, na.rm=TRUE), value = "mini")[2],
  tibble::enframe(lapply(dfori,max, na.rm=TRUE), value = "maxi")[2],
  tibble::enframe(lapply(dfori,median, na.rm=TRUE), value = "medi")[2],
  tibble::enframe(lapply(dfori,mean, na.rm=TRUE), value = "prom")[2],
  tibble::enframe(lapply(dfori,sd, na.rm=TRUE), value = "desv")[2],
  tibble::enframe(lapply(dfori, function(y) sum(length(which(is.na(y))))), value="perd")[2]) %>%
    DT::datatable(options = list(pageLength = 200)) %>%
    DT::formatRound(columns=c("prom","desv"), digits=3)

#debo seguir trabajando esto
#evaluar necesidad de imputar datos