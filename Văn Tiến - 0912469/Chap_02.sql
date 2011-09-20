create database ql_phim
go
use ql_phim
go
--Tạo các bảng trong quan hệ

create table CON_NGUOI(
	cmnd		varchar(20) not null,
	ten			nvarchar(100),
	gioi_tinh	nvarchar(10) CHECK(gioi_tinh IN ('Nam', N'Nữ')),
	cong_viec	nvarchar(100),
	ma_xp		nvarchar(50),
	tua_phim	nvarchar(100),
	nam_sx		datetime
)

create table THE_LOAI_PHIM(
	ma_the_loai	nvarchar(50) not null,
	tenTL		nvarchar(100)
)

create table PHIM(
	tua_phim	nvarchar(100) not null,
	nam_sx		datetime not null,
	do_dai		int,
	dao_dien	varchar(20),
	ma_xp		nvarchar(50),
	ma_the_loai	nvarchar(50)
)

create table PHAN_VAI(
	cmnd		varchar(20) not null,
	tua_phim	nvarchar(100) not null,
	nam_sx		datetime not null,
	nhan_vat	nvarchar(100)
)

create table XUONG_PHIM(
	ma_xp		nvarchar(50) not null,
	thanh_pho	nvarchar(100)
)


--Tạo các khóa chính cho bảng
alter table CON_NGUOI
add constraint PK_CON_NGUOI_cmnd
primary key(cmnd)

alter table THE_LOAI_PHIM
add constraint PK_THE_LOAI_PHIM_ma_the_loai
primary key(ma_the_loai)

alter table PHIM
add constraint PK_PHIM_tua_phim_nam_sx
primary key(tua_phim, nam_sx)

alter table PHAN_VAI
add constraint PK_PHAN_VAI_cmnd_tua_phim_nam_sx
primary key(cmnd, tua_phim, nam_sx)

alter table XUONG_PHIM
add constraint PK_XUONG_PHIM_ma_xp
primary key(ma_xp)


--Tạo các khóa ngoại

alter table CON_NGUOI
add constraint FK_CON_NGUOI_ma_xp
foreign key (ma_xp)
references XUONG_PHIM(ma_xp)

alter table CON_NGUOI
add constraint FK_CON_NGUOI_tua_phim_nam_xp
foreign key (tua_phim, nam_sx)
references PHIM(tua_phim, nam_sx)

alter table PHIM
add constraint FK_PHIM_dao_dien
foreign key (dao_dien)
references CON_NGUOI(cmnd)

alter table PHIM
add constraint FK_PHIM_ma_xp
foreign key (ma_xp)
references XUONG_PHIM(ma_xp)


alter table PHIM
add constraint FK_PHIM_ma_the_loai
foreign key (ma_the_loai)
references THE_LOAI_PHIM(ma_the_loai)

alter table PHAN_VAI
add constraint FK_PHAN_VAI_cmnd
foreign key (cmnd)
references CON_NGUOI(cmnd)

alter table PHAN_VAI
add constraint FK_PHAN_VAI_tua_phim
foreign key (tua_phim, nam_sx)
references PHIM(tua_phim, nam_sx)



