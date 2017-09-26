setwd('~/git/firstRepo/Scripts')

library(tidyverse)
#install.packages("cowplot")
library(cowplot)

# get arguments
tmp <- commandArgs(TRUE)

# make a named list of arguments
lst <- strsplit(tmp, '=', fixed = TRUE) %>%
  lapply(`[`, 2)

names(lst) <- strsplit(tmp, '=', fixed = TRUE) %>%
  sapply(`[`, 1)
# fill in defaults if not given
if(is.null(lst$out))
  lst$out <- 'out1.pdf'
#Also change the call to pdf() such that it uses our argument:
  #pdf(lst$out)

set.seed(297834) # pick your own seed
dat <- data_frame(pred = rnorm(100),
                  resp = pred + rnorm(100))

pdf('../Output/out1.pdf')
ggplot(dat, aes(pred, resp)) +
  geom_point()
dev.off()

