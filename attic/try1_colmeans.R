library(checkmate)
col_means <- function(df) {
  
  df <- data.frame(df)
  
  assert_data_frame(df, all.missing = FALSE, min.cols = 1, min.rows = 1)

  
  
  numeric <- vapply(df, is.numeric, logical(1))
  numeric_cols <- df[, numeric, drop = FALSE]
  
  data.frame(lapply(numeric_cols, mean))
}


df <- mtcars[, 0]

col_means(df)
