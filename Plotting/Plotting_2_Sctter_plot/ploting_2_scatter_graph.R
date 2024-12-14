#----------------------------Scatter plot----------------------------------------

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

#Procedure:
#step-1:load library and read CSV File
#step-2:ggplot(method)--->parameters=data_set,axies
#step-3:use geom_jitter(color="name_of_color,size=value,shape=" ") method for Satter plot
#step-4: For axies color----> fill=axies name
#step-5: increase length of x or y axies: scale_y or y_continuous(limits = c(initial,final))
#Step-6:For labels: labs() method
#step-7:Give final stage:  theme_classic() or etc
#-------------------------------------------------------------------------------
#Example:

library(ggplot2)

df<- read.csv("votes.csv")
p<- ggplot(df,aes(x=Name,y=votes))+
  geom_jitter(
    color="red",
    size=4,
    fill="black",
    shape="*"
    
    
  )+
  scale_y_continuous(limits = c(0,20))+
  labs(
    x="Voter_Name",
    y="Number of vots",
    title="Voter vs votes"
  )+
  theme_minimal()
ggsave(
  "Points.png",
  plot = p, 
  height = 900,
  width =900,
  units="px"
)
  