\name{circos.trackPlotRegion}
\alias{circos.trackPlotRegion}
\title{
  Create plotting regions for a whole track


}
\description{
  Create plotting regions for a whole track


}
\usage{
circos.trackPlotRegion(factors = NULL, x = NULL, y = NULL, ylim = NULL, force.ylim = TRUE,
                         track.index = NULL, track.height = circos.par("default.track.height"),
                         bg.col = NA, bg.border = "black", bg.lty = par("lty"), bg.lwd = par("lwd"),
panel.fun = function(x, y) {NULL})
}
\arguments{
  \item{factors}{Factors which represent the categories of data, if is \code{NULL}, 
  \item{x}{Data on the x-axis
  \item{y}{Data on the y-axis
  \item{ylim}{Range of data on the y-axis
  \item{force.ylim}{Whether to force all cells in the track to share the same \code{ylim}
  \item{track.index}{Index for the track which is goning to be updated. Setting it to \code{NULL} means
  \item{track.height}{Height of the track. It is the percentage to the radius of the unit circls.
  \item{bg.col}{Background color for the plotting regions
  \item{bg.border}{Color for the boder of the plotting regions
  \item{bg.lty}{Line style for the border of the plotting regions
  \item{bg.lwd}{Line width for the border of the plotting regions
  \item{panel.fun}{Panel function to draw figures in each cell, see "details" section

}
\details{
  This function pretends to be high-level plotting function, which means, 

  It has two different usages. First, it can create a complete track which among several

  Currently, all the cells that are created in a same track sharing same height, which means,

  Since limitation for values on x-axis has already been defined by \code{\link{circos.initialize}}, only

  If there is no enough space for the new track or the new track has overlap with other tracks,

  \code{panel.fun} provides a convinient way to draw figures in each cell when initializing the 

  If \code{factors} does not cover all sectors which is going to be initialized, the cells in remaining unselected

  Second, it can update a already-created plotRegion if the index for the track


}