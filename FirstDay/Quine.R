library(MASS)
?quine
# View(quine)
# Visulize First
library(ggplot2)
ggplot(data = quine, aes(x = Sex, y = Days)) +
  geom_boxplot() + 
  facet_grid(Eth ~ Lrn + Age) + 
  theme_bw()

# Summary statistics
library(dplyr)
quine %>%
  group_by(Sex, Eth, Lrn, Age) %>%
  summarize(MDM = mean(Days), SDM = sd(Days), n = n())

# Storage
RES <- quine %>%
  group_by(Sex, Eth, Lrn, Age) %>%
  summarize(MDM = mean(Days), SDM = sd(Days), n = n())
RES

# DT Package
DT::datatable(RES)
