# Female Height Dataset (Normal)
heights <- c(
  67, 70, 63, 65, 68, 60, 70, 64, 69, 61, 
  66, 65, 71, 62, 66, 68, 64, 67, 62, 66, 
  65, 63, 66, 65, 63, 69, 62, 67, 59, 66, 
  65, 63, 65, 60, 67, 64, 68, 61, 69, 65, 
  62, 67, 70, 64, 63, 68, 64, 65, 61, 66
)

A <- 75
n <- length(heights)

# Calculate moments about 75
m1_prime <- sum((heights - A)^1) / n
m2_prime <- sum((heights - A)^2) / n
m3_prime <- sum((heights - A)^3) / n
m4_prime <- sum((heights - A)^4) / n

# Output results
cat("Moments about", A, "for Female Heights:\n")
cat("(a) First Moment: ", round(m1_prime, 2), "\n")
cat("(b) Second Moment:", round(m2_prime, 2), "\n")
cat("(c) Third Moment: ", round(m3_prime, 2), "\n")
cat("(d) Fourth Moment:", round(m4_prime, 2), "\n")
