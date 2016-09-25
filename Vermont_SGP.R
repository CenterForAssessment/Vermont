###########################################################
###
### Vermont SGP Analysis
###
###########################################################

### Load SGP Package

require(SGP)


### Load data

load("Data/Vermont_Data_LONG.Rdata")


### Calculate SGPs

Vermont_SGP <- abcSGP(
		Vermont_Data_LONG,
		sgp.percentiles.baseline=FALSE,
		sgp.projections.baseline=FALSE,
		sgp.projections.lagged.baseline=FALSE,
		save.intermediate.results=TRUE,
		sgPlot.demo.report=TRUE)#,
#		parallel.config=list(BACKEND="PARALLEL", WORKERS=list(PERCENTILES=30, BASELINE_PERCENTILES=30, PROJECTIONS=14, LAGGED_PROJECTIONS=14, SUMMARY=30, GA_PLOTS=10, SG_PLOTS=1)))


### Save results

save(Vermont_SGP, file="Data/Vermont_SGP.Rdata")
