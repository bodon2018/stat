pacman::p_load(pacman, tidyverse)

#problem 1.110

# 1.110
#### 
time_minutes <- c(8.25, 7.83, 8.30, 8.42, 8.50, 8.67, 8.17, 9.00, 9.00, 8.17, 7.92, 9.00, 8.17, 7.92, 
                  9.00, 8.50, 9.00, 7.75,7.92, 8.00, 8.08, 8.42, 8.75, 8.08, 9.75, 8.33, 7.83, 7.92, 
                  8.58, 7.83, 8.42, 7.75, 7.42, 6.75, 7.42, 8.50, 8.67, 10.17, 8.75, 8.58, 8.67, 9.17,
                  9.08, 8.83, 8.67)
#a) graph of driving times. It is roughly symmetric. No clear outliers. 
hist(time_minutes,  ylim = c(0, 16), col = "gold", xlab = "Minutes", main = "Time to school")


#b) programming below.

#Find day w accident
Rfast::nth(time_minutes,2, descending = T)

#Find day w icy roads
Rfast::nth(time_minutes,1, descending = T)

#Find day w no traffic
Rfast::nth(time_minutes, 1, descending = F)

#remove 3 outliers (d too)

new_times <- c(8.25, 7.83, 8.30, 8.42, 8.50, 8.67, 8.17, 9.00, 9.00, 8.17, 7.92, 9.00, 8.17, 7.92, 
                  9.00, 8.50, 9.00, 7.75,7.92, 8.00, 8.08, 8.42, 8.75, 8.08, 8.33, 7.83, 7.92, 
                  8.58, 7.83, 8.42, 7.75, 7.42, 7.42, 8.50, 8.67, 8.75, 8.58, 8.67, 9.17,
                  9.08, 8.83, 8.67)
  
#numerical summary 
summary(new_times)


#c) No, these data are not reasonably close to having a normal distribution because the graph is not 
#a bell shape distribution. It seems as a biomodal distribution. 
hist(new_times,  ylim = c(0, 11), col = "pink", xlab = "Minutes", main = "Time to school")

#d) Remove outliers. see above

####once finished to clear work enviroment 

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L
