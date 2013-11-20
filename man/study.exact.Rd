\name{study.exact}
\alias{study.exact}
\title{Compute the exact confidence interval and p-value based on a single study}
\description{
Compute the exact confidence interval and p-value for risk difference, risk ratio, rate difference and rate ratio based on data from an individual study. 
}
\usage{
study.exact(x1, x2, n1, n2, type="risk difference", BB.grdnum=2000, cov.prob=0.95, midp=T)
}

\arguments{
\item{x1}{The number of events in arm 1.}
\item{x2}{The number of events in arm 2.}
\item{n1}{
The sample size of arm 1 when \code{type}="risk difference" or "risk ratio";  The total follow-up time for patients in arm 1 when \code{type}="rate difference" or "rate ratio".  
}
\item{n2}{
The sample size of arm 2 when \code{type}="risk difference" or "risk ratio";  The total follow-up time for patients in arm 2 when  \code{type}="rate difference" or "rate ratio". }
\item{type}{
Indicate the parameter of interest: it can be "risk difference" (the difference of two binomial proportions); "risk ratio" (the ratio of two binomial proportions); "rate difference" (the difference of two Poission rates) and "rate ratio" (the ratio of two Poisson rates). 
}
\item{BB.grdnum}{
The number of grid points used in searching the limits of the confidence interval
} 
\item{cov.prob}{The coverage level of the constructed confidence interval}
\item{midp}{The binary indicator for if the mid-p value is used in constructing the exact confidence interval.
}
}

\value{
\item{est}{the point estimator}
\item{lower}{the lower end of the confidence interval}
\item{upper}{the upper end of the confidence interval}
\item{status}{ 1 if the confidence interval is within the pre-specified range and 0 otherwise}
\item{p}{ the p value}
}

\author{Yilei Yu}


\examples{


study.exact(1, 2, 12, 10, BB.grdnum=100, type="risk difference")
study.exact(1, 2, 12, 10, BB.grdnum=100, type="rate difference")
study.exact(1, 2, 12, 10, BB.grdnum=100, type="risk ratio")
study.exact(1, 2, 12, 10, BB.grdnum=100, type="rate ratio")
}
