-- ==========================================================
-- QUERY 1: TOP 10 MOVIES BY ABSOLUTE NET PROFIT
-- ==========================================================
SELECT 
    title,
    clean_genres,
    budget,
    revenue,
    absolute_net_profit,
    roi_percentage
FROM tmdb_movies
WHERE budget > 1000000 AND revenue > 0
ORDER BY absolute_net_profit DESC
LIMIT 10;

-- ==========================================================
-- QUERY 2: FINANCIAL PERFORMANCE BY GENRE COMBINATION
-- ==========================================================
SELECT 
    clean_genres,
    COUNT(*) AS total_movies,
    ROUND(AVG(budget), 2) AS avg_budget,
    ROUND(AVG(revenue), 2) AS avg_revenue,
    ROUND(AVG(absolute_net_profit), 2) AS avg_net_profit
FROM tmdb_movies
GROUP BY clean_genres
HAVING COUNT(*) >= 5
ORDER BY avg_net_profit DESC;
