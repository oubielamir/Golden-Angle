library(data.table)
library(dplyr)
library(ggplot2)


angle <- 13*pi/180
t <- 1:2000 * angle

x <- sin(t)
y <- cos(t)

df <- data_frame(t, x, y)
p <- ggplot(df, aes(x*t, y*t))

# spiral
# point shape = 1 "circle"
 p + geom_point(size = 80, alpha = 0.1, shape = 1, color = "magenta4")+
   theme(legend.position="none",
        panel.background = element_rect(fill = "white"),
        panel.grid=element_blank(),
         axis.ticks=element_blank(),
        axis.title=element_blank(),
        axis.text=element_blank())



#star points spiral shape = 17
# p+ geom_point(aes (size = t), size = 8, color = "yellow", alpha = 0.5, shape = 17)+
#   theme(panel.grid = element_blank(),panel.background = element_rect(fill = "darkmagenta"),
#                      axis.title = element_blank(),
#                       axis.ticks = element_blank(),
#                       axis.text = element_blank(),
#                      legend.position = "none")

  
  
  
 #basic circle
 # angle <- pi*(3-sqrt(5))
 # 
 # t = seq(0, 2*pi, length.out = 60)
 # x <- sin(t) 
 # y <- cos(t)
 # 
 # df <- data.frame(t,x,y)
 # 
 # ggplot(df, aes(x,y)) + geom_point()
 

