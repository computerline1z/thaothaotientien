USE [MuaVoucher_v2]
GO
/****** Object:  Table [dbo].[THONG_TIN_SAN_PHAM]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THONG_TIN_SAN_PHAM](
	[maSP] [int] NOT NULL,
	[tenSanPham] [nvarchar](150) NOT NULL,
	[hinhAnh] [varchar](100) NOT NULL,
	[diemNoiBat] [nvarchar](200) NULL,
	[thongTinChiTiet] [text] NULL,
	[tenLinhVuc] [nvarchar](100) NULL,
 CONSTRAINT [PK_THONG_TIN_SAN_PHAM] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIAO_DICH_TRUC_TUYEN]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAO_DICH_TRUC_TUYEN](
	[maSoPhieu] [varchar](10) NOT NULL,
	[laPhieuTang] [bit] NOT NULL,
	[tenNguoiGui] [nvarchar](100) NOT NULL,
	[tenNguoiNhan] [nvarchar](100) NOT NULL,
	[emailNguoiNhan] [varchar](50) NULL,
	[sdtNguoiNhan] [varchar](15) NOT NULL,
	[loiNhan] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_GIAO_DICH_TRUC_TUYEN] PRIMARY KEY CLUSTERED 
(
	[maSoPhieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIAO_DICH_TAN_NHA]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAO_DICH_TAN_NHA](
	[maSoPhieu] [varchar](10) NOT NULL,
	[tenNguoiNhan] [nvarchar](100) NOT NULL,
	[sdtNguoiNhan] [varchar](15) NOT NULL,
	[diaChiGiao] [nvarchar](150) NOT NULL,
	[thoiGianBatDauNhan] [datetime] NOT NULL,
	[thoiGianKetThucNhan] [datetime] NOT NULL,
	[ngayNhanHang] [datetime] NOT NULL,
	[loiNhanVoucher] [nvarchar](150) NULL,
 CONSTRAINT [PK_GIAO_DICH_TAN_NHA] PRIMARY KEY CLUSTERED 
(
	[maSoPhieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOANH_NGHIEP]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOANH_NGHIEP](
	[maDN] [int] NOT NULL,
	[tenDN] [nvarchar](150) NOT NULL,
	[sdtDN] [char](12) NOT NULL,
	[diaChiDN] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_DOANH_NGHIEP] PRIMARY KEY CLUSTERED 
(
	[maDN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THANH_VIEN]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THANH_VIEN](
	[maTV] [int] NOT NULL,
	[emailTV] [varchar](50) NOT NULL,
	[hoTenTV] [nvarchar](50) NOT NULL,
	[sdtTV] [char](12) NULL,
 CONSTRAINT [PK_THANH_VIEN] PRIMARY KEY CLUSTERED 
(
	[maTV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOP_DONG]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOP_DONG](
	[maHD] [int] NOT NULL,
	[ngayKyHD] [datetime] NOT NULL,
	[ngayBatDau] [datetime] NOT NULL,
	[ngayKetThuc] [datetime] NOT NULL,
	[maDN] [int] NOT NULL,
 CONSTRAINT [PK_HOP_DONG] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON](
	[maSoHoaDon] [int] NOT NULL,
	[ngayLapHD] [datetime] NOT NULL,
	[giaTriHD] [float] NOT NULL,
	[maTV] [int] NOT NULL,
 CONSTRAINT [PK_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[maSoHoaDon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAN_PHAM_QUANG_CAO]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM_QUANG_CAO](
	[maQC] [int] NOT NULL,
	[tenQC] [nvarchar](150) NOT NULL,
	[giaGoc] [float] NOT NULL,
	[giaBan] [float] NOT NULL,
	[soLuongSP] [int] NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[soPhieuThanhToan] [int] NOT NULL,
	[soPhieuDuocMua] [int] NOT NULL,
	[soPhieuToiThieuBanRa] [int] NOT NULL,
	[tiLeGiaoTanNha] [float] NOT NULL,
	[soPhieuToiThieuGiaoTanNha] [int] NOT NULL,
	[dieuKienApDung] [nvarchar](200) NULL,
	[diaDiemApDung] [nvarchar](150) NULL,
	[tinhTrang] [int] NOT NULL,
	[thoiGianBatDauSD] [datetime] NOT NULL,
	[thoiGianKetThucSD] [datetime] NOT NULL,
	[thoiGianBatDauQC] [datetime] NOT NULL,
	[thoiGianKetThucQC] [datetime] NOT NULL,
	[maHD] [int] NOT NULL,
	[maSP] [int] NOT NULL,
 CONSTRAINT [PK_SAN_PHAM_QUANG_CAO] PRIMARY KEY CLUSTERED 
(
	[maQC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THE_NAP]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THE_NAP](
	[matMa] [varchar](50) NOT NULL,
	[soSeRi] [varchar](50) NOT NULL,
	[menhGia] [float] NOT NULL,
	[maTV] [int] NOT NULL,
 CONSTRAINT [PK_THE_NAP] PRIMARY KEY CLUSTERED 
(
	[matMa] ASC,
	[soSeRi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VOUCHER]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VOUCHER](
	[maVoucher] [varchar](20) NOT NULL,
	[maQC] [int] NOT NULL,
	[maSoHoaDon] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEU_GIAO_HANG]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEU_GIAO_HANG](
	[maSoPhieu] [varchar](10) NOT NULL,
	[maSoHoaDon] [int] NOT NULL,
	[thoiGianGiaoHang] [datetime] NOT NULL,
	[loaiGiaoDich] [int] NOT NULL,
	[tinhTrang] [int] NOT NULL,
 CONSTRAINT [PK_PHIEU_GIAO_HANG] PRIMARY KEY CLUSTERED 
(
	[maSoPhieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DIEU_KIEN_TIEN_QUYET]    Script Date: 12/09/2011 18:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIEU_KIEN_TIEN_QUYET](
	[maQC] [int] NOT NULL,
	[tenQuanHe] [varchar](20) NOT NULL,
	[tenThuocTinh] [varchar](20) NOT NULL,
	[toanTu] [varchar](20) NOT NULL,
	[kieuDuLieu] [varchar](20) NOT NULL,
	[giaTri] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DIEU_KIEN_TIEN_QUYET] PRIMARY KEY CLUSTERED 
(
	[maQC] ASC,
	[tenQuanHe] ASC,
	[tenThuocTinh] ASC,
	[toanTu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_DIEU_KIEN_TIEN_QUYET_SAN_PHAM_QUANG_CAO]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[DIEU_KIEN_TIEN_QUYET]  WITH CHECK ADD  CONSTRAINT [FK_DIEU_KIEN_TIEN_QUYET_SAN_PHAM_QUANG_CAO] FOREIGN KEY([maQC])
REFERENCES [dbo].[SAN_PHAM_QUANG_CAO] ([maQC])
GO
ALTER TABLE [dbo].[DIEU_KIEN_TIEN_QUYET] CHECK CONSTRAINT [FK_DIEU_KIEN_TIEN_QUYET_SAN_PHAM_QUANG_CAO]
GO
/****** Object:  ForeignKey [FK_HOA_DON_THANH_VIEN]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_THANH_VIEN] FOREIGN KEY([maTV])
REFERENCES [dbo].[THANH_VIEN] ([maTV])
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_THANH_VIEN]
GO
/****** Object:  ForeignKey [FK_HOP_DONG_DOANH_NGHIEP]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[HOP_DONG]  WITH CHECK ADD  CONSTRAINT [FK_HOP_DONG_DOANH_NGHIEP] FOREIGN KEY([maDN])
REFERENCES [dbo].[DOANH_NGHIEP] ([maDN])
GO
ALTER TABLE [dbo].[HOP_DONG] CHECK CONSTRAINT [FK_HOP_DONG_DOANH_NGHIEP]
GO
/****** Object:  ForeignKey [FK_PHIEU_GIAO_HANG_GIAO_DICH_TAN_NHA1]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[PHIEU_GIAO_HANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_GIAO_HANG_GIAO_DICH_TAN_NHA1] FOREIGN KEY([maSoPhieu])
REFERENCES [dbo].[GIAO_DICH_TAN_NHA] ([maSoPhieu])
GO
ALTER TABLE [dbo].[PHIEU_GIAO_HANG] CHECK CONSTRAINT [FK_PHIEU_GIAO_HANG_GIAO_DICH_TAN_NHA1]
GO
/****** Object:  ForeignKey [FK_PHIEU_GIAO_HANG_GIAO_DICH_TRUC_TUYEN]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[PHIEU_GIAO_HANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_GIAO_HANG_GIAO_DICH_TRUC_TUYEN] FOREIGN KEY([maSoPhieu])
REFERENCES [dbo].[GIAO_DICH_TRUC_TUYEN] ([maSoPhieu])
GO
ALTER TABLE [dbo].[PHIEU_GIAO_HANG] CHECK CONSTRAINT [FK_PHIEU_GIAO_HANG_GIAO_DICH_TRUC_TUYEN]
GO
/****** Object:  ForeignKey [FK_PHIEU_GIAO_HANG_HOA_DON1]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[PHIEU_GIAO_HANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_GIAO_HANG_HOA_DON1] FOREIGN KEY([maSoHoaDon])
REFERENCES [dbo].[HOA_DON] ([maSoHoaDon])
GO
ALTER TABLE [dbo].[PHIEU_GIAO_HANG] CHECK CONSTRAINT [FK_PHIEU_GIAO_HANG_HOA_DON1]
GO
/****** Object:  ForeignKey [FK_SAN_PHAM_QUANG_CAO_DOANH_NGHIEP]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO]  WITH CHECK ADD  CONSTRAINT [FK_SAN_PHAM_QUANG_CAO_DOANH_NGHIEP] FOREIGN KEY([maHD])
REFERENCES [dbo].[DOANH_NGHIEP] ([maDN])
GO
ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] CHECK CONSTRAINT [FK_SAN_PHAM_QUANG_CAO_DOANH_NGHIEP]
GO
/****** Object:  ForeignKey [FK_SAN_PHAM_QUANG_CAO_THONG_TIN_SAN_PHAM]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO]  WITH CHECK ADD  CONSTRAINT [FK_SAN_PHAM_QUANG_CAO_THONG_TIN_SAN_PHAM] FOREIGN KEY([maSP])
REFERENCES [dbo].[THONG_TIN_SAN_PHAM] ([maSP])
GO
ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] CHECK CONSTRAINT [FK_SAN_PHAM_QUANG_CAO_THONG_TIN_SAN_PHAM]
GO
/****** Object:  ForeignKey [FK_THE_NAP_THANH_VIEN]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[THE_NAP]  WITH CHECK ADD  CONSTRAINT [FK_THE_NAP_THANH_VIEN] FOREIGN KEY([maTV])
REFERENCES [dbo].[THANH_VIEN] ([maTV])
GO
ALTER TABLE [dbo].[THE_NAP] CHECK CONSTRAINT [FK_THE_NAP_THANH_VIEN]
GO
/****** Object:  ForeignKey [FK_VOUCHER_HOA_DON]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[VOUCHER]  WITH CHECK ADD  CONSTRAINT [FK_VOUCHER_HOA_DON] FOREIGN KEY([maSoHoaDon])
REFERENCES [dbo].[HOA_DON] ([maSoHoaDon])
GO
ALTER TABLE [dbo].[VOUCHER] CHECK CONSTRAINT [FK_VOUCHER_HOA_DON]
GO
/****** Object:  ForeignKey [FK_VOUCHER_SAN_PHAM_QUANG_CAO]    Script Date: 12/09/2011 18:31:31 ******/
ALTER TABLE [dbo].[VOUCHER]  WITH CHECK ADD  CONSTRAINT [FK_VOUCHER_SAN_PHAM_QUANG_CAO] FOREIGN KEY([maQC])
REFERENCES [dbo].[SAN_PHAM_QUANG_CAO] ([maQC])
GO
ALTER TABLE [dbo].[VOUCHER] CHECK CONSTRAINT [FK_VOUCHER_SAN_PHAM_QUANG_CAO]
GO

