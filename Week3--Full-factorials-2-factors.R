# T = time used for baking: (-1) corresponds to 80 minutes and (+1) corresponds to 100 minutes
T = c(-1, +1, -1, +1)

# F = quantity of fat used: (-1) corresponds to 20 g and (+1) corresponds to 30 grams
F = c(-1, -1, +1, +1)

# Response y is the crispiness
y = c(37, 57, 49, 53)

# Fit a linear model
model_crispy = lm(y ~ T + F + T*F)
summary(model_crispy)

# Uncomment this line if you run the code in RStudio
#library(pid)

# Comment this line if you run this code in RStudio
source('https://yint.org/contourPlot.R')

# See how the two factors affect the response:
contourPlot(model_crispy )
interaction.plot(T, F, y)
interaction.plot(F, T, y)

# Make a prediction with this model:
xT = +2   # corresponds to 110 minutes
xF = -1   # corresponds to 20 grams of fat
y.hat = predict(model_crispy, data.frame(T = xT, F = xF))
paste0('Predicted value is: ', y.hat, ' crispiness.')

