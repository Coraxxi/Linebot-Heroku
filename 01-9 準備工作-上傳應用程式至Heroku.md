# 01-9 準備工作-上傳應用程式至Heroku


```
Heroku雲端平台                                                      Line開發者平台
    |                                                                    |
    |__ <應用程式>                                                        |__ Provider (訂房代理人)
    |       |__ tomlin-app-1     <.................................>            |__ Channel (花東訂房)       
                (請自訂名稱)            (連結頻道與應用程式)                               

                 ^                
                 .
                 .
                 . (上傳應用程式)
                 .
                 .
      
  本地端電腦 (撰寫應用程式)
         D:
          |__ <app>
                |__ index.js
                |__ package.json
```




## 1. 登入Heroku
```
heroku login -i
```

![GitHub Logo](/imgs/1-4-1.jpg)



## 2. 指定Github帳戶:

```
git config --global user.email "自己在Git申請的帳號"
```
![GitHub Logo](/imgs/1-4-2.jpg)


## 3. 連至Heroku應用程式

```
git init
heroku git:remote -a [在Heroku的應用程式名稱]
```

![GitHub Logo](/imgs/1-4-3.jpg)




## 4. 將本地端應用程式上傳至Heroku應用程式

```
git add .
git commit -am "myApp"
git push heroku master -f
```

![GitHub Logo](/imgs/1-5-1.jpg)



## 5. 查看Heroku控制台畫面:

```
heroku logs --tail
```
![GitHub Logo](/imgs/1-6-1.jpg)
