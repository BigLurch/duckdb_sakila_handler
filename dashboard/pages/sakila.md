# Sakila DVD Rental | BI Dashboard

Welcome to the BI dashboard for the Sakila DVD Rental Analysis project.  
This dashboard summarizes key insights discovered during the exploratory data analysis (EDA) of the Sakila dataset.

---

## Film Overview

Below is a quick summary of the films available in the database.

```sql films
SELECT * FROM sakila.film;
```

## Length Overview

This section provides a high-level overview of the movie catalog.
By summarizing the total number of films and their runtime distribution, we get a clear understanding of the size and diversity of the inventory.

Key metrics such as shortest, longest, and average film length help identify whether the catalog is dominated by short, standard-length, or long-form movies.

```sql length_overview
SELECT * FROM sakila.film_overview;
```

## Revenue by Film Category

This analysis shows how much revenue each film category generates.
By joining rentals, payments, and film categories, we can identify which genres are the most profitable for the business.

These insights can be used to guide decisions around marketing, inventory expansion, and promotional campaigns focused on high-performing categories.

```sql revenue
SELECT * FROM sakila.revenue_by_category;
```

## Top 10 Most Expensive Movies per Day

This section highlights the movies with the highest rental cost per day.
The metric is calculated by dividing the rental rate by the rental duration.

Movies with a high daily cost often represent premium content and may require special attention when pricing, promoting, or bundling rental offers.

```sql top_10_expensive
SELECT * FROM sakila.top_10_expensive_per_day;
```

## Top Actors by Number of Films

This analysis identifies the actors who appear in the largest number of films in the database.
Actors with high film counts often indicate strong brand recognition or long-term collaboration with production studios.

These insights can be useful for actor-based promotions or recommendations to customers.

```sql top_actor
SELECT * FROM sakila.top_actors_by_film;
```

## Top Customers by Total Spend

This section shows the customers who have spent the most money on rentals.
By aggregating payment data per customer, we can identify the most valuable customers for the business.

These customers are ideal candidates for loyalty programs, exclusive offers, or personalized recommendations.

```sql top_customer
SELECT * FROM sakila.top_customers;
```
