## Use group by(), %>%,mutate(), rename(),arrange(), filter(), select().

data <- read.csv("E:/eda1753/Automobile.csv")
data
library(dplyr)
data %>%
rename(
Mpg=mpg,
Weight = weight
) %>%
filter(Weight < 3000) %>%
mutate(miles_per_g = Mpg / Weight) %>%
group_by(Mpg) %>%
arrange(desc(miles_per_g)) %>%
select(
Mpg,
Weight,
miles_per_g
)
