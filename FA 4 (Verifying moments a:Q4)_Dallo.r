# Female Height Dataset
heights <- c(67, 70, 63, 65, 68, 60, 70, 64, 69, 61, 66, 65, 71, 62, 66, 68, 
             64, 67, 62, 66, 65, 63, 66, 65, 63, 69, 62, 67, 59, 66, 65, 63, 
             65, 60, 67, 64, 68, 61, 69, 65, 62, 67, 70, 64, 63, 68, 64, 65, 61, 66)

A <- 75
n <- length(heights)

# Calculate Raw Moments about A=75 (m'r)
m1_p <- sum((heights - A)^1) / n
m2_p <- sum((heights - A)^2) / n
m3_p <- sum((heights - A)^3) / n
m4_p <- sum((heights - A)^4) / n

# Verify Relations
m2_v <- m2_p - (m1_p^2)
m3_v <- m3_p - 3*m1_p*m2_p + 2*(m1_p^3)
m4_v <- m4_p - 4*m1_p*m3_p + 6*(m1_p^2)*m2_p - 3*(m1_p^4)

# Print Output
cat("--- Verification results ---\n")
cat("(a) m2: ", round(m2_v, 4), "\n")
cat("(b) m3: ", round(m3_v, 4), "\n")
cat("(c) m4: ", round(m4_v, 4), "\n")
