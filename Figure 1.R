library(dplyr)
library(ggplot2)


# figure 1a
dat %>%
  ggplot(aes(y = label, x = n, fill = gbs.cat)) +
  geom_col(position = "fill") +
  scale_y_discrete(expand = c(0, 0)) +
  scale_x_continuous(labels = scales::percent, expand = c(0, 0)) +
  labs(y = "Age group", x = "Proportion") +
  theme(
    axis.text.y = element_text(size = 9),
    axis.text.x = element_text(size = 9),
    legend.position = "right",
    axis.title.y = element_blank(),
    plot.margin = margin(1, 1.2, 1, 1, "lines"),
    legend.text = element_text(size = 7.5),
    axis.title = element_text(face = 'bold', size = 9)
  ) +
  guides(fill = guide_legend(reverse = TRUE))



# figure 1b
dat %>%
  ggplot(aes(x = age.cat, y = n, fill = gbs.cat)) +
  geom_col() +
  scale_x_discrete(expand = c(0, 0), breaks = c("SB", seq(5, 90, 5)), limits = c("SB", 0:90)) +
  scale_y_continuous(expand = c(0, 0)) +
  labs(x = "Age (days)", y = "Deaths") +
  theme(
    legend.position = "bottom",
    legend.title = element_blank(),
    legend.text = element_text(size = 8.5),
    axis.title = element_text(face = 'bold', size = 10)
  ) +
  guides(fill = guide_legend(reverse = TRUE))
