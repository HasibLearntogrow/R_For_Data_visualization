#----------------------------Line plot----------------------------------------

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

#Procedure:
#step-1:load library and read CSV File
#step-2:ggplot(method)--->parameters=data_set,axies
#step-3:use geom_point() method for  create point in 1st l layer
#step-4:use geom_line() method for connect to each point of 1st layer
#Step-5:For labels: labs() method
#step-6:Give final stage:  theme_classic() or etc
#-------------------------------------------------------------------------------
#Example:


library(ggplot2)
 
data <- read.csv("line.csv")


p<- ggplot(data, aes(x = Day, y = Tem, group = 1)) +
  geom_point(color = "red", size = 2) +
  geom_line(color = "blue", size = 1) +
  
  labs(title = "Temperature Over the Week", x = "Day", y = "Temperature (°C)") +
  theme_minimal()
ggsave(
  "Line_Plots.png",
  plot = p, 
  height = 900,
  width =900,
  units="px"
)