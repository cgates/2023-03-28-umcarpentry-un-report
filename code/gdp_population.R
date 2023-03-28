library(tidyverse)

gapminder_1997 <- read_csv("gapminder_1997.csv")
str(gapminder_1997)

ggplot(data = gapminder_1997) +
  aes(x=gdpPercap, y=lifeExp, color = continent, size=pop/1000000) +
  geom_point() +
  scale_color_brewer(palette = "Set1")+
  labs(size='pop (million)')

ggplot(data = gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp, color = continent, size = pop/1000000) +
  geom_point() +
  scale_color_brewer(palette = "Set1") +
  labs(x = "GDP Per Capita", y = "Life Expectancy",
       title = "Do people in wealthy countries live longer?", size = "Population (in millions)")

gapminder_data <- read_csv("gapminder_data.csv")

ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) +
  geom_violin(aes(fill = continent))

ggplot(gapminder_1997) +
  aes(x = lifeExp) +
  geom_histogram(bins=20)


ggplot(gapminder_1997) +
  aes(x = lifeExp) +
  geom_histogram(bins=20) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90,
                                   vjust = 0.5,
                                   hjust=1))


ggplot(gapminder_1997) +
  aes(x=gdpPercap, y = lifeExp) +
  geom_point() +
  facet_wrap(vars(continent))

awesome_plot = ggplot(gapminder_1997) +
  aes(x=continent, y = lifeExp, fill=continent) +
  geom_violin() +
  theme_bw()

ggsave(awesome_plot, )
