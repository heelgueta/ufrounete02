###algunas configuraciones generales
options(scipen=999);options(max.print=1000000)

###para instalar librerías/paquetes necesarios, sólo se requiere ejecutar una vez (si acaso no están instalados previamente)
#install.packages("foreign")
#install.packages("semTools")
#install.packages("tidyverse")
#install.packages("DT")
#cargar paquetes
#library(foreign)
#library(semTools)
#library(tidyverse)
#library(dplyr)


###lee archivo spss
#dfori - "data frame original"
dfori <- foreign::read.spss("2019-06-unete2.sav", use.value.labels = FALSE, to.data.frame = TRUE, use.missings = to.data.frame)

###nombres de varialbes y sus etiquetas (según archivo original)
#a01	Lugar mayor parte del trabajo
#a02	Tamaño de trabajo
#a03	Estado piso
#a04	Estado paredes
#a05	Ventana
#a06	Silla
#a07	Escritorio
#a08	Cantidad de plantas
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
#i01	Género
#i02	Edad
#i03	usted mapuche
#i04	cargo
#i05	Antiguedad
#i06	Jornada laboral
#i07	Institución
#i08	Organización