# Rubyshop 🛍️

This is a demo Rails 8 application for a Ruby Meetup talk on advanced filtering and sorting techniques in Rails using SQL views, Scenic, and Ransack.

## 📌 Purpose

The app simulates a simple online shop with `Product` and `Review` models.

It explores a common challenge in Rails:

> **How can we sort or filter products by their _average rating_ without bloating our Ruby code or falling into performance traps?**

By default, calculating averages (e.g., `AVG(reviews.rating)`) requires joining and aggregating across associated tables. This isn't directly supported by Ransack and leads to:
- messy custom SQL
- N+1 queries
- unfilterable virtual attributes

## ✅ The Solution

This repo includes a [pull request](https://github.com/clemenshelm/rubyshop/pull/1) that solves the problem cleanly by:

- Creating a **SQL view** with the average rating per product using [Scenic](https://github.com/scenic-views/scenic)
- Mapping it to a **read-only model**
- Enabling sorting and filtering via **Ransack**—just like with any normal attribute

This approach keeps the Rails app clean and lean, while still leveraging the power of SQL.

## 🚀 Getting Started

### Prerequisites

- Ruby 3.3+
- PostgreSQL
- Rails 8 (edge)

### Setup

```bash
git clone https://github.com/clemenshelm/rubyshop.git
cd rubyshop
bundle install
bin/rails db:setup
bin/dev
```

Then visit [http://localhost:3000](http://localhost:3000) ✨

## 🧪 Explore the Problem

Try sorting products by average rating before and after applying the pull request:

- **Before:** Average rating isn't available as a sortable or filterable field
- **After:** `average_rating` becomes part of the model layer via the SQL view – fully usable with Ransack

## 📎 Related PR

👉 [Add SQL View for Product Average Ratings](https://github.com/clemenshelm/rubyshop/pull/1)

## 🗣️ Talk

This repo was created for a live talk at a Ruby Meetup.
Title: **Smart Queries for Dumb Models**
Subtitle: *How to supercharge Rails with just a little SQL*

## License

MIT
