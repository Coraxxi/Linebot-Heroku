# 03-1 詢問與回答-template

```
 |__ <app>
       |__ index.js      (修改此程式)
       |__ package.json
       |
       |__ <public>
       |       |__ <imgs>
       |             |__ p01.jpg  (增加一張圖片)
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
    channelId: '填入自己的資料',
    channelSecret: '填入自己的資料',
    channelAccessToken: '填入自己的資料'
});


//========================================
// 機器人接受回覆的處理
//========================================
bot.on('postback', function(event) { 
    var data = event.postback.data;
    var userId = event.source.userId;

    event.source.profile().then(function (profile) {
        userName = profile.displayName;
		
        return event.reply([
            {
                "type": "text",
                "text": data
            },
            {
                "type": "text",
                "text": userId
            },
            {
                "type": "text",
                "text": userName
            }
        ]);		
    });
});
//========================================


//========================================
// 機器人接受訊息的處理
//========================================
bot.on('message', function(event) {
	event.reply({
        "type": "template",
        "altText": "This is a buttons template",
        "template": {
            "type": "buttons",
            "thumbnailImageUrl": "https://tomlin-app-1.herokuapp.com/imgs/p01.jpg",
            "imageAspectRatio": "rectangle",
            "imageSize": "cover",
            "imageBackgroundColor": "#FFFFFF",
            "title": "這是什麼花?",
            "text": "是菊科向日葵屬的植物。別名太陽花。",
            "defaultAction": {
                "type": "uri",
                "label": "檢視網頁",
                "uri": "https://zh.wikipedia.org/wiki/向日葵"
            },
            "actions": [
                {
                    "type": "postback",
                    "label": "鳶尾花",
                    "data": "1"
                },
                {
                    "type": "postback",
                    "label": "向日葵",
                    "data": "2"
                }				
            ]
        }
    });
});
//========================================


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
