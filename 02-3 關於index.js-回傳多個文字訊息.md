# 02-3 關於index.js-回傳多個文字訊息

```
 |__ <app>
       |__ package.json   
       |__ index.js      (修改此程式)
       |
       |__ <node_modules> 
```


## 1. index.js
``` js
//----------------------------------------
// 載入必要的模組
//----------------------------------------
var linebot = require('linebot');
var express = require('express');


//----------------------------------------
// 填入自己在Line Developers的channel值
//----------------------------------------
var bot = linebot({
    channelId: '1551819363',
    channelSecret: '55d252894888110aba873d32e8594d7c',
    channelAccessToken: 'RU0BJaP2LgJZKp9GX19Hhhd4EdB0r46qZn5oxXBxGQxZhX10D6nvQkNsCrbYHVB9NAdWu0khOtZfJQT8iVcvuVcmrtGNQRqDNwGqH/o82GPSwvBXJWw7d6EU1qJlXZS2Z8VNrpDKKBVL26phrzCgGQdB04t89/1O/w1cDnyilFU='
});


//----------------------------------------
// 機器人接受訊息的處理
//----------------------------------------
bot.on('message', function(event) {
    event.source.profile().then(
        function (profile) {
            var name = profile.displayName;
            var userId = profile.userId;
            var msg = event.message.text;
            
            return event.reply([
                {
                    "type": "text",
                    "text": name
                },
                {
                    "type": "text",
                    "text": userId
                },
                {
                    "type": "text",
                    "text": msg
                }
            ]);	            
        }
    );
});


//----------------------------------------
// 建立一個網站應用程式app
// 如果連接根目錄, 交給機器人處理
//----------------------------------------
const app = express();
const linebotParser = bot.parser();
app.post('/', linebotParser);


//----------------------------------------
// 可直接取用檔案的資料夾
//----------------------------------------
app.use(express.static('public'));


//----------------------------------------
// 監聽3000埠號, 
// 或是監聽Heroku設定的埠號
//----------------------------------------
var server = app.listen(process.env.PORT || 3000, function() {
    var port = server.address().port;
    console.log("正在監聽埠號:", port);
});
```


## 2. 上傳至Heroku
``` 
git add .
git commit -am "myApp"
git push heroku master
```
