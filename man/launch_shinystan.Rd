% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/launch_shinystan.R
\name{launch_shinystan}
\alias{launch_shinystan}
\title{Launch the ShinyStan app}
\usage{
launch_shinystan(object, rstudio = getOption("shinystan.rstudio"), ...)
}
\arguments{
\item{object}{An object of class shinystan, stanfit, or stanreg. To use other
types of objects first create a shinystan object using 
\code{\link{as.shinystan}}.}

\item{rstudio}{Only relevant for RStudio users. The default (\code{FALSE}) is
to launch the app in the user's default web browser rather than RStudio's
pop-up Viewer. Users can change the default to \code{TRUE} by setting the
global option \code{options(shinystan.rstudio = TRUE)}.}

\item{...}{Optional arguments passed to \code{\link[shiny]{runApp}}.}
}
\value{
The \code{launch_shinystan} function is used for the side effect of 
  starting the ShinyStan app, but it also returns a shinystan object, an
  instance of S4 class \code{"shinystan"}.
}
\description{
Launch the ShinyStan app in the default web browser. RStudio users also have
the option of launching the app in RStudio's pop-up Viewer.
}
\examples{
\dontrun{
#######################################
# Example 1: 'sso' is a shinystan object
#######################################

# Just launch shinystan
launch_shinystan(sso)

# Launch shinystan and replace sso with an updated version of itself
# if any changes are made to sso while using the app
sso <- launch_shinystan(sso)

# Launch shinystan but save any changes made to sso while running the app
# in a new shinystan object sso2. sso will remained unchanged. 
sso2 <- launch_shinystan(sso) 

#######################################
# Example 2: 'sf' is a stanfit object
#######################################

# Just launch shinystan
launch_shinystan(sf)

# Launch shinystan and save the resulting shinystan object
sf_sso <- launch_shinystan(sf)

# Now sf_sso is a shinystan object and so Example 1 (above) applies when
# using sf_sso. 

#######################################
# Example 3: 'fit' is an mcmc.list, array or list of matrices
#######################################

# First create shinystan object (see ?as.shinystan for full details)
fit_sso <- as.shinystan(fit, model_name = "Example")

# Now fit_sso is a shinystan object and so Example 1 (above) applies.
}

}
\seealso{
\code{\link{as.shinystan}} for creating shinystan objects.

\code{\link{update_sso}} to update a shinystan object created by a
  previous version of the package.

\code{\link{launch_shinystan_demo}} to try a demo.
}

