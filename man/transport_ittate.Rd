% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transport_ittate.R
\name{transport_ittate}
\alias{transport_ittate}
\title{Transported intent-to-treat average treatment effect (ITT-ATE)}
\usage{
transport_ittate(a, z, y, site, w, weights = NULL, superlearner_lib = NULL,
  aamodel, asitemodel, s_awz_model, s_aw_model, aoutmodel, aq2model)
}
\arguments{
\item{a}{needs to be named a and have values 0/1}

\item{z}{matrix, each column be an individual z covariate and can be either
binary or continuous (or a mix of both types) this code calculates the
ratio dga1s0/dga1s1 with a trick in Zheng(2012)}

\item{y}{needs to be named y and have values 0/1}

\item{site}{The site, value 0 for the site where the outcome data is not used
and value 1 for the site where the outcome data is used.}

\item{w}{in a dataframe named w and with names w1:wx}

\item{weights}{vector with length = nrow(data). p(Delta_2 | A, W, S)}

\item{superlearner_lib}{(Optional) vector that defines the SuperLearner library.}

\item{aamodel}{The aamodel}

\item{asitemodel}{The asitemodel}

\item{s_awz_model}{formula for fitting S ~ A + W + Z}

\item{s_aw_model}{formula for fitting S ~ A + W}

\item{aoutmodel}{The aoutmodel}

\item{aq2model}{The aq 2 model}
}
\value{
A list with three elements:

\enumerate{
\item est: the parameter estimate.
\item var: the variance estimate of the EIC.
\item eic: the efficient influnce curve unit-level values.
}
}
\description{
More details to be added.
}
\details{
This estimator is also used in \code{\link{transport_cace}}.
}
\examples{

# TBD.

}
\references{
Zheng (2012)
}
