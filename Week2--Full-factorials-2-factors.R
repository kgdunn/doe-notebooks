F <- c(-1, +1, -1, +1)
T <- c(-1, -1, +1, +1)
y <- c(37, 57, 49, 53)
mod.neginteraction <- lm(y ~ F*T)
summary(mod.neginteraction)
library(pid)
contourPlot(mod.neginteraction)