ALTER TABLE [dbo].[THANH_VIEN] ADD taiKhoan float
GO

/***** Cài đặt các ràng buộc dữ liệu ******/

-- Bảng HOP_DONG
-- ngayBatDau < ngayKetThuc
ALTER TABLE [dbo].[HOP_DONG] ADD CONSTRAINT [C_NGAY_HOP_DONG] CHECK (ngayBatDau < ngayKetThuc)

-- ngayKyHD < ngayBatDau 

ALTER TABLE [dbo].[HOP_DONG] ADD CONSTRAINT [C_NGAY_KY_HOP_DONG] CHECK (ngayKyHD < ngayBatDau)


-- Bảng SAN_PHAM_QUANG_CAO

-- giaGoc > giaBan

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_GIAGOC_GIABAN] CHECK (giaGoc > giaBan)

-- giaGoc, giaBan > 0

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_GIAGOC_DUONG_GIABAN_KHONGAM] CHECK (giaGoc > 0 AND giaBan >= 0)

-- soLuongSP >= soLuongTon

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_SOLUONGSP_SOLUONGTON] CHECK (soLuongSP >= soLuongTon)

-- soLuongSP, soLuongTon >= 0

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_SOLUONGSP_SOLUONGTON_KHONGAM] CHECK (soLuongSP >= 0 AND soLuongTon >= 0)


