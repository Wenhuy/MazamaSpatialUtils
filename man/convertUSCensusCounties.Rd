% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convertUSCensusCounties.R
\name{convertUSCensusCounties}
\alias{convertUSCensusCounties}
\title{Convert US County Borders Shapefile}
\usage{
convertUSCensusCounties(nameOnly = FALSE)
}
\arguments{
\item{nameOnly}{logical specifying whether to only return the name without creating the file}
}
\value{
Name of the dataset being created.
}
\description{
Returns a SpatialPolygonsDataFrame for a US county divisions
}
\details{
A US county borders shapefile is downloaded and converted to a 
SpatialPolygonsDataFrame with additional columns of data. The resulting file will be created
in the spatial data directory which is set with \code{setSpatialDataDir()}.
}
\references{
\url{http://www2.census.gov/geo/tiger/GENZ2013}
}
\seealso{
setSpatialDataDir

getUSCounty
}
\keyword{datagen}

