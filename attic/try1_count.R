count_them <- function(supposedly_a_count) {
  assert_numeric(supposedly_a_count, lower = 0, 
                 finite = TRUE, len = 1,  any.missing = FALSE)  
  
  if (!checkmate::test_count(supposedly_a_count)) {
    warning(
      "rounding ", supposedly_a_count,
      " to the nearest integer."
    )
    
    supposedly_a_count <- round(supposedly_a_count)
  }
  as.integer(supposedly_a_count)
}
