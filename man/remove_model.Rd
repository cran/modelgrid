% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_model.R
\name{remove_model}
\alias{remove_model}
\title{Remove model from model grid}
\usage{
remove_model(model_grid, model_name)
}
\arguments{
\item{model_grid}{\code{model_grid}}

\item{model_name}{\code{character}, the unique name (as set by the user) of
the model, which will be removed from a model grid.}
}
\value{
\code{model_grid}
}
\description{
Removes an individual model specification from a model grid. If the model has
been trained, the fitted model will also be deleted.
}
\examples{
library(magrittr)

# Pre-allocate empty model grid.
mg <- model_grid()

# Add random forest model.
mg <-
  mg \%>\%
  add_model(model_name = "Random Forest Test", method = "rf", tuneLength = 5)

# Remove random forest model again.
remove_model(mg, model_name = "Random Forest Test")
}
