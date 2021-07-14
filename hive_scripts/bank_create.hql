CREATE TABLE IF NOT EXISTS bank ( eid int, name String,
salary String, position String)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ‘,’
LINES TERMINATED BY ‘\n’
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH '/Users/deepak/Downloads/bank.txt'
OVERWRITE INTO TABLE bank;

ALTER TABLE bank
ADD PARTITION (position='HR')
location '/Users/deepak/Downloads/bank/HR';

CREATE VIEW bank_hr AS
SELECT * FROM bank
WHERE position == "HR";
