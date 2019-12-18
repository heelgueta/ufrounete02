###cfas
###apreciación estética
#b01	E1 + Me gusta el lugar
#b02	E2 Me gusta la luz
#b03	E3 + Lugar bonito
#b04	E4 Me agrada la vista
#b05	E5 + Mobiliario combina
#b06	E6 + Me gustan los colores
#b07	E7 Lugar es bello
#b08	E8 + Me gusta lo que veo en las paredes
#b09	E9 + Me gusta la decorción
#b10	E10 + Me gusta el estilo de muebles
#b11	E11 Diseño agradabe
en el paper anterior los items son:
  b01 b05 b06 b08 + b09 b10 b03

mod <- 'bgf =~ b01 + b02 + b03 + b04 + b05 + b06 + b07 + b08 + b09 + b10 + b11' #fit not so good
#fit.index     mlr   ulsmv
#1          chisq.scaled 117.772 101.983
#2             df.scaled  44.000  44.000
#3         pvalue.scaled   0.000   0.000
#4            cfi.scaled   0.958   0.962
#5            tli.scaled   0.947   0.952
#6          rmsea.scaled   0.081   0.072
mod <- 'bgf =~ b01 + b03 + b05 + b06 + b08 + b09 + b10'
#fit.index    mlr  ulsmv
#1          chisq.scaled 58.433 47.750
#2             df.scaled 14.000 14.000
#3         pvalue.scaled  0.000  0.000
#4            cfi.scaled  0.955  0.962
#5            tli.scaled  0.932  0.943
#6          rmsea.scaled  0.112  0.098
mod <- 'bgf =~ b01 + b03 + b06 + b08 + b09'
#fit.index    mlr  ulsmv
#1          chisq.scaled 58.433 47.750
#2             df.scaled 14.000 14.000
#3         pvalue.scaled  0.000  0.000
#4            cfi.scaled  0.955  0.962
#5            tli.scaled  0.932  0.943
#6          rmsea.scaled  0.112  0.098


#c01	JC1 IS + Supervisor satisfecho de mi trabajo
#c02	JC2 IC oportunidad para hacer nuevos poyectos
#c03	JC3 IS + Supervisor que me enseñe
#c04	JC4 IC + Me ofrezco de manera proactiva
#c05	JC5 IST Utilizar mis capacidades al máximo
#c06	JC6 DH +Trabajo  menos intenso
#c07	JC7 IST Decido por mi mismo
#c08	JC8 IC +Primeros en aprender
#c09	JC9 IST + Desarrollo mis capacidades
#c10	JC10 DH Evito contacto con personas
#c11	JC11 DH +Trabajo menos intenso
#c12	JC12 IS Supervisor inspiración
#c13	JC13 IST +Desarrollarme profesionalmente
#c14	JC14 DH + Minimizo el contacto con personas
#c15	JC15 IC +Asumir tareas diíciles
#c16	JC16 IS + Pido retroalimentación
#c17	JC17 DH No tener que tomar decisiones difíciles
#c18	JC18 IST + Aprender nuevas cosas
#c19	JC19 DH No sea necesario concentrarme
#c20	JC20 IS Coonsejos a mis compañeros
#c21	JC21 IC Tareas adicionales
mod <- 'jcis =~ c01 + c03 + c12 + c16 + c20
		jcic =~ c02 + c04 + c08 + c15 + c21
		jcit =~ c05 + c07 + c09 + c13 + c18
		jcdh =~ c06 + c10 + c11 + c14 + c17 + c19'
mod <- 'jcis =~ c03 + c12 + c16 + c20
		    jcic =~ c02 + c04 + c08 + c15
		    jcit =~ c05 + c09 + c13 + c18
		    jcdh =~ c06 + c10 + c11 + c14'
mod <- 'jcis =~ c03 + c12 + c16
		    jcic =~ c04 + c08 + c15
		    jcit =~ c05 + c09 + c18
		    jcdh =~ c06 + c10 + c11'

#d01	Burnout A Emocionalmente agotado
#d02	Burnout A Consumido al final de un día de trabajo
#d03	Burnout A Estoy cansado cuando me levanto
#d04	Burnout A Trabajar es una tensión
#d05	Burnout Eficacia Resolver de manera eficaz los problema
#d06	Burnout A Quemado por el trabajo
#d07	Burnout Eficacia Contribuyo a mi organización
#d08	Burnout Cinismo He perdido interés
#d09	Burnout Cinismo He perdido entusiasmo
#d10	Burnout Eficacia Soy bueno para mi trabajo
#d11	Burnout Eficacia Me estimula conseguir objetivos
#d12	Burnout Eficacia He conseguido muchas cosas
#d13	Burnout Cinismo Me he vuelto más cínico
#d14	Burnout Cinismo Dudo la trascendencia
#d15	Burnout Eficacia Seguridad de que soy eficaz

mod <- 'burn =~	d01 + d02 + d03 + d04 + d05 + 
				d06 + d07 + d08 + d09 + d10 + 
				d11 + d12 + d13 + d14 + d15'
