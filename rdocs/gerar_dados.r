if(!require(pacman))install.packages("pacman")
p_load(tidyverse)

set.seed(22025)
m.obs <- 100000
dados <- tibble(x1.obs=runif(m.obs, -3, 3), 
                x2.obs=runif(m.obs, -3, 3)) %>%
  mutate(mu=abs(x1.obs^3 - 30*sin(x2.obs) + 10), 
         y=rnorm(m.obs, mean=mu, sd=1))

write.csv(dados, "dados/dados.csv")
