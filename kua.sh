#!/bin/sh



cont=夸`curl https://chp.shadiao.app/api.php`
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
      'atMobiles': [
             "15990045191"
         ],       
      'isAtAll': false
    }
}"

