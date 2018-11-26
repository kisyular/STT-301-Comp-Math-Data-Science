## Exercise: 1
## Date: 
## Author: 

# Setup -------------------------------------------------------------------
con <- url("http://blue.for.msu.edu/FOR875/data/batting.RData")
load (con)
close (con)
rm (con)


# Example Question --------------------------------------------------------
## Question: What was Jim Rice's mean BA?

## Code:
mean (JimRiceBA)

## Answer: Jim Rice's mean BA was 0.292625.



# ---------------------------------------------------------------------------------------
# Question 1 How many seasons did Ted Williams play? (Hint: Use the length function.)
# Code:
length (TedWilliamsBA)

# Answer: Ted Williams played 19 seasons

# ---------------------------------------------------------------------------------------
# Question 2 In which season did Ted Williams have his highest batting average?
# Code:
which.max (TedWilliamsBA)

# Answer: Ted Willing had higher battling average on year 1953 which is 12 season


# ---------------------------------------------------------------------------------------
# Question 3 What was this highest batting average?
# Code:
max (TedWilliamsBA)

# Answer: The highest batting average was 0.407


# ---------------------------------------------------------------------------------------
# Question 4 What was Ted Williams’ mean batting average?
# Code:
mean (TedWilliamsBA)

# Answer: Ted Williams' batting mean was 0.3475789


# ---------------------------------------------------------------------------------------
# Question 5 For which pair of the variables representing home runs, RBIs, and batting average, is the correlation the highest? What is this correlation?
# Code:
cor (TedWilliamsBA, TedWilliamsHR)
cor (TedWilliamsBA, TedWilliamsRBI)
cor (TedWilliamsHR, TedWilliamsRBI)

# Plots for the coefficients
plot (TedWilliamsBA, TedWilliamsHR)
plot (TedWilliamsBA, TedWilliamsRBI)
plot (TedWilliamsHR, TedWilliamsRBI)

# Answer: The correlation between TedWilliamsHR, TedWilliamsRBI is the highest with the value of 0.8422571


# ---------------------------------------------------------------------------------------
# Question 6 What was the largest jump in Ted Williams’ RBIs from one season to the next? In which season did this jump occur?
# Code:
TedWilliamsdiffs <- diff(TedWilliamsRBI, lag=1)
TedWilliamsdiffs

which.max(TedWilliamsdiffs)
max(TedWilliamsdiffs)
# Answer: Ted Williams' batting largest jump occurred in 1954 (season 12). The jump was 55

