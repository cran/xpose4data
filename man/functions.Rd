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

\name{functions}
\alias{check.vars}
\alias{is.readable.file}
\alias{test.xpose.data}
\alias{xpose.bin}
\title{Data functions for Xpose 4}
\description{
  These functions perform various tasks in managing Xpose data objects.
}
\usage{
check.vars(vars, 
           object, 
           silent=FALSE) 

is.readable.file(filename)

test.xpose.data(object)
}
\arguments{
  \item{vars}{List of variables to be checked.}
  \item{object}{An \code{xpose.data} object. }
  \item{silent}{A logical operator specifying whether output should be displayed. }
  \item{filename}{A filename to be checked for readability.}
}
\details{
  These are internal Xpose functions, not intended for direct use.
}
\value{
  TRUE, FALSE or NULL.
}
\author{Niclas Jonsson and Andrew Hooker}
\seealso{
  \code{\link[xpose4data]{xpose.prefs-class}},
  \code{\link{xvardef}}
}
\keyword{methods}
