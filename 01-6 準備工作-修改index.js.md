# 01-6 準備工作-修改indexJS


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
                |__ <node_modules>
```



## 1. 在Line開發者的頻道中, 找到3個關於頻道的設定

#### (1) ChannelId 及 ChannelSecret
![GitHub Logo](/imgs/A1-6-1.jpg)

#### (2) ChannelAccessToken (點Issue按鈕後才會產生)
![GitHub Logo](/imgs/A1-6-2.jpg)

## 2. 將資料填入index.js中
``` js
.
.
.

//----------------------------------------
// 填入自己在Line Developers的channel值
//----------------------------------------
var bot = linebot({
    channelId: '填入自己的資料',
    channelSecret: '填入自己的資料',
    channelAccessToken: '填入自己的資料'
});

.
.
.
```
