% Generated by roxygen2 (4.0.0): do not edit by hand
\name{cleanBrick}
\alias{cleanBrick}
\title{Clean the history period of a raster time series}
\usage{
cleanBrick(x, monperiod, thresh, dates = NULL, sceneID = NULL,
  is.max = FALSE, ...)
}
\arguments{
\item{x}{RasterBrick or RasterStack. Raster time series to be cleaned}

\item{monperiod}{Numeric. Beginning of intended monitoring period in \code{\link{bfmSpatial}} in the form \code{c(year, Julian day)}. The filter will only be applied before this period (ie. to the history period). If set to \code{NULL}, the filter will be applied to the entire time series.}

\item{thresh}{Either a Numeric static threshold or \code{"IQR"} to calcalate the threshold per pixel based on the interquartile zone.}

\item{dates}{Date. Vector of dates corresponding exactly to layers in x. If \code{NULL}, dates are either extracted from \code{sceneID} or \code{names(x)} using \code{\link{getSceneinfo}}.}

\item{sceneID}{Character. Vector of Landsat sceneID's}

\item{is.max}{Logical. Is \code{thresh} to be treated as a maximum threshold (ie. all values higher will be removed)? If \code{FALSE}, all values lower than \code{thresh} will be removed (default).}

\item{...}{Additional parameters to pass to \code{\link{mc.calc}}}
}
\value{
RasterBrick with values removed according to \code{thresh}.
}
\description{
Filter a time series RasterBrick or RasterStack using a static or statistical threshold in a defined historical period
}
\details{
If \code{dates} is not supplied, these will be extracted from sceneID's, with only support for Landsat at this time. If data come from another sensor, be sure to supply a \code{dates} vector.
}
\author{
Ben DeVries (\email{devries.br@gmail.com}) and Jan Verbesselt
}

