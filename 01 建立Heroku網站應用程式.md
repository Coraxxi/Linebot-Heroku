# 01 建立Heroku網站應用程式

## 1. 準備工作

### (1-1) 在Heroku平台上建立一個帳戶

#### https://devcenter.heroku.com/
![GitHub Logo](/imgs/1-1-1.jpg)


### (1-2) 在Git平台上建立一個帳戶

#### https://github.com/
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


### (5) 登入heroku
```
heroku login
(依照說明依序輸入帳號及密碼)
```


### (6) 檢查目前的使用者帳號
```
heroku whoami
```


### (7) **如果要登出heroku
```
heroku logout
```


### (8) 如果已登出, 請先重新登入


### (9) **建立一個heroku應用程式(也可以在heroku developers平台中建立)
```
heroku create [heroku應用程式名稱(如:test12345)]
```


### (10) 顯示自己在heroku帳號中所有的應用程式
```
heroku apps
```


### (11) 設定目前操作的heroku應用程式
```
heroku git:remote -a [heroku應用程式名稱]
```


### (12) 顯示目前操作的heroku應用程式(應該會與步驟11設定的名稱相同)
```
heroku apps:info
```


### (13) 列出遠端git儲存庫資訊
```
git remote -v
```


### (14) 將本地端資料上傳至遠端heroku應用程式的git儲存庫
```
git add .
git commit -am "myApp"
git push heroku master
```


### (15) 開啟目前操作的heroku應用程式
```
heroku open
```


#### 應該看到以下畫面
![GitHub Logo](/imgs/1-4.jpg)


### (16) 查看目前操作heroku的控制台畫面
```
heroku logs --tail
```


### (17) 將遠端git內容下載至另一個資料夾中(假設下載至app2, 需先登入heroku)
```
cd\
md app2
cd app2
heroku git:clone -a [自己原有heroku的應用程式名稱]
```