-- 0 < soPhieuToiThieuBanRa < soLuongSanPham/2

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_SOPHIEUTOITHIEUBANRA_SOLUONGSP]
CHECK (0 < soPhieuToiThieuBanRa AND soPhieuToiThieuBanRa < (soLuongSP/2))


-- soPhieuToiThieuGiaoTanNha > 1

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_SOPHIEUTOITHIEUGIAOTANNHA] CHECK (soPhieuToiThieuGiaoTanNha > 1)


-- Chỉ có 3 trường hợp của tinhTrang là Chưa bắt đầu(0), Đang bán(1), Kết thúc(2)

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_TINHTRANG] CHECK (tinhTrang IN(0, 1, 2))

-- thoiGianBatDauQC < thoiGianKetThucQC

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_THOIGIANQC] CHECK (thoiGianBatDauQC < thoiGianKetThucQC)

-- thoiGianBatDauSD < thoiGianKetThucSD

ALTER TABLE [dbo].[SAN_PHAM_QUANG_CAO] ADD CONSTRAINT [C_SPQC_THOIGIANSD] CHECK (thoiGianBatDauSD < thoiGianKetThucSD)

-- soLuongTon = soLuongSP - soLuongDaMua(HOADON, Voucher)

-- Dùng Trigger

CREATE TRIGGER SPQC_VOUCHER_SOLUONGTON_TRG
ON VOUCHER
FOR INSERT
AS
	DECLARE @maQCNhapVao int
	DECLARE @soLuongVoucher int
	
	SELECT @maQCNhapVao = maQC
	FROM inserted
	
	SELECT @soLuongVoucher = COUNT(*) FROM VOUCHER WHERE maQC = @maQCNhapVao
	
	UPDATE SAN_PHAM_QUANG_CAO
	SET soLuongTon = soLuongSP - @soLuongVoucher
	WHERE maQC = @maQCNhapVao


	 


