-- Load input file from HDFS
inputFile = LOAD 'hdfs:///user/devika/input1.txt' AS (line:chararray);

-- Tokeize each word in the file (Map)
words = FOREACH inputFile GENERATE FLATTEN(TOKENIZE(line)) AS word;

-- Combine the words from the above stage
grpd = GROUP words BY word;

-- Count the occurence of each word (Reduce)
cntd = FOREACH grpd GENERATE $0 as word, COUNT($1) as count;

--remove the old result folder
rmf hdfs:///user/devika/PigOutput1;

-- Store the result in HDFS
STORE cntd INTO 'hdfs:///user/devika/PigOutput1';