# Rao Muhammad Rafay
# P200636

# Q-3

# comparing states based on population and income

# loading data set
data(state)

# storing
data = state.x77

# as data/state.x77 is an atomic vector so we will be converting this to recursive for ease of work
atmvec_data = as.data.frame.matrix(data)

# storing population and income data
pop = atmvec_data$Population
inc = atmvec_data$Income

# creating tables for plotting
popt = prop.table(table(pop))
inct = prop.table(table(inc))

bartable = t(rbind(popt,inct))
colnames(bartable) = c("Population","Income")

# creating compound bar chart
# adding and color for differentiation
barplot(bartable, col = 1:5, las = 1)









