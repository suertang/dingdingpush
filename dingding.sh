#!/bin/sh


cd /home/pi/Desktop/celltray
ltimes=`cat data.txt`
rtimes=`cat data_r.txt`
unlockerr=`grep 异常 main.log | wc -l`
lockerr=`grep 失败 main.log | wc -l`
[ $unlockerr=="" ] && unlockerr="无"
[ $lockerr=="" ] && lockerr="无"
cont="监控报警,左侧运行次数 $ltimes \n右侧运行次数 $ltimes \n解锁异常数\n$unlockerr \n上锁异常数\n$lockerr\n"
# echo $cont
# ip=$(hostname -i)
apiurl="https://oapi.dingtalk.com/robot/send?access_token=xxxxxx"
# echo $runevn $ip
curl ${apiurl} -X POST -H "Content-Type:application/json" -d "
{
    'msgtype': 'text', 
    'text': {
        'content': '$cont'
    },
    'at': {
      'isAtAll': true
    }
}"

