#!/bin/sh

echo "1. From which ip were the most requests?"
sudo awk '{ print $1}' apache_logs.txt | sort | uniq -c | sort -nr | head -n 1

echo "2. What is the most requested page?"
sudo awk '{ print $7}' apache_logs.txt | sort | uniq -c| sort -nr |head -n 1

echo "3. How many requests were there from each ip?"
sudo awk '{ print $1}' apache_logs.txt | sort | uniq -c | sort -nr

echo "4. What non-existent pages were clients referred to?"
cat  apache_logs.txt | awk '{ if($7 == "/error404") { print $15 } }' | sort | uniq -c | sort -nr

echo "5. What time did site get the most requests?"
sudo awk '{ print $4}' apache_logs.txt | sort | uniq -c | sort -nr | head -n 13 

echo "6. What search bots have accessed the site? (UA + IP)"
sudo awk '{print $12 $1 }' apache_logs.txt | sort | uniq -c | sort -nr 

