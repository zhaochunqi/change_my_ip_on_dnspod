#!/bin/bash

login_token="" #个人创建的login_token
domain_id="" #获取到的domain_id
record_id="" #获取到的record_id
sub_domain="" #你要更改的subdomain的地址，如www.xxx.com就写www

my_ip=`curl ifconfig.me`
echo "Your IP is ${my_ip} ."
curl -X POST https://dnsapi.cn/Record.Modify -d "login_token=${login_token}&format=json&domain_id=${domain_id}&record_id=${record_id}&sub_domain=${sub_domain}&value=${my_ip}&record_type=A&record_line=默认"
