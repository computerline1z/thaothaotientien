USE master
GO
IF DB_ID('VOUCHERDB') IS NOT NULL
	DROP DATABASE VOUCHERDB
GO
CREATE DATABASE VOUCHERDB

GO
USE VOUCHERDB

GO
CREATE TABLE HOPDONG_DOANHNGHIEP
(
maHD VARCHAR(10) NOT NULL,
ngayKiHD DATETIME NOT NULL,
ngayBatDauHD DATETIME NOT NULL,
ngayKetThucHD DATETIME NOT NULL,
tenDoanhNghiep NVARCHAR(510) NOT	NULL,
sdtDN CHAR(12) NOT NULL,
diaChiDN NVARCHAR(150) NOT NULL,

PRIMARY KEY (maHD)
)

GO 
CREATE TABLE SAN_PHAM_QUANG_CAO
(
maQC INT NOT NULL,
soLuongSP INT NOT NULL,
soLuongTon INT NOT NULL,
soPhieuToiThieuBanRa INT NOT NULL,
tiLeGiaoTanNha FLOAT NOT NULL,
soPhieuToiThieuGiaoTanNha INT NOT NULL,
tinhTrang INT NOT NULL,
thoiGianBatDauQC DATETIME NOT NULL,
thoiGianKetThucQC DATETIME NOT NULL,
maHD VARCHAR(10) NOT NULL,

PRIMARY KEY (maQC)
)

GO
CREATE TABLE THONG_TIN_QUANG_CAO
(
maQC INT NOT NULL,
tenQuangCao NVARCHAR(150) NOT NULL,
giaGoc FLOAT NOT null, 
giaBan FLOAT NOT NULL, 
soPhieuThanhToan INT NOT NULL,
soPhieuDuocMua INT NOT NULL,
dieuKienApDung NVARCHAR(200) NOT NULL,
diaDiemApDung NVARCHAR(150) NOT NULL,
thoiGianBatDauSD DATETIME NOT NULL,
thoiGianKetThucSD DATETIME NOT NULL,

maSP INT NOT NULL,
tenSanPham NVARCHAR(150) NOT NULL,
hinhAnh	VARCHAR(100) NOT NULL,
diemNoiBat NVARCHAR(200),
thongTinChiTiet text,
tenLinhVuc NVARCHAR(100),

PRIMARY KEY (maQC)
)

GO
CREATE TABLE SO_LUONG_QUANG_CAO
(
maQC INT NOT NULL,
soLuongSP INT NOT NULL,
soLuongTon INT NOT NULL,

PRIMARY KEY (maQC)
)

GO
CREATE TABLE DIEU_KIEN_TIEN_QUYET
(
maDK INT NOT NULL,
tenQuanHe VARCHAR(20) NOT NULL,
tenThuocTinh VARCHAR(20) NOT NULL,
toanTu VARCHAR(20) NOT NULL,
kieuDuLieu VARCHAR(20) NOT NULL,
giaTri NVARCHAR(50) NOT NULL,

maQC int NOT NULL,

PRIMARY KEY (maDK)
)

GO
CREATE TABLE THANH_VIEN
(
maTV INT NOT NULL,
emailTV VARCHAR(50) NOT NULL,
hoTenTV VARCHAR(50) NOT NULL,
sdTV VARCHAR(50),
taiKhoanThe INT NOT NULL,

PRIMARY KEY (maTV)
)

GO
CREATE TABLE THE_NAP
(
matMa VARCHAR(50) NOT NULL,
soSeri VARCHAR(50) NOT NULL,
menhGia FLOAT NOT NULL,
maTV INT NOT NULL,

PRIMARY KEY (matMa, soSeri)
)

GO
CREATE TABLE HOADON_PHIEUGH
(
maSoHoaDon INT NOT NULL,
ngayLapHD DATETIME NOT NULL,
giaTriHD INT NOT NULL,

maSoPhieu VARCHAR(10) UNIQUE NOT NULL,
thoiGianGiaoHang DATETIME,
loaiGiaoDich INT NOT NULL,
tinhTrang INT NOT NULL,

maTV INT NOT NULL,

PRIMARY KEY (maSoHoaDon)
)

GO
CREATE TABLE VOUCHER
(
maVoucher VARCHAR(10) NOT NULL,
maQC int NOT NULL,
maSoHoaDon int NOT NULL,

PRIMARY KEY (maVoucher)
)

