DROP TABLE IF EXISTS "public"."score";
DROP TABLE IF EXISTS "public"."student";
DROP TABLE IF EXISTS "public"."course";


-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "public"."student";
CREATE TABLE "public"."student" (
  "stuno" char(6) COLLATE "pg_catalog"."default" NOT NULL,
  "stuname" varchar(20) COLLATE "pg_catalog"."default",
  "gender" char(1) COLLATE "pg_catalog"."default"
);

INSERT INTO "student" VALUES ('120001', '洪翊寧', 'F');
INSERT INTO "student" VALUES ('120002', '莊亭郁', 'F');
INSERT INTO "student" VALUES ('120003', '陳佑政', 'M');
INSERT INTO "student" VALUES ('120004', '徐子倫', 'M');
INSERT INTO "student" VALUES ('120005', '邱冠傑', 'M');
INSERT INTO "student" VALUES ('120006', '何典運', 'M');
INSERT INTO "student" VALUES ('120007', '劉盈瑩', 'F');
INSERT INTO "student" VALUES ('120008', '王潔琳', 'F');
INSERT INTO "student" VALUES ('120009', '徐尉容', 'F');
INSERT INTO "student" VALUES ('120010', '何盈瑩', 'F');
INSERT INTO "student" VALUES ('120011', '黃慈菁', 'F');
INSERT INTO "student" VALUES ('120012', '陳宜貞', 'F');
INSERT INTO "student" VALUES ('120013', '賴霈勻', 'F');
INSERT INTO "student" VALUES ('120014', '沈孟蓁', 'F');
INSERT INTO "student" VALUES ('120015', '朱家穎', 'F');
INSERT INTO "student" VALUES ('120016', '蕭羚佑', 'F');
INSERT INTO "student" VALUES ('120017', '余宛儒', 'F');
INSERT INTO "student" VALUES ('120018', '呂艾倫', 'F');
INSERT INTO "student" VALUES ('120019', '林德芳', 'F');
INSERT INTO "student" VALUES ('120020', '程雅雯', 'F');

-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE "public"."student" ADD CONSTRAINT "student_pkey" PRIMARY KEY ("stuno");



-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "public"."course";
CREATE TABLE "public"."course" (
  "couno" char(3) COLLATE "pg_catalog"."default" NOT NULL,
  "course" varchar(20) COLLATE "pg_catalog"."default",
  "credit" int4
)
;  
  
-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO "public"."course" VALUES ('c01', '國文', 1);
INSERT INTO "public"."course" VALUES ('c02', '英語', 2);
INSERT INTO "public"."course" VALUES ('c03', '數學', 2);
INSERT INTO "public"."course" VALUES ('c04', '社會', 1);
INSERT INTO "public"."course" VALUES ('c05', '自然', 1);
INSERT INTO "public"."course" VALUES ('c06', '寫作', 1);

-- ----------------------------
-- Primary Key structure for table course
-- ----------------------------
ALTER TABLE "public"."course" ADD CONSTRAINT "course_pkey" PRIMARY KEY ("couno");



-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."score_serno_seq";
CREATE SEQUENCE "public"."score_serno_seq" START 200;

CREATE TABLE "public"."score" (
  "serno" int4 NOT NULL DEFAULT nextval('score_serno_seq'::regclass),
  "stuno" char(6) COLLATE "pg_catalog"."default",
  "couno" char(3) COLLATE "pg_catalog"."default",
  "score" int4
)
;


