###cfas

#specify models
mod <- 'bgf =~ b01 + b02 + b03 + b04 + b05 + b06 + b07 + b08 + b09 + b10 + b11'

#run models
fitmlr <- lavaan::cfa(mod, data=dfori,estimator="MLR")
fituls <- lavaan::cfa(mod, data=dfori,estimator="ULSMV")

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
                                      "rmsea.ci.upper.scaled")), digits = 3), value = "ulsmv")[2])
#standardized solution
data.frame(
  lavaan::standardizedSolution(fitmlr)[c(1:3)],
  "mlr" = round(lavaan::standardizedSolution(fitmlr)[c(4,7)],digits=3),
  "ulsmv" = round(lavaan::standardizedSolution(fituls)[c(4,7)],digits=3))
