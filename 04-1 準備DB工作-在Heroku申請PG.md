# 04-1 準備DB工作-在Heroku申請PG
   
## 假設:
```
已在Heroku中至少有一個應用程式, 申請的資料庫將依附在指定的應用程式而存在.
```

## 1. 建立一個Heroku Postgres資料庫

#### 選擇Data, 在Heroku Postgres選單中按下[Create one].
![GitHub Logo](/imgs/2-3.jpg)



## 2. 安裝Heroku Postgres

#### 按下[Install Heroku Postgres].
![GitHub Logo](/imgs/2-4.jpg)



## 3. 輸入專案名稱, DB將安裝其中

#### 輸入自己的應用程式名稱.
![GitHub Logo](/imgs/2-5.jpg)



## 4. 確定選擇的項目無誤後, 開始安裝

#### 按下[Provision add on].
![GitHub Logo](/imgs/2-6.jpg)



## 5. 執行後, 檢查專案中的Data內容

#### 選擇Data, 應該有一筆Datastores記錄
![GitHub Logo](/imgs/2-7.jpg)



## 6. 點選某個Datastores記錄(目前只有1個), 查看它的資料庫的設定
#### 選擇某個Datastores
![GitHub Logo](/imgs/2-8-1.jpg)


## 7. 選擇Settings
![GitHub Logo](/imgs/2-8.jpg)



## 8. 查看資料庫連線認證內容
#### 選擇View Credentials..
![GitHub Logo](/imgs/2-9.jpg)



## 9. 資料庫連線認證內容
#### 主機, 資料庫名稱, 帳號, 密碼, 埠號等資訊, 將在資料庫程式中使用
![GitHub Logo](/imgs/2-10.jpg)
