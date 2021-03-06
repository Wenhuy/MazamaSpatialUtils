% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSpatialData.R
\name{getSpatialData}
\alias{getSpatialData}
\title{Return Spatial Data Associated with a Set of Locations}
\usage{
getSpatialData(lon, lat, SPDF, useBuffering = FALSE, verbose = FALSE)
}
\arguments{
\item{lon}{vector of longitudes in decimal degrees}

\item{lat}{vector of latitudes in decimal degrees}

\item{SPDF}{object of class SpatialPolygonsDataFrame}

\item{useBuffering}{logical flag specyfing the use of location buffering to find the nearest polygon if not target polygon is found}

\item{verbose}{logical flag controlling detailed progress statements}
}
\value{
Vector or dataframe of data.
}
\description{
All locations are first converted to \code{SpatialPoints} objects.
The \pkg{sp::over()} function is then used to determine which polygon from \code{SPDF}
each location falls in. The dataframe row associated with each polygon is then
associated with each ocation.
}
\details{
For coastal locations it can often happen that the precise coordinates
of the location lie outside the boundaries of low resolution SpatialPolygonsDataFrame.
To account for this, locations that remain unassociated after the first pass are then
buffered to create small circles. All polygons are then checked to see if there is any
intersection with the now buffered locations. A buffering loop increases buffer size
though the following radii until an intersecting polygon is found:  1km, 2km, 5km,
10km, 20km, 50km, 100km, 200km.

If a buffered location is more than 200km away from any polygon, a value of \code{NA}
(or data frame row with all \code{NA}s) is returned for that location.

Missing or invalid values in the incoming \code{lon} or \code{lat} vectors result in \code{NA}s at
those positions in the returned vector or data frame.
}
\keyword{locator}

