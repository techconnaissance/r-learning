x <- "Hello World"
print(x)

bool <- TRUE

print(bool)

i <- 123L
n <- 1.23
d <- as.Date("2017-05-22")

print(i)

print(n)

add <- function(a,b){ a + b }

add(12, 5)

vector <- c(1,2,3)

s <- 5: 1

m <- matrix( data = 1:4, nrow = 2, ncol = 2)

m


strVector <- c("Male", "Female", "Male")
strVector

fac <- factor(strVector)

levels(fac)
fac
unclass(fac)

#data.frame

emp <- data.frame(Name = c("Suna", "Durai", "James"),
           Role = c("Web Dev", "BI", "ETL"),
           Salary = c(4000, 6000, 8000)
           )

emp
emp$Salary

emp[2:3,]

emp[emp$Salary > 5000,]
emp

read.table()

