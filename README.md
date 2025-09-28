# Sleep Efficiency Analysis using Regression Models

## 📌 Introduction
Quality sleep is vital in today’s fast-paced world. This project explores **sleep efficiency**, a major factor reflecting the effectiveness of the sleep cycle, using regression techniques to examine the relationships within sleep data.  

The primary goal is to uncover **quantitative insights** into the factors influencing sleep efficiency. By applying regression analysis, the project moves beyond descriptive observations to identify key predictors that improve or reduce sleep efficiency.  

This data-driven approach:
- Enhances our understanding of sleep dynamics.  
- Provides actionable takeaways for individuals seeking better sleep quality.  
- Offers potential applications in lifestyle improvements and health monitoring.  

---

## 📊 Dataset
- **Source:** Kaggle (public dataset)  
- **Link:** [Sleep Efficiency Dataset](https://www.kaggle.com/datasets/equilibriumm/sleep-efficiency/data)  

### Description
The dataset contains information about:
- Sleep patterns (e.g., duration, awakenings, REM sleep %).  
- Lifestyle factors (e.g., caffeine intake, exercise frequency, smoking status).  
- Demographics (e.g., age, gender).  

### Context
The dataset enables exploration of how **bedtime routines, environmental factors, and lifestyle choices** impact sleep efficiency. It is particularly relevant given the modern challenges of maintaining healthy sleep habits.

---

## ❓ Research Questions
The study focuses on three key questions:
1. Do sleep patterns and efficiency differ significantly between gender groups?  
2. How does caffeine consumption relate to sleep efficiency and the number of awakenings?  
3. Is there a significant association between exercise frequency and REM sleep percentage?  

---

## 🔍 Exploratory Analysis
- A **positive correlation** exists between sleep efficiency and age.  
- Sleep efficiency increases by about **0.025 units per year** of age.  
- Variability in the data suggests multiple influencing factors beyond age.  

---

## ⚙️ Methods and Tools
### Regression Tree (R, `rpart`)
- Modeled gender differences in sleep patterns.  
- Analyzed caffeine consumption effects on awakenings and sleep efficiency.  
- Examined the relationship between exercise frequency and REM sleep percentage.  
- Provided interpretable, hierarchical models for predictor-outcome relationships.  

### Lasso Regression (R, `glmnet`)
- Focused on **feature selection** and **multicollinearity reduction**.  
- Identified significant predictors of sleep efficiency.  
- Visualized variable relationships with exploratory plots.  

---

## 📈 Key Findings
- **Gender differences:** Females show slightly lower median sleep duration (7.5 hrs) compared to males (8 hrs), with greater variability in male sleep patterns.  
- **Caffeine consumption:** Negatively correlated with sleep efficiency—higher intake leads to lower efficiency and more awakenings.  
- **Exercise frequency:** Positively associated with REM sleep percentage.  

---

## 🚧 Challenges
- Subjectivity in sleep-related data (e.g., self-reports).  
- Variability in sleep patterns due to **physiological and environmental factors**.  
- Missing values and irregularities required preprocessing.  
- Complex interplay between lifestyle choices and sleep quality.  

---

## ✅ Conclusion
- **Regression Tree**: Revealed interpretable predictor relationships.  
- **Lasso Regression**: Highlighted the most influential predictors and promoted simpler models.  
- Together, both models provided complementary insights into sleep efficiency.  

👉 Future work should validate findings on an **independent dataset** to ensure robustness.  

---

## 📚 References
1. [Kaggle – Sleep Efficiency Dataset](https://www.kaggle.com/datasets/equilibriumm/sleep-efficiency/data)  
2. [Medium – Linear Regression Model to Predict Sleep Efficiency](https://medium.com/@larissa.tsuda.s/a-linear-regression-modeltopredict-sleep-efficiency-on-subjects-fac9b94443a5)  

---

## 💻 Technologies Used
- **R Programming**  
  - Packages: `rpart`, `glmnet`, `ggplot2`  
- **Statistical Techniques**  
  - Regression Tree  
  - Lasso Regression  
- **Visualization**  
  - Correlation heatmaps  
  - Boxplots and regression plots  


