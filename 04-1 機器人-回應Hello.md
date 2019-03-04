# 04-1 機器人-回應Hello



## 1. 準備工作

### (1-1) 在Line Developers平台上建立一個帳戶, 或用Line帳號登入

#### https://developers.line.biz/en/
![GitHub Logo](/imgs/4-1-1.jpg)


### (1-2) 完成 [步驟01 建立Heroku網站應用程式]
#### https://github.com/tomlinNTUB/linebot-heroku/blob/master/01%20%E5%BB%BA%E7%AB%8BHeroku%E7%B6%B2%E7%AB%99%E6%87%89%E7%94%A8%E7%A8%8B%E5%BC%8F.md

#### 完成後, 有Heroku應用程式(假設名稱為tomlin-app-1), 另有本地端網站在E槽的app資料夾中
```
                                             Line Developers
                                                  |__ Providers
      Heroku應用程式                                      |__ 頻道
        |                                                |__ 頻道
        |__ tomlin-app-1     <.......................>   |__ 頻道
                                (設定頻道的處理程式)       |__ ...
                ^                
                .
                .
                . (上傳應用程式)
                .
                .
      
  本地端電腦 (撰寫應用程式)
         E:
          |__ <app>
                |__ app.js
                |__ package.json
                |
                |__ <node_modules>
                |__ <public>
                |__ <routes>
                |__ <views>
```


## 2. 在Line Developers中建立Provider及Channel

### (2-1) 建立Providers, 假設名稱為[訂房代理人] 

![GitHub Logo](/imgs/4-2-1.jpg)


### (2-2) 在[訂房代理人]中建立Channel, 假設名稱為[花東訂房] 

![GitHub Logo](/imgs/4-2-2.jpg)


### (2-3) 完成後 

![GitHub Logo](/imgs/4-2-3.jpg)


8. 修改package.json(程式如下)
------------------------------------------------ 


10. 增加index.js(程式如下)
------------------------------------------------ 


11. 上傳本地端git至heroku應用程式的git空間
------------------------------------------------ 
git add .
git commit -am "myApp"
git push heroku master


12. 開啟heroku應用程式
    (在瀏覽器中顯示, heroku應用程式網址如 https://****.herokuapp.com/)
------------------------------------------------
heroku open


13. **設定line developers的頻道內容
    (1) 如已設定, 可跳過本步驟
    (2) 先登入line developers
    (3) 先在line developers中建立provider, 也在其中建立了頻道
    (4) 在頻道中增加設定以下:
------------------------------------------------ 
Use webhooks -> Enabled
Webhook URL  -> 步驟12顯示的heroku應用程式網址


14. 查看Heroku的控制台畫面
------------------------------------------------ 
heroku logs --tail


15. 在Line中測試
```


### (1) 增加index.js, 修改package.json

```
 <myApp>
   |___ <.git>
   |___ <node_modules>
   |
   |___ index.js
   |___ package.json  
```


### (2) package.json

```json
{
    "name": "myApp",
    "version": "1.0.0",
    "description": "my Linebot application",
    "main": "index.js",
    "scripts": {
        "start": "node ."
    },
    "author": "tomlin",
    "license": "ISC",
    "dependencies": {        
        "express": "^4.16.3",
        "linebot": "^1.4.1"
    }
}
```



### (3) index.js

```javascript
//--------------------------------
// 載入必要的模組
//--------------------------------
var linebot = require('linebot');
var express = require('express');


//--------------------------------
// 填入自己在linebot的channel值
//--------------------------------
var bot = linebot({
    channelId: '(填入自己的資料)',
    channelSecret: '(填入自己的資料)',
    channelAccessToken: '(填入自己的資料)'
});


//--------------------------------
// 機器人接受訊息的處理
//--------------------------------
bot.on('message', function(event) {
    event.reply('Hello, 你好');  
});


//--------------------------------
// 建立一個網站應用程式app
// 如果連接根目錄, 交給機器人處理
//--------------------------------
const app = express();
const linebotParser = bot.parser();
app.post('/', linebotParser);


//--------------------------------
// 可直接取用檔案的資料夾
//--------------------------------
app.use(express.static('public'));


//--------------------------------
// 監聽3000埠號, 
// 或是監聽Heroku設定的埠號
//--------------------------------
var server = app.listen(process.env.PORT || 3000, function() {
    var port = server.address().port;
    console.log("正在監聽埠號:", port);
});
```
