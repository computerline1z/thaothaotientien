use master
go
if DB_ID('BT_CHAP02') is not null
	drop database BT_CHAP02
go
create database BT_CHAP02
go
use BT_CHAP02
go

--create table CON_NGUOI---
create table CON_NGUOI
(
cmnd varchar(9) not null,
ten nvarchar(50),
gioi_tinh bit,
cong_viec nvarchar(30),
ma_xp varchar(10),
tua_phim nvarchar(100),
nam_sx datetime,

primary key(cmnd)
)

-- create table THE_LOAI_PHIM --
create table THE_LOAI_PHIM
(
ma_the_loai varchar(10) not null,
tenTL nvarchar(50),

primary key(ma_the_loai)
)

-- create table PHIM --
create table PHIM
(
tua_phim nvarchar(100) not null,
nam_sx datetime not null,
do_dai int,
dao_dien varchar(9),
ma_xp varchar(10),
ma_the_loai varchar(10),

primary key(tua_phim, nam_sx)
)

-- create table PHAN_VAI --
create table PHAN_VAI
(
cmnd varchar(9) not null,
tua_phim nvarchar(100) not null,
nam_sx datetime not null,
nhan_vat nvarchar(50),

primary key(cmnd, tua_phim, nam_sx)
)

-- create table XUONG_PHIM --
create table XUONG_PHIM
(
ma_xp varchar(10) not null,
thanh_pho nvarchar(50),

primary key(ma_xp)
)

-- constraint
go
alter table CON_NGUOI
add constraint FK_CON_NGUOI_XUONG_PHIM
foreign key(ma_xp)
references XUONG_PHIM(ma_xp),
constraint FK_CON_NGUOI_PHIM
foreign key(tua_phim, nam_sx)
references PHIM(tua_phim, nam_sx)

go
alter table PHIM
add constraint FK_PHIM_CON_NGUOI
foreign key(dao_dien)
references CON_NGUOI(cmnd),
constraint FK_PHIM_XUONG_PHIM
foreign key(ma_xp)
references XUONG_PHIM(ma_xp),
constraint FK_PHIM_MA_THE_LOAI
foreign key(ma_the_loai)
references THE_LOAI_PHIM(ma_the_loai)

go

alter table PHAN_VAI
add constraint FK_PHAN_VAI_CON_NGUOI
foreign key (cmnd)
references CON_NGUOI(cmnd),
constraint FK_PHAN_VAI_PHIM
foreign key (tua_phim, nam_sx)
references PHIM(tua_phim, nam_sx)