# plotly stuff for project 2

library(plotly)

d1<-mtcars
d1$Model<-row.names(d1)

plot_ly(d1, x=~d1$mpg, y=~d1$disp, z=~d1$hp, type="scatter3d", color=d1$qsec,
        mode="markers", text= ~paste(d1$Model, "Quarter Mile:", d1$qsec, sep="<br>")) %>%
  layout(
    title = "Horsepower, Displacement, and Mileage for MT Cars Data",
scene = list(
  xaxis = list(title = "MPG"),
  yaxis = list(title = "Displacement"),
  zaxis = list(title = "Horsepower")
))