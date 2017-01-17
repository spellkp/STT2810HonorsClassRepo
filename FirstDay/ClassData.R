# Class Information
peep <- c("Bill", "Ana", "Chuck", "Sam", "Julie", "Maria")
height <- c(72, 63, 69, 71, 68, 60)
ws <- c(73, 62, 70, 71, 67, 60)
sex <- c("Male", "Female", "Male", "Male", "Female", "Female")
DF <- data.frame(Name = peep, HeightIn = height, WingSpan = ws, Sex = sex)
str(DF)
DF$Name <- as.character(DF$Name)
str(DF)
#
library(ggplot2)
ggplot(data = DF, aes(x = WingSpan, y = HeightIn)) + 
  geom_point()
# 
ggplot(data = DF, aes(x = WingSpan, y = HeightIn, color = Sex)) + 
  geom_point()
#
library(dplyr)
DF %>%
  group_by(Sex) %>%
  summarize(MHI = mean(HeightIn), SHI = sd(HeightIn), MdHI = median(HeightIn), iqrHI = IQR(HeightIn))
#
RES <- DF %>%
  group_by(Sex) %>%
  summarize(MHI = mean(HeightIn), SHI = sd(HeightIn), MdHI = median(HeightIn), iqrHI = IQR(HeightIn))
#  
knitr::kable(RES)
#
DT::datatable(RES)
