data(UCBAdmissions)
ucb=as.data.frame(UCBAdmissions)
head(ucb)

ucb$Admit=relevel(ucb$Admit, ref = "Rejected")

model = glm(Admit ~ Gender + Dept,
              data = ucb,
              weights = Freq,
              family = binomial)
exp(cbind(OR = coef(model1), confint.default(model)))
