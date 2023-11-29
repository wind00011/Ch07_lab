-- 定義客戶檔
CREATE TABLE 客戶檔 (
    客戶代號 INT PRIMARY KEY,
    姓名 VARCHAR(50),
    電話 VARCHAR(20),
    傳真 VARCHAR(20)
);

-- 定義訂單檔
CREATE TABLE 訂單檔 (
    訂單代號 INT PRIMARY KEY,
    訂單日期 DATE,
    客戶代號 INT,
    FOREIGN KEY (客戶代號) REFERENCES 客戶檔(客戶代號)
);

-- 定義產品檔
CREATE TABLE 產品檔 (
    產品代號 INT PRIMARY KEY,
    品名 VARCHAR(50),
    單價 DECIMAL(10, 2)
);

-- 定義訂單細檔
CREATE TABLE 訂單細檔 (
    訂單代號 INT,
    產品代號 INT,
    數量 INT,
    PRIMARY KEY (訂單代號, 產品代號),
    FOREIGN KEY (訂單代號) REFERENCES 訂單檔(訂單代號),
    FOREIGN KEY (產品代號) REFERENCES 產品檔
