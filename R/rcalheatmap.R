#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
rcalheatmap <- function(message, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'rcalheatmap',
    x,
    width = width,
    height = height,
    package = 'rcalheatmap'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
rcalheatmapOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'rcalheatmap', width, height, package = 'rcalheatmap')
}

#' Widget render function for use in Shiny
#'
#' @export
renderRcalheatmap <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, rcalheatmapOutput, env, quoted = TRUE)
}
