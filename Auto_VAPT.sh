#!/bin/bash

cd /root

apt install nuclei
apt install golang
apt install golang-go
go install github.com/tomnomnom/waybackurls@latest
go install github.com/lc/gau/v2/cmd/gau@latest
git clone https://github.com/projectdiscovery/fuzzing-templates.git
cd go/bin

rm urls.txt target.txt WAPT_Results.txt

echo "$1" | ./gau --threads 5 --verbose --blacklist png,jpg,gif --o urls.txt
cat urls.txt | grep "?" | uniq | sed "s/$/=/" > target.txt
nuclei -l target.txt -t /root/fuzzing-templates/ -v -o /root/WAPT_Results.txt -fuzz

echo "Done! Check '/root/WAPT_Results.txt' for potential security issues."
