# 04-1 機器人-回應Hello

```
Heroku雲端平台                                                     Line Developers
    |                                                                    |
    |__ <應用程式>                                                        |__ Provider (訂房代理人)
    |       |__ tomlin-app-1  (請自訂名稱)   <.......................>           |__ Channel (花東訂房)       
    .                                           (連結頻道與應用程式)                                 
                 ^                
                 .
                 .
                 . (上傳應用程式)
                 .
                 .
      
  本地端電腦 (撰寫應用程式)
         E:
          |__ <app>
                |__ index.js
                |__ package.json
                |__ <node_modules>
```
  

## 1. 準備工作

### (1-1) 在Line Developers平台上建立一個帳戶, 或用Line帳號登入

#### https://developers.line.biz/en/
![GitHub Logo](/imgs/4-1-1.jpg)


### (1-2) 建立一個Provider
```
假設Provider名稱為[訂房代理人] 
```
![GitHub Logo](/imgs/4-2-1.jpg)


### (1-3) 在[訂房代理人]中建立Channel
```
假設Channel名稱為[花東訂房] 
```
![GitHub Logo](/imgs/4-2-2.jpg)


### (2-3) 完成後 

![GitHub Logo](/imgs/4-2-3.jpg)

## 2. 建立一個Heroku應用程式, 如有必要參考前面講次
```
假設名稱為 tomlin-app-1
```
![GitHub Logo](/imgs/1-3-2.jpg)



## 3. 修改package.json及增加index.js
```
         E:
          |__ <app>
                |__ package.json  (修改)
                |__ index.js      (增加)
                |
                |__ <node_modules>
```


### (3-1) 修改package.json
``` json
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


### (3-2) 增加index.js
``` js
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


### (3-3) 產生node_modules內的模組
``` js
npm install
```

## 4. 上傳至Heroku應用程式
```
git add .
git commit -am "myApp"
git push heroku master
```

## 5. 開啟Heroku應用程式, 留意其網址

```
heroku open
(在此網址為 https://tomlin-app-1.herokuapp.com/)
```
![GitHub Logo](/imgs/4-5-1.jpg)


## 6. 設定line developers的頻道內容
```
Use webhooks -> Enabled
Webhook URL  -> 步驟5顯示的heroku應用程式網址
```
![GitHub Logo](/imgs/4-6-1.jpg)

## 7. 查看Heroku的控制台畫面, 應該沒有Error訊息
```
heroku logs --tail
```

![GitHub Logo](/imgs/4-7-1.jpg)




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
