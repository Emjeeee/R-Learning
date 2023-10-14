# Finding invalid data
# -> NA: Not Available / Missing Value
# Data Preparation
names = c("Jeff", "Noel", "Erio", "Jeff", NA, NA)
is.na(names)
duplicated(names)
print(names != "Jeff")
print(sum(is.na(names)))

scores = c(100, 100, NA, 95, 60, 25)
scores.mean = mean(scores, na.rm = TRUE)
is.na(scores)
print(scores > 90)

# Data Frame
df = data.frame(student.names = names, student.scores = scores)
print(df)
is.na(df)
duplicated(df$student.names)

# cara 1
df = na.omit(df)
print(df)

# cara 2
df = df[complete.cases(df), ]
print(df)

# remove duplicate
df = df[!duplicated(df$student.names), ]
print(df)

# Imputation
# -> Mengganti nilai hilang (NA) dengan nilai rata-rata
print(scores.mean)
df$student.scores[is.na(df$student.scores)] = scores.mean
print(df)

# Calculate mode
table(names)
names.mode = names(which.max(table(names)))
print(names.mode)

df$student.names[is.na(df$student.names)] = names.mode
print(df)

print(mean(df$student.scores))
print(median(df$student.scores))
print(sd(df$student.scores))

# read data from csv
data = read.csv("./Iris.csv", encoding = "UTF-8-BOM", na.strings = c(""))
print(head(data, n = 5))

data = data[complete.cases(data), ]

# Sum
print(sum(data$SepalLengthCm))

# Max value
print(max(data$SepalLengthCm))

# Length
print(length(data$SepalLengthCm))

# Summary
summary(data)

# OrderBy
data = data[order(data$SepalLengthCm, decreasing = TRUE), ]
print(data)

# Limit column yg ditampilin
print(colnames(data))
data = subset(data, select = c("SepalLengthCm", "Species"))
print(data)

