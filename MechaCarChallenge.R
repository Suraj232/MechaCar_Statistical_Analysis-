library(tidyverse)
Mechcar <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
#perform linear reqression
reg <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = Mechcar)
summary(reg)

#Part-2 Create Visualizations for the Trip Analysis
#import suspension_coil

sus <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

total_summary <- sus %>% summarize(mean(PSI), median(PSI), Variance=var(PSI), sd(PSI), .groups = 'keep')

lot_summary <- sus %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), Variance=var(PSI), sd(PSI), .groups = 'keep')

#Part 3: T-Tests on Suspension Coils
# Analysis Part
t.test(sus$PSI, mu=1500)
t.test(subset(sus,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(sus,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(sus,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)