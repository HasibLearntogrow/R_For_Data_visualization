#------------------------part-2:dplyr------------------------------------------
#Content of Part-2:
#Topic-1: arrange()
#topic-2: distinct()
#-------------------------------------------------------------------------------




#------------------------------------------------------------------------------

library("tidyverse") #----------import library for dplyr

df<- read.csv("mat.csv")        #----------read data from dataset

df |>
  select(c(season,winner,win_by_runs,win_by_wickets)) |>
  
#-------------------------------------------------------------------------------
  

#---------------------Topic-1:Arrange()----------------------------------------



#Arrange Dataset: 1.Aesending order(default)  2.Desending order
# Stracture: arrange(name_of_colom) -----------Arrange by asending order
# ---------  arrange(desc(name_of_colom))-------Arrange by disending order
#Example:
arrange(desc(season)) |>  #------------desending
  
  #arrange(season)           #------------asending
  
#-----------------------------------------------------------------------------



#-----------------------Topic-2:Distinct()------------------------------------

#This method use for remove duplicate
#Stracture:  distinct()--------------------check all colom value and if find 
# any duolicate then remove this colom
# By one colom: distinct(col1)
#By more colom: distinct(col1,col2)
#After distinct: if do not show other colom then use:  .keep_all = TRUE
#Example:

distinct(season,win_by_runs)

#----------------------------------------------------------------------------
