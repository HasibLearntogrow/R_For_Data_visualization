#----------------------------------Pie chart------------------------------------



#-------------------------------------------------------------------------------
#procedur:
#Step-1: Read data from csv file
#step-2: Select each colom: variable$colom_name
#step-3: store two colom into two variable(numaric value,string)
#step-4: use pie(namaric_variable,labels=string_variable)
#step-5: For create Title: main="Title of graph"
#step-6:use color: col=colors_name.colors(length(numaric_variable))
#   1.col = rainbow(length(share))
#   2.col = gray.colors(length(share))
#   3.col = heat.colors(length(share))
#   4.col = terrain.colors(length(share))
#   6.col = topo.colors(length(share))
#For customize: col=c("colors_name")
#-------------------------------------------------------------------------------


#------------------------------------------------------------------------------
#Example:
df <- read.csv("pie.csv")
brand <- df$Brand
share <- df$Share
pie(
  share,
  labels = brand,
  main = "Market Share by Brand",
  
 col=c("red","black","green","yellow","blue","pink")
)


