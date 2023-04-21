library(gapminder)
library(tidyverse)

View(gapminder)

# Plot 1 ----
gapminder |> 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  labs(title = "Life expectancy explained by GDP per capita",
       subtitle = "Plot1 - base plot",
       x = "GDP per capita",
       y = "Life expectancy")

# Plot 2 ----
gapminder |> 
  filter(continent %in% c("Africa", "Europe")) |> 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  labs(title = "Life expectancy explained by GDP per capita",
       subtitle = "Plot2 - filtered to Africa and Europe only",
       x = "GDP per capita",
       y = "Life expectancy")

# Plot 3 -----
gapminder |> 
  filter(continent %in% c("Africa", "Europe")) |> 
  filter(gdpPercap < 30000) |> 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  labs(title = "Life expectancy explained by GDP per capita",
       subtitle = "Plot 3 - filtered to GDP per capita < 30000 only",
       x = "GDP per capita",
       y = "Life expectancy")

# Plot 4 -----
gapminder |> 
  filter(continent %in% c("Africa", "Europe")) |> 
  filter(gdpPercap < 30000) |> 
  ggplot(aes(x = gdpPercap, y = lifeExp, size = pop)) +
  geom_point() +
  labs(title = "Life expectancy explained by GDP per capita",
       subtitle = "Plot 4 - population data mapped to size aesthetic",
       x = "GDP per capita",
       y = "Life expectancy")

# Plot 5 -----
gapminder |> 
  filter(continent %in% c("Africa", "Europe")) |> 
  filter(gdpPercap < 30000) |> 
  ggplot(aes(x = gdpPercap, 
             y = lifeExp, 
             size = pop,
             color = year)) +
  geom_point() +
  labs(title = "Life expectancy explained by GDP per capita",
       subtitle = "Plot 5 - year data mapped to color aesthetic",
       x = "GDP per capita",
       y = "Life expectancy")

# Plot 6 ----
gapminder |> 
  filter(continent %in% c("Africa", "Europe")) |> 
  filter(gdpPercap < 30000) |> 
  ggplot(aes(x = gdpPercap,
             y = lifeExp,
             size = pop,
             color = year)) +
  geom_point() +
  facet_wrap(~continent) +
  labs(title = "Life expectancy explained by GDP per capita",
       subtitle = "Plot 6 - facet wrap on continent added",
       x = "GDP per capita",
       y = "Life expectancy")

# Plot 7 ----
gapminder |> 
  filter(continent %in% c("Africa", "Europe")) |> 
  filter(gdpPercap < 30000) |> 
  ggplot(aes(x = gdpPercap,
             y = lifeExp,
             size = pop,
             color = year)) +
  geom_point() +
  facet_wrap(~continent) +
  labs(title = "Life expectancy explained by GDP per capita",
       subtitle = "Plot 7 - final plot version",
       x = "GDP per capita",
       y = "Life expectancy") +
  theme_bw()
