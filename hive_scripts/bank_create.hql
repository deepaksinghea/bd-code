CREATE TABLE IF NOT EXISTS bank ( eid int, name String,
salary String, position String)
COMMENT bank customer details’
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ‘,’
LINES TERMINATED BY ‘\n’
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH '/Users/deepak/Downloads/bank.txt'
OVERWRITE INTO TABLE bank;
