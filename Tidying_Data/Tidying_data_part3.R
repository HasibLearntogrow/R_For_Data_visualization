#-------------------------Part-3:dplyr----------------------------------------
#content:
#Topic -1:group_by()
#Topic -2:Summarize()
#------------------------------------------------------------------------------



#-------------------------------------------------------------------------------
#Basic Operation:
library("tidyverse") #----------import library for dplyr

df<- read.csv("mat.csv")        #----------read data from dataset

df |>
  select(c(season,winner,win_by_runs,win_by_wickets)) |>
  
  #------------------------------------------------------------------------------




#-------------------------Topic-1: group_by()----------------------------------



#This method use to create a group base on keyword.This keyword can be colom name
#Stracture: group_by(keyword)

#Example:
group_by(season) |>
  
  #Some important method for create group:
  # Store only First row of group: slice_head()
  # Store only last row of group:   slice_tail()
  
  #Example:
  #slice_head()    #---------This only store 1st row
  
  # Store max value_row of grop:  slice_max(ordered_by=col_name)
  # Store min value_row of grop:  slice_min(ordered_by=col_name) 
  #Example:
  #slice_max(order_by = win_by_wickets)
  #------------------------------------------------------------------------------



#---------------------------Topic-2: summarize()-------------------------------

#This give us summary of each group:
#some importane parameter for summarize function:
# 1. n() -------------->number of elemnet merge in group
#2, maen(col_name)-----> this give us mean of each group
#Example:

summarize(mean(win_by_wickets))
#------------------------------------------------------------------------------
