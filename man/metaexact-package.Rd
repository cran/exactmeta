\name{exactmeta-package}
\alias{exactmeta-package}
\alias{exactmeta}
\docType{package}
\title{Exact Meta Analysis for Rare Events Data}
\description{
Compute the exact confidence interval and p-value for risk difference, risk ratio, rate difference and rate ratio in meta analysis using fixed effect model without artificial continuity correction. The validity of the output does not depend on asymptotical approximation and thus the method is suitable for analyzing rare event data. 
}
\details{
\tabular{ll}{
Package: \tab exactmeta\cr
Type: \tab Package\cr
Version: \tab 1.0-1\cr
Date: \tab 2013-11-15\cr
License: \tab GLP-2\cr
}
The pacakge includes the main functions "meta.exact" and "study.exact". When the data from individual study consists of simple two by two table, the parameter of interest is the risk difference or ratio, where the risks refer to the binomial probabilities in two groups. When the data from individual study consistns of the number of events and total follow-up time by arm, the parameter of interest is the rate difference or ratio, where the rates refer to the poission rates in two groups.
}
\author{Yilei Yu and Lu Tian

Maintainer:  Lu Tian <lutian@stanford.edu>
}
\references{
Tian, L., Cai, T., Pfeffer, M., Piankov, N., Cremieux, P.,  and Wei, LJ. (2008). Exact and effcient inference procedure for meta-analysis and its application to the analysis of independent two by two tables with all available  data but without artificial  continuity correction. Biostatistics, 10(2):275-281.}
\keyword{meta analysis, exact inference, fixed effect, rare event, continuity correction}


