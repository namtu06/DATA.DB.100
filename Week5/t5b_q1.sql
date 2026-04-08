select count(potato_id) as number_of_varieties, min(introduction_year) as earliest_year, max(introduction_year) as latest_year
from potato;