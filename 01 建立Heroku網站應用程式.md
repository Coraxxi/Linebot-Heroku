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



### (5-2) 開啟Heroku應用程式, 測試是否上傳成功
```
heroku open
或是
https://tomlin-app-1.herokuapp.com/
```

![GitHub Logo](/imgs/1-5-2.jpg)





### (6) 其他Herolu命令
```
顯示目前的登入帳號
heroku whoami
```


```
登入Heroku
heroku login
```


```
登出Heroku
heroku logout
```


```
顯示所有應用程式
heroku apps
```

```
設定目前操作的應用程式
heroku git:remote -a [heroku應用程式名稱]
```

```
顯示目前操作的應用程式資訊
heroku apps:info
```

```
列出遠端Git儲存庫資訊
git remote -v
```


```
Heroku的控制台畫面(可查看console.log()的輸出)
heroku logs --tail
```


```
下載Heroku應用程式(假設下載至app2資料夾中, 需先登入Heroku)
cd\
md app2
cd app2
heroku git:clone -a [將下載的Heroku應用程式名稱]
```
