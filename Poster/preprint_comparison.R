#data checked on preprint servers from 2nd march 2017. searched included preprints only if possible. peerJ allows for assignment to multiple categories.

Subject <- c("Bioinformatics", "Cell Biology", "Ecology", "Evolutionary Biology", "Microbiology", "Paleontology", "Zoology")
peerJ <- c(725, 228, 1380, 704, 538, 304, 780)
bioRxiv <- c(1346, 250, 431, 1144, 432, 9, 50)
arxiv <- c(482, 772, 752, 458, 29, 19, 2)
dat <- data.frame(Subject, peerJ, bioRxiv, arxiv)

library(reshape2)
dat <- melt(dat)

library(ggplot2)
ggplot(dat, aes(x=Subject, y=value, col=variable))+
  geom_point(size=2)+
  scale_color_discrete("Server")+
  scale_x_discrete("")+
  scale_y_continuous("Preprints")+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


pres_absence <- data.frame(ncol=length(unique(download$cid)), nrow=length(unique(download$tid)))
for(i in 1:nrow(pres_absence)){ # loops over taxa
  temp <- download[download$cid==i,]
  for(j in 1:)  # needs to loop over collections
    
  
}