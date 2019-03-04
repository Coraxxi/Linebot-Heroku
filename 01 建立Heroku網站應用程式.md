# 01 建立Heroku應用程式

```                                 
Heroku雲端平台        
    |
    |__ <應用程式>
    |       |__ tomlin-app-1  (請自訂名稱)  
    .                      
                 ^                
                 .
                 .
                 . (上傳應用程式)
                 .
                 .
      
  本地端電腦 (將建立一個Express範例網站)
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

## 1. 在Heroku的準備工作

### (1-1) 建立一個帳戶並登入

#### https://devcenter.heroku.com/
![GitHub Logo](/imgs/1-1-1.jpg)


### (1-2) 建立一個應用程式(請自訂名稱, 示範名稱為 tomlin-app-1)
![GitHub Logo](/imgs/1-3-2.jpg)


## 2. 在Git平台上建立一個帳戶, 並請登入

#### https://github.com/
![GitHub Logo](/imgs/1-1-2.jpg)


## 3. 安裝 node.js

#### https://nodejs.org/en/
![GitHub Logo](/imgs/1-1-3.jpg)




## 2. 在自己的電腦建立一個網站

### (2-1) 假設網站建在E槽, 名稱是app

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







## 3. 將本地端網站連結至Heroku應用程式

### (3-1) 登入Heroku
```
heroku login
(依照說明依序輸入帳號及密碼)
```

![GitHub Logo](/imgs/1-4-1.jpg)



### (3-2) 確定已登入Git
#### https://github.com/


### (3-3) 連至Heroku應用程式
```
請輸入自己的應用程式名稱, 以下假設名稱為 tomlin-app-1
```

```
git init
heroku git:remote -a tomlin-app-1
```
![GitHub Logo](/imgs/1-4-3.jpg)




## 4. 將本地端網站上傳至Heroku應用程式

### (4-1) 上傳
```
git add .
git commit -am "make it better"
git push heroku master
```

![GitHub Logo](/imgs/1-5-1.jpg)



### (4-2) 開啟Heroku應用程式, 測試是否上傳成功? 
```
heroku open
或是
https://tomlin-app-1.herokuapp.com/
```

![GitHub Logo](/imgs/1-5-2.jpg)





## 5. 更多Herolu命令參考:
https://devcenter.heroku.com/articles/heroku-cli-commands
