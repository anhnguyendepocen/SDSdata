#' State by State SAT data
#'
#'
#' SAT data assembled for a statistics education journal article on the
#' link between SAT scores and measures of educational expenditures. This is the
#' same as \code{mosaicData::SAT}, but extended to have categorical versions of the
#' variables \code{frac}, \code{expend}, \code{salary}, and \code{ratio}, which  makes it easier to
#' visualize how \code{frac} changes the sign of the slope of \code{SAT} vs \code{frac}, etc.
#'
#'
#' @name SATx
#' @usage data(SATx)
#' @docType data
#' @format
#'   A data frame with 50 observations on the following variables.
#'   \itemize{
#'     \item{\code{state}} {a factor with names of each state}
#'     \item{\code{expend}} {expenditure per pupil in average daily attendance in
#'  public elementary and secondary schools, 1994-95 (in thousands of US dollars)}
#'     \item{\code{expend_q}} a translation of \code{expend} into a three-level categorical variable
#'     \item{\code{ratio}} {average pupil/teacher ratio in public elementary and secondary
#' schools, Fall 1994}
#'     \item{\code{ratio_q}} Similar to \code{expend_q}
#'     \item{\code{salary}} {estimated average annual salary of teachers in public elementary
#' and secondary schools, 1994-95 (in thousands of US dollars)}
#'     \item{\code{salary_q}} Similar to \code{expend_q}
#'     \item{\code{frac}} {percentage of all eligible students taking the SAT, 1994-95}
#'     \item{\code{frac_q}} Similar to \code{expend_q}
#'     \item{\code{verbal}} {average verbal SAT score, 1994-95}
#'     \item{\code{math}} {average math SAT score, 1994-95}
#'     \item{\code{sat}} {average total SAT score, 1994-95}
#'   }
#'
#' @source
#' http://www.amstat.org/publications/jse/secure/v7n2/datasets.guber.cfm
#'
#' @references
#' Deborah Lynn Guber, "Getting what you pay for: the debate over equity in
#' public school expenditures" (1999), \emph{Journal of Statistics Education} 7(2).
#'
#' @examples
#' data(SAT)
#' if (require(ggformula)) {
#'   gf_point(sat ~ expend, data = SAT, color = "blue", alpha = 0.5) %>%
#'     gf_lm()
#'   gf_text(sat ~ expend, data = SAT, label = ~ abbreviate(SAT$state, 3),
#'     inherit = FALSE)
#' }
#' @keywords datasets
"SATx"
