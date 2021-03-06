% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregate.R
\name{aggregate_nearby_peaks}
\alias{aggregate_nearby_peaks}
\title{Make an aggregate count cds by collapsing nearby peaks}
\usage{
aggregate_nearby_peaks(cds, distance = 1000)
}
\arguments{
\item{cds}{A CellDataSet (CDS) object. For example, output of
\code{\link{make_atac_cds}}}

\item{distance}{The distance within which peaks should be collapsed}
}
\value{
A CDS object with aggregated peaks.
}
\description{
Make an aggregate count cds by collapsing nearby peaks
}
\details{
This function takes an input CDS object and collapses features
  within a given distance by summing the values for the collapsed features.
  Ranges of features are determined by their feature name, so the feature
  names must be in the form "chr1:1039013-2309023".
}
\examples{
  data("cicero_data")
  input_cds <- make_atac_cds(cicero_data, binarize = TRUE)
  agg_cds <- aggregate_nearby_peaks(input_cds, distance = 10000)

}
