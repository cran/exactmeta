\name{meta.exact}
\alias{meta.exact}
\title{Exact fixed effect meta analysis}
\description{
Compute the exact confidence interval and p-value for risk difference, risk ratio, rate difference or rate ratio in meta analysis using fixed effect model. 
}
\usage{
meta.exact(data, type="risk difference", BB.grdnum=2000, B.sim=20000, cov.prob=0.95,
midp=T, print=T, studyCI=T, ratio.upper=1000)
}
\arguments{
\item{data}{
The data matrix summarizing information from multiple studies needed in the meta analysis. The first column consists of the numbers of events in arm 1; the second column consists of the numbers of events in arm 2; the third column consists of the sample sizes or total follow up times in arm 1 and the fourth column consists of the sample sizes or total follow up times in arm 2. Each row contains data from a study.
}
\item{type}{
The parameter of interest. It can be "risk difference" (the difference of two binomial proportions); "risk ratio" (the ratio of two binomial proportions); "rate difference" (the difference of two Poission rates) and "rate ratio" (the ratio of two Poisson rates). 
}
\item{BB.grdnum}{
The number of grid points used in searching the ends of the confidence interval. A bigger value increases the precision of the constructed confidence interval.
}
\item{B.sim}{
The number of Monte-carlo simulations used to generate the null-distribution based on which the confidence interval and p-value are obtained.
}
\item{cov.prob}{
The coverage probability of the confidence interval to be constructed.
}
\item{midp}{
TRUE/FALSE, the indicator for if the mid-p values are used in calculating the exact p-values and constructing the exact confidence intervals. The results are more conservative wihout using mid-p values.
}
\item{print}{
TRUE/FALSE, the indicator for if the computing progress is printed during the computation.
}
\item{studyCI}{
TRUE/FALSE, the indicator for if the confidence interval and p-value for individual study are reported.
}
\item{ratio.upper}{
A value indicating the limits in computing the confidence interval for either the risk ratio or rate ratio. The default value of 1000 means that the widest confidence interval for the ratio is (0.001, 1000).
}
}
\value{
\item{ci.fixed}{
A matrix reporting the point estimators, confidence intervals, and p-values from three methods: constant weighting, inverse-variance weighting and Fisher's weighting. Normally, the result from the inverse-variance weighting method is recommended. It also reports the corresponding result from the asymptotical MH method with automatic continuity correction for zero event. The last column of the matrix provides the range used for searching the confidence limits. When a confidence limit is the same as the range limit, the true confidence interval goes beyond the specified range.
}
\item{study.ci}{
When \code{studyCI}=T, \code{study.ci} is a matrix reporting the point estimators (the first column), confidence intervals (the second and thrid columns), p values (the fourth column) and if the confidence interval goes beyond the pre-specified range: 1 if within the range and 0 otherwise (the fifth column). 
}
\item{precision}{
The precision used to search the limit of the confidence interval. It can be improved by increasing "BB.grdnum" in the arguments.
}
}

\references{
Tian, L., Cai, T., Pfeffer, M., Piankov, N., Cremieux, P.,  and Wei, LJ. (2008). Exact and effcient inference procedure for meta-analysis and its application to the analysis of independent two by two tables with all available  data but without artificial  continuity correction. Biostatistics, 10(2):275-281.  }
\author{Yilei Yu}

\examples{
data=cbind(c(2, 1), c(1, 1), c(10, 10), c(12, 12))

meta.exact(data, type="risk difference", BB.grdnum=100, studyCI=FALSE)
meta.exact(data, type="rate difference", BB.grdnum=100, studyCI=FALSE)
meta.exact(data, type="risk ratio", BB.grdnum=100, studyCI=FALSE)
meta.exact(data, type="rate ratio", BB.grdnum=100)

}
