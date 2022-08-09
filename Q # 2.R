# Rao Muhammad Rafay
# P200636

# Q-2


# using data set "state"
# loading data set "state"
data(state)

# storing data
names = state.name
divisions = state.division
regions = state.region

# categorizing states based on different Divisions

# combining names and divisions to form data frame for comparisons  
combinediv = data.frame(names, divisions)

# New England division states
newenglanddev = combinediv$names[combinediv$divisions == "New England"]
# Middle Atlantic division states
middleatlanticdev = combinediv$names[combinediv$divisions == "Middle Atlantic"]
# South Atlantic division states
southatlanticdev = combinediv$names[combinediv$divisions == "South Atlantic"]
# East South Central division states
eastsouthcentraldev = combinediv$names[combinediv$divisions == "East South Central"]
# West South Central division states
westsouthcentraldev = combinediv$names[combinediv$divisions == "West South Central"]
# East North Central division states
eastnorthcentraldev = combinediv$names[combinediv$divisions == "East North Central"]
# West North Central division states
westnorthcentraldev = combinediv$names[combinediv$divisions == "West North Central"]
# mountain division states
mountaindev = combinediv$names[combinediv$divisions == "Mountain"]
# Pacific division states
pacificdev = combinediv$names[combinediv$divisions == "Pacific"]

# printing all the categorized states based on Divisions
newenglanddev
middleatlanticdev
southatlanticdev
eastsouthcentraldev
westsouthcentraldev
eastnorthcentraldev
westnorthcentraldev
mountaindev
pacificdev


# categorizing states based on different Regions

# combining names and regions to form data frame for comparisons  
combinereg = data.frame(names, regions)

# Northeast Regional states
northeastreg = combinereg$names[combinereg$regions == "Northeast"]
# South Regional states
southreg = combinereg$names[combinereg$regions == "South"]
# North Central Regional states
northcentralreg = combinereg$names[combinereg$regions == "North Central"]
# West Regional states
westreg = combinereg$names[combinereg$regions == "West"]

# printing all states based on different Regions
northeastreg
southreg
northcentralreg
westreg

# creating table for plotting purpose
division <- table(state.division)
region <- table(state.region)

# creating Pareto graph based on division and region
# bar plot in decreasing order is Pareto graph
barplot(sort(division, decreasing = T), main = "Pareto Graph", xlab = "Divisions", ylab = "Frequency of States", las = 1)
barplot(sort(region, decreasing = T), main = "Pareto Graph" , xlab = "Regions", ylab = "Frequency of States", las = 1 )

