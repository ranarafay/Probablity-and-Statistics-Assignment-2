# Rao Muhammad Rafay
# P200636

# Q-5


# exporting state.x77 into csv file
# loading data set
data (state)

# storing data
data = state.x77

# exporting state.x77 data into x77.csv
write.table(data, file = "x77.csv", sep = ",")

# storing income of states
inc = data[,2]

# sorting income data for taking 20 richest cities
inc = sort(inc, decreasing = T)

states = inc[1:20]


