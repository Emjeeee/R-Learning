# a = 10
10 -> a
class(a)
# NUMERIC
# - float
# - negative num

b = 5L
class(b)


c = "H"
class(c)

d = FALSE | TRUE
class(d)

# remove
rm(b)

# mengembalikan semua var
ls()

rm(list = ls())

# c: combine
vector1 <- c(1, 1, 5, 3, 2, 6)
vector1
sort(vector1, decreasing = TRUE)

# index mulai dari 1
vector1[c(3, 5, 2)]


table(vector1)


vector2 = c("chicken", "bird", "tiger", "chicken", "cow")
vector2

table(vector2)

vector3 = c(1:9)
vector3

matrix1 = matrix(vector3,
                 nrow = 3, ncol = 3, byrow = TRUE)

matrix1

# matrix[baris, kolom]
matrix1[c(1, 3), 2]

# ctrl + l: bersihin console
matrix1[1, c(1, 3)]

matrix1[c(1, 3), c(1, 3)]

x <- function(z)
{
  print(z)
}

x("Hello")

h = "jeff"
class(h)

vector5 = h("hansen", "emje", "juan", "noel")
vector5
y <- function(t)
{
  if (t in h)
  {
    return(TRUE)
  }
  else
  {
    return(FALSE)
  }
}

y("Julian")

y <- function()
{
  variable <<- 10
}

i = 0

while(i < 10)
{
  print(i)
  i = i + 1
}


# Byte order mark
datas <- read.csv("Score.csv",
                  fileEncoding = "UTF-8-BOM")

datas

class(datas)

datas$Course.Code
datas$Assignment
datas$Mid.Exam
datas$Final.Exam

table(datas$Final.Exam)