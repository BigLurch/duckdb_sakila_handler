# Sakila DVD Rental – BI Dashboard

Welcome to the BI dashboard for the Sakila DVD Rental Analysis project.  
This dashboard summarizes key insights discovered during the exploratory data analysis (EDA) of the Sakila dataset.

---

## Film Overview

Below is a quick summary of the films available in the database.

```sql sakila
SELECT
    COUNT(*) AS total_films,
    MIN(length) AS shortest_film,
    MAX(length) AS longest_film,
    AVG(length) AS avg_film_length
FROM film;
```