-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO "public"."score" VALUES (1, '120001', 'c01', 54);
INSERT INTO "public"."score" VALUES (2, '120001', 'c02', 66);
INSERT INTO "public"."score" VALUES (3, '120001', 'c03', 43);
INSERT INTO "public"."score" VALUES (4, '120001', 'c04', 75);
INSERT INTO "public"."score" VALUES (5, '120001', 'c05', 60);
INSERT INTO "public"."score" VALUES (6, '120001', 'c06', 35);
INSERT INTO "public"."score" VALUES (7, '120002', 'c01', 35);
INSERT INTO "public"."score" VALUES (8, '120002', 'c02', 32);
INSERT INTO "public"."score" VALUES (9, '120002', 'c03', 32);
INSERT INTO "public"."score" VALUES (10, '120002', 'c04', 32);
INSERT INTO "public"."score" VALUES (11, '120002', 'c05', 32);
INSERT INTO "public"."score" VALUES (12, '120002', 'c06', 32);
INSERT INTO "public"."score" VALUES (13, '120003', 'c01', 69);
INSERT INTO "public"."score" VALUES (14, '120003', 'c02', 76);
INSERT INTO "public"."score" VALUES (15, '120003', 'c03', 44);
INSERT INTO "public"."score" VALUES (16, '120003', 'c04', 53);
INSERT INTO "public"."score" VALUES (17, '120003', 'c05', 64);
INSERT INTO "public"."score" VALUES (18, '120003', 'c06', 27);
INSERT INTO "public"."score" VALUES (19, '120004', 'c01', 61);
INSERT INTO "public"."score" VALUES (20, '120004', 'c02', 70);
INSERT INTO "public"."score" VALUES (21, '120004', 'c03', 63);
INSERT INTO "public"."score" VALUES (22, '120004', 'c04', 72);
INSERT INTO "public"."score" VALUES (23, '120004', 'c05', 41);
INSERT INTO "public"."score" VALUES (24, '120004', 'c06', 34);
INSERT INTO "public"."score" VALUES (25, '120005', 'c01', 43);
INSERT INTO "public"."score" VALUES (26, '120005', 'c02', 77);
INSERT INTO "public"."score" VALUES (27, '120005', 'c03', 53);
INSERT INTO "public"."score" VALUES (28, '120005', 'c04', 44);
INSERT INTO "public"."score" VALUES (29, '120005', 'c05', 32);
INSERT INTO "public"."score" VALUES (30, '120005', 'c06', 28);
INSERT INTO "public"."score" VALUES (31, '120006', 'c01', 74);
INSERT INTO "public"."score" VALUES (32, '120006', 'c02', 49);
INSERT INTO "public"."score" VALUES (33, '120006', 'c03', 83);
INSERT INTO "public"."score" VALUES (34, '120006', 'c04', 32);
INSERT INTO "public"."score" VALUES (35, '120006', 'c05', 43);
INSERT INTO "public"."score" VALUES (36, '120006', 'c06', 28);
INSERT INTO "public"."score" VALUES (37, '120007', 'c01', 42);
INSERT INTO "public"."score" VALUES (38, '120007', 'c02', 71);
INSERT INTO "public"."score" VALUES (39, '120007', 'c03', 52);
INSERT INTO "public"."score" VALUES (40, '120007', 'c04', 79);
INSERT INTO "public"."score" VALUES (41, '120007', 'c05', 69);
INSERT INTO "public"."score" VALUES (42, '120007', 'c06', 39);
INSERT INTO "public"."score" VALUES (43, '120008', 'c01', 53);
INSERT INTO "public"."score" VALUES (44, '120008', 'c02', 58);
INSERT INTO "public"."score" VALUES (45, '120008', 'c03', 63);
INSERT INTO "public"."score" VALUES (46, '120008', 'c04', 68);
INSERT INTO "public"."score" VALUES (47, '120008', 'c05', 59);
INSERT INTO "public"."score" VALUES (48, '120008', 'c06', 28);
INSERT INTO "public"."score" VALUES (49, '120009', 'c01', 48);
INSERT INTO "public"."score" VALUES (50, '120009', 'c02', 83);
INSERT INTO "public"."score" VALUES (51, '120009', 'c03', 44);
INSERT INTO "public"."score" VALUES (52, '120009', 'c04', 56);
INSERT INTO "public"."score" VALUES (53, '120009', 'c05', 75);
INSERT INTO "public"."score" VALUES (54, '120009', 'c06', 14);
INSERT INTO "public"."score" VALUES (55, '120010', 'c01', 66);
INSERT INTO "public"."score" VALUES (56, '120010', 'c02', 81);
INSERT INTO "public"."score" VALUES (57, '120010', 'c03', 76);
INSERT INTO "public"."score" VALUES (58, '120010', 'c04', 54);
INSERT INTO "public"."score" VALUES (59, '120010', 'c05', 46);
INSERT INTO "public"."score" VALUES (60, '120010', 'c06', 9);
INSERT INTO "public"."score" VALUES (61, '120011', 'c01', 62);
INSERT INTO "public"."score" VALUES (62, '120011', 'c02', 88);
INSERT INTO "public"."score" VALUES (63, '120011', 'c03', 74);
INSERT INTO "public"."score" VALUES (64, '120011', 'c04', 33);
INSERT INTO "public"."score" VALUES (65, '120011', 'c05', 62);
INSERT INTO "public"."score" VALUES (66, '120011', 'c06', 37);
INSERT INTO "public"."score" VALUES (67, '120012', 'c01', 83);
INSERT INTO "public"."score" VALUES (68, '120012', 'c02', 66);
INSERT INTO "public"."score" VALUES (69, '120012', 'c03', 30);
INSERT INTO "public"."score" VALUES (70, '120012', 'c04', 55);
INSERT INTO "public"."score" VALUES (71, '120012', 'c05', 65);
INSERT INTO "public"."score" VALUES (72, '120012', 'c06', 38);
INSERT INTO "public"."score" VALUES (73, '120013', 'c01', 55);
INSERT INTO "public"."score" VALUES (74, '120013', 'c02', 81);
INSERT INTO "public"."score" VALUES (75, '120013', 'c03', 46);
INSERT INTO "public"."score" VALUES (76, '120013', 'c04', 51);
INSERT INTO "public"."score" VALUES (77, '120013', 'c05', 42);
INSERT INTO "public"."score" VALUES (78, '120013', 'c06', 35);
INSERT INTO "public"."score" VALUES (79, '120014', 'c01', 72);
INSERT INTO "public"."score" VALUES (80, '120014', 'c02', 63);
INSERT INTO "public"."score" VALUES (81, '120014', 'c03', 69);
INSERT INTO "public"."score" VALUES (82, '120014', 'c04', 50);
INSERT INTO "public"."score" VALUES (83, '120014', 'c05', 48);
INSERT INTO "public"."score" VALUES (84, '120014', 'c06', 37);
INSERT INTO "public"."score" VALUES (85, '120015', 'c01', 40);
INSERT INTO "public"."score" VALUES (86, '120015', 'c02', 71);
INSERT INTO "public"."score" VALUES (87, '120015', 'c03', 63);
INSERT INTO "public"."score" VALUES (88, '120015', 'c04', 73);
INSERT INTO "public"."score" VALUES (89, '120015', 'c05', 56);
INSERT INTO "public"."score" VALUES (90, '120015', 'c06', 18);
INSERT INTO "public"."score" VALUES (91, '120016', 'c01', 85);
INSERT INTO "public"."score" VALUES (92, '120016', 'c02', 84);
INSERT INTO "public"."score" VALUES (93, '120016', 'c03', 61);
INSERT INTO "public"."score" VALUES (94, '120016', 'c04', 62);
INSERT INTO "public"."score" VALUES (95, '120016', 'c05', 42);
INSERT INTO "public"."score" VALUES (96, '120016', 'c06', 16);
INSERT INTO "public"."score" VALUES (97, '120017', 'c01', 50);
INSERT INTO "public"."score" VALUES (98, '120017', 'c02', 57);
INSERT INTO "public"."score" VALUES (99, '120017', 'c03', 49);
INSERT INTO "public"."score" VALUES (100, '120017', 'c04', 78);
INSERT INTO "public"."score" VALUES (101, '120017', 'c05', 64);
INSERT INTO "public"."score" VALUES (102, '120017', 'c06', 42);
INSERT INTO "public"."score" VALUES (103, '120018', 'c01', 56);
INSERT INTO "public"."score" VALUES (104, '120018', 'c02', 58);
INSERT INTO "public"."score" VALUES (105, '120018', 'c03', 50);
INSERT INTO "public"."score" VALUES (106, '120018', 'c04', 39);
INSERT INTO "public"."score" VALUES (107, '120018', 'c05', 66);
INSERT INTO "public"."score" VALUES (108, '120018', 'c06', 26);
INSERT INTO "public"."score" VALUES (109, '120019', 'c01', 46);
INSERT INTO "public"."score" VALUES (110, '120019', 'c02', 46);
INSERT INTO "public"."score" VALUES (111, '120019', 'c03', 65);
INSERT INTO "public"."score" VALUES (112, '120019', 'c04', 57);
INSERT INTO "public"."score" VALUES (113, '120019', 'c05', 67);
INSERT INTO "public"."score" VALUES (114, '120019', 'c06', 12);
INSERT INTO "public"."score" VALUES (115, '120020', 'c01', 71);
INSERT INTO "public"."score" VALUES (116, '120020', 'c02', 70);
INSERT INTO "public"."score" VALUES (117, '120020', 'c03', 41);
INSERT INTO "public"."score" VALUES (118, '120020', 'c04', 72);
INSERT INTO "public"."score" VALUES (119, '120020', 'c05', 43);
INSERT INTO "public"."score" VALUES (120, '120020', 'c06', 15);

-- ----------------------------
-- Primary Key structure for table score
-- ----------------------------
ALTER TABLE "public"."score" ADD CONSTRAINT "score_pkey" PRIMARY KEY ("serno");

-- ----------------------------
-- Foreign Keys structure for table score
-- ----------------------------
ALTER TABLE "public"."score" ADD CONSTRAINT "fk01" FOREIGN KEY ("stuno") REFERENCES "public"."student" ("stuno") ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE "public"."score" ADD CONSTRAINT "fk02" FOREIGN KEY ("couno") REFERENCES "public"."course" ("couno") ON DELETE RESTRICT ON UPDATE RESTRICT;
