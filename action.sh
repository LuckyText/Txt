#!/bin/sh

rm 1
rm 2
rm 3
rm 4

time=$(date -d "-1 days" "+%m%d")
echo "$(curl "https://cdn.jsdelivr.net/gh/pojiezhiyuanjun/freev2@master/${time}.txt")" > 1
echo "$(curl "https://cdn.jsdelivr.net/gh/pojiezhiyuanjun/freev2@master/${time}clash.yml")" > 2.txt
echo "$(curl "https://cdn.jsdelivr.net/gh/paimonhub/Paimonnode@latest/clash.yaml")" > 3.txt
echo "$(curl "https://cdn.jsdelivr.net/gh/paimonhub/Paimonnode@latest/base64")" > 4

sed -e '/ - DOMAIN-SUFFIX,admob.com,🛑 全球拦截/d' 2.txt > 2
sed -e '/ - DOMAIN-SUFFIX,admob.com,🛑 全球拦截/d' 3.txt > 3

rm 2.txt
rm 3.txt

git config --global user.name '111'
git config --global user.email '345@ak47.com'
git add .
git commit -m "update"
git push

