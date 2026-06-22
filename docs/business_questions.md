# Business Questions & Dashboard Logic

This document explains the business questions behind the **Customer Churn Analysis** project and the purpose of each dashboard page.  
The dashboard was designed to move from **high-level churn monitoring** into **customer segmentation** and finally into **root-cause analysis and retention recommendations**.

---

# 1) Business Objective

Customer churn is a critical business problem for subscription-based companies because lost customers reduce recurring revenue and increase pressure on customer acquisition.

This project was built to answer the following business questions:

- What is the overall churn rate, and how many customers have been lost?
- Which customer groups are most likely to churn?
- Does churn vary by contract type and customer tenure?
- Are certain services, billing methods, or payment behaviors associated with higher churn?
- Which customer segments should the business prioritize for retention efforts?

---

# 2) Dashboard Structure Overview

The dashboard is divided into **three pages**, each with a different analytical purpose:

1. **Executive Overview**  
   Tracks the company’s overall churn performance and highlights the biggest risk patterns at a high level.

2. **Customer Segmentation**  
   Breaks the customer base into segments to understand who the customers are, how they are distributed, and which profiles appear most exposed to churn risk.

3. **Churn Drivers & Recommendations**  
   Focuses on root-cause analysis by combining contract type, tenure, and payment behavior to identify the most urgent retention opportunities.

---

# 3) Page 1 — Executive Overview

## Main Business Question
**How serious is customer churn, and where should management look first?**

This page provides an executive summary of churn performance and highlights the most important risk patterns at a glance.

---

## Visuals and Their Purpose

### 1. KPI Cards
**Metrics shown:**
- Total Customers
- Churned Customers
- Churn Rate
- Active Customers
- Retention Rate

**Why this matters:**  
These KPIs provide a high-level summary of the company’s churn situation. Executives can quickly understand:
- how many customers the company currently serves,
- how many have churned,
- the percentage of customers being lost,
- and how large the retained customer base remains.

This page acts as the entry point for the rest of the analysis.

---

### 2. Churn Rate by Contract
**Visual:** Bar chart with **Churn Rate** as the main measure and **Churned Customers** as a secondary line

**Business question:**  
**Which contract types are most exposed to churn, and how large is the churn volume in each group?**

**Why this matters:**  
Contract type is often one of the strongest retention indicators in telecom businesses.  
This visual helps answer:
- whether month-to-month customers are significantly more likely to churn than long-term contract customers,
- whether high churn rate also translates into a large number of churned customers,
- and which contract segments should be prioritized in retention campaigns.

This visual is especially useful because it combines **rate** and **volume** in the same view.

---

### 3. Churn Rate by Tenure Group
**Visual:** Funnel chart

**Business question:**  
**Does churn decrease as customers stay longer with the company?**

**Why this matters:**  
Tenure is one of the most important behavioral signals in churn analysis.  
This visual helps show whether:
- newly acquired customers are more likely to leave,
- churn stabilizes as customer relationships mature,
- and the first 12 months represent the most fragile stage of the customer lifecycle.

This page helps management understand whether churn is primarily an **early-life retention problem**.

---

## Page 1 Summary
By the end of this page, a stakeholder should understand:
- the overall size of the churn problem,
- whether contract type is a major risk factor,
- and whether churn is concentrated among early-tenure customers.

This page answers the question:  
**“How bad is churn, and where should we investigate next?”**

---

# 4) Page 2 — Customer Segmentation

## Main Business Question
**Who are the customers, and which customer segments appear most associated with churn risk?**

This page focuses on customer composition rather than only churn outcomes.  
It helps the business understand how customers are distributed across key segments such as contract type, payment method, and tenure group.

---

## Visuals and Their Purpose

### 1. KPI Cards
**Metrics shown:**
- Total Customers
- Total Senior Citizens

**Business question:**  
**What is the size of the customer base, and how large is the senior-citizen segment?**

**Why this matters:**  
This helps frame the composition of the customer portfolio and gives context for interpreting segmentation patterns later in the analysis.

---

### 2. Key Influencers Visual
**Current insight shown:**  
- Contract = **Month-to-Month** is the strongest segment associated with churn risk
- Tenure Group = **0–12 Months** is the next strongest segment

**Business question:**  
**Which factors appear to be the strongest churn influencers when customer characteristics are considered together?**

**Why this matters:**  
While individual charts show churn one variable at a time, the Key Influencers visual helps highlight which combinations of attributes are most associated with churn risk.  
It acts as a bridge between descriptive reporting and diagnostic analysis by surfacing the factors that matter most.

---

### 3. Total Customers by Contract
**Visual:** Pie chart

**Business question:**  
**How is the customer base distributed across contract types?**

