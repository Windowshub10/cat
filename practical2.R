#Use dplyr Grammar for inbuilt data set car

data <- read.csv("E://EDA//prac 2//Automobile.csv")
head(data) #398
filter(data,weight>4000)
arrange(data,weight)
select(data,model_year,origin)
rename(data,M_Y=model_year)
mutate(data,MpgH=mpg+horsepower)
transmute(data,MpgH=mpg+horsepower)
summarize(data,max(weight),min(mpg),sum(displacement))
data %>%
group_by(origin) %>%
summarise(total_cars = n())
data %>%
group_by(model_year) %>%
summarise(avg_mpg = mean(mpg))