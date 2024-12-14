#--------------------------------Welcome-----------------------------------------

#Tidying means customize our huge data set (like CSV file) into understandable small file
#Tidying has two main part:
#1.dplyr------->this is give us customized date set
#2.ggplot------> this is help us to visualize data




#----------------------------But this section we will learn dplyr----------------



#------------------------------dplyr--------------------------------------------
# Context and important method of dplyr:
# 1.select()----------->For select and deselect colom from data set
# 2.filer()------------->For select and deselect row from data set
# 3.arrange()----------->For sorting of Datset
# 4.distinct()---------->Remove duplicated and findout our needed row
# 5.group_by()---------->create group base on specific value
# 6.summarize()--------->Make a summary of Data set
#-------------------------------------------------------------------------------





#---------------------------------Part-1:dplyr---------------------------------
#Topic-1:select()
#Topic-2:filter()
#-------------------------------------------------------------------------------




#---------------------------------Topic-1:select()------------------------------
#This method for select and deselect colom from data set:
#Important two parameter:  
#  c----------------->means keep
#   c----------------->means do not keep
#   pip operator:    \> -----this conncet two lines.This is must be use in code
#stracture:  select(c(c1,c2,c3---------))



library("tidyverse") #----------import library for dplyr

df<- read.csv("mat.csv")        #----------read data from dataset

  df |>
  select(c(season,winner,win_by_runs,win_by_wickets)) |>
    
    #output season ,winner,win_by_runs,Win_by_wickets are available in dataset
  
   # when colom name are big then we  can use shorcut like this:
    # 1. contain("keyword")  --- this method store only colom which related with this keyword
   #2. ends_with("last word")-----Example: ends_with("runs")
    # 3.starts_with("first_word")----Example: starts_with("win")
    
    
  #----------------------------------------------------------------------------
  
  
  
  
  #-----------------------------Topic -2:filter()-----------------------------
  #This method for select and deselect row from data set:
  # stracture:   filter(colom_name=="value")
  #We can operate various operation in filter: less than etc
  
     filter(season=="2008") 
  
  #output: In this data set only contain rows which related to 2017.
  
  #------------------------------------------------------------------------

