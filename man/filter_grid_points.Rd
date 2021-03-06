% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_grid_points.R
\name{filter_grid_points}
\alias{filter_grid_points}
\title{Filter full set of grid points for those within range of original point}
\usage{
filter_grid_points(
  f_grid,
  f_centroid,
  focal_points = NULL,
  f_dist = filter_dist,
  angle_width = width,
  h_size = hex_size
)
}
\arguments{
\item{f_grid}{complete grid of hexagon centroids}

\item{f_centroid}{the longitude and latitude values for the current centroid}

\item{focal_points}{a tibble of focal locations, an optional argument that
allows allocation of polygons to hexagon centroids in ascending order of
the distance to the closest focal point. It also filters the grid points to
those within a 30 degree range of the angle from focal point to centroid.
The default "capitals" uses the locations of the Australian capital cities
as focal points.}

\item{f_dist}{a distance in degrees, used as a boundary to filter
the hexagon centroids considered for each polygon centroid to be allocated.}

\item{angle_width}{a numeric used to filter the hexagon grid}

\item{h_size}{a float value in degrees for the diameter of the hexagons}
}
\value{
a tibble of filtered grid points
}
\description{
Takes only the closest available gridpoints as possible hexagon centroids
to allocate polygons.
}
