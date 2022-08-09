# Rao Muhammad Rafay
# P200636

# Q-4


# box plots for population, income, and area for states
# using state data set
# loading data set
data(state)

# for population and income we have to take state.x77
data = state.x77

# as data/state.x77 is an atomic vector so we will be converting this to recursive for ease of work
atmvec_data = as.data.frame.matrix(data)

# storing population and income data
pop = atmvec_data$Population
inc = atmvec_data$Income

# for area
area = state.area

# plotting box plots

# for Population
boxplot(pop, main = "Boxplot for Population", ylab = "Population")
# for Income (limiting y axis for better illustration)
boxplot(pop, main = "Boxplot for Income", ylab = "Income", ylim = c(0, 6400))
# for area
boxplot(pop, main = "Boxplot for Area", ylab = "Area")

# for grouped box plots (Population, Income, Area)
# in this the frequency will be very high as max value for area is high as well
boxplot(pop, inc, area, main = "Grouped Box Plot", xlab = "Population, Income, Area (respectively)", ylab = "Frequency")


