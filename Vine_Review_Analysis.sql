-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

-- votes over 20
SELECT * INTO votes_over20
FROM vine_table
WHERE total_votes >= 20;

-- helpful_votes
SELECT * INTO helpful_votes
FROM total_votes_over20
WHERE CAST(helpful_votes AS float)/CAST(total_votes AS float) >=0.5;

-- total_paid
SELECT * INTO total_paid
FROM helpful_votes
WHERE vine = 'Y';

- total_unpaid
SELECT * INTO total_unpaid
FROM helpful_votes
WHERE vine = 'N';

-- total number of paid reviews
SELECT count(total_votes) AS total_paid FROM total_paid;

-- paid reviews with 5 stars
SELECT count (star_rating) AS five_stars
FROM total_paid
WHERE star_rating = 5;

-- total number of unpaid reviews
SELECT count(total_votes) AS total_unpaid FROM total_unpaid;

-- paid reviews with 5 stars
SELECT count (star_rating) AS five_stars
FROM total_unpaid
WHERE star_rating = 5;