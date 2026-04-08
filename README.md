# Supervised Machine Learning (Logistic Regression) Project-1

Supervised Machine Learning — Multiple Binary Logistic Regression
Overview:
This project applies multiple binary logistic regression to the UCB Admissions dataset (built into R), which records applicant admission outcomes across 6 departments at UC Berkeley. The goal is to model the probability of admission based on gender and department, using "Rejected" as the reference category.
Tools & Libraries

Language: R
Packages: ggplot2, base R

Methodology:

Loaded the UCBAdmissions dataset and converted it to a data frame
Releveled the Admit variable to set "Rejected" as the reference category
Fit a binomial GLM (glm) with Gender and Dept as predictors, weighted by frequency
Estimated odds ratios and 95% confidence intervals using exp(cbind(OR = coef(model), confint.default(model)))
Generated predicted probabilities and visualized them by department and gender using ggplot2

Key Findings:

Gender (Female) and Department B were not statistically significant predictors of admission — the value 1 fell within both of their 95% confidence intervals, and their odds ratios were close to 1, indicating a small practical effect
Departments C, D, E, and F were highly significant predictors (p < 0.001), with odds ratios substantially below 1, indicating meaningfully lower odds of admission compared to Department A
Predicted probabilities visualized by department and gender show considerable variation across departments, with Department A having the highest baseline probability of admission
