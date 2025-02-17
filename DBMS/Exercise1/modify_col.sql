-- Step 1: Drop the foreign key constraint from the locations table
ALTER TABLE locations DROP FOREIGN KEY locations_ibfk_1;
-- Step 2: Modify the country_id column in the countries table to CHAR
ALTER TABLE countries MODIFY country_id CHAR(5) NOT NULL;

-- Step 3: Modify the country_id column in the locations table to CHAR
ALTER TABLE locations MODIFY country_id CHAR(5) NOT NULL;

-- Step 4: Add the foreign key constraint back to the locations table
ALTER TABLE locations ADD CONSTRAINT locations_ibfk_1 FOREIGN KEY (country_id) REFERENCES countries(country_id);
