# [Data Sample]
# Pasta Type      Sold Quantity
# Spaghetti	100
# Ravioli		24
# Lasagna		72
# Fetucini	63
# Macaroni	86
# Fusilli		57

types <- c("Spaghetti", "Ravioli", "Lasagna", "Fetucini", "Macaroni", "Fusilli")
freq <- c(100, 24, 72, 63, 86, 57)

# Pie chart --> Diagram Lingkaran (Pie) -->pie(x)
# main -> Untuk ngasih judul ke plot
# col
# - rainbow(n)
# - heat.color(n)
# - terrain.color(n)
# - cm.colors(n)
# - topo.color(n)
# labels -> untuk labelling

piepercent <- round(freq * 100 / sum (freq), 1)
pie(freq, main = "Pie Chart", col = cm.colors(length(freq)),
    labels = types)
pie(freq, main = "Pie Chart", col = cm.colors(length(freq)),
    labels = piepercent)

# Legend
# cex -> untuk ubah ukuran legend
# fill -> untuk memberikan warna pada legend
legend("bottomleft", types, fill = cm.colors(length(freq)), 
       cex = 1)

# Bar chart --> Diagram Bar --> barplot(x)
# main
# xlab
# ylab
# names.arg
barplot(freq, main = "Bar Chart", xlab = "Pasta Type",
        ylab = "Sold Quantity", col = cm.colors(length(freq)),
        names.arg = types)

# Histogram --> hist(x)
hist(freq, col = terrain.colors(length(freq)),
     breaks = 10, border = "blue")

# Line Graph --> Grafik Garis --> plot(x)
plot(freq, type = "l")
plot(freq, type = "p")
plot(freq, type = "o")
plot(freq, type = "o", main = "Line Graph", xlab = "Pasta Type",
     ylab = "Frequency", xaxt = "none")

axis(1, at = 1: length(freq), labels = types)

# Box plot --> boxplot(x)
# min -> value terendah
# max -> value tertinggi
# median -> Value tengah
# quartil1 -> Value diantara min dan median
# quartil3 -> Value diantara max dan median
boxplot(freq,  main = "Box Plot")

# ggplot2 -> Sebuah library yang dapat membantu kita untuk melakukan plotting
# Installasi package -> install.packages("ggplot2")

# call the library
library(ggplot2)

# Use
ggplot(data.frame(types, freq), aes(x = types, y = freq)) +
  geom_bar(stat = "identity", fill = cm.colors(length(freq)))


