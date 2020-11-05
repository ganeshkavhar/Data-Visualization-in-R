library(magrittr)
library(dplyr)
library(ggplot2)
data_histogram <- mtcars %>%
  mutate(cyl = factor(cyl)) %>%
  group_by(cyl) %>%
  summarize(mean_mpg = round(mean(mpg), 2))

ggplot(data_histogram, aes(x = cyl, y = mean_mpg)) +
  geom_bar(fill = "coral", stat = "identity")