#fit.index     mlr   ulsmv
#1          chisq.scaled 578.272 392.477
#2             df.scaled  90.000  90.000
#3         pvalue.scaled   0.000   0.000
#4            cfi.scaled   0.533   0.659
#5            tli.scaled   0.456   0.602
#6          rmsea.scaled   0.154   0.121
#7 rmsea.ci.lower.scaled   0.144   0.109
#8 rmsea.ci.upper.scaled   0.164   0.134
mod <- 'burn =~	d01 + d02 + d03 + d04 + 
				d06 + d08 + d09 + d13 + d14'
#fit.index     mlr   ulsmv
#1          chisq.scaled 286.795 234.354
#2             df.scaled  27.000  27.000
#3         pvalue.scaled   0.000   0.000
#4            cfi.scaled   0.674   0.669
#5            tli.scaled   0.565   0.559
#6          rmsea.scaled   0.199   0.179
#7 rmsea.ci.lower.scaled   0.183   0.158
#8 rmsea.ci.upper.scaled   0.217   0.200
mod <- 'burn =~	d01 + d02 + d03 + d04 + d06'
#fit.index    mlr  ulsmv
#1          chisq.scaled 16.073 15.560
#2             df.scaled  5.000  5.000
#3         pvalue.scaled  0.007  0.008
#4            cfi.scaled  0.975  0.979
#5            tli.scaled  0.951  0.959
#6          rmsea.scaled  0.094  0.092
#7 rmsea.ci.lower.scaled  0.053  0.043
#8 rmsea.ci.upper.scaled  0.139  0.146



#e01	Compromiso Me siento bien mi trabajo
#e02	Compromiso Mas $ podria cambiar de trabajo
#e03	Compromiso Mi trabajo es importante
#e04	Compromiso Me siento orgulloso de mi trabajo
#e05	Comrpomiso Comprometido de mi organización
#e06	Compromiso Me importa el destino de esta empresa
#e07	Compromiso Esfuerzos adicionales
#e08	Compromiso Mejor organización para trabajar
#e09	Compromiso Extremadamente feliz
#e10	Compromiso No estaría bien dejar mi organización
#e11	Compromiso Sería duro dejar esta organización
#f01	TDAH Dificultad para acabar los detalle
#f02	TDAH Dificultad para ordenar las cosas
#f03	TDAH Problemas para recordar citas o obligaciones
#f04	TDAH Requiere pensar mucho
#f05	TDAH Activo o impulsado ha hacer cosas
#f06	TDAH Retuerce las manos o los pies
#g01	Inclusión en el Self Relación con su lugar de trabajo
#h01	Satisfacción Amb físico Limpieza del lugar de trabajo
#h02	Satisfacción Amb físico Espacio que dispone
#h03	Satisfacción Amb físico Iluminacón de lugade trabajo
#h04	Satisfacción Amb físico Ventilación
#h05	Satisfacción Amb físico Ruido lugar de trabajo
#h06	Satisfacción Amb físico Temperatura lugae trabajo
#h07	Postura
#h08	Accesibilidad y comdidad
#h09	Lugar físico
#h10	Servicios  Higienicos
#h11	Distancia con el compañero
#h12	visibilidad de otras personas
#h13	Satisfacción Amb físico decoración y ambiente físico
#h14	Obj de metas
#h15	relaciones personales con supervisores
#h16	supervision sobre usted
#h17	Supervisado
#h18	Superiores que juzgan
#h19	Igualdad y justicia
#h20	Apoyo de supervisores
#h21	Grado en que cumplen
#h22	Forma en que se negocia
mod <- 'sati =~ h01 + h02 + h03 + h04 + h05 + 
		  		h06 + h07 + h08 + h09 + h10 + 
		  		h11 + h12 + h13 + h14 + h15 + 
		  		h16 + h17 + h18 + h19 + h20 + 
		  		h21 + h22'
#fit.index     mlr   ulsmv
#1          chisq.scaled 838.041 502.683
#2             df.scaled 209.000 209.000
#3         pvalue.scaled   0.000   0.000
#4            cfi.scaled   0.704   0.814
#5            tli.scaled   0.673   0.795
#6          rmsea.scaled   0.117   0.080
#7 rmsea.ci.lower.scaled   0.110   0.071
#8 rmsea.ci.upper.scaled   0.124   0.089
mod <- 'sati =~ h01 + h02 + h03 + h04 + h05 + 
		  		h06 + h07 + h08 + h09 + h10 + 
		  		h11 + h12 + h13 + h14 + h15 + 
		  		h16 + h17 + h18 + h19 + h20 + 
		  		h21 + h22'
mod <- 'sati =~ h15 + h16 + h17 + h18 + h19 + h20 + h21 + h22'
mod <- 'sati =~ h15 + h16 + h18 + h19 + h20'

#i01	Género
#i02	Edad
#i03	usted mapuche
#i04	cargo
#i05	Antiguedad
#i06	Jornada laboral
#i07	Institución
#i08	Organización







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
                                      "rmsea.ci.upper.scaled")), digits = 3), value = "ulsmv")[2]) # %>%  DT::datatable(options = list(pageLength = 200))



#standardized solution
data.frame(
  lavaan::standardizedSolution(fitmlr)[c(1:3)],
  "mlr" = round(lavaan::standardizedSolution(fitmlr)[c(4,7)],digits=3),
  "ulsmv" = round(lavaan::standardizedSolution(fituls)[c(4,7)],digits=3))  # %>%  DT::datatable(options = list(pageLength = 200))
