data(UCBAdmissions)
ucb=as.data.frame(UCBAdmissions)
head(ucb)

ucb$Admit=relevel(ucb$Admit, ref = "Rejected")

model = glm(Admit ~ Gender + Dept,
              data = ucb,
              weights = Freq,
              family = binomial)
exp(cbind(OR = coef(model), confint.default(model)))

ucb$pred_prob <- predict(model, type = "response")
head(ucb)

library(ggplot2)

ggplot(ucb, aes(x = Dept, y = pred_prob, color = Gender))+
  geom_point(size = 3) +
  labs(y = "Predicted Probability of Admission")