GO
CREATE TABLE GIAO_DICH_TAN_NHA
(
maSoPhieu VARCHAR(10) NOT NULL,
tenNguoiNhan NVARCHAR(100) NOT NULL,
sdtNguoiNhan VARCHAR(15) NOT NULL,
diaChiGiao NVARCHAR(120) NOT NULL,
thoiGianBatDauNhan DATETIME NOT NULL,
thoiGianKetThucNhan DATETIME NOT NULL,
ngayNhanHang DATETIME NOT NULL,
loiNhanMuaVoucher NVARCHAR(150) ,

PRIMARY KEY (maSoPhieu)
)

go	
CREATE TABLE GIAO_DICH_TRUC_TUYEN
(
maSoPhieu VARCHAR(10) NOT NULL,
laPhieuTang BIT NOT NULL,
tenNguoiGui NVARCHAR(100),
tenNguoiNhan NVARCHAR(100),
emailNgoiNhan VARCHAR(50),
sdtNguoiNhan VARCHAR(15) NOT NULL,
loiNhan NVARCHAR(150),

PRIMARY KEY (maSoPhieu)
)

-- ngayBatDau < ngayKetThuc
go
ALTER TABLE dbo.HOPDONG_DOANHNGHIEP
ADD CONSTRAINT CK_HDDN_ThoiHanHD
CHECK (ngayBatDauHD <= ngayKetThucHD),
CONSTRAINT CK_HDDN_NgayKiHD_NgayBatDauHD
CHECK (ngayKiHD <= ngayBatDauHD)


GO
ALTER TABLE dbo.SAN_PHAM_QUANG_CAO
ADD CONSTRAINT FK_SPQC_HDDN
FOREIGN KEY (maHD)
REFERENCES dbo.HOPDONG_DOANHNGHIEP(maHD),
CONSTRAINT CK_SPQC_SoPhieuToiThieuGiaoTanNha
CHECK (soPhieuToiThieuGiaoTanNha >= 1),
CONSTRAINT CK_SPQC_TinhTrang
CHECK (tinhTrang IN (0,1,2)),
CONSTRAINT CK_SPQC_ThoiGianQC
CHECK (thoiGianBatDauQC < thoiGianKetThucQC),
CONSTRAINT CK_SPQC_SoPhieuToiThieuBanRa
CHECK (soPhieuToiThieuBanRa > 0)

go
ALTER TABLE dbo.THONG_TIN_QUANG_CAO
ADD CONSTRAINT FK_TTQC_SPQC
FOREIGN KEY (maQC)
REFERENCES dbo.SAN_PHAM_QUANG_CAO (maQC),
CONSTRAINT CK_TTQC_Gia
CHECK (giaGoc > giaBan AND giaBan >=0),
CONSTRAINT CK_TTQC_ThoiGianSD
CHECK (thoiGianBatDauSD <= thoiGianKetThucSD)

go
ALTER TABLE dbo.SO_LUONG_QUANG_CAO
ADD CONSTRAINT FK_SLQC_SPQC
FOREIGN KEY (maQC)
REFERENCES dbo.SAN_PHAM_QUANG_CAO(maQC),
CONSTRAINT CK_SLQC_SLSP_SLTon
CHECK (soLuongSP >= soLuongTon AND soLuongTon >=0)

go
ALTER TABLE dbo.THANH_VIEN
ADD CONSTRAINT CK_THANHVIEN_TaiKhoanThe
CHECK (taiKhoanThe >=0)


GO
ALTER TABLE dbo.THE_NAP
ADD CONSTRAINT FK_THENAP_THANHVIEN
FOREIGN KEY (maTV)
REFERENCES dbo.THANH_VIEN(maTV),
CONSTRAINT CK_THENAP_MenhGia
CHECK (MenhGia > 0)

go
ALTER TABLE dbo.HOADON_PHIEUGH
ADD CONSTRAINT FK_HDPGH_THANHVIEN
FOREIGN KEY (maTV)
REFERENCES dbo.THANH_VIEN(maTV),
CONSTRAINT CK_HDPGH_TinhTrang
CHECK (tinhTrang IN (0,1,2)) ,
CONSTRAINT CK_HDPGH_GiaTriHD
CHECK (giaTriHD >=0)

go
ALTER TABLE dbo.VOUCHER
ADD CONSTRAINT FK_VOUCHER_SPQC
FOREIGN KEY (maQC)
REFERENCES dbo.SAN_PHAM_QUANG_CAO(maQC),
CONSTRAINT FK_VOUCHER_HDPGH
FOREIGN KEY (maSoHoaDon) 
REFERENCES dbo.HOADON_PHIEUGH(maSoHoaDon)

GO
ALTER TABLE dbo.GIAO_DICH_TAN_NHA
ADD CONSTRAINT FK_GDTN_HDPGH
FOREIGN KEY (maSoPhieu)
REFERENCES dbo.HOADON_PHIEUGH(maSoPhieu),
CONSTRAINT CK_GDTN_ThoiGianNhan
CHECK (thoiGianBatDauNhan <= thoiGianKetThucNhan)

