
-- Create the database
(drop statements and previous content omitted for brevity)

-- (Parts 3–8 already included)

-- -----------------------------------------
-- Part 9: Indexes
-- -----------------------------------------

-- a. Index for product search by name
create index idx_product_name on products(name);

-- b. Index for order lookup by customer
create index idx_order_customer on orders(customer_id);

-- c. Index for filtering products by category and price
create index idx_category_price on products(category_id, price);

-- d. Index for date-based order queries
create index idx_order_date on orders(order_date);

-- -----------------------------------------
-- Part 10: Performance and Optimization
-- -----------------------------------------

-- a. How to optimize a slow-running query with multiple joins:
-- - Use EXPLAIN to analyze query plan
-- - Ensure appropriate indexes exist on join and filter columns
-- - Avoid SELECT *; select only needed columns
-- - Break complex queries into smaller parts using temporary tables

-- b. Indexing strategy rationale:
-- - 'products.name': supports quick search by product name
-- - 'orders.customer_id': speeds up order retrieval by customer
-- - 'products.category_id, price': supports common filtering on product listing pages
-- - 'orders.order_date': allows efficient range queries for reports

-- c. Handling database scaling for millions of orders:
-- - Use partitioning (e.g., RANGE on order_date)
-- - Archive old data periodically
-- - Optimize queries with caching and materialized views
-- - Use replication and read replicas
-- - Consider sharding or migrating to distributed SQL architecture if needed
