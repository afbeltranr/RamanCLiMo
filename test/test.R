sample309150mw1 <- read.table('../degradation of rods_Yohanna/309_1/spectrum 1, 50mW/309-1_50x_50mW_10acc_0.1s_001_Spec.Data 1.txt')
sample309150mw2 <- read.table('../degradation of rods_Yohanna/309_1/spectrum 2, 50mW/309-1_50x_50mW_10acc_0.1s_002_Spec.Data 1.txt')

duplicates <- data.frame(sample30911 = sample309150mw1[,2], sample30912 = sample309150mw2[,2])

duplicates <- as.data.frame(t(duplicates))
colnames(duplicates) <- sample309150mw1[,1]

for(i in 1:2) {
  
  plot(colnames(duplicates),
       duplicates[i,],
       type = 'l'
       )
par(new = T)
  }

