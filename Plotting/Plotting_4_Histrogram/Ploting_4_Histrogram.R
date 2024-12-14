
library(ggplot2)


data <- read.csv("his.csv")
#-------------------------------Process -1: For One color:-------------------------

#1. bindwidth means difference of one point to another point
#fill="color name"
# ggplot(data, aes(x = He)) +
#   geom_histogram(binwidth = 5, fill = "blue", color = "black") +
#   labs(title = "Histogram of Measurements", x = "Measurement (He)", y = "Frequency") +
#   theme_minimal()

#-------------------------------------------------------------------------------------



#----------------process-2: For Dynamic color with more details:---------------------

#breaks=number of color

p<- ggplot(data, aes(x = He, fill = cut(He, breaks = 4))) +
  geom_histogram(binwidth = 5, color = "black") +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Histogram of Measurements with Multiple Colors", 
       x = "Measurement (He)", 
       y = "Frequency", 
       fill = "Range") +
  theme_classic()
ggsave(
  "Histrogram.png",
  plot = p, 
  height = 900,
  width =900,
  units="px"
)
  
