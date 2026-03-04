a <- read.csv("E://  excel csv file path")
a
mean(a$x)
median(a$x)

get_mode <- function(x) {
   ux <- unique(x)
   ux[which.max(tabulate(match(x, ux)))]
}
get_mode(a$x)

quantile(a$x)
var(a$x)
cor(a$x,a$y)
sd(a$x)

Q1 <- quantile(a$x, 0.25)
Q3 <- quantile(a$x, 0.75)
(Q3 - Q1) / 2

quantile(a$x, 0.7)

quantile(a$x, 0.90)



