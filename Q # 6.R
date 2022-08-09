# Rao Muhammad Rafay
# P200636


# Q-6

# we are using package ggplot2 for plotting compound bar plots
# make sure to install ggplot2 package before running script
# run command install.packages("ggplot2")

# loading data set
data (state)

# storing data
names = state.name
divisions = state.division


# for income


# as data/state.x77 is an atomic vector so we will be converting this to recursive for ease of work
data = state.x77
atmvec_data = as.data.frame.matrix(data)

# storing income data
inc = atmvec_data$Income

# combining names income and divisions to form data frame for comparisons  
combineincdev = data.frame(names, inc, divisions)

# taking income of first 5 Mountain Division states
mountaindevinc = combineincdev$inc[combineincdev$divisions == "Mountain"]
mountaindevinc = mountaindevinc[1:5]  #filtering any 5 observations
# taking income of first 5 Pacific Division states
pacificdevinc = combineincdev$inc[combineincdev$divisions == "Pacific"]
pacificdevinc = pacificdevinc[1:5]  #filtering any 5 observations


# for area


# storing area data
area = state.area

# combining names area and divisions to form data frame for comparisons  
combineareadev = data.frame(names, area, divisions)

# taking area of first 5 Mountain Division states
mountaindevarea = combineareadev$area[combineareadev$divisions == "Mountain"]
mountaindevarea = mountaindevarea[1:5]  # filtering 5 observations
# taking area of first 5 Pacific Division states
pacificdevarea = combineareadev$area[combineareadev$divisions == "Pacific"]
pacificdevarea = pacificdevarea[1:5]  # filtering 5 observations


# we have filtered out Incomes and Area for first 5 states based on Mountain and Pacific region 
# Income
mountaindevinc
pacificdevinc
# Area
mountaindevarea
pacificdevarea

# comparing Mountain and Pacific region on basis of Income and Area
# now we will be making compound bar plots for income and area respectively
# Income
barplot(rbind(mountaindevinc, pacificdevinc), main = "Compund Barplot (Income)", xlab = "States (based on Region)", ylab = "Income", col = c("Orange","brown"))
legend("bottomright", c("Mountain","Pacific"), cex = 1.0, fill = c("Orange", "Brown"))
# Area
barplot(rbind(mountaindevarea, pacificdevarea), main = "Compund Barplot (Area)", xlab = "States (based on Region)", ylab = "Area", col = c("Orange","brown"))
legend("topright", c("Mountain","Pacific"), cex = 1.0, fill = c("Orange", "Brown"))

