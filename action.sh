#!/bin/sh

export LANG=C.UTF-8

time=$(date -d "-1 days" "+%m%d")
year=$(date -d "-1 days" "+%Y")
month=$(date -d "-1 days" "+%m")
day=$(date -d "-1 days" "+%d")

if curl -sL --fail "https://cdn.jsdelivr.net/gh/pojiezhiyuanjun/2023@main/${time}.txt" -o 1.txt; then
cp 1.txt 1
fi

if curl -sL --fail "https://cdn.jsdelivr.net/gh/pojiezhiyuanjun/2023@main/${time}clash.yml" -o 2.txt; then
sed -e '/ - DOMAIN-SUFFIX,admob.com,🛑 全球拦截/d' 2.txt > 2
fi

if curl -sL --fail "https://nodefree.org/dy/${year}/${month}/${year}${month}${day}.yaml" -o 3.txt; then
sed -e '/ - DOMAIN-SUFFIX,admob.com,🛑 全球拦截/d' 3.txt > 3
fi

if curl -sL --fail "https://nodefree.org/dy/${year}/${month}/${year}${month}${day}.txt" -o 4.txt; then
cp 4.txt 4
fi

if curl -sL --fail "https://freenode.openrunner.net/uploads/${time1}-clash.yaml" -o 5.txt; then
sed -e '/ - DOMAIN-SUFFIX,admob.com,🛑 全球拦截/d' 5.txt > 5
fi

if curl -sL --fail "https://freenode.openrunner.net/uploads/${time1}-v2ray.txt" -o 6.txt; then
cp 6.txt 6
fi

rm 1.txt 2.txt 3.txt 4.txt 5.txt 6.txt

git config --global user.name '111'
git config --global user.email '345@ak47.com'
git add .
git commit -m "update"
git push

