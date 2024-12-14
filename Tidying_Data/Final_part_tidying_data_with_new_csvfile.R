#-------------------------This is final part of Tidying Data--------------------
#Outcome:
# 1.Read from csv file
#2. select Colom
#3.Create group
#4. Arrange Data
#5.Slice Group element
#6.write in new CSV File
#--------------------------Now solve this each part:--------------------------
#------------------------------Basic operation(1...5)--------------------------
library("tidyverse") 

df<- read.csv("mat.csv")      

new_csv<-df |>
  select(c(season,winner,win_by_runs,win_by_wickets)) |>
  group_by(season) |>
  slice_head()
#-----------------------------------------------------------------------------
#-----------------------6th opreation(Create new CSV)-------------------------
#strace:
# var |>
#   selesct(c(col1,col2,,,,which colom we want to write in new file)) |>
#   write.csv("FIle_name.CSV",row.names = True)
#Example:
new_csv |>
  select(c(season,win_by_runs)) |>
write.csv("NewFile.csv",row.names=TRUE)