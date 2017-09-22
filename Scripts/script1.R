setwd('~/git/firstRepo/Scripts')

library(tidyverse)
#install.packages("cowplot")
library(cowplot)

set.seed(297834) # pick your own seed
dat <- data_frame(pred = rnorm(100),
                  resp = pred + rnorm(100))

pdf('../Output/out1.pdf')
ggplot(dat, aes(pred, resp)) +
  geom_point()
dev.off()

