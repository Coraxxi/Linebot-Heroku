DROP TABLE IF EXISTS "public"."member";
DROP TABLE IF EXISTS "public"."foods";
DROP TABLE IF EXISTS "public"."evaluation";

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS "public"."member";
CREATE TABLE "public"."member" (
  "userid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default"
);

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO "public"."member" VALUES ('m002', '張瑾雯');
INSERT INTO "public"."member" VALUES ('m001', '蔡家雅');
INSERT INTO "public"."member" VALUES ('m003', '張怡宇');
INSERT INTO "public"."member" VALUES ('m004', '林于文');
INSERT INTO "public"."member" VALUES ('m005', '黃和夫');

-- ----------------------------
-- Primary Key structure for table member
-- ----------------------------
ALTER TABLE "public"."member" ADD CONSTRAINT "member_pkey" PRIMARY KEY ("userid");



-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS "public"."foods";
CREATE TABLE "public"."foods" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(50) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "photo" varchar(50) COLLATE "pg_catalog"."default"
);

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO "public"."foods" VALUES ('f001', '白酒蛤蜊義大利麵', '白酒蛤蠣義大利麵是道香氣豐盛，充滿著海水鮮甜、微酸白酒與蒜香味的家常菜色，食材都不難取得，做出來的效果卻非常的誘人。', 'f06.jpg');
INSERT INTO "public"."foods" VALUES ('f002', '青醬義大利麵', '以蒜泥、羅勒和松子，拌入橄欖油和起司製成。搗碎、碾壓，彰示香蒜醬以大理石缽與木杵人工碾碎大蒜的傳統製作過程。', 'f02.jpg');
INSERT INTO "public"."foods" VALUES ('f003', '奶油培根義大利麵', '材料包括蛋、乳酪、培根及黑胡椒。發源於拉齊奧一帶，更明確的說法則是該地的中心都市羅馬，出現時代則為20世紀中葉。', 'f03.jpg');
INSERT INTO "public"."foods" VALUES ('f004', '義大利燉飯', '一道用高湯把米粒煮成奶油般濃郁質地的義大利經典料理。高湯通常以肉、魚、或蔬菜為基底。許多燉飯會加入奶油、酒、以及洋蔥。', 'f04.jpg');
INSERT INTO "public"."foods" VALUES ('f005', '西班牙燉飯', '常見的種類有魚飯或貝飯，至今已經產生各形各色的大鍋飯，烹調時可以是在野外從鍋中取食，或者是將米飯用番紅花染上黃色。', 'f05.jpg');
INSERT INTO "public"."foods" VALUES ('f006', '焗烤海鮮義大利麵', '鮮美的海鮮，香濃牽絲的起士，一盤義大利麵也是豐盛美餐喔！義大利麵，洋蔥碎，蒜末瓣，奶油，鮮奶，及蝦的美味組合。', 'f07.jpg');
INSERT INTO "public"."foods" VALUES ('f007', '番茄義大利麵', '有時候想要吃簡單，又想要華麗不失美味，就煮個義大利麵。番茄義大利肉醬麵，番茄羅勒大蒜口味，簡單準備就能輕鬆上桌了。', 'f08.jpg');
INSERT INTO "public"."foods" VALUES ('f008', '窯烤披薩', '將少量的麵粉攤平，以180度烘烤10~15 分直到麵粉呈現淡淡的黃色並散發出堅果味，烤過的麵粉的堅果香氣真的很迷人。', 'f01.jpg');

-- ----------------------------
-- Primary Key structure for table foods
-- ----------------------------
ALTER TABLE "public"."foods" ADD CONSTRAINT "foods_pkey" PRIMARY KEY ("id");



-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS "public"."evaluation";
DROP SEQUENCE IF EXISTS "public"."evaluation_serno_seq";
CREATE SEQUENCE "public"."evaluation_serno_seq" START 200;
CREATE TABLE "public"."evaluation" (
  "serno" int4 NOT NULL DEFAULT nextval('evaluation_serno_seq'::regclass),
  "userid" varchar(50) COLLATE "pg_catalog"."default",
  "foodid" varchar(50) COLLATE "pg_catalog"."default",
  "score" int2
);

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m001', 'f001', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m001', 'f002', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m001', 'f003', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m001', 'f004', 5);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m001', 'f005', 2);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m001', 'f006', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m001', 'f007', 5);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m002', 'f001', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m002', 'f002', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m002', 'f003', 2);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m002', 'f004', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m002', 'f005', 1);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m002', 'f006', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m002', 'f007', 5);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m003', 'f001', 2);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m003', 'f002', 1);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m003', 'f003', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m003', 'f004', 1);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m003', 'f005', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m003', 'f006', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m003', 'f007', 2);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m004', 'f001', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m004', 'f002', 5);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m004', 'f003', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m004', 'f004', 5);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m004', 'f005', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m004', 'f006', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m004', 'f007', 5);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m005', 'f001', 2);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m005', 'f002', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m005', 'f003', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m005', 'f004', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m005', 'f005', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m005', 'f006', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m005', 'f007', 2);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m001', 'f008', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m002', 'f008', 4);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m003', 'f008', 3);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m004', 'f008', 5);
INSERT INTO "public"."evaluation" (userid, foodid, score) VALUES ('m005', 'f008', 2);

-- ----------------------------
-- Primary Key structure for table evaluation
-- ----------------------------
ALTER TABLE "public"."evaluation" ADD CONSTRAINT "evaluation_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Foreign Keys structure for table evaluation
-- ----------------------------
ALTER TABLE "public"."evaluation" ADD CONSTRAINT "fk1" FOREIGN KEY ("userid") REFERENCES "public"."member" ("userid") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."evaluation" ADD CONSTRAINT "fk2" FOREIGN KEY ("foodid") REFERENCES "public"."foods" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;


