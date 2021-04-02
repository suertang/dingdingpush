#!/bin/sh



cont=夸`curl https://chp.shadiao.app/api.php`
# echo $cont
# ip=$(hostname -i)
apiurl="https://oapi.dingtalk.com/robot/send?access_token=d8d543629f0a91f4829a16d7ac4f4b73af0310b66a1a8c0cc43ef9eb4ff15674"
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

