install.packages(c("maps", "ggplot2"))
library(maps)
library(ggplot2)

# Load UK map data
uk_map <- map_data("world", region = "UK")

# Create a ggplot object and add the map layer
ggplot(uk_map, aes(x = long, y = lat, group = group)) +
  geom_polygon(fill = "white", color = "black") +
  coord_fixed(ratio = 1.2) +  # Adjust ratio for better appearance
  theme_minimal() +
  ggtitle("Regional Analysis")

ggsave("cover.png")
