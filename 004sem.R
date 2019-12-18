mod <- 'apest =~ b01 + b03 + b06 + b08 + b09 + b10
        satsu =~ h15 + h16 + h17 + h18 + h19 + h20
        jciso =~ c01 + c03 + c16
        jcich =~ c04 + c08 + c15
        jcist =~ c09 + c13 + c18
        jcdhi =~ c06 + c11 + c14'

mod <- 'apest =~ b01 + b03 + b06 + b08 + b09 + b10
        iself =~ g01
        jciso =~ c01 + c03 + c16
        jcich =~ c04 + c08 + c15
        jcist =~ c09 + c13 + c18
        jcdhi =~ c06 + c11 + c14'

fitmlr <- lavaan::cfa(mod, data=dfori,estimator="MLR")
fituls <- lavaan::cfa(mod, data=dfori,estimator="ULSMV")
#fituls <- lavaan::cfa(mod, data=dforo,estimator="ULSMV"), no se puede porque hay grupos vacíos etc

#fit indices
data.frame(
  tibble::enframe(lavaan::fitMeasures(fitmlr, c("chisq.scaled","df.scaled","pvalue.scaled","cfi.scaled",
                                                "tli.scaled","rmsea.scaled","rmsea.ci.lower.scaled",
                                                "rmsea.ci.upper.scaled")), name = "fit.index")[1],
  tibble::enframe(round(lavaan::fitMeasures(fitmlr, c("chisq.scaled","df.scaled","pvalue.scaled","cfi.scaled",
                                                      "tli.scaled","rmsea.scaled","rmsea.ci.lower.scaled",
                                                      "rmsea.ci.upper.scaled")), digits = 3), value = "mlr")[2],
  tibble::enframe(round(lavaan::fitMeasures(fituls, c("chisq.scaled","df.scaled","pvalue.scaled","cfi.scaled",
                                                      "tli.scaled","rmsea.scaled","rmsea.ci.lower.scaled",
                                                      "rmsea.ci.upper.scaled")), digits = 3), value = "ulsmv")[2]) # %>%  DT::datatable(options = list(pageLength = 200))



#standardized solution
data.frame(
  lavaan::standardizedSolution(fitmlr)[c(1:3)],
  "mlr" = round(lavaan::standardizedSolution(fitmlr)[c(4,7)],digits=3),
  "ulsmv" = round(lavaan::standardizedSolution(fituls)[c(4,7)],digits=3))  # %>%  DT::datatable(options = list(pageLength = 200))


mod <- 'apest =~ b01 + b03 + b06 + b08 + b09 + b10
        satsu =~ h15 + h16 + h17 + h18 + h19 + h20
        jciso =~ c01 + c03 + c16
        jcich =~ c04 + c08 + c15
        jcist =~ c09 + c13 + c18
        jcdhi =~ c06 + c11 + c14
jciso ~ satsu
jcich ~ satsu
jcist ~ satsu
jcdhi ~ satsu
satsu ~ apest
jciso ~~ jcich
jciso ~~ jcist
jciso ~~ jcdhi
jcich ~~ jcist
jcich ~~ jcdhi
jcist ~~ jcdhi
'
mod <- 'apest =~ b01 + b03 + b06 + b08 + b09 + b10
        iself =~ g01
        jciso =~ c01 + c03 + c16
        jcich =~ c04 + c08 + c15
        jcist =~ c09 + c13 + c18
        jcdhi =~ c06 + c11 + c14
jciso =~ iself
jcich =~ iself
jcist =~ iself
jcdhi =~ iself
iself =~ apest
'


fitmlr <- lavaan::sem(mod, data=dfori,estimator="MLR")

#fit indices


lavaan::fitMeasures(fitmlr, c("chisq.scaled","df.scaled","pvalue.scaled","cfi.scaled",
                      "tli.scaled","rmsea.scaled","rmsea.ci.lower.scaled",
                      "rmsea.ci.upper.scaled","srmr"))


#standardized solution

data.frame(
  lavaan::standardizedSolution(fitmlr)[c(1:3)],
  
round(lavaan::standardizedSolution(fitmlr)[c(4,7)],digits=3)
)
