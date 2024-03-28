
# Question 1

library(ggplot2)
data<-read.csv("penguindives-2.csv")
ggplot(data, aes(x=Heart_Rate, y=Duration)) + 
  geom_point()+
  geom_smooth(method=lm, se=FALSE)+ggtitle("Scatter plot of Heart rate per duration")+xlab("Heart rate")


# Question 2

model<-lm(Duration~Heart_Rate,data)
model


# Question 3

summary(model)

# Question 4
  
summary(model)$coefficients

t_statistic<-(-0.1626403-0)/0.01825862 #t-statistic=(mu-0)/standard error
t_statistic


## P-value


# determine residual degrees of freedom
model$df.residual

2 * pt(-8.90759, df = 32)