-- Bảng PHIEU_GIAO_HANG

-- Chỉ có 3 trường hợp của tinhTrang là Chưa giao hàng(0), Đang xử lý(1), Đã giao hàng(2)

ALTER TABLE [dbo].[PHIEU_GIAO_HANG] ADD CONSTRAINT [C_PGH_TINHTRANG] CHECK (tinhTrang IN(0, 1, 2))


-- Mỗi phiếu giao hàng chỉ thuộc một hình thức giao hàng

-- Cài trên bảng GIAO_DICH_TRUC_TUYEN
CREATE TRIGGER PGH_HINHTHUCGIAOHANG_TRUCTUYEN
ON GIAO_DICH_TRUC_TUYEN
FOR INSERT
AS
	DECLARE @maSoPhieuNhapVao varchar(10)
	DECLARE @maSoPhieuTanNha varchar(10)
	
	SELECT @maSoPhieuNhapVao = maSoPhieu
	FROM inserted
	
	SELECT @maSoPhieuTanNha = maSoPhieu
	FROM GIAO_DICH_TAN_NHA
	
   IF @maSoPhieuNhapVao = @maSoPhieuTanNha        
     ROLLBACK TRANSACTION
     
-- Cài trên bảng GIAO_DICH_TAN_NHA 

CREATE TRIGGER PGH_HINHTHUCGIAOHANG_TANNHA
ON GIAO_DICH_TAN_NHA
FOR INSERT
AS
	DECLARE @maSoPhieuNhapVao varchar(10)
	DECLARE @maSoPhieuTrucTuyen varchar(10)
	
	SELECT @maSoPhieuNhapVao = maSoPhieu
	FROM inserted
	
	SELECT @maSoPhieuTrucTuyen = maSoPhieu
	FROM GIAO_DICH_TAN_NHA
	
   IF @maSoPhieuNhapVao = @maSoPhieuTrucTuyen        
     ROLLBACK TRANSACTION
     
     
    
-- Bảng GIAO_DICH_TAN_NHA

-- thoiGianBatDauNhan < thoiGianKetThucNhan

ALTER TABLE [dbo].[GIAO_DICH_TAN_NHA] ADD CONSTRAINT [C_GDTN_THOIGIANNHANPHIEU] CHECK (thoiGianBatDauNhan < thoiGianKetThucNhan)


-- Bảng THANH_VIEN


-- taiKhoan >= 0

ALTER TABLE [dbo].[THANH_VIEN] ADD CONSTRAINT [C_THANHVIEN_TAIKHOANTHE] CHECK (taiKhoan >= 0)


-- Bảng HOA_DON

-- giaTriHD > 0 

ALTER TABLE [dbo].[HOA_DON] ADD CONSTRAINT [C_HOA_DON_GIATRI] CHECK (giaTriHD > 0)

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
				IF @maQCNhapVao = @maQCTonTai        
				 ROLLBACK TRANSACTION	   
		END	 
	 
     