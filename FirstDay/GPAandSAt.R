# GPA and SAT
library(PASWR2)
str(GRADES)

library(ggplot2)
ggplot(data = GRADES, aes(x = sat, y = gpa)) + 
  geom_point()

library(dplyr)
GRADES <- GRADES %>%
  mutate(Sex = rep(c("Female", "Male"), each = 100))
head(GRADES)
ggplot(data = GRADES, aes(x = sat, y = gpa, color = Sex)) + 
  geom_point()

#
ggplot(data = GRADES, aes(x = sat, y = gpa, color = Sex)) + 
  geom_point() + 
  scale_color_manual(values = c("pink", "blue")) + 
  theme_bw()
