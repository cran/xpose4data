% Xpose 4
% An R-based population pharmacokinetic/
% pharmacodynamic model building aid for NONMEM.
% Copyright (C) 1998-2004 E. Niclas Jonsson and Mats Karlsson.
% Copyright (C) 2005-2008 Andrew C. Hooker, Justin J. Wilkins, 
% Mats O. Karlsson and E. Niclas Jonsson.
% Copyright (C) 2009-2010 Andrew C. Hooker, Mats O. Karlsson and 
% E. Niclas Jonsson.

% This file is a part of Xpose 4.
% Xpose 4 is free software; you can redistribute it and/or
% modify it under the terms of the GNU Lesser General Public License
% as published by the Free Software Foundation, either version 3
% of the License, or (at your option) any later version.

% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.

% You should have received a copy of the GNU Lesser General Public License
% along with this program.  A copy can be cound in the R installation
% directory under \share\licenses. If not, see http://www.gnu.org/licenses/.

\name{xlabel}
\alias{xlabel}
\alias{xlabel<-}
\title{Extract and set labels for Xpose data items.}
\description{
  This function extracts and sets label definitions in Xpose data objects.
}
\usage{
xlabel(x, object)

xlabel(object) <- value
}
\arguments{
  \item{x}{Name of the variable to assign a label to.}
  \item{object}{An \code{xpose.data} object. }
  \item{value}{A two element vector of which the first element is the
    name of the variable and the second the label} 
}
\details{
  \code{x} should be a
  string exactly matching the name of a column in the data.frame in
  the Data slot of an xpose.data object. The name of columns defined
  through xpose variable definitions (see \code{\link{xpose.data}})
  can be extracted using the \code{xvardef} function and to be used in the
  \code{xlabel} function,
  e.g. \code{xlabel(xvardef("dv",object),object)}, which would give the
  label for the \code{dv} variable.
}
\value{
  The label of the specified column.
}
\author{Niclas Jonsson }
\seealso{
  \code{\link[xpose4data]{xpose.prefs-class}},
  \code{\link{xvardef}}
}
\examples{
\dontrun{
## xpdb5 is an Xpose data object
## We expect to find the required NONMEM run and table files for run
## 5 in the current working directory
xpdb5 <- xpose.data(5)

## Display label for dependent variable in the Xpose data object
xlabel(xvardef("dv", object), object)

## Set label for dependent variable
xlabel(xpdb5) <- c(xvardef("dv", object), "Concentration (mg/L)")
}
}
\keyword{methods}
