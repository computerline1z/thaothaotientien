 /*
	MSSV: 0912463
	HoTen: Trương Nguyễn Thủy Tiên
	Lop: TH2009/1
*/

USE master

GO

IF DB_ID ('QUAN_LY_PHIM') IS NOT NULL
	DROP DATABASE QUAN_LY_PHIM
	
GO

CREATE DATABASE QUAN_LY_PHIM

GO

USE QUAN_LY_PHIM

GO

	-- TẠO BẢNG XƯỞNG PHIM
	
IF OBJECT_ID('XUONG_PHIM','U') IS NOT NULL
	DROP TABLE XUONG_PHIM
	
CREATE TABLE XUONG_PHIM
(
	ma_xp		char(10) not null,
	thanh_pho	nvarchar(50),
	
	CONSTRAINT PK_XP
	PRIMARY KEY (ma_xp)
)

	-- TẠO BẢNG THỂ LOẠI PHIM
	
IF OBJECT_ID('THE_LOAI_PHIM', 'U') IS NOT NULL
	DROP TABLE THE_LOAI_PHIM
	
CREATE TABLE THE_LOAI_PHIM
(
	ma_the_loai		char(10) not null,
	ten_TL			nvarchar(50) not null,

	CONSTRAINT PK_TL
	PRIMARY KEY (ma_the_loai)
)

	-- TẠO BẢNG PHIM
	
IF OBJECT_ID ('PHIM', 'U') IS NOT NULL
	DROP TABLE PHIM
	
CREATE TABLE PHIM
(
	tua_phim	nvarchar(50) not null,
	nam_sx		date not null,
	do_dai		int,
	dao_dien    int,
	ma_xp		char(10) not null,
	ma_the_loai	char(10) not null,
	
	CONSTRAINT PK_PHIM
	PRIMARY KEY (tua_phim, nam_sx),
	
	CONSTRAINT FK_XP
	FOREIGN KEY (ma_xp) REFERENCES XUONG_PHIM(ma_xp),
	
	CONSTRAINT FK_TL
	FOREIGN KEY (ma_the_loai) REFERENCES THE_LOAI_PHIM(ma_the_loai)
)

		-- TẠO BẢNG CON NGƯỜI
		
IF OBJECT_ID('CON_NGUOI', 'U') IS NOT NULL
	DROP TABLE CON_NGUOI
	
CREATE TABLE CON_NGUOI
(
	cmnd		int not null,
	ten			nvarchar(50),
	gioi_tinh	bit not null,
	cong_viec	nvarchar(50),
	ma_xp		char(10) not null,
	tua_phim	nvarchar(50),
	nam_sx		date,
	
	CONSTRAINT PK_CN
	PRIMARY KEY (cmnd),
	
	CONSTRAINT FK_CN_XP
	FOREIGN KEY (ma_xp) REFERENCES XUONG_PHIM(ma_xp),
	
	CONSTRAINT FK_CN_PHIM
	FOREIGN KEY (tua_phim, nam_sx) REFERENCES PHIM(tua_phim, nam_sx)
)

ALTER TABLE PHIM

ADD CONSTRAINT FK_DAO_DIEN
FOREIGN KEY (dao_dien) REFERENCES CON_NGUOI(cmnd)

	-- TẠO BẢNG PHÂN VAI
	
IF OBJECT_ID ('PHAN_VAI' ,'U') IS NOT NULL
	DROP TABLE PHAN_VAI
	
CREATE TABLE PHAN_VAI
(
	cmnd		int not null, 
	tua_phim	nvarchar(50) not null,
	nam_sx		date not null,
	nhan_vat	nvarchar(50),
	
	CONSTRAINT PK_PV
	PRIMARY KEY (cmnd, tua_phim, nam_sx),
	
	CONSTRAINT FK_DIENVIEN
	FOREIGN KEY (cmnd) REFERENCES CON_NGUOI(cmnd),
	
	CONSTRAINT FK_PV_PHIM
	FOREIGN KEY (tua_phim, nam_sx) REFERENCES PHIM(tua_phim, nam_sx)
)