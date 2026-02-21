# A/B Testing Analysis of Landing Page Conversion Rates
**Problem Statement:** An online company has recently introduced a new version of its landing page with the goal of improving user conversion rates. To evaluate whether the new landing page performs better than the existing one, the company conducted an A/B test by randomly assigning users to either the old landing page (control group) or the new landing page (treatment group).

The dataset contains user-level interaction data with the following columns:

- **user_id** – Unique identifier for each user
- **timestamp** – Time when the user visited the landing page
- **group** – Indicates whether the user was assigned to the control group or treatment group
- **landing_page** – Specifies whether the user saw the old or new landing page
- **converted** – Binary outcome indicating whether the user converted (1 = converted, 0 = not converted)

**Objective:**  The primary objective of this project is to determine whether the new landing page leads to a statistically significant increase in conversion rate compared to the old landing page.

**Key Questions to Answer:**
1. What is the conversion rate for the old landing page vs the new landing page?
3. Is there a statistically significant difference between the two conversion rates?
5. Should the company implement the new landing page or continue using the old one?
7. What is the magnitude of improvement (if any)?

**Analytical Approach**
To answer these questions, we will:
1. Perform data cleaning and validation
2. Conduct exploratory data analysis (EDA)
3. Calculate conversion rates for both groups
4. Perform a hypothesis test for difference in proportions
5. Compute confidence intervals
6. Draw a data-driven business conclusion

To evaluate the effectiveness of the new landing page, we define the following statistical hypotheses:

Let:
- ***p_old*** = Conversion rate of the old landing page (control group)
- ***p_new*** = Conversion rate of the new landing page (treatment group)

**Null Hypothesis (H₀)**
The new landing page does not improve the conversion rate compared to the old landing page.
H₀: p_new ≤ p_old

This means any observed difference is due to random chance, and the new landing page provides no real improvement.

**Alternative Hypothesis (H₁)**
The new landing page improves the conversion rate compared to the old landing page.

**Results**

After cleaning the dataset and ensuring correct group-page alignment, a two-proportion hypothesis test was conducted to compare the conversion rates between the control group (old landing page) and the treatment group (new landing page).

**Conversion Rates**

1. *Conversion rate of old landing page (control group)*: **12.04%**
3. *Conversion rate of new landing page (treatment group): * **11.88%**
5. *Absolute difference:* **−0.16 percentage points **(new page performed slightly worse)

**Statistical Test Results**
A two-proportion z-test was performed with the following results:

1. Test statistic (χ²): **1.7036**
3. p-value: **0.1918**
5. Significance level (α): **0.05**
7. 95% Confidence Interval: **[-0.00079, 0.00394]**

**Interpretation**

Since the p-value (0.1918) is greater than the significance level (0.05), we fail to reject the null hypothesis.

This means there is no statistically significant evidence to conclude that the new landing page improves the conversion rate compared to the old landing page. The observed difference in conversion rates is likely due to random variation rather than a true improvement.

Additionally, the 95% confidence interval includes 0, further confirming that the true difference in conversion rates could be zero or even negative.

**Business Conclusion**

Based on the results of the A/B test, the new landing page does not demonstrate a statistically significant improvement in conversion rate. In fact, the conversion rate is slightly lower than the old landing page.

Therefore, it is recommended that the company continue using the existing landing page, as the new landing page does not provide sufficient evidence of improved performance. The product team may consider redesigning the new page or conducting further experiments before implementing changes.
H₁: p_new > p_old

This means the new landing page leads to a statistically significant increase in conversions.

**Business Impact**
This analysis will help the company make a data-driven decision on whether to launch the new landing page, potentially increasing revenue, customer acquisition, and overall product performance.