go
ALTER TABLE dbo.GIAO_DICH_TRUC_TUYEN
ADD CONSTRAINT FK_GDTT_HDPGH
FOREIGN KEY (maSoPhieu)
REFERENCES dbo.HOADON_PHIEUGH(maSoPhieu)

GO
ALTER TABLE dbo.DIEU_KIEN_TIEN_QUYET
ADD CONSTRAINT FK_DKTQ_SPQC
FOREIGN KEY (maQC)
REFERENCES SAN_PHAM_QUANG_CAO (maQC)

-- soLuongTon = soLuongSP - soLuongDaMua(HOADON, Voucher)

-- Dùng Trigger
go
CREATE TRIGGER SPQC_VOUCHER_SOLUONGTON_TRG
ON VOUCHER
FOR INSERT
AS
	DECLARE @maQCNhapVao int
	DECLARE @soLuongVoucher int
	
	SELECT @maQCNhapVao = maQC
	FROM inserted
	
	SELECT @soLuongVoucher = COUNT(*) FROM VOUCHER WHERE maQC = @maQCNhapVao
	
	UPDATE SO_LUONG_QUANG_CAO
	SET soLuongTon = soLuongSP - @soLuongVoucher
	WHERE maQC = @maQCNhapVao
	
GO
-- Mỗi hóa đơn chỉ chứa các voucher của cùng sản phẩm quảng cáo

CREATE TRIGGER HD_CHUACUNGLOAISANPHAM_VOUCHER
ON VOUCHER
FOR INSERT
AS
	DECLARE @maQCNhapVao int
	DECLARE @maSoHoaDonNhapVao int
	
	SELECT @maQCNhapVao = maQC, @maSoHoaDonNhapVao = maSoHoaDon
	FROM inserted
	
	DECLARE cur CURSOR 
	FOR
	SELECT maQC
	FROM VOUCHER
	WHERE maSoHoaDon = @maSoHoaDonNhapVao

	Open cur 
	Declare @maQCTonTai int 
	FETCH NEXT FROM cur into @maQCTonTai	 
		
	IF @maQCNhapVao = @maQCTonTai        
	 ROLLBACK TRANSACTION
	 
	WHILE @@fetch_status = 0 
		BEGIN
		FETCH NEXT FROM cur into @maQCTonTai 
				IF @maQCNhapVao != @maQCTonTai        
				 ROLLBACK TRANSACTION	   
		END	 
	 

-- Các câu truy vấn
/*1)	Cho biết các tên quảng cáo và thông tin sản phẩm của các sản phẩm trước ngày 20-11-2011, 
có số lượng voucher bán trên 100.*/



/*2)	Cho biết số phiếu giao hàng tại nhà của SAN_PHAM_QUANG_CAO có TenQuangCao là ‘Incadar’.*/


/*3)	Cho biết số lượng Voucher của sản phẩm quảng cáo ‘Giày Nana’ mà khách hàng có email ‘nvanb@gmail.com’ đã mua*/


/*4)	Cho biết danh sách sản phẩm quảng cáo thuộc lĩnh vực 'Seafood' của doanh nghiệp Addimover
với giá gốc bé hơn 100.000 VNĐ.*/

Create index i_giaGoc on THONG_TIN_QUANG_CAO(giaGoc)
Drop index i_giaGoc on THONG_TIN_QUANG_CAO

SET STATISTICS IO ON
SET STATISTICS TIME ON 

Select	TTQC.tenQuangCao, DN.tenDoanhNghiep, TTQC.giaGoc
From	(SAN_PHAM_QUANG_CAO SPQC join THONG_TIN_QUANG_CAO TTQC on SPQC.maQC = TTQC.maQC) 
		join HOPDONG_DOANHNGHIEP DN on DN.maHD = SPQC.maHD 
Where	TTQC.giaGoc < 100 and TTQC.tenLinhVuc = 'Seafood' and DN.tenDoanhNghiep = 'ABC'


/*5)	Cho biết danh sách doanh nghiệp(Tên doanh nghiệp, số điện thoại, địa chỉ) có thời gian hợp đồng 
nằm trong khoản từ 25/10/2011 đến 31/12/2011.*/

Create index i_ngayBD on SAN_PHAM_QUANG_CAO(ngayBatDauHD)

Select DN.tenDoanhNghiep, DN.sdtDN, DN.diaChiDN
From HOPDONG_DOANHNGHIEP DN
Where DN.ngayBatDauHD >= '10/25/2001' and DN.ngayKetThucHD <= '12/31/2011'