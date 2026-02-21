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

H₁: p_new > p_old

This means the new landing page leads to a statistically significant increase in conversions.

**Business Impact**
This analysis will help the company make a data-driven decision on whether to launch the new landing page, potentially increasing revenue, customer acquisition, and overall product performance.
