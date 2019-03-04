# 04-1 機器人-回應Hello



## 1. 準備工作

### (1-1) 在Line Developers平台上建立一個帳戶

#### https://developers.line.biz/en/
![GitHub Logo](/imgs/4-1-1.jpg)


### (1-2) 完成了[步驟01 建立Heroku網站應用程式]的工作

#### 如同步驟01, 假設Heroku應用程式名稱為tomlin-app-1, 本地端網站在E槽的<app>資料夾中
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




![GitHub Logo](/imgs/1-1-2.jpg)


### (1-3) 安裝 node.js

#### https://nodejs.org/en/
![GitHub Logo](/imgs/1-1-3.jpg)




## 2. 在自己的電腦建立一個網站

### (2-1) 假設網站建在E槽, 網站名稱是app

```
npm install express-generator -g
e:
cd\
express app -ejs
cd app
npm install
```

![GitHub Logo](/imgs/1-2-1.jpg)



### (2-2) 啟動網站

```
npm start
```
![GitHub Logo](/imgs/1-2-2.jpg)



### (2-3) 測試網站是否成功

#### http://localhost:3000
![GitHub Logo](/imgs/1-2-3.jpg)



### (2-4) 停止網站

#### 同時按[Ctrl]及[C]鍵
![GitHub Logo](/imgs/1-2-4.jpg)



## 3. 在Heroku建立一個空的應用程式

### (3-1) 確定已經登入Heroku
#### https://devcenter.heroku.com/


### (3-2) 建立一個空的應用程式(請自訂名稱, 示範名稱為 tomlin-app-1)
![GitHub Logo](/imgs/1-3-2.jpg)



## 4. 將本地端網站連結至Heroku應用程式

### (4-1) 登入Heroku
```
heroku login
(依照說明依序輸入帳號及密碼)
```

![GitHub Logo](/imgs/1-4-1.jpg)



### (4-2) 確定已登入Git
#### https://github.com/


### (4-3) 連至Heroku應用程式(請輸入自己的應用程式名稱, 以下假設名稱為tomlin-app-1)
```
git init
heroku git:remote -a tomlin-app-1
```
![GitHub Logo](/imgs/1-4-3.jpg)




## 5. 將本地端網站上傳至Heroku應用程式

### (5-1) 上傳
```
git add .
git commit -am "make it better"
git push heroku master
```

![GitHub Logo](/imgs/1-5-1.jpg)



### (5-2) 開啟Heroku應用程式, 測試是否上傳成功? 
```
heroku open
或是
https://tomlin-app-1.herokuapp.com/
```

![GitHub Logo](/imgs/1-5-2.jpg)





## 6. 其他Herolu命令

#### (1)顯示目前的登入帳號
```
heroku whoami
```


#### (2)登入Heroku
```
heroku login
```


#### (3)登出Heroku
```
heroku logout
```

#### (4)顯示所有應用程式
```
heroku apps
```


#### (5)設定目前操作的應用程式
```
heroku git:remote -a [heroku應用程式名稱]
```

#### (6)顯示目前操作的應用程式資訊
```
heroku apps:info
```

#### (7)列出遠端Git儲存庫資訊 
```
git remote -v
```


#### (8)Heroku的控制台畫面, 可查看console.log()的輸出
```
heroku logs --tail
```


#### (9)載Heroku應用程式, 假設下載至app2資料夾中) 
```
cd\
md app2
cd app2
heroku git:clone -a [將下載的Heroku應用程式名稱]
```





















### CLI命令:

```
執行前題, 先申請:
(1) line developers帳號
(2) heroku developers帳號
(3) github帳號



1. 在[D槽]建立一個<bot>資料夾.
------------------------------------------------ 
d:
cd\
md bot
cd bot


2. 建立一個本地端的git
   (假設已安裝git, 網址: https://git-scm.com/downloads)
------------------------------------------------ 
git init


3. 產生package.json
   (假設已安裝node.js, 網址: https://nodejs.org/en/download)
------------------------------------------------ 
npm init


4. 登入heroku
   (假設已安裝heroku, 命令: npm install heroku -g)
------------------------------------------------ 
heroku login


5. 登入github
------------------------------------------------ 
https://github.com/


6. **建立一個heroku應用程式(本步驟也可以在heroku平台上建立)
   如果已在heroku平台上建立, 可跳過本步驟
------------------------------------------------ 
heroku create [heroku應用程式名稱]
              +-----------------+ (請自訂名稱)
              
              
7. 設定目前操作的heroku應用程式
------------------------------------------------ 
heroku git:remote -a [heroku應用程式名稱]
                     +-----------------+ (自己的heroku應用程式名稱)             


8. 修改package.json(程式如下)
------------------------------------------------ 


9. 安裝模組
------------------------------------------------ 
npm install


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
