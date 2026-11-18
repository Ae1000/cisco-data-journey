-- ==========================================================
-- MODULE 02: RELATIONAL SCHEMA FOR CLEANED TMDB DATASET
-- Matches exact 14 columns of tmdb_5000_movies_clean.csv
-- ==========================================================

CREATE TABLE tmdb_movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    clean_genres VARCHAR(255),
    clean_keywords TEXT,
    clean_companies TEXT,
    clean_countries TEXT,
    clean_languages VARCHAR(255),
    release_date DATE,
    budget DECIMAL(15, 2),
    revenue DECIMAL(15, 2),
    runtime INT,
    vote_average DECIMAL(3, 1),
    absolute_net_profit DECIMAL(15, 2),
    roi_percentage DECIMAL(10, 2)
);
