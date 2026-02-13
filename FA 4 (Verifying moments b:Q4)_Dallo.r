# Female Height Dataset
heights <- c(67, 70, 63, 65, 68, 60, 70, 64, 69, 61, 66, 65, 71, 62, 66, 68, 64, 67, 62, 66, 65, 63, 66, 65, 63, 69, 62, 67, 59, 66, 65, 63, 65, 60, 67, 64, 68, 61, 69, 65, 62, 67, 70, 64, 63, 68, 64, 65, 61, 66)

n <- length(heights)
avg <- mean(heights)
A <- 75

# 1. Calculate direct Central Moments (m)
m2 <- sum((heights - avg)^2) / n
m3 <- sum((heights - avg)^3) / n
m4 <- sum((heights - avg)^4) / n

# 2. Calculate Raw Moments about 75 (m')
m1_p <- sum((heights - A)^1) / n
m2_p <- sum((heights - A)^2) / n
m3_p <- sum((heights - A)^3) / n
m4_p <- sum((heights - A)^4) / n

# 3. Apply verification formulas
m2_v <- m2_p - (m1_p^2)
m3_v <- m3_p - 3*m1_p*m2_p + 2*(m1_p^3)
m4_v <- m4_p - 4*m1_p*m3_p + 6*(m1_p^2)*m2_p - 3*(m1_p^4)

# Create comparison table
results <- data.frame(
  Moment = c("m2", "m3", "m4"),
  Direct_m = c(m2, m3, m4),
  Derived_from_m_prime = c(m2_v, m3_v, m4_v),
  Verified = c(all.equal(m2, m2_v), all.equal(m3, m3_v), all.equal(m4, m4_v))
)

print(results)
