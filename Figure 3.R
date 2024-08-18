library(ggplot2)
library(dplyr)

dat %>%
  ggplot(aes(y = reorder(value, n, sum), x = n, fill = age.cat)) +
  geom_col() +
  scale_x_continuous(expand = expansion(mult = c(0, 0.02))) +
  scale_y_discrete(expand = c(0, 0)) +
  labs(x = "Number of deaths") +
  facet_grid(infectious ~ ., scales = "free", space = "free") +
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.5),
    strip.background = element_rect(fill = 'grey45', color = "black"),
    strip.text = element_text(size = 10, face = "bold", color = "white"),
    legend.position = "bottom",
    legend.title = element_blank(),
    legend.key.size = unit(0.55, "cm"),
    axis.title.y = element_blank()
  ) +
  guides(fill = guide_legend(reverse = TRUE))
