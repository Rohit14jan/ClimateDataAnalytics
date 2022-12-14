rm (list = ls())
ClimateData = read.csv("climate_change.csv")
View(ClimateData)
Summary(ClimateData)
summary(ClimateData)
climateTrain = subset(ClimateData, Year <=2006)
climateTrain = subset(ClimateData, ClimateData$Year <=2006)
#climateTrain = filter(ClimateData, "Year"<2006)
ClimateTest = subset(ClimateData, Year>2006)
climatelm = lm(Temp ~ MEI + CO2 + CH4 + N2O + CFC.11 + CFC.12 + TSI + Aerosols, data= climateTrain)
