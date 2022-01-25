#!/bin/sh
ip=`ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
echo $ip
# ifconfig -a                  返回本机所有IP信息
# grep inet                    截取包含inet字符串的行
# grep -v 127.0.0.1            过滤掉含有本机IP的行
# grep -v inet6                过滤掉含有inet6信息的行
# awk '{print $2}'             输出以空格分隔出的第二($2)个元素
# tr -d "addr:"                删除"addr:"字符串