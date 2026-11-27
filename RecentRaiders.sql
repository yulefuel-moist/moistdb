.mode csv
.output RecentRaiders.csv

WITH recent_raids AS (
    SELECT page_id FROM SRPages
    ORDER BY raid_date DESC
    LIMIT 30
)
SELECT DISTINCT character_name FROM recent_raids
INNER JOIN SRData USING (page_id)
INNER JOIN Characters USING (character_id);