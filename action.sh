#!/bin/sh

rm 1
rm 2
rm 3
rm 4

time=$(date -d "-1 days" "+%m%d")
curl -sL --fail "https://cdn.jsdelivr.net/gh/pojiezhiyuanjun/2023@main/${time}.txt" -o 1
if curl -sL --fail "https://cdn.jsdelivr.net/gh/pojiezhiyuanjun/2023@main/${time}clash.yml" -o 2.txt; then
sed -e '/ - DOMAIN-SUFFIX,admob.com,🛑 全球拦截/d' 2.txt > 2
rm 2.txt
fi
if curl -sL --fail "https://sub.pmsub.me/clash.yaml" -o 3.txt; then
sed -e '/ - DOMAIN-SUFFIX,admob.com,🛑 全球拦截/d' 3.txt > 3
rm 3.txt
fi
curl -sL --fail "https://sub.pmsub.me/base64" -o 4

git config --global user.name '111'
git config --global user.email '345@ak47.com'
git add .
git commit -m "update"
git push

