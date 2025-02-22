% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{smoothGeneProfileByPenalizedSpline}
\alias{smoothGeneProfileByPenalizedSpline}
\title{Smooth gene expression by fitting penalized splines using general additive models.}
\usage{
smoothGeneProfileByPenalizedSpline(
  dataConcentration,
  numberOfAnchorPoints = 20,
  gamma = 1.4,
  isInputConcentrations = TRUE,
  ignoreOutliers = FALSE,
  outlierIQRfactor = 3
)
}
\arguments{
\item{dataConcentration}{data frame of normalized gene expression for m_u,: genes on rows and sorted cells on columns}

\item{numberOfAnchorPoints}{integer the number of anchors used for the spline fitting (default: 20)}

\item{gamma}{numeric a number that will be passed to GAM model to adjust the over-fitting (defaut: 1, use 1.4 if you want to adjust overfit)}

\item{isInputConcentrations}{logic}

\item{ignoreOutliers}{logic (default: TRUE)}

\item{outlierIQRfactor}{numeric (default: 3)}
}
\value{
a data frame with smoothed values in columns and sorted cells order in rows
}
\description{
Smooth gene expression by fitting penalized splines using general additive models.
}
\examples{
data_spline <- smoothGeneProfileByPenalizedSpline(dataConcentration=observed.data["PCNA",], numberOfAnchorPoints = 20, gamma=1.4)

}
