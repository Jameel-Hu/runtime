install.packages("UsingR")
library(dplyr)
data(nym.2002, package="UsingR")
males <- filter(nym.2002, gender=="Male")
females <- filter(nym.2002, gender=="Female")   
                
                show(nym.2002)
                correlation_male <- cor(males$age, males$time)
                correlation_female <- cor(females$age, females$time)
                
                boxplot(males)
                groups_m <- split(male$time, floor(male$age/5)*5) # 10-14, 15-19, etc
                groups_f <- split(female$time, floor(female$age/5)*5) # 10-14, 15-19, etc
                mypar(1,2)
                boxplot(groups_m)
                boxplot(groups_f)
                library(rafalib)
                mypar(2,2)
                plot(females$age, females$time)
                plot(males$age, males$time)
                group <- floor(females$age/5) * 5
                boxplot(females$time~group)
                group <- floor(males$age/5) * 5
                boxplot(males$time~group)