**Why this matters:**  
Even if a segment has a high churn rate, it becomes a bigger business risk if it also represents a large share of the customer base.  
This chart helps determine whether high-risk contract types also account for a meaningful portion of customers.

---

### 4. Total Customers by Payment Method
**Visual:** Column chart

**Business question:**  
**Which payment methods are most common in the customer base?**

**Why this matters:**  
Later analysis shows that payment behavior is linked to churn risk.  
This chart gives the baseline distribution of payment methods so the business can assess:
- whether risky payment methods represent a small niche or a large operational issue,
- and how large the potential impact of payment-related churn may be.

---

### 5. Total Customers by Tenure Group
**Visual:** Bar chart

**Business question:**  
**What does the customer base look like across different lifecycle stages?**

**Why this matters:**  
This chart provides context for churn by tenure.  
It helps distinguish between:
- a tenure group that has high churn simply because it is large,
- and a tenure group that is disproportionately risky even after accounting for customer volume.

---

## Page 2 Summary
By the end of this page, a stakeholder should understand:
- how the customer base is distributed across key segments,
- which customer groups make up the largest share of the portfolio,
- and which attributes appear most associated with churn risk.

This page answers the question:  
**“Who are our customers, and which segments should we watch more closely?”**

---

# 5) Page 3 — Churn Drivers & Recommendations

## Main Business Question
**Which customer segments are most at risk of churning, and what retention actions should the business prioritize first?**

This page moves from general segmentation into direct churn diagnosis.  
The goal is to identify high-risk combinations of customer characteristics that can be targeted with retention actions.

---

## Visuals and Their Purpose

### 1. Churn Rate Matrix by Contract and Tenure Group
**Rows:** Contract Type  
**Columns:** Tenure Group  
**Values:** Churn Rate %

**Business question:**  
**How does churn behave when contract type and tenure are analyzed together?**

**Why this matters:**  
This is one of the most important visuals in the dashboard because it identifies the highest-risk customer segments with much more precision than a single-variable chart.

Instead of asking only:
- “Do month-to-month customers churn more?”
or
- “Do new customers churn more?”

this matrix answers:
- **Which contract-tenure combinations are driving the churn problem most strongly?**

For example, it can show whether:
- month-to-month customers are risky at every tenure stage,
- churn is especially concentrated among new month-to-month customers,
- and long-term contract customers remain stable regardless of tenure.

This visual supports the strongest business recommendation in the project.

---

### 2. Churn Rate by Payment Method
**Visual:** Bar chart / column chart

**Business question:**  
**Does payment behavior appear to be associated with churn risk?**

**Why this matters:**  
Payment method can reflect customer convenience, billing experience, or friction in the payment process.  
If one payment method has materially higher churn than others, it may signal:
- billing friction,
- failed payment behavior,
- lower customer commitment,
- or a segment that needs a different payment experience.

This visual is especially useful because payment method is operationally actionable — it can often be improved through product, billing, or customer-service interventions.

---

## Page 3 Summary
By the end of this page, a stakeholder should understand:
- which customer segments are at the highest risk of churn,
- whether churn is driven more by short tenure, contract flexibility, or billing behavior,
- and where the business should focus retention programs first.

This page answers the question:  
**“Which customers are most likely to leave, and what should we do about it?”**

---

# 6) How the Dashboard Supports Business Recommendations

The dashboard was intentionally structured so that each page contributes to a different stage of decision-making:

## Step 1: Measure the size of the churn problem
The **Executive Overview** page quantifies churn and shows whether contract and tenure appear to be major drivers.

## Step 2: Understand the customer portfolio
The **Customer Segmentation** page explains who the customers are, how they are distributed, and which customer attributes are most associated with churn.

## Step 3: Prioritize retention action
The **Churn Drivers & Recommendations** page identifies the highest-risk combinations of contract type, tenure, and payment behavior so the business can design more targeted interventions.

---

# 7) Example Business Actions Supported by the Dashboard

Based on the dashboard structure, the business can use this analysis to support actions such as:

- targeting **month-to-month customers in their first 12 months** with early-retention offers,
- encouraging contract upgrades from **month-to-month** to **one-year or two-year plans**,
- investigating why **electronic check** customers churn at a much higher rate,
- expanding **Tech Support** adoption among high-risk customers,
- and building recurring churn monitoring by **contract, tenure, payment method, and service usage**.

---

# 8) Final Takeaway

This dashboard was designed not just to report churn, but to help the business answer three increasingly important questions:

1. **How serious is the churn problem?**  
2. **Which customer groups are most exposed to churn risk?**  
3. **What actions should the business prioritize to reduce churn?**

By moving from executive KPIs into segmentation and then into driver analysis, the dashboard supports both **performance monitoring** and **retention strategy planning**.
