setwd(".")
rm(list = ls(all = TRUE))

data <- read.table(file = "results/inputDataDiffStructure.txt", head = TRUE)
QIs <- c("HV", "IGD", "EP", "GD", "GS", "ED", "PFS", "C")
ALGs <- c("CELLDE", "MOCELL", "NSGA-II", "PAES", "SMPSO", "SPEA2", "ND")

Problems <- c("RA", "TS", "TRA", "RP", "TM", "TP1", "TP2_1", "TP2_2", "TP2_3", "RM", "ITO")

overallcount <- 0

dataDiffStructure <- data.frame()

for (qi in QIs)
{
  dataQI <- data.frame()
  for (alg in ALGs)
  {
    count <- NROW(subset(data, data$QI==qi & data$Algo==alg))
    percen <- 0
    if (alg=='CELLDE')
      percen <- (count/50)
    else if (alg == 'ND')
      percen <- (count/160)
    else
      percen <- (count/54)
    row <- data.frame(QI=qi, Algo = alg, Counter = count, Percentage=percen)
    dataDiffStructure <- rbind(dataDiffStructure, row)
    if(alg!="ND") {
      dataQI <- rbind(dataQI, row)
    }
    overallcount <- overallcount+count
  }
  dataQI$id <- seq.int(nrow(dataQI))
  dataQI <- dataQI[,c(1,2,5,3,4)]
  write.table(dataQI, file = paste0("results/byQI/overall",qi,".txt"), sep = "\t", quote = FALSE, row.names = FALSE)
  dataQI <- dataQI[order(-dataQI$Percentage),]
  dataQI$id <- seq.int(nrow(dataQI))
  write.table(dataQI, file = paste0("results/byQI/overallSort",qi,".txt"), sep = "\t", quote = FALSE, row.names = FALSE)
}

write.table(
  dataDiffStructure,
  file = "results/overallstatistics.txt",
  sep = "\t",
  quote = FALSE,
  row.names = FALSE
)

print(overallcount)
