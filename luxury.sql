USE [master]
GO
/****** Object:  Database [LuxuryWatches]    Script Date: 6-12-2017 10:22:23 AM ******/
CREATE DATABASE [LuxuryWatches]
 CONTAINMENT = NONE
GO
ALTER DATABASE [LuxuryWatches] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LuxuryWatches].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LuxuryWatches] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LuxuryWatches] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LuxuryWatches] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LuxuryWatches] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LuxuryWatches] SET ARITHABORT OFF 
GO
ALTER DATABASE [LuxuryWatches] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LuxuryWatches] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LuxuryWatches] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LuxuryWatches] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LuxuryWatches] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LuxuryWatches] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LuxuryWatches] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LuxuryWatches] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LuxuryWatches] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LuxuryWatches] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LuxuryWatches] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LuxuryWatches] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LuxuryWatches] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LuxuryWatches] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LuxuryWatches] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LuxuryWatches] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LuxuryWatches] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LuxuryWatches] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LuxuryWatches] SET  MULTI_USER 
GO
ALTER DATABASE [LuxuryWatches] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LuxuryWatches] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LuxuryWatches] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LuxuryWatches] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LuxuryWatches]
GO
/****** Object:  Table [baiViet]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [baiViet](
	[maBV] [int] NOT NULL,
	[tenBV] [nvarchar](256) NOT NULL,
	[ngayDang] [datetime] NOT NULL CONSTRAINT [DF__baiViet__ngayDan__1B0907CE]  DEFAULT (getdate()),
	[tkThanhVien] [varchar](68) NOT NULL,
	[ndTomTat] [nvarchar](max) NULL CONSTRAINT [DF__baiViet__ndTomTa__1CF15040]  DEFAULT (''),
	[noiDungBV] [nvarchar](max) NULL CONSTRAINT [DF__baiViet__noiDung__1ED998B2]  DEFAULT (''),
	[soLanDoc] [int] NULL CONSTRAINT [DF__baiViet__soLanDo__20C1E124]  DEFAULT ((0)),
	[biDanh] [varchar](256) NOT NULL,
	[hinhDD] [varchar](270) NULL CONSTRAINT [DF__baiViet__hinhDD__1DE57479]  DEFAULT (''),
	[daDuyet] [bit] NOT NULL CONSTRAINT [DF__baiViet__daDuyet__1FCDBCEB]  DEFAULT ((0)),
 CONSTRAINT [PK__baiViet__7A3F66444012F23C] PRIMARY KEY CLUSTERED 
(
	[maBV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [chiTietDH]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [chiTietDH](
	[maDH] [int] NOT NULL,
	[maSP] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
	[KichCo] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[giaBan] [int] NOT NULL,
 CONSTRAINT [pk_maDHmaSP_ctDonHang] PRIMARY KEY CLUSTERED 
(
	[maDH] ASC,
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [donHang]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [donHang](
	[maDH] [int] IDENTITY(1,1) NOT NULL,
	[tenKH] [nvarchar](100) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[soDT] [nvarchar](88) NOT NULL,
	[diaChi] [nvarchar](468) NULL,
	[email] [nvarchar](246) NOT NULL,
	[tongSoLuong] [int] NOT NULL,
	[tongThanhTien] [int] NOT NULL,
	[tdDatHang] [datetime] NOT NULL,
	[daGiaoHang] [bit] NOT NULL,
	[tdGiaoHang] [datetime] NOT NULL,
	[ghiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK__donHang__7A3EF40F0C1C890C] PRIMARY KEY CLUSTERED 
(
	[maDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangSanXuat]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [HangSanXuat](
	[maHangSX] [varchar](10) NOT NULL,
	[tenHangSX] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HangSanXuat] PRIMARY KEY CLUSTERED 
(
	[maHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [hopThu]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [hopThu](
	[hopThuID] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](100) NOT NULL,
	[sdt] [varchar](20) NOT NULL,
	[email] [varchar](256) NOT NULL,
	[noiDung] [nvarchar](max) NOT NULL,
	[ngayGui] [datetime] NULL CONSTRAINT [DF_hopThu_ngayGui]  DEFAULT (getdate()),
	[daDuyet] [bit] NOT NULL CONSTRAINT [DF_hopThu_daDuyet]  DEFAULT ((0)),
	[tkDuyet] [varchar](68) NULL,
	[ghiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_hopThu] PRIMARY KEY CLUSTERED 
(
	[hopThuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [loaiSP]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [loaiSP](
	[maLoai] [varchar](10) NOT NULL,
	[tenLoai] [nvarchar](168) NOT NULL,
	[biDanh] [varchar](168) NOT NULL,
 CONSTRAINT [PK__loaiSP__E5A6B228267D0F2C] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [quyen]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [quyen](
	[maQuyen] [varchar](20) NOT NULL,
	[tenQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_quyen] PRIMARY KEY CLUSTERED 
(
	[maQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [sanPham]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sanPham](
	[maSP] [int] NOT NULL,
	[maLoai] [varchar](10) NOT NULL,
	[maHangSX] [varchar](10) NOT NULL,
	[tenSP] [nvarchar](468) NOT NULL,
	[ndTomTat] [nvarchar](max) NULL CONSTRAINT [DF__sanPham__ndTomTa__276EDEB3]  DEFAULT (''),
	[tkThanhVien] [varchar](68) NOT NULL,
	[giaBan] [int] NOT NULL,
	[daGiamGia] [int] NULL,
	[soLuong] [int] NOT NULL,
	[biDanh] [varchar](468) NOT NULL,
	[hinhDaiDien] [varchar](500) NULL CONSTRAINT [DF__sanPham__hinhDD__2E1BDC42]  DEFAULT (''),
	[soHinhKem] [int] NOT NULL CONSTRAINT [DF_sanPham_soHinhKem]  DEFAULT ((0)),
	[ndSanPham] [nvarchar](max) NULL CONSTRAINT [DF__sanPham__ndSanPh__2F10007B]  DEFAULT (''),
	[mauSac] [nvarchar](200) NULL,
	[kichCo] [nvarchar](200) NULL,
	[danhGia] [int] NULL,
	[soLanQT] [int] NOT NULL CONSTRAINT [DF__sanPham__soLanQT__30F848ED]  DEFAULT ((0)),
	[soLanGD] [int] NOT NULL CONSTRAINT [DF__sanPham__soLanGD__31EC6D26]  DEFAULT ((0)),
	[ngayDangSP] [datetime] NOT NULL CONSTRAINT [DF__sanPham__ngayDan__286302EC]  DEFAULT (getdate()),
 CONSTRAINT [PK__sanPham__7A227A7A0629E9FD] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [taiKhoan]    Script Date: 6-12-2017 10:22:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [taiKhoan](
	[tkThanhVien] [varchar](68) NOT NULL,
	[matKhau] [nvarchar](256) NOT NULL,
	[ngayCap] [datetime] NOT NULL CONSTRAINT [DF__taiKhoan__ngayCa__108B795B]  DEFAULT (getdate()),
	[maQuyen] [varchar](20) NULL,
	[hoTV] [nvarchar](36) NULL,
	[tenTV] [nvarchar](16) NOT NULL,
	[gioiTinh] [bit] NOT NULL CONSTRAINT [DF__taiKhoan__gioiTi__117F9D94]  DEFAULT ((1)),
	[hinhAnh] [varchar](70) NULL,
	[ngaySinh] [datetime] NOT NULL CONSTRAINT [DF__taiKhoan__ngaySi__1273C1CD]  DEFAULT ('1900/1/1'),
	[noiSinh] [nvarchar](36) NULL CONSTRAINT [DF__taiKhoan__noiSin__1367E606]  DEFAULT (''),
	[soDT] [varchar](15) NULL CONSTRAINT [DF__taiKhoan__soDT__145C0A3F]  DEFAULT (''),
	[eMail] [varchar](95) NULL CONSTRAINT [DF__taiKhoan__eMail__15502E78]  DEFAULT (''),
	[dcLienLac] [nvarchar](168) NULL CONSTRAINT [DF__taiKhoan__dcLien__164452B1]  DEFAULT (''),
	[duocSD] [bit] NOT NULL CONSTRAINT [DF__taiKhoan__duocSD__173876EA]  DEFAULT ((0)),
	[ghiChu] [ntext] NULL CONSTRAINT [DF__taiKhoan__ghiChu__182C9B23]  DEFAULT (''),
 CONSTRAINT [PK__taiKhoan__320AC06801824DC1] PRIMARY KEY CLUSTERED 
(
	[tkThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [baiViet] ([maBV], [tenBV], [ngayDang], [tkThanhVien], [ndTomTat], [noiDungBV], [soLanDoc], [biDanh], [hinhDD], [daDuyet]) VALUES (1, N'Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng', CAST(N'2017-12-05 10:53:41.400' AS DateTime), N'thienvu', N'Làm thế nào để tạo ra những chiếc đồng hồ kim loại có dây vỏ mạ vàng, màu đen, xanh, đỏ, hay có khả năng chống trầy xước? Để có được chiếc đồng hồ kim loại đẹp bền, rất nhiều phương thức đã được sử dụng, đứng hàng đầu trong số đó chính là những công nghệ xử lý bề mặt vật liệu kim loại….', N'<div class="content-article entry-content">
                                <div id="fsb-social-bar" class="fsb-social-bar fsb-no-float" data-post-id="73498" data-socialite="true"><style type="text/css">            #fsb-social-bar { width: 100%; border-bottom: 1px solid #dbdbdb; border-top: 1px solid #dbdbdb; padding: 10px 0; margin: 0px 0 20px 0; float: left; background: #fff; position: relative; clear: both; }            #fsb-social-bar a { border: 0px !important }            #fsb-social-bar.fsb-fixed { position: fixed; top: -2px; z-index: 99999; }            #fsb-social-bar .fsb-title { display: block; float: left; margin: 3px 20px 0 0; font-size: 16px; font-family: Arial, Helvetica, sans-serif; text-decoration: none; color: #333; }            #fsb-social-bar .fsb-share-facebook { width: 120px; float: left; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-facebook.fsb-hide-count { width: 44px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-twitter { float: left; width: 135px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-twitter.fsb-hide-count { width: 61px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-google { float: left; width: 105px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-google.fsb-hide-count { width: 33px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-linkedin { float: left; width: 135px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-linkedin.fsb-hide-count { width: 61px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-pinterest { float: left; width: 115px; padding: 3px 0 2px; height: 25px;}            #fsb-social-bar .fsb-share-pinterest.fsb-hide-count { width: 43px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .socialite { display: block; position: relative; background: url(http://cdn3.dhht.vn/wp-content/plugins/floating-social-bar/images/fsb-sprite.png) no-repeat scroll 0 0; }            #fsb-social-bar .socialite-loaded { background: none !important; }            #fsb-social-bar .fsb-service-title { display: none; }            #fsb-social-bar a { color: #333; text-decoration: none; font-size: 12px; font-family: Arial, Helvetica, sans-serif; }            #fsb-social-bar .fsb-twitter { width: 105px; height: 25px; background-position: -13px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-twitter .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 69px; color: #333; }            #fsb-social-bar .fsb-google { width: 75px; height: 25px; background-position: -136px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-google .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 41px; color: #333; }            #fsb-social-bar .fsb-google .socialite-button { margin: 0 !important; }            #fsb-social-bar .fsb-share-google .socialite-loaded .socialite-button{padding: 2px 0 0}            #fsb-social-bar .fsb-facebook { width: 89px; height: 25px; background-position: -231px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-facebook .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 52px; color: #333; }            #fsb-social-bar .fsb-facebook .socialite-button { margin: 0 !important;}            #fsb-social-bar .fsb-share-facebook .socialite-loaded .socialite-button {padding: 2px 0 0}            #fsb-social-bar .fsb-linkedin { width: 105px; height: 25px; background-position: -347px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-linkedin .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 70px; color: #333; }            #fsb-social-bar .fsb-linkedin .socialite-button { margin: 0 !important; }            #fsb-social-bar .fsb-pinterest { width: 88px; height: 25px; background-position: -484px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-pinterest .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 50px; color: #333; }            #fsb-social-bar .fsb-pinterest .socialite-button { margin: 0 !important; }            .fsb-clear { clear: both; }            .fsb-clear:after { clear:both; content:; display:block; height:0; line-height:0; overflow:auto; visibility:hidden; zoom:1; }            @media (max-width: 768px) { #fsb-social-bar.fsb-fixed { position: relative !important; top: auto !important; } }        </style><span class="fsb-title">Like:</span><div class="fsb-share-google"><div class="socialised googleplus socialite-loaded"><div class="socialite-button"><div id="___plusone_0" style="text-indent: 0px; margin: 0px; padding: 0px; background: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 32px; height: 20px;"><iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 32px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" width="100%" id="I0_1512445999495" name="I0_1512445999495" src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;fsb-service=google&amp;size=medium&amp;wpel-link=internal&amp;origin=http%3A%2F%2Fdonghohaitrieu.com&amp;url=http%3A%2F%2Fdonghohaitrieu.com%2Ftin-tuc%2Fdong-ho%2Ftu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang.html&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.vi.aeA1OsVd-UE.O%2Fm%3D__features__%2Fam%3DAQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCOwJZiQo0xUorDwk-sDteO9x4w5LA#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh%2Conload&amp;id=I0_1512445999495&amp;_gfid=I0_1512445999495&amp;parent=http%3A%2F%2Fdonghohaitrieu.com&amp;pfname=&amp;rpctoken=25436515" data-gapiattached="true" title="G+"></iframe></div></div></div></div><div class="fsb-share-facebook"><div class="socialised facebook socialite-loaded"><div class="socialite-button"><div class="fb-like fb_iframe_widget" data-fsb-service="facebook" data-href="http://donghohaitrieu.com/tin-tuc/dong-ho/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang.html" data-send="false" data-layout="button_count" data-width="60" data-show-faces="false" data-wpel-link="internal" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=191131454393590&amp;container_width=120&amp;href=http%3A%2F%2Fdonghohaitrieu.com%2Ftin-tuc%2Fdong-ho%2Ftu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang.html&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=60"><span style="vertical-align: bottom; width: 61px; height: 20px;"><iframe name="f1188b1317117c" width="60px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:like Facebook Social Plugin" src="https://www.facebook.com/plugins/like.php?app_id=191131454393590&amp;channel=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FlY4eZXm_YWu.js%3Fversion%3D42%23cb%3Df715a0416c22c8%26domain%3Ddonghohaitrieu.com%26origin%3Dhttp%253A%252F%252Fdonghohaitrieu.com%252Ff1bfa1c330bee18%26relation%3Dparent.parent&amp;container_width=120&amp;href=http%3A%2F%2Fdonghohaitrieu.com%2Ftin-tuc%2Fdong-ho%2Ftu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang.html&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=60" style="border: none; visibility: visible; width: 61px; height: 20px;" class=""></iframe></span></div></div></div></div></div><div class="fsb-clear"></div><p style="text-align: justify;"><span style="font-size: 12pt;"><em><strong><span style="font-family: times new roman, times, serif;">Bạn gặp rắc rối khi tìm hiểu về đồng hồ Rolex, chơi đồng hồ Rolex chính hãng? Ngay sau đây chính là bộ từ điển thuật ngữ đồng hồ Rolex Thụy Sỹ chính hãng giải thích những khái niệm, kiến thức, tiếng lóng hoặc những gì có liên quan đến Rolex thường gặp.</span></strong></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng</span></strong></span></h2>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">Chắc chắn, chơi <a href="http://donghohaitrieu.com" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>đồng hồ</strong></em></a> Rolex Thụy Sỹ chính hãng là một trong những thú vui có cộng đồng người tham gia đông đảo nhất. Và cách dễ nhất để săn hàng, tìm hiểu thông tin khi chơi đồng hồ hiệu Rolex đó chính là đọc thông tin trên các trang web, blog uy tín. </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73543" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Datejust-ref1601-Pie-Pan-dial.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng 1" width="600" height="394" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Datejust-ref1601-Pie-Pan-dial.jpg 1000w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Datejust-ref1601-Pie-Pan-dial-600x394.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Datejust-ref1601-Pie-Pan-dial-100x66.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Datejust-ref1601-Pie-Pan-dial-261x171.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Chơi đồng hồ Rolex Thụy Sỹ chính hãng ngoài đam mê thì còn có thể kiếm lời rất lớn</em><br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">Tất nhiên, phần lớn chúng đều là những thuật ngữ, tiếng lóng tiếng nước ngoài (tiếng Anh). Để tham gia vào cộng đồng người chơi đồng hồ đồng hồ Rolex Thụy Sỹ chính hãng trên khắp thế giới, bắt buộc bạn phải biết-hiểu càng nhiều càng tốt những khái niệm, thuật ngữ, tiếng lóng này.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">Và bài viết hôm nay sẽ hỗ trợ cho bạn khám phá, tra cứu ý nghĩa thuật ngữ tiếng Anh để dễ dàng hơn khi chơi hoặc tìm hiểu về đồng hồ Rolex [bên ngoài Việt Nam].</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Từ Điển Đồng Hồ Rolex: Giải Nghĩa Thuật Ngữ, Khái Niệm Tiếng Lóng, Từ Viết Tắt</span></strong></span></h2>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">904L:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Hợp kim thép không gỉ đặc biệt được Rolex dùng để chế tạo đồng hồ của mình. Nó rất đặc và cứng, khả năng chống ăn mòn cao hơn loại 316L phổ biến trên hầu hết đồng hồ thép không gỉ hiện nay. Rolex cũng là công ty đồng hồ duy nhất sử dụng thép không gỉ 904L.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Acrylic Crystal:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Kính nhựa – kính cho đồng hồ Rolex chính hãng Thụy Sĩ trước đây được làm từ vật liệu nhựa Poly(methyl methacrylate). Kính nhựa có khả năng chống vỡ tốt và dễ dàng đánh bóng.</span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/rolex-la-thuong-hieu-dong-ho-co-gia-tri-nhat-the-gioi.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignleft wp-image-58695 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-3.gif" alt="Rolex Là Thương Hiệu Đồng Hồ Có Giá Trị Nhất Thế Giới" width="299" height="89" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-3.gif 299w,  http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-3-100x30.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-3-261x78.gif 261w" sizes="(max-width: 299px) 100vw, 299px"></a>﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀</span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><strong>Bạn có biết</strong> <span style="color: #ff6600;">►</span> <a href="http://donghohaitrieu.com/tin-tuc/dong-ho/rolex-la-thuong-hieu-dong-ho-co-gia-tri-nhat-the-gioi.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>Rolex Là Thương Hiệu Đồng Hồ Có Giá Trị Nhất Thế Giới</strong></em></a></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿<br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Aftermarket:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Bất kỳ bộ phận nào được có thể ráp vào đồng hồ Rolex được tạo ra bởi một công ty không phải Rolex, ví dụ như: kính, bezel, mặt số, …</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Anodized Aluminum:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ bezel inserts (vòng số của bezel) được làm bằng nhôm đã anod hóa trên dòng Submariners và GMT trước đây. Vật liệu này hiện nay đã được thay thế bởi Cerachrome.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Arabic:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Đề cập đến các cọc số (có thể là tất cả hoặc chỉ vài vị trí) được thể hiện bằng chữ số Ả Rập (tức số học trò: 1, 2, 3…12…). &nbsp;</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Arrowhead:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Đề cập đến hình dáng kim đồng hồ hoặc cọc số có đầu là mũi tên, kiểu dáng này thường thấy trên đồng hồ Rolex cổ điển.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Automatic:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ các mẫu đồng hồ vận hành bằng bộ máy cơ tự động lên dây cót khi tay đeo chuyển động. Tuy nhiên, ở đồng hồ Rolex Thụy Sĩ chính hãng thì từ “Perpetual” được dùng thay cho từ “Automatic”.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Bark Finish:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73520 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Bark-Finish.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Bark Finish" width="600" height="450" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Bark-Finish.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Bark-Finish-100x75.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Bark-Finish-261x196.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Bark Finish – Trang trí mô phỏng vỏ cây</em><span style="color: #d90000;"><br>
 </span></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Kiểu trang trí hoàn thiện trên một số dây đeo, bezel của dòng President để chúng trông giống vỏ cây. Hiện Rolex đã không còn sử dụng kiểu trang trí này nữa.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Batman (hoặc 116710):</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73533 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Batman-GMT-Master-II-116710BLNR.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Rolex GMT II Batman" width="600" height="352" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Batman-GMT-Master-II-116710BLNR.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Batman-GMT-Master-II-116710BLNR-100x59.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Batman-GMT-Master-II-116710BLNR-261x153.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Phiên bản Rolex GMT II Batman</em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ các mẫu GMT II có bezel gốm hai màu đen và xanh dương.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Baton:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Loại kim đồng hồ có hình chữ nhật dài, không có đầu nhọn, có thể trang bị rãnh phủ dạ quang hoặc không.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Bevel:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Cạnh bén của vỏ, thường bị loại bỏ bằng nhiều lần đánh bóng. Chỉ có số ít đồng hồ cổ dành cho chuyên nghiệp nào đó mới còn những góc sắc này nên nó rất được săn lùng bởi các nhà sưu tập.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Bezel:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức viền đồng hồ, là vòng kim loại bao quanh mặt kính. Bezel có thể là một khối liền hoặc ghép từ vài chi tiết.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Bezel Insert:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Vòng số của bezel, là vòng có khung đo, chỉ số, vạch cho các chức năng ví dụ như theo dõi thời gian trôi qua (cho lặn), đồng hồ 24 giờ, … của bezel và có thể tháo rời khỏi bezel.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Black:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thường được dùng để mô tả màu mặt số hoặc màu của bezel inserts (vòng số của bezel).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Blades (hoặc Wings):</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Phần trong của khóa gấp. Thường dùng để chỉ miếng kim loại nằm giữa hai miếng gấp của khóa.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Blue:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Dùng để mô tả màu mặt số hoặc màu của bezel inserts (vòng số của bezel).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Blueberry:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tiếng lóng dùng cho tất cả bezel inserts (vòng số của bezel) có màu xanh dương (rất hiếm thấy) trên dòng GMT và GMT II.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Bombay Lugs:</span></strong></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;"><span style="color: #d90000;"><img class="aligncenter wp-image-73536 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-RolexPerpetual-Bombay-lugs.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Vấu Bombay" width="482" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-RolexPerpetual-Bombay-lugs.jpg 482w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-RolexPerpetual-Bombay-lugs-96x100.jpg 96w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-RolexPerpetual-Bombay-lugs-252x261.jpg 252w" sizes="(max-width: 482px) 100vw, 482px"></span>Vấu đồng hồ tròn trơn nhẵn kiểu Bombay</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Kiểu vấu (quai đề gắn dây) được bo tròn các khối cạnh vuông vức kể cả các mép sát thân vỏ trên các mẫu Vintage (xuất hiện từ 1940) cho phép chúng trở nên trang nhã hơn. Từ Bombay xuất phát từ tiếng Pháp bomé có nghĩa là tròn hoặc lồi nhưng sau đó được Mỹ hóa và trở thành Bombay như hiện nay. </span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/dieu-gi-da-giup-rolex-tro-thanh-vua-cua-dong-ho-thuy-sy.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignleft wp-image-57227 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-14x.gif" alt="Điều Gì Đã Giúp Rolex Trở Thành &quot;Vua&quot; Của Đồng Hồ Thụy Sỹ" width="300" height="100" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-14x.gif 300w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-14x-100x33.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-14x-261x87.gif 261w" sizes="(max-width: 300px) 100vw, 300px"></a>﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀</span></p>
<p style="text-align: center;"><span style="text-decoration: underline; font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;">Khám phá ngay:</span></strong></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/dieu-gi-da-giup-rolex-tro-thanh-vua-cua-dong-ho-thuy-sy.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong><span style="font-family: times new roman, times, serif;">Điều Gì Đã Giúp Rolex Trở Thành “Vua” Của Đồng Hồ Thụy Sỹ</span></strong></em></a></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿<br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Box &amp; Papers:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ đề cập đến hộp và giấy tờ bảo hành chính hãng có được khi mua đồng hồ Rolex Thụy Sỹ chính hãng từ các nhà bán lẻ chính thức của Rolex. Đây là thứ mà những người mua lại thích vì nó làm cho chiếc đồng hồ hoàn chỉnh và có nguồn gốc rõ ràng.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Bracelet:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức dây kim loại hay các loại dây bằng chất liệu cứng nói chung. Phân biệt với “strap” chỉ dây da, dây vải, dây hay các dây bằng chất liệu mềm nói chung.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Bubble Back:</span></strong></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;"><img class="aligncenter wp-image-73542 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-bubble-back.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Bubble Back - Nắp Đáy Lồi" width="600" height="387" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-bubble-back.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-bubble-back-100x65.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-bubble-back-261x168.jpg 261w" sizes="(max-width: 600px) 100vw, 600px">Bubble Back – Nắp Đáy Lồi<br>
 </span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Là Nắp Đáy Lồi, kiểu nắp đáy/nắp lưng cong tròn chứ không phẳng trên các mẫu Rolex tự động cổ.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Buckles (hoặc Ardillon):</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Khóa gài kim truyền thống.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Cellini:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Một dòng đồng hồ thanh lịch (dress watch) của Rolex, khả năng chịu nước thông thường đi kèm dây đeo da.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Cerachrom:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Một loại vật liệu gốm composite dùng để làm bezel inserts (vòng số của bezel) trên các dòng GMT, Submariner và Daytona. Ưu điểm nổi bật của Cerachrom so với gốm kỹ thuật thông thường đó là có khả năng tạo nhiều màu sắc (Tên Cerachrom xuất phát từ sự rút gọn của từ Ceramic (gốm) và Chrom (màu sắc trong tiếng Hy Lạp)).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Ceramic (Cerachrom):</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Vật liệu gốm composite để làm viền (bezel) cho các mẫu đồng hồ hiện đại (trên dòng GMT, Submariner và Daytona).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Coke Dial (Coke):</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tiếng lóng chỉ bezel inserts (vòng số của bezel) có màu đỏ và màu đen (trên dòng GMT và GMT II).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Crown Guard:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Gờ bảo vệ núm chỉnh, là hai phần kim loại trên và dưới núm chỉnh để bảo vệ nó khỏi bị hư hỏng, thường thấy trên một chiếc đồng hồ Rolex Thụy Sĩ chính hãng dành cho chuyên nghiệp.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Crystal:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ mặt kính của đồng hồ. Đồng hồ Rolex Thụy Sỹ chính hãng được sản xuất từ cuối những năm 80 trở lại đây được làm từ Sapphire nguyên khối, trong khi đó, những năm 90 trở về trước dùng xen lẫn kính nhựa, sapphire.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Cyclops:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ chỉ lớp kính phóng đại, phần gồ lên khỏi mặt kính ở vị trí Lịch Ngày có thể gặp trên hầu hết đồng hồ Rolex. Cyclops của Rolex có thể phóng to hình ảnh gấp 2.5 lần.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Date:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Lịch Ngày, tính năng phổ biến nhất cho hầu hết các mô hình Rolex, nó cho biết ngày của tháng ở dạng số ở thời điểm 3 giờ.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Datejust:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thiết kế đồng hồ “đặc trưng” (stereotypical) của Rolex. Đây là thiết kế mà hầu hết mọi người nghĩ đến khi họ nghe thấy từ Rolex. Dòng này ngoài giờ-phút-giây thì có thêm Lịch Ngày.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Daytona Cosmograph (Daytona):</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ các mẫu Rolex tự động có chức năng Chronograph thuộc dòng Daytona được sản xuất từ ​​năm 1963.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Dial:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức mặt số, mặt đồng hồ, nơi để xem thời gian.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Diamond Dial:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ mặt số đồng hồ có sử dụng kim cương làm cọc số, dấu hiệu…</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Diamond Bezel:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ viền đồng hồ có khảm kim cương.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Deep Sea:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Dòng đồng hồ lặn chuyên nghiệp có khả năng chịu nước đến độ sâu lớn nhất hiện nay của Rolex, sâu hơn rất nhiều so với dòng Submariner.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Face:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức mặt số, mặt đồng hồ, nơi để xem thời gian</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Florentine finish:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;"><img class="aligncenter wp-image-73537 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-President-18038-Florentine-Finish.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Florentine Finish" width="600" height="284" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-President-18038-Florentine-Finish.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-President-18038-Florentine-Finish-100x47.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-President-18038-Florentine-Finish-261x124.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"></span><em>Cận cảnh họa tiết Florentine Finish trên dây và vỏ đồng hồ Rolex<br>
 </em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Một họa tiết hiếm gặp trông giống họa tiết khắc chéo song song trên vỏ và dây đeo của một số mẫu Rolex President.</span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><span style="font-family: times new roman, times, serif; font-size: 12pt;">&nbsp;</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Genuine:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chính hãng, sản phẩm được trực tiếp sản xuất bởi Rolex.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Gilt:</span></strong></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;"><img class="alignnone wp-image-73523 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-gilt.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Gilt" width="500" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-gilt.jpg 500w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-gilt-100x100.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-gilt-261x261.jpg 261w" sizes="(max-width: 500px) 100vw, 500px"><br>
 Cận cảnh các kẻ viền được in bằng vàng</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Đề cập đến các chi tiết kẻ viền được in (mực in là vàng) mà không phải linh kiện rời trên mặt số.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Glossy:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Đề cập đến lớp phủ tạo độ bóng cho mặt số hoặc mặt số có lớp phủ bóng.</span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/10-dieu-quan-trong-khi-phan-biet-dong-ho-rolex-gia.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignright wp-image-57223 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-10x.gif" alt="10 Điều Quan Trọng Khi Phân Biệt Đồng Hồ Rolex Thật Giả" width="300" height="84" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-10x.gif 300w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-10x-100x28.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-10x-261x73.gif 261w" sizes="(max-width: 300px) 100vw, 300px"></a>︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾</p>
<p style="text-align: center;"><span style="text-decoration: underline; font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;">Bạn có biết?</span></strong></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/10-dieu-quan-trong-khi-phan-biet-dong-ho-rolex-gia.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong><span style="font-family: times new roman, times, serif;">10 Điều Quan Trọng Khi Phân Biệt Đồng Hồ Rolex Thật Giả</span></strong></em></a></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">GMT:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Viết tắt của “Greenwich Mean Time” tức “Thời gian trung bình tại Greenwich”. Đây là một chức năng cho phép xem thời gian ở nhiều múi giờ (nhiều nơi) khác nhau.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Gold through clasp:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73524 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Gold-through-clasp.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Gold through clasp" width="600" height="413" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Gold-through-clasp.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Gold-through-clasp-100x69.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Gold-through-clasp-261x180.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Gold through clasp – Khóa dây có dải vàng ở giữa nắp khóa<br>
 </em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ đề cập đến các mẫu Rolex Submariner 16113 được nâng cấp khóa thép không gỉ thành khóa thép với dải vàng 18K ở giữa nắp khóa.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Green:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Màu sắc Rolex sử dụng để “ăn mừng” một sự kiện. Ví dụ như bezel inserts (vòng số của bezel) màu xanh lá cây cho mẫu Submariner kỷ niệm 50 năm ngày ra đời, mặt kính màu xanh lá cây trên 50th Anniversary Milgauss…</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Hack:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chức năng dừng chạy kim giây khi rút núm chỉnh (chốt) đến vị trí chỉnh thời gian.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Head:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Mặt đồng hồ, tức mọi thứ của đồng hồ trừ dây đeo.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Helium Escape Valve:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Van thoát khí Helium (van helium), một van tự động mở ra để khí Helium tích tụ trong vỏ đồng hồ khi lặn xuống sâu (nơi có nhiều khí Helium) có thể thoát ra nếu chúng quá đầy. Van Helium hiện có trên hai dòng SeaDwellers và DeepSeas. (Nếu không cho khí Helium thoát ra, mặt kính đồng hồ sẽ bị bật tung ra).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">High polish:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; High polish còn gọi là đánh bóng gương, một phương pháp hoàn thiện bằng cách đánh bóng dây, vỏ, bezel, … đến mức hình ảnh có thể được phản chiếu như gương.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Holes Case:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ các mẫu có vỏ với phần vấu (quai gắn dây) của nó có lỗ ở mặt ngoài.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Hulk</span> (hoặc 116610)</span><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;"><img class="aligncenter wp-image-73545 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-hulk.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Hulk " width="500" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-hulk.jpg 500w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-hulk-100x100.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-hulk-261x261.jpg 261w" sizes="(max-width: 500px) 100vw, 500px">Hulk tức mặt số cùng bezel màu xanh lá cây</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Nickname (biệt hiệu) dành cho các mẫu có mặt số cùng bezel màu xanh lá cây.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Index:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Đề cập đến các vạch chỉ thời gian (không phải số hoặc chữ) hoặc mặt số sử dụng vạch chỉ, mặt tiêu chuẩn trên đồng hồ Rolex Thụy Sỹ chính hãng.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Jewels:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Là chân kính, bộ phận được làm bằng hồng ngọc, kim cương và sapphire) có trong bộ máy để giảm ma sát trên trục của bánh răng và kéo dài tuổi thọ của máy.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">L.N.I.B.</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tiếng lóng viết tắt từ “like new in box” &nbsp;– “như mới trong hộp”.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">LocTite</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Loại keo phủ lên các ren vặn của ốc vít để giữ chúng cổ định.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Lollypop</span> (hoặc Lollipop)<span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ điểm phủ dạ quang ở phần đầu của kim giây.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Luminova:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Vật liệu dạ quang không phóng xạ sơn trên các kim, cọc số trên tất cả mặt số đồng hồ Rolex Thụy Sỹ chính hãng kể từ năm 1998-2000. Luminova là sản phẩm của công ty Nemoto Nhật Bản, phát sáng khi được tiếp xúc ánh sáng mặt trời (hoặc nhân tạo).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Manual:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ bộ máy/đồng hồ cần phải lên dây cót bằng tay mới chạy được.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Masterpiece:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Hiểu như “kiệt tác”, thuật ngữ cộng đồng chơi đồng hồ Rolex Thụy Sỹ dành cho dòng Pearlmaster – phiên bản Day-Date và DateJust vàng khối bổ sung nhiều viên đá quý cỡ lớn.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Maxi Dial:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Có nghĩa là mặt số với các cọc số lớn, chủ yếu được sử dụng trong dòng Submariner và GMT.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Mint:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Đề cập mẫu đồng hồ vẫn còn giữ được tình trạng chưa sửa chữa thay đổi gì nhưng có thể đã trải qua đánh bóng hoặc chăm sóc bảo trì.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">MK 1, MK 2, … :</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ của người sưu tập để phân biệt sự thay đổi mặt số theo thời gian. Nói chung giới hạn trong các dòng chuyên nghiệp. Thay đổi bao gồm sự khác biệt font chữ, kích cỡ phông chữ, gilt/non gilt, …</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Morellis finish:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;"><img class="aligncenter wp-image-73534 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Day-Date-Vintage-1807-Morellis-Finish-114405.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Morellis Finish" width="422" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Day-Date-Vintage-1807-Morellis-Finish-114405.jpg 422w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Day-Date-Vintage-1807-Morellis-Finish-114405-84x100.jpg 84w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Day-Date-Vintage-1807-Morellis-Finish-114405-220x261.jpg 220w" sizes="(max-width: 422px) 100vw, 422px"></span><em> Cận cảnh vỏ đồng hồ trang trí bằng họa tiết Morellis</em> </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Một họa tiết hiếm gặp trông giống họa tiết khắc chéo song song trên vỏ và dây đeo của một số mẫu thuộc dòng President.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Movement:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Bộ máy, phần “ruột” của đồng hồ, mang đến các hoạt động của đồng hồ.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">New</span> (hoặc Unworn)<span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Đề cập mẫu đồng hồ có hộp và giấy tờ, còn thẻ nhựa và chưa qua sử dụng được mua tại các điểm bán lẻ của Rolex.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">No Date</span> (Non-Date)<span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Ám chỉ mẫu đồng hồ này không có Lịch Ngày. </span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀</span></p>
<p style="text-align: center;"><span style="text-decoration: underline; font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;">Cùng khám phá:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/lich-su-dong-ho-tudor-lay-tieu-chuan-tu-thuong-hieu-rolex.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignnone wp-image-57417 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-k7.gif" alt="Lịch Sử Đồng Hồ Tudor: “Lấy Tiêu Chuẩn Từ Thương Hiệu Rolex”" width="100" height="30"></a> <a href="http://donghohaitrieu.com/tin-tuc/dong-ho/lich-su-dong-ho-tudor-lay-tieu-chuan-tu-thuong-hieu-rolex.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>Lịch Sử Đồng Hồ Tudor: “Lấy Tiêu Chuẩn Từ Thương Hiệu Rolex”</strong></em></a></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿<br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">No holes case:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73529 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-No-holes-case-vs-hole-case.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng No holes case và Hole case" width="600" height="398" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-No-holes-case-vs-hole-case.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-No-holes-case-vs-hole-case-100x66.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-No-holes-case-vs-hole-case-261x173.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Phân biệt No holes case và Hole case<br>
 </em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ các mẫu có vỏ với phần vấu (quai gắn dây) của nó không có lỗ ở mặt ngoài.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">N.O.S.:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tiếng lóng viết tắt từ “new, old stock” dùng để chỉ cho các bộ phận chưa bao giờ được bán ra nhưng không phải sản phẩm mới nhất. <br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Fat lady</span> (hoặc 16760 hay Sophia Loren)<span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Biệt danh của mẫu Rolex GMT-Master II có Bezel hai màu đỏ và đen do bộ vỏ to dày hơn phiên bản tiền nhiệm.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">James Bond:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức mẫu Submariner Oyster Perpetual được sử dụng như “knuckle duster” (quả đấm sắt/tay gấu) trong sách gốc và cũng được diễn viên Ian Flemming đeo trong một số phần đầu của loạt 007.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Kermit</span> (hoặc 16610lv)<span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73526 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Kermit-16610lv.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Kermit" width="500" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Kermit-16610lv.jpg 500w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Kermit-16610lv-100x100.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Kermit-16610lv-261x261.jpg 261w" sizes="(max-width: 500px) 100vw, 500px"><em>Phiên bản&nbsp;Submariner kỷ niệm 50 năm với Bezel “Kermit”</em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Đề cập đến bezel màu xanh bản gốc (xanh nõn, xanh lá nhạt) của Submariner 16610lv phiên bản kỷ niệm 50 năm.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Oyster:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ loại dây đeo (kim loại) có dải mắt kích thước lớn ở trung tâm, hay gặp trên các mẫu đồng hồ Rolex thể thao.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Panda:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ của dân sưu tầm đề cập đến màu sắc của mặt số với phần lớn bề mặt là trắng trong khi các mặt số phụ màu đen. Thuật ngữ này thường được dành riêng cho Rolex Daytona.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Papa Smurf</span> (hoặc 116618)<span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ các mẫu Submariner 116618 có mặt số cùng bezel màu xanh dương.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Paul Newman:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức Rolex Ref. 6239, mẫu đồng hồ Daytona lên dây thủ công có mặt số trắng trong khi các mặt số phụ màu đen mà Paul Newman được vợ Joanne Woodward tặng khi họ đóng chung trong bộ phim “Winning” năm 1969.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">President</span> (Presidential hoặc Day Date )<span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ loại dây đeo (kim loại) dành cho đồng hồ sang trọng với các mắt ngắn hơn loại Oyster và chỉ được làm bằng vàng khối.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Pussy Galore </span></strong></span><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;">(hoặc 6542)</span></strong></span><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Phiên bản GMT được đặt tên theo “bond girl” đã đeo nó trong phần “Goldfinger” của loạt 007.</span></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Overhaul:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức “đại tu”, chỉ các mẫu đã trải qua dịch vụ chăm sóc bảo dưỡng máy, tháo gỡ, làm sạch, lắp ráp lại, lau dầu, tinh chỉnh độ chính xác.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Patina:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ dùng bởi người sưu tập có nghĩa là sự biến đổi màu sắc theo tuổi thọ của đồng hồ. Điều này thường được xem là tốt chứ không phải hư hại. Mặt số và kim là nơi chủ yếu xảy ra hiện tượng patina.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">PCG:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Viết tắt của “pointed crown guards”, chỉ hai gờ bảo vệ núm chỉnh có dạng khối nhọn đầu trên các mẫu Rolex cổ. (các mẫu hiện đại có gờ bảo vệ đầu nhẵn).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Pepsi:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;"><img class="aligncenter wp-image-73546 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pepsi-1.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Bezel Pepsi " width="600" height="400" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pepsi-1.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pepsi-1-100x67.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pepsi-1-261x174.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"></span><em>Bezel Pepsi xanh-đỏ bắt nguồn từ Rolex GMT</em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tiếng lóng chỉ bezel inserts (vòng số của bezel) có màu xanh dương và màu đỏ (trên dòng GMT và GMT II).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Pierced lugs:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Các lỗ gắn dây (gắn chốt dây) trên vấu của đồng hồ Rolex sản xuất trước năm 2000.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif; color: #d40000;">Pink </span><span style="font-family: times new roman, times, serif;">(hoặc Rose)</span><span style="font-family: times new roman, times, serif; color: #d40000;">:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Dùng để mô tả các mẫu mặt số có có màu hồng hoặc tiếng lóng chỉ các mẫu đồng hồ bằng vàng hồng 18K.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Quartz:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ đồng hồ sử dụng máy quartz (thạch anh/máy pin), cần pin để hoạt động.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Radium:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chất phóng xạ tự phát sáng được sơn trên kim và các cọc số của các mẫu đồng hồ đồng hồ Rolex Thụy Sỹ chính hãng “vintage” sản xuất trước những năm 1950.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Rehaut:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;"><img class="aligncenter wp-image-73531 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rehaut.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Rehaut" width="600" height="418" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rehaut.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rehaut-100x70.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rehaut-261x182.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"></span><em>Rehaut là vòng trang trí nằm giữa mặt kính và mặt số</em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ chỉ vòng nằm giữa mặt kính và mặt số (cũng nằm giữa bezel và mặt số, trên vòng này có khắc chữ “ROLEX” lặp đi lặp lại (có thể có thêm một số chữ khác).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Rolesor:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Khái niệm đã được cấp bằng sáng chế của Rolex có nghĩa là thép không gỉ và vàng (yellow gold) trên cùng một mẫu đồng hồ.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Rolesium:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Khái niệm đã được cấp bằng sáng chế của Rolex có nghĩa thép không gỉ và bạch kim trên cùng một mẫu đồng hồ (dành cho dòng Yachtmaster).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Roman:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ các cọc số thể hiện bằng số La Mã, ví dụ như “I”, “II”, …, “IIII”, …, “VIII”, …, “X”, …</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Root Beer:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tiếng lóng chỉ bezel inserts (vòng số của bezel) có màu nâu và vàng trên các mẫu GMT và GMT II.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Sapphire crystal:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức kính Sapphire, loại kính chống trầy gần như tuyệt đối được làm bằng Sapphire nguyên khối tổng hợp từ Al2O3, cắt xéo 45 độ để làm nó mạnh mẽ hơn (thay vì cắt ngẫu nhiên). Nhược điểm là nó không thể đánh bóng.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Satin:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức chải xước, cách hoàn thiện xử lý (bằng cách tạo ra vô số vết xước cực mảnh) thường áp dụng cho dây, vỏ để bề mặt của chúng trông mịn màng hơn.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Spider Dial:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tiếng lóng của những người chơi đồng hồ Rolex Thụy Sĩ chỉ những mặt số màu đen với lớp phủ bóng (Glossy) bị nứt trông giống như mạng nhện hoặc lớp men rạn. Loại này thường là dòng Rolex Submariner.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d40000;"><strong>Stainless Steel</strong></span> <strong>(SS)<span style="color: #d40000;">:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức thép không gỉ, nói chung thuật ngữ này dùng để nói những gì trong đồng hồ không chứa vàng hay kim loại quý.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Steve Mcqueen:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ các mẫu Explorer II có kim GMT màu cam (phong cách nguyên bản) mà Steve Mcqueen đã dùng trong bộ phim “Le Mans”.<br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Stick:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Một dạng cọc số hoặc kim có dạng que thẳng, mảnh.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Sub-dial:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Mặt phụ, mặt số phụ, thường là các vòng tròn nhỏ trên mặt số cho biết các chức năng bổ sung, đa số được dập chìm so với mặt chính. Hầu hết là các mẫu có mặt phụ thuộc dòng Daytona nhưng cũng có một số mẫu dòng Cellini cho biết giây bằng mặt phụ.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Submariner</span> (hoặc Sub)<span style="color: #d40000;">:</span></span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Submariner là một trong những thiết kế đồng hồ phổ biến nhất của Rolex hiện nay. Giới thiệu lần đầu năm 1954, Submariner được tạo ra cho thợ lặn với khả năng chịu nước cao cùng các tính năng hỗ trợ lặn an toàn hơn. Dòng này cũng là biểu tượng trong mảng thể thao của Rolex.</span></p>
<p style="text-align: center;">&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/lich-su-dong-ho-rolex-submariner-mot-huyen-thoai-lan-sang-trong-moi-thoi-dai.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignright wp-image-57225 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x.gif" alt="Lịch Sử Đồng Hồ Rolex Submariner" width="291" height="63" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x.gif 291w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x-100x22.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x-261x57.gif 261w" sizes="(max-width: 291px) 100vw, 291px"></a>︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾</span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">Xem ngay: <a href="http://donghohaitrieu.com/tin-tuc/dong-ho/lich-su-dong-ho-rolex-submariner-mot-huyen-thoai-lan-sang-trong-moi-thoi-dai.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>Lịch Sử Đồng Hồ Rolex Submariner</strong></em></a> <span style="color: #ff6600;">◄</span> ◄ ◄ Huyền Thoại!</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Super-Luminova:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Vật liệu dạ quang sáng lâu trang bị cho đồng hồ Rolex sản xuất từ năm 2000-2008. Đây là loại phiên bản dạ quang Luminova sản xuất tại Thụy Sĩ do RC TRITEC liên doanh với Nemoto sản xuất. Cũng như Luminova, Super-Luminova phát sáng không phóng xạ với cơ chế hoạt động tương tự.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Thunderbird:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Chỉ bezel nguyên bản của dòng turn-o-graph, cái tên này được đặt theo Air Force Acrobatic Team của Anh (còn được biết đến với cái tên phi đội bay nhào lộn Red Arrows).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Tritium:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;"><img class="aligncenter wp-image-73548 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-tritium.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Tritium Swiss - T <25" width="600" height="406" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-tritium.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-tritium-100x68.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-tritium-261x177.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"></span><em>Mặt số sử dụng Tritium với ký hiệu Swiss – T &lt;25</em></span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Vật liệu dạ quang phóng xạ, không cần tiếp xúc ánh sáng hay điện mà vẫn phát sáng liên tục trong khoảng 25 năm kể từ khi sản xuất hoàn chỉnh. Tritium được dùng nhiều trong thập niên 50-90. Đồng hồ Rolex sử dụng dạ quang phóng xạ Tritium sẽ có ký hiệu Swiss – T &lt;25 hoặc T Swiss T hoặc T Swiss – T &lt;25.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Tropical Dial:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ của người sưu tập, chơi đồng hồ Rolex Thụy Sĩ để chỉ mặt số bị biến màu (thường màu gốc là đen mờ, đen, hay các mẫu chuyên nghiệp) thành nâu sẫm.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d40000;"><strong>Two-tone</strong></span><strong> (steel &amp; gold, 18k &amp; gold, Tu Tone hoặc 2-Tone)<span style="color: #d40000;">:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức đờ mi (demi), dùng để chỉ các mẫu có hai kim loại khác nhau (thường là thép không gỉ và vàng).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Unpolished:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thuật ngữ của người sưu tập, có nghĩa là chiếc đồng hồ này chưa bao giờ được đánh bóng. Một mong muốn của hầu hết người chơi đồng hồ Rolex để giữ được bezel nguyên bản trên các mẫu thể thao.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Vintage Rolex:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tức Rolex cổ, chỉ bất kỳ mẫu Rolex nào có tuổi đời 30 năm trở lên.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">White:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Thường dùng để nói về mặt số màu trắng hoặc dùng như tiếng lóng để chỉ các mẫu làm từ vàng trắng 18K (phân biệt với Stainless Steel (SS) tức thép không gỉ).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">White gold surround:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Viền vàng trắng bao quanh vật liệu dạ quang (bao quanh cọc số), đóng vai trò như thùng chứa dạ quang trên mặt đồng hồ hiện đại. Được xem như một phần của cọc số.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Yellow:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">◆</span>&nbsp;&nbsp;&nbsp; Tiếng lóng để chỉ các mẫu đồng hồ Rolex làm bằng vàng 18K (tức màu vàng kim – yellow gold).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Thuật Ngữ Dành Riêng Cho <span style="color: #d40000;">Mặt Số</span> Đồng Hồ Rolex Thụy Sĩ Chính Hãng</span></strong></span></h3>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Bordeaux</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Chỉ mặt số có màu đỏ ở trung tâm và dần biến sang màu đen khi ra đến gần Bezel (viền đồng hồ).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Concentric circles</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Chỉ các vòng tròn đồng tâm lớn dần về phía Bezel dùng để trang trí mặt số.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Diamond Dial</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Chỉ mặt số đồng hồ có sử dụng kim cương làm cọc số, dấu hiệu…</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Houndstooth</span>:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73549 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Houndstooth.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Houndstooth" width="600" height="457" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Houndstooth.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Houndstooth-100x76.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Houndstooth-261x199.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Mặt số trang trí bằng họa tiết Houndstooth</em></span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Tức họa tiết Houndstooth (hoặc tiết răng sói, răng cưa hay zigzag) trên mặt số đồng hồ Rolex, nó tương tự như trên thời trang, nội thất.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Jubilee</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Ám chỉ mặt số có toàn bộ diện tích quay được bao phủ bởi từ “Rolex” lặp lại nhiều lần.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Lapis Lazuli</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Mặt số được làm bằng Ngọc Lưu Ly thiên nhiên, loại ngọc có màu xanh dương với các dải ánh vàng và điểm ánh vàng.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Linen</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Mặt số được hoàn thiện để tạo bề mặt có các sợi xơ như vải lanh.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Meteorite</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Dùng để chỉ những chiếc đồng hồ có mặt số được làm từ thiên thạch rơi xuống Trái Đất. Bởi vì là vật liệu tự nhiên, vẻ ngoài sẽ là độc nhất vô nhị.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">MOP</span> (hoặc Mother of Pearl):</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Tức xà cừ, một vật liệu óng ánh có nguồn gốc tự nhiên (lớp vỏ trong của động vật thân mềm như trai, hàu, ốc…), ở đồng hồ Rolex Thụy Sỹ chính hãng, vật liệu xà cừ được khai thác ở đảo Tahitian. Bởi vì là loại xà cừ tự nhiên, vân sắc óng ánh sẽ không bao giờ trùng lặp.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Onyx</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Mặt số được làm từ đá Onyx tự nhiên (một loại đá xuyên sáng họ thạch anh) màu đen.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Pave</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Được phát âm là “paw-vay”, chỉ việc mặt số được che phủ hoàn toàn (hoặc gần như hoàn toàn) bằng kim cương. Đồng thời, thuật ngữ này cũng được dùng để chỉ cả chiếc đồng hồ được che phủ bằng kim cương, ví dụ như GMT Ice.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Pie pan</span>:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73530 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pie-pan.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Pie Pan" width="501" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pie-pan.jpg 501w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pie-pan-100x100.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pie-pan-261x261.jpg 261w" sizes="(max-width: 501px) 100vw, 501px"><em>Mặt số kiểu Pie Pan</em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Một kiểu mặt số đã ngừng sản xuất. Đặc điểm của kiểu mặt này đó chính là rìa của mặt số được làm nghiêng xuống khiến nó trông như một cái khay nướng bánh bị úp ngược.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Pyramid</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Mặt số được trang trí bằng họa tiết nổi kiểu Kim tự tháp 4 mặt.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Quadrant</span>:</span></strong></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;"><img class="aligncenter wp-image-73532 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex_Oyster_Perpetual_Day-Date_40_228239-white-gold-Quadrant.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Quadrant" width="600" height="456" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex_Oyster_Perpetual_Day-Date_40_228239-white-gold-Quadrant.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex_Oyster_Perpetual_Day-Date_40_228239-white-gold-Quadrant-100x76.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex_Oyster_Perpetual_Day-Date_40_228239-white-gold-Quadrant-261x198.jpg 261w" sizes="(max-width: 600px) 100vw, 600px">Kiểu mặt số với họa tiết chia làm 4 phần Quadrant<br>
 </span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Kiểu mặt số với diện tích được chia làm 4 phần bằng nhau và trang bí bằng hai loại họa tiết (hai phần không nằm cạnh nhau sẽ có họa tiết giống nhau).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Serti</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Thuật ngữ theo định nghĩa Rolex là một loại mặt số kim cương. Tuy nhiên, thường nó chỉ có trên các mẫu dòng Submariner, GMT, kim cương có thể thay thế bằng Sapphire hoặc hồng ngọc.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Sigma</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Dùng để chỉ các ký tự σ nằm gần “SWISS” hoặc “T SWISS T” hoặc “Swiss Made”. Các mẫu có ký tự σ trên mặt số thì tức là các cọc số và kim của nó được làm bằng vàng khối. Ký tự Sigma chỉ được sử dụng trong một thời gian ngắn và không phổ biến.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Stone Dials</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Chỉ mặt số được làm từ vật liệu đá tự nhiên, ví dụ như Lapis Lazuli (Ngọc Lưu Ly), Meteorite (Thiên Thạch), Onyx, Jadeite, Gossularite, …</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Tapestry</span>:</span></strong></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;"><img class="aligncenter wp-image-73538 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Tapestry-Dial.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Tapestry Dial" width="600" height="400" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Tapestry-Dial.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Tapestry-Dial-100x67.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Tapestry-Dial-261x174.jpg 261w" sizes="(max-width: 600px) 100vw, 600px">Mặt số trang trí kiểu Tapestry</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Mặt sọc, thiết kế mặt số được trang trí bằng họa tiết sọc dọc cho toàn bộ diện tích.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Tuxedo</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Chỉ mặt số có hai màu: đen-trắng hoặc bạc-xám tách biệt rõ ra hai vòng.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Vignette</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Chỉ mặt số có màu xanh dương ở trung tâm và dần biến sang màu đen khi ra đến gần Bezel (viền đồng hồ).</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;"><span style="color: #d40000;">Wood</span>:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">▬&nbsp;&nbsp;&nbsp;&nbsp; Kiểu mặt số phủ gỗ. Các loại gỗ được dùng gồm: gỗ dương xỉ, gỗ burl, gỗ óc chó, gỗ gụ châu Phi. </span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/day-la-toan-bo-dong-ho-james-bond-diep-vien-007-da-dung.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignleft wp-image-58696 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-4.gif" alt="Đây Là Toàn Bộ Đồng Hồ James Bond – Điệp Viên 007 Đã Dùng" width="300" height="78" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-4.gif 300w,  http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-4-100x26.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-4-261x68.gif 261w" sizes="(max-width: 300px) 100vw, 300px"></a>︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/day-la-toan-bo-dong-ho-james-bond-diep-vien-007-da-dung.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>Đây Là Toàn Bộ Đồng Hồ James Bond – Điệp Viên 007 Đã Dùng</strong></em></a><br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Thuật Ngữ Dành Riêng Cho <span style="color: #d40000;">Bezel</span> Đồng Hồ Rolex Thụy Sĩ Chính Hãng</span></strong></span></h3>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">12 Point Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span> <em><span style="font-family: times new roman, times, serif;">Chỉ Bezel có 12 viên kim cương tương ứng với vị trí của 12 giờ.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">24 Diamonds Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ Bezel có 12 viên kim cương lớn tương ứng với vị trí của 12 giờ và 12 viên kim cương nhỏ hơn nằm ở giữa chúng.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Cartouche Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Bezel được làm bằng vàng 18K có dập chữ Rolex ở vị trí 6 giờ. Hiện loại này đã ngừng sản xuất.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Domed Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Bezel lớn, dạng cong vòm, bề mặt trơn (không khắc, đính đá,…) được đánh bóng, có thể làm từ thép không gỉ hoặc vàng. Là phiên bản hiện đại của “Polished Bezel”.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Engine Turned Bezel:</span></strong></em></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><img class="wp-image-73521 size-full aligncenter" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Engine-Turned-bezel.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Engine Turned Bezel" width="600" height="400" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Engine-Turned-bezel.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Engine-Turned-bezel-100x67.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Engine-Turned-bezel-261x174.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Cận cảnh Engine Turned Bezel</em></span></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ chung các viền được khía mảnh.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Fluted Bezel:</span></strong></em></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><img class="aligncenter wp-image-73522 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Fluted-bezel.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Fluted Bezel Vành Băm" width="500" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Fluted-bezel.jpg 500w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Fluted-bezel-100x100.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Fluted-bezel-261x261.jpg 261w" sizes="(max-width: 500px) 100vw, 500px"><em>Fluted Bezel – Vành băm huyền thoại</em><br>
 </span></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ chung các viền được khía dày, to sắc nét (thường được gọi là “vành băm” ở Việt Nam).<br>
 </span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Rotating Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ các Bezel có thể xoay được, loại bezel này có trên dòng GMT, Submariner, Turn-O-Graph, Yachtmaster.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Polished Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ các Bezel có bề mặt trơn (không khắc, đính đá,…) được đánh bóng, khá giống Domed Bezel. Hiện loại bezel này đã ngừng sản xuất.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Pyramid Bezel:</span></strong></em></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><img class="aligncenter wp-image-73540 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pyramid-bezel.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Pyramid Bezel" width="600" height="350" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pyramid-bezel.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pyramid-bezel-100x58.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-pyramid-bezel-261x152.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Cận cảnh Pyramid Bezel</em></span></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Loại Bezel có Kim Tự Tháp 4 Mặt xen lẫn mỗi 2 viên kim cương xung quanh của nó.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Tachymeter Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Loại Bezel có thước đo vận tốc trên thân của nó với đơn vị là km/h. Xuất hiện trên dòng Daytona.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Turn-O-Graph Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Loại Bezel xoay để theo dõi thời gian trôi qua trên DateJust Turn-O-Graph.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><em><strong><span style="font-family: times new roman, times, serif;">Ring Command Bezel:</span></strong></em></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif; color: #d90000;">✦</span><span style="font-family: times new roman, times, serif;">&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Là tên gọi đã được cấp bằng sáng chế của bezel trên dòng Sky-Dweller and Yachtmaster II. Bezel này kết nối với máy để thiết lập các tính năng thông qua nó.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Thuật Ngữ Dành Riêng Cho <span style="color: #d40000;">Dây Đeo</span> Đồng Hồ Rolex Thụy Sĩ Chính Hãng</span></strong></span></h3>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Argentinian Bracelet:</span></strong></span></em></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">◇&nbsp;&nbsp;&nbsp;&nbsp; Chỉ dây của một số mẫu thuộc dòng President từng được sản xuất tại Argentina (trong khoảng thời gian trước đây) với một số thay đổi ở phần khóa.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Hecho in Mexico:</span></strong></span></em></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">◇&nbsp;&nbsp;&nbsp;&nbsp; Chỉ dây của một số mẫu thuộc dòng President từng được sản xuất tại Mexico (trong khoảng thời gian trước đây) và được dập dòng chữ “Hecho in Mexico”.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Integral </span></strong></span><strong><span style="font-family: times new roman, times, serif;">(</span></strong><strong><span style="font-family: times new roman, times, serif;">Integrated)</span></strong><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">:</span></strong></span></em></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73535 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-OysterQuartz-19018-Gold-Day-Date-115504s-Integrated-bracelet.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Integral" width="500" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-OysterQuartz-19018-Gold-Day-Date-115504s-Integrated-bracelet.jpg 500w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-OysterQuartz-19018-Gold-Day-Date-115504s-Integrated-bracelet-100x100.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-OysterQuartz-19018-Gold-Day-Date-115504s-Integrated-bracelet-261x261.jpg 261w" sizes="(max-width: 500px) 100vw, 500px"><em>Thiết kế dây vỏ khối to bản – Integral</em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">◇&nbsp;&nbsp;&nbsp;&nbsp; Chỉ những chiếc đồng hồ (thường là Oyster Quartz) có dây (kim loại) như liền nguyên khối với mặt do có phần vấu góc cạnh và to bản tương hợp với hình dáng dây. Hiện kiểu dây (và vỏ) này đã ngừng sản xuất.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Jubilee:</span></strong></span></em></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">◇&nbsp;&nbsp;&nbsp;&nbsp; Chỉ loại dây đeo (kim loại) thanh lịch có 3 dải mắt nhỏ ở trung tâm.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Oyster:</span></strong></span></em></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">◇&nbsp;&nbsp;&nbsp;&nbsp; Chỉ loại dây đeo (kim loại) thanh lịch có 1 dải mắt lớn ở trung tâm. Được dùng trên các mẫu thể thao.</span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ ︾ </span></p>
<p style="text-align: center;"><span style="text-decoration: underline; font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;">Bạn có muốn biết:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/su-khac-biet-giua-dong-ho-japan-made-va-swiss-made.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignnone wp-image-57411 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-k1.gif" alt="Sự Khác Biệt Giữa Đồng Hồ Japan Made Và Swiss Made" width="100" height="30"></a> <a href="http://donghohaitrieu.com/tin-tuc/dong-ho/su-khac-biet-giua-dong-ho-japan-made-va-swiss-made.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>Sự Khác Biệt Giữa Đồng Hồ Japan Made Và Swiss Made</strong></em></a><br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Pearlmaster:</span></strong></span></em></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73550 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Lady-Pearlmaster.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Pearlmaster" width="600" height="416" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Lady-Pearlmaster.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Lady-Pearlmaster-100x69.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-Rolex-Lady-Pearlmaster-261x181.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Kiểu dây Pearlmaster</em></span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">◇&nbsp;&nbsp;&nbsp;&nbsp; Dây đeo cao cấp bằng vàng khối, các cạnh của mắt dây được làm tròn nhẵn.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">President:</span></strong></span></em></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">◇&nbsp;&nbsp;&nbsp;&nbsp; Dây đeo cao cấp bằng vàng khối có 3 dải mắt dây, dải mắt lớn ở trung tâm ngắn hơn nhiều so với kiểu dây Oyster.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Strap:</span></strong></span></em></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">◇&nbsp;&nbsp;&nbsp;&nbsp; Chỉ dây đeo bằng da, vải với khóa Ardillon Buckles (hoặc Ardillon) truyền thống.</span></p>
<h3 style="text-align: justify;">&nbsp;</h3>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Thuật Ngữ Dành Riêng Cho <span style="color: #d40000;">Mắt Dây</span> Đồng Hồ Rolex Thụy Sĩ Chính Hãng</span></strong></span></h3>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Link:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Tức mắt dây.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">D Link:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Từ lóng của cộng đồng chơi đồng hồ Rolex để chỉ mắt dây Jubilee.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Daimier:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Mắt dây cao cấp bằng vàng khối, có kích cỡ tương tự mắt D link nhưng thường được dành riêng cho dòng Cellini.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Easy Link:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Hệ thống mắt dây nới rộng có trên một loại dây Oyster mới. Mắt dây nới rộng nằm ngay bên dưới khóa, kéo nó ra thì độ dài dây có tăng thêm ½ mắt nữa.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Expansion Rivet:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Cũng là một hệ thống kéo dài mắt dây để đeo thoải mái hơn.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Fold over:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ các mắt dây loại Oyster được sản xuất bằng cách cuộn gấp các miếng kim loại chứ không phải nguyên khối đặc.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Glide Lock:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Hệ thống mở rộng mắt dây cho các dòng Submariner và Deepsea hiện đại. Các mắt dây nằm bên dưới khóa có thể kéo trượt để điều chỉnh, độ dài nới rộng tương đương độ dài của khóa.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;"><img class="alignright wp-image-73525" src="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-holow-link.jpg" alt="Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng Hollow Link" width="150" height="150" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-holow-link.jpg 500w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-holow-link-100x100.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/12/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang-holow-link-261x261.jpg 261w" sizes="(max-width: 150px) 100vw, 150px">Hollow:</span></strong></span></p>
<p style="text-align: right;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><em>Cận cảnh mắt dây có cấu trúc rỗng <span style="color: #ff6600;">►</span><br>
 </em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp; <em>Chỉ loại mắt dây kim loại rỗng ở giữa (kết cấu không đặc). Tựu trung, loại này sẽ kém bền so với kết cấu nguyên khối đặc.<br>
 </em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Oval:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ các mắt dây loại jubilee phong cách cũ có hình bầu dục và không phải kiểu D-Link.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Rivet:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ các mắt dây rỗng được bọc nắp kim loại ở cạnh ngoài nhằm che đi bản chất rỗng của chúng.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Solid:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Chỉ các mắt dây bằng kim loại nguyên khối đặc, ở giữa không rỗng. Loại mắt này sẽ có độ bền cao hơn, chắc chắn hơn.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt; color: #d40000;"><strong><span style="font-family: times new roman, times, serif;">Transitional fold over:</span></strong></span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><span style="font-family: times new roman, times, serif;"><span style="color: #d60000;">●</span>&nbsp;&nbsp;&nbsp;</span><em><span style="font-family: times new roman, times, serif;"> Thế hệ kết tiếp của loại mắt Fold over.</span></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img draggable="false" class="emoji" alt="☑" src="https://s.w.org/images/core/emoji/2.3/svg/2611.svg">&nbsp; Đến đây thì bộ từ điển thuật ngữ, kiến thức, tiếng lóng hoặc những gì có liên quan để chơi đồng hồ Rolex Thụy Sỹ chính hãng đã kết thúc rồi. Hy vọng sẽ gặp lại bạn trong các bài viết khác về đồng hồ Rolex Thụy Sĩ chính hãng khác.</span></p>
<p style="text-align: right;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><em>Nếu bạn có kiến thức, kinh nghiệm gì xin hãy bổ sung cho bộ từ điển này thêm phong phú bằng cách để lại comment bên dưới nhé!</em> </span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><em>Tổng hợp theo bobswatches </em></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><em><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/cuoc-tranh-gianh-ngoi-vuong-thi-phan-dong-ho-giua-rolex-omega.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="size-full wp-image-57224 alignright" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x.gif" alt="" width="299" height="179" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x.gif 299w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x-100x60.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x-261x156.gif 261w" sizes="(max-width: 299px) 100vw, 299px"></a></em></span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><em>︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿ ︿</em></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="text-decoration: underline;"><strong>Cùng đón đọc ngay:</strong></span><em><br>
 </em></span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/cuoc-tranh-gianh-ngoi-vuong-thi-phan-dong-ho-giua-rolex-omega.html" target="_blank" rel="noopener" data-wpel-link="internal"><strong><span style="font-family: times new roman, times, serif;"><em>Cuộc Tranh Giành “Ngôi Vương” Thị Phần Đồng Hồ Giữa Rolex &amp; Omega</em></span></strong></a></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><em>﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀ ﹀</em><br>
 </span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="text-align: right;"><span style="font-size: 12pt;"><em><strong><span style="font-family: times new roman, times, serif;">TEDThao</span></strong></em></span></p>
<!-- Begin Yuzo --><div class="yuzo_related_post style-3" data-version="5.12.70"><div class="yuzo_clearfixed yuzo__title"><h3>Bài Viết Liên Quan</h3></div><div class="yuzo_wraps">
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/tho-lan-xem-thoi-gian-duoi-nuoc-nhu-the-nao-khi-dong-ho-lan-chua-ra-doi.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Thợ Lặn Xem Thời Gian Dưới Nước Như Thế Nào Khi Đồng Hồ Lặn Chưa Ra Đời? </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/tu-che-vat-lieu-dong-ho-doc-quyen-hang-nao-lam-duoc-p2.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Tự Chế Vật Liệu Đồng Hồ Độc Quyền, Hãng Nào Làm Được? (Phần 2) </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/lich-su-victorinox-nhat-hang-dong-ho-va-dao-quan-doi-thuy-si-sieu-ben.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Lịch Sử Victorinox: Nhất Hạng Đồng Hồ Và Dao Quân Đội Thụy Sĩ Siêu Bền </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/5-mau-dong-ho-thuy-sy-duoi-4-trieu-hap-dan-dot-chay-thi-truong.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> 5 Mẫu Đồng Hồ Thụy Sỹ Dưới 4 Triệu Hấp Dẫn Đốt Cháy Thị Trường </a>
							  
					</div></div> <!-- end wrap -->
</div> <style>
							.yuzo_related_post .relatedthumb{background: !important; -webkit-transition: background 0.2s linear; -moz-transition: background 0.2s linear; -o-transition: background 0.2s linear; transition: background 0.2s linear;;color:!important;}
							.yuzo_related_post .relatedthumb:hover{background:#ffffff !important; -webkit-transition: background 0.2s linear; -moz-transition: background 0.2s linear; -o-transition: background 0.2s linear; transition: background 0.2s linear;;color:!important;}
							.yuzo_related_post .yuzo_text, .yuzo_related_post .yuzo_views_post {color:!important;}
							.yuzo_related_post .relatedthumb:hover .yuzo_text, .yuzo_related_post:hover .yuzo_views_post {color:!important;}
							.yuzo_related_post .relatedthumb a{color:!important;}
							.yuzo_related_post .relatedthumb a:hover{color:!important;}
							.yuzo_related_post .relatedthumb:hover a{ color:!important;}
							.yuzo_related_post .relatedthumb{  margin: 0px  0px  0px  0px;   padding: 5px  5px  5px  5px;  }
							</style>  <!-- End Yuzo :) -->                            </div>', 0, N'tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang', N'tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang.jpg', 1)
INSERT [baiViet] ([maBV], [tenBV], [ngayDang], [tkThanhVien], [ndTomTat], [noiDungBV], [soLanDoc], [biDanh], [hinhDD], [daDuyet]) VALUES (2, N'Patek Philippe Seal Là Gì? Tìm Hiểu Tiêu Chuẩn Chất Lượng Của Đồng Hồ Patek Philippe

', CAST(N'2017-12-06 10:18:13.457' AS DateTime), N'thienvu', N'Nhà sản xuất đồng hồ có uy tín nhất thế giới Patek Philippe đã tạo ra một tiêu chuẩn chất lượng riêng cho sản phẩm của mình và thể hiện nó bằng Patek Philippe Seal – một con dấu trên bộ máy. Ngoài các các tiêu chuẩn về độ hoàn thiện cho cả chiếc đồng hồ, Patek Philippe Seal còn bao gồm kiểm tra sự…', N'<div class="content-article entry-content">
                                <div id="fsb-social-bar" class="fsb-social-bar fsb-no-float" data-post-id="73203" data-socialite="true"><style type="text/css">            #fsb-social-bar { width: 100%; border-bottom: 1px solid #dbdbdb; border-top: 1px solid #dbdbdb; padding: 10px 0; margin: 0px 0 20px 0; float: left; background: #fff; position: relative; clear: both; }            #fsb-social-bar a { border: 0px !important }            #fsb-social-bar.fsb-fixed { position: fixed; top: -2px; z-index: 99999; }            #fsb-social-bar .fsb-title { display: block; float: left; margin: 3px 20px 0 0; font-size: 16px; font-family: Arial, Helvetica, sans-serif; text-decoration: none; color: #333; }            #fsb-social-bar .fsb-share-facebook { width: 120px; float: left; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-facebook.fsb-hide-count { width: 44px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-twitter { float: left; width: 135px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-twitter.fsb-hide-count { width: 61px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-google { float: left; width: 105px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-google.fsb-hide-count { width: 33px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-linkedin { float: left; width: 135px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-linkedin.fsb-hide-count { width: 61px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-pinterest { float: left; width: 115px; padding: 3px 0 2px; height: 25px;}            #fsb-social-bar .fsb-share-pinterest.fsb-hide-count { width: 43px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .socialite { display: block; position: relative; background: url(http://cdn3.dhht.vn/wp-content/plugins/floating-social-bar/images/fsb-sprite.png) no-repeat scroll 0 0; }            #fsb-social-bar .socialite-loaded { background: none !important; }            #fsb-social-bar .fsb-service-title { display: none; }            #fsb-social-bar a { color: #333; text-decoration: none; font-size: 12px; font-family: Arial, Helvetica, sans-serif; }            #fsb-social-bar .fsb-twitter { width: 105px; height: 25px; background-position: -13px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-twitter .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 69px; color: #333; }            #fsb-social-bar .fsb-google { width: 75px; height: 25px; background-position: -136px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-google .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 41px; color: #333; }            #fsb-social-bar .fsb-google .socialite-button { margin: 0 !important; }            #fsb-social-bar .fsb-share-google .socialite-loaded .socialite-button{padding: 2px 0 0}            #fsb-social-bar .fsb-facebook { width: 89px; height: 25px; background-position: -231px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-facebook .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 52px; color: #333; }            #fsb-social-bar .fsb-facebook .socialite-button { margin: 0 !important;}            #fsb-social-bar .fsb-share-facebook .socialite-loaded .socialite-button {padding: 2px 0 0}            #fsb-social-bar .fsb-linkedin { width: 105px; height: 25px; background-position: -347px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-linkedin .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 70px; color: #333; }            #fsb-social-bar .fsb-linkedin .socialite-button { margin: 0 !important; }            #fsb-social-bar .fsb-pinterest { width: 88px; height: 25px; background-position: -484px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-pinterest .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 50px; color: #333; }            #fsb-social-bar .fsb-pinterest .socialite-button { margin: 0 !important; }            .fsb-clear { clear: both; }            .fsb-clear:after { clear:both; content:; display:block; height:0; line-height:0; overflow:auto; visibility:hidden; zoom:1; }            @media (max-width: 768px) { #fsb-social-bar.fsb-fixed { position: relative !important; top: auto !important; } }        </style><span class="fsb-title">Like:</span><div class="fsb-share-google"><div class="socialised googleplus socialite-loaded"><div class="socialite-button"><div id="___plusone_0" style="text-indent: 0px; margin: 0px; padding: 0px; background: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 32px; height: 20px;"><iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 32px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" width="100%" id="I0_1512530269290" name="I0_1512530269290" src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;fsb-service=google&amp;size=medium&amp;wpel-link=internal&amp;origin=http%3A%2F%2Fdonghohaitrieu.com&amp;url=http%3A%2F%2Fdonghohaitrieu.com%2Ftin-tuc%2Fdong-ho%2Fpatek-philippe-seal-la-gi-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe.html&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.vi.Qa9XMlsimhk.O%2Fm%3D__features__%2Fam%3DAQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCPe3fil-w4MddC7q3PRb6pKNqXHKg#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh%2Conload&amp;id=I0_1512530269290&amp;_gfid=I0_1512530269290&amp;parent=http%3A%2F%2Fdonghohaitrieu.com&amp;pfname=&amp;rpctoken=11342798" data-gapiattached="true" title="G+"></iframe></div></div></div></div><div class="fsb-share-facebook"><div class="socialised facebook socialite-loaded"><div class="socialite-button"><div class="fb-like fb_iframe_widget" data-fsb-service="facebook" data-href="http://donghohaitrieu.com/tin-tuc/dong-ho/patek-philippe-seal-la-gi-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe.html" data-send="false" data-layout="button_count" data-width="60" data-show-faces="false" data-wpel-link="internal" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=191131454393590&amp;container_width=120&amp;href=http%3A%2F%2Fdonghohaitrieu.com%2Ftin-tuc%2Fdong-ho%2Fpatek-philippe-seal-la-gi-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe.html&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=60"><span style="vertical-align: bottom; width: 61px; height: 20px;"><iframe name="f703c40c5ba46c" width="60px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:like Facebook Social Plugin" src="https://www.facebook.com/plugins/like.php?app_id=191131454393590&amp;channel=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FlY4eZXm_YWu.js%3Fversion%3D42%23cb%3Dfbb33159ce716%26domain%3Ddonghohaitrieu.com%26origin%3Dhttp%253A%252F%252Fdonghohaitrieu.com%252Ff18fb48008e08a8%26relation%3Dparent.parent&amp;container_width=120&amp;href=http%3A%2F%2Fdonghohaitrieu.com%2Ftin-tuc%2Fdong-ho%2Fpatek-philippe-seal-la-gi-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe.html&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=60" style="border: none; visibility: visible; width: 61px; height: 20px;" class=""></iframe></span></div></div></div></div></div><div class="fsb-clear"></div><p style="text-align: justify;"><span style="font-size: 12pt;"><em><strong><span style="font-family: times new roman, times, serif;">Nhà sản xuất đồng hồ có uy tín nhất thế giới Patek Philippe đã tạo ra một tiêu chuẩn chất lượng riêng cho sản phẩm của mình và thể hiện nó bằng Patek Philippe Seal – một con dấu trên bộ máy. Ngoài các các tiêu chuẩn về độ hoàn thiện cho cả chiếc đồng hồ, Patek Philippe Seal còn bao gồm kiểm tra sự ổn định và độ chính xác.</span></strong></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Patek Philippe Seal Là Gì? Tìm Hiểu Tiêu Chuẩn Chất Lượng Của Đồng Hồ Patek Philippe</span></strong></span></h2>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">❖</span>&nbsp;&nbsp;&nbsp; <em><strong>Patek Philippe Seal là gì?</strong></em> Patek Philippe Seal là con dấu được khắc trên bộ máy của những chiếc <a href="http://donghohaitrieu.com" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>đồng hồ</strong></em></a> Patek Philippe chính hãng được chế tác kể từ 2009 trở về sau. Patek Philippe Seal là một tiêu chí đại diện cho việc đồng hồ đã trải qua những cuộc kiểm tra chất lượng khắt khe nhất trong ngành công nghiệp của riêng Patek Philippe. </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73204 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-5370P.jpg" alt="Patek Philippe Seal Là Gì? Tìm Hiểu Tiêu Chuẩn Chất Lượng Của Đồng Hồ Patek Philippe Patek Philippe Seal" width="650" height="482" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-5370P.jpg 650w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-5370P-600x445.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-5370P-100x74.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-5370P-261x194.jpg 261w" sizes="(max-width: 650px) 100vw, 650px"><em>Patek Philippe Seal trên máy đồng hồ Patek Philippe chế tác từ kể từ năm 2009 trở đi</em><br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">❖</span>&nbsp;&nbsp;&nbsp; Sự tồn tại của Patek Philippe Seal thay thế cho Geneva Seal đã gắn bó với hãng 123 năm. (Geneva Seal một con dấu thể hiện cho tiêu chuẩn chất lượng tuyệt vời của đồng hồ (trước đây chỉ dành cho bộ máy) được chế tác tại Geneva – thánh địa đồng hồ của Thụy Sĩ).</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">❖</span>&nbsp;&nbsp;&nbsp; Hàng trăm năm qua, Patek Philippe không chỉ đạt được những thành công vượt trội về mặt kinh doanh mà còn được đánh giá cao về chất lượng và độ tin cậy tuyệt vời của các sản phẩm máy thời gian của mình.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">❖</span>&nbsp;&nbsp;&nbsp; Công ty là một nhà sản xuất đồng hồ tích hợp liên kết theo chiều dọc hoàn chỉnh với năng lực phát triển và sản xuất bộ máy, chế tạo vỏ và hầu hết các linh kiện chính bên ngoài chiếc đồng hồ. </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73205 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-geneve.jpg" alt="Patek Philippe Seal Là Gì? Tìm Hiểu Tiêu Chuẩn Chất Lượng Của Đồng Hồ Patek Philippe Geneva Seal" width="650" height="290" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-geneve.jpg 650w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-geneve-600x268.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-geneve-100x45.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-geneve-261x116.jpg 261w" sizes="(max-width: 650px) 100vw, 650px"><em>Đồng hồ Patek Philippe được chế tác trước năm 2009 đã gắn bó với Geneva Seal trong 123 năm</em><br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">❖</span>&nbsp;&nbsp;&nbsp; Là một doanh nghiệp tư nhân độc lập, Patek Philippe đã luôn luôn xác định các tiêu chuẩn chất lượng của riêng mình, được công nhận bởi toàn bộ cộng đồng đồng hồ là tiêu chuẩn chất lượng nghiêm ngặt nhất. </span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/360-do-dong-ho-xuat-xu-thuy-si-swiss-made-geneva-seal.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignleft wp-image-57225 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x.gif" alt="360 Độ Đồng Hồ Xuất Xứ Thụy Sĩ: Swiss Made, Geneva Seal" width="291" height="63" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x.gif 291w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x-100x22.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x-261x57.gif 261w" sizes="(max-width: 291px) 100vw, 291px"></a>= = = = = = = = = = = = = = = = = = = = = = =</span></p>
<p style="text-align: center;"><span style="font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;">Geneva Seal là gì: </span></strong></span><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/360-do-dong-ho-xuat-xu-thuy-si-swiss-made-geneva-seal.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>360 Độ Đồng Hồ Xuất Xứ Thụy Sĩ: Swiss Made, Geneva Seal</strong></em></a><br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Chi Tiết Chính Về Tiêu Chuẩn Chất Lượng Của Patek Philippe Seal</span></strong></span></h2>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;"><img class="alignright wp-image-73206" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-seal.jpg" alt="Patek Philippe Seal Là Gì? Tìm Hiểu Tiêu Chuẩn Chất Lượng Của Đồng Hồ Patek Philippe Seal" width="120" height="150" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-seal.jpg 400w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-seal-80x100.jpg 80w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-seal-209x261.jpg 209w" sizes="(max-width: 120px) 100vw, 120px">◆</span>&nbsp;&nbsp;&nbsp; Patek Philippe Seal là biểu tượng toàn diện của sự xuất sắc của chiếc đồng hồ hoàn chỉnh. Bao gồm việc bộ máy, bộ vỏ, mặt số, cọc số, kim, nút bấm, núm chỉnh, dây da, dây kim loại, khóa, khóa gấp cùng tất cả các thành phần khác góp phần vào tính chính xác và thẩm mỹ của đồng hồ.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">◆</span>&nbsp;&nbsp;&nbsp; Điều này đòi hỏi các khía cạnh kỹ thuật, chức năng, thiết kế, vẻ ngoài, độ chính xác, độ tin cậy cũng như chất lượng của dịch vụ khách hàng. Và cũng bao gồm toàn bộ bí quyết, các khía cạnh độc đáo trong sản xuất và bảo trì lâu dài của một chiếc đồng hồ đặc biệt.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Tiêu Chuẩn Cho Nguyên Chiếc Đồng Hồ</span></strong></span></h3>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mỗi chi tiết đều được kiểm tra để đạt được kết quả tốt nhất về chất lượng, vẻ đẹp, độ chính xác và độ tin cậy. Tất cả các yếu tố của một chiếc đồng hồ – bao gồm bộ máy, bên trong và bên ngoài của vỏ, mặt số, núm bấm và núm chỉnh phải được hoàn thành một cách hoàn hảo.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đúng với tất cả các kỹ năng và khả năng về mặt kinh tế mà Patek Philippe đã tích lũy được, đồng hồ được phát triển, sản xuất và hoàn thiện phù hợp với những nguyên tắc tốt nhất của nghề chế tạo đồng hồ truyền thống.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vẻ ngoài của tất cả các bộ phận đồng hồ được đánh giá theo hệ thống trong suốt quá trình sản xuất. Mọi chiếc đồng hồ đã hoàn chỉnh phải được kiểm tra kỹ lưỡng 100%. Trong quá trình hoàn thiện các cấp độ khác nhau, độ chính xác của đồng hồ Patek Philippe được kiểm tra cho từng bộ máy rời và sau khi đã ráp vỏ hoàn chỉnh.</span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73208 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-3.jpg" alt="Patek Philippe Seal Là Gì? Tìm Hiểu Tiêu Chuẩn Chất Lượng Của Đồng Hồ Patek Philippe Seal 2" width="600" height="400" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-3.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-3-100x67.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-3-261x174.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Patek Philippe Seal, dấu hiệu tượng trưng cho chất lượng tuyệt vời và tay nghề bậc nhất của thương hiệu uy tín nhất Thụy Sĩ</em><br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lần kiểm tra cuối cùng về độ chính xác được thực hiện với các mô phỏng chuyển động trong thực tế và các kết quả phải phù hợp với các tiêu chuẩn chính xác của Patek Philippe như sau:</span></p>
<p style="text-align: justify; padding-left: 30px;"><em><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #ff6600;">●</span>&nbsp;&nbsp;&nbsp; Đối với máy có đường kính từ 20 mm trở lên, độ chính xác phải nằm trong khoảng <strong>-3</strong> và <strong>+2</strong> giây mỗi 24 giờ.<br>
 </span><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #ff6600;">●</span>&nbsp;&nbsp;&nbsp; Đối với máy có đường kính nhỏ hơn 20 mm, độ chính xác tỷ lệ phải nằm trong khoảng <strong>-5</strong> và <strong>+4</strong> giây mỗi 24 giờ.</span></em></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Âm thanh của tất cả đồng hồ điểm chuông được thử nghiệm với thiết bị âm thanh và sau đó phải được Philippe Stern và Thierry Stern phê duyệt. Các kết quả âm thanh của tất cả đồng hồ đã được lưu trữ từ năm 2003.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bất kể mức độ mài nhẵn và đánh bóng nào, hình dáng và góc cạnh của tất cả các bộ phận (bộ máy và các yếu tố bên ngoài) phải được bảo toàn. Mỗi bộ vỏ và dây đeo đã hoàn thành bất kể hình dạng phức tạp hay phương pháp hoàn thiện nào được áp dụng, phải phản ánh mẫu thiết kế cơ bản. Các cạnh sắc hoặc gồ ghề sẽ không được chấp nhận. Đồng hồ đã hoàn thiện sẽ mỏng nhất có thể để tối ưu hóa hiệu suất kỹ thuật và hiệu suất năng lượng của chúng.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Tiêu Chuẩn Cho Các Chi Tiết Bên Ngoài</span></strong></span></h3>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kim cương phải tuân thủ các tiêu chuẩn chất lượng nghiêm ngặt, được hoàn thiện trong nội bộ công ty, phù hợp với các thông số màu Top Wesselton và được cắt thật tinh vi. Chỉ có tỉ lệ thích hợp, tính đối xứng hoàn hảo và bề mặt hoàn hảo mới mang lại sự lấp lánh của viên kim cương.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tất cả các loại đá quý phải được sắp đặt theo chiều dọc, song song theo trục và cùng chiều cao. Mỗi viên đá phải được đặt chắc chắn. Tất cả các loại đá được thiết kế phù hợp với nghệ thuật của thợ kim hoàn và không bao giờ được dùng keo.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Các ký tự hoặc dấu hiệu phải làm bằng vàng và được gắn kết cơ học để đảm bảo tuổi thọ cao nhất. Kim được làm từ vàng. Kim chỉ được làm bằng các vật liệu khác có yêu cầu kỹ thuật hoặc thẩm mỹ đặc biệt. Mặt Số luôn được thiết đặt trong nội bộ công ty sao cho tối ưu hóa sự rõ ràng, kể cả Mặt Số được khảm nạm kim cương trên phần lớn hoặc toàn bộ diện tích.</span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/mua-dong-ho-chinh-hang-patek-philippe-can-can-nhac-5-dieu.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignright wp-image-58696 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-4.gif" alt="Mua Đồng Hồ Chính Hãng Patek Philippe" width="300" height="78" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-4.gif 300w,  http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-4-100x26.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/04/button-4-261x68.gif 261w" sizes="(max-width: 300px) 100vw, 300px"></a>= = = = = = = = = = = = = = = = = = = = =<br>
 </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">Bạn có biết cách <a href="http://donghohaitrieu.com/tin-tuc/dong-ho/mua-dong-ho-chinh-hang-patek-philippe-can-can-nhac-5-dieu.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>Mua Đồng Hồ Chính Hãng Patek Philippe</strong></em></a> <span style="color: #ff6600;">◄</span> ◄ ◄ <strong>CLICK XEM!</strong><br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Tiêu Chuẩn Cho Riêng Bộ Máy</span></strong></span></h3>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;"><img class="alignleft wp-image-73207 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-seal-real.jpg" alt="Patek Philippe Seal Là Gì? Tìm Hiểu Tiêu Chuẩn Chất Lượng Của Đồng Hồ Patek Philippe Seal 1" width="400" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-seal-real.jpg 400w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-seal-real-80x100.jpg 80w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-seal-real-209x261.jpg 209w" sizes="(max-width: 400px) 100vw, 400px">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Để đủ điều kiện cho Patek Philippe Seal, bộ máy phải đáp ứng nhiều yêu cầu nghiêm ngặt về kỹ thuật và mức độ hoàn thiện của nó. Tuân thủ tiêu chí này trở thành các kiệt tác được được ngưỡng mộ bởi những người sành sõi cho chức năng, độ tin cậy lâu dài, độ chính xác vượt trội và vẻ đẹp vô song.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hai mặt của các bộ phận bằng thép phải được hoàn thiện bằng cách chải xước, các cạnh và lỗ phải được đánh bóng. Các bề mặt nhìn thấy phải được làm mịn, riêng bộ điều chỉnh cần phải được đánh bóng. Đầu vít phải được đánh bóng hoặc tạo vân hạt, viền và khe của vít cũng phải được vát cạnh.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chân Kính phải được đánh bóng lỗ, đặc biệt là các bánh răng lớn, bánh răng của cơ chế tự động lên dây, của Hồi. Các chân kính đặt trên Cầu phải được làm tròn và đánh bóng lỗ ngoại trừ trường hợp gây nguy hiểm cho chúng. Ngoài Chân Kính, tất cả các hệ thống cải tiến sự quay của trục đều phải thực hiện như vậy.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tất cả các bề mặt bên ngoài của Trống Cót và nắp trống, bánh răng, bánh răng lên dây thủ công và tất cả các bộ phận hình tròn phải được hoàn thiện tỉ mỉ. Các răng của bánh răng thép phải được đánh bóng bằng gỗ.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Các mặt trên của tất cả Cầu phải được trang trí và vát cạnh, đánh bóng cạnh vát, đánh bóng lỗ. Mặt dưới của tất cả Cầu cũng phải được hoàn thiện tỉ mỉ. Các bề mặt tiếp xúc giữa các chi tiết nằm sát nhau phải được gia công chính xác và vát cạnh. Các bề mặt của Khung Nền và bất kỳ Cầu phụ nào được trang trí bằng họa tiết vân tròn. Những Cầu mỏng dài phải được vát cạnh và đánh bóng lỗ.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dây Tóc phải được gắn kết cơ học một cách chính xác sao cho các vòng nằm thật phẳng và tròn. Ngoài ra, Dây Tóc cần phải đảm bảo là chịu được các cú sốc theo tiêu chuẩn NIHS. Việc tinh chỉnh độ chính xác phải tuân theo quán tính của Bánh Lắc. Bộ Điều Chỉnh với vạch chỉ dẫn hoặc khe thay đổi chiều dài của dây tóc cũng được phép xuất hiện nếu chúng được kết hợp với thiết bị ổn định. Riêng các bộ máy siêu mỏng không cần phải có Bộ Điều Chỉnh. </span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong Bánh Lắc thông thường, vành phải được vát cạnh và đánh bóng bằng kim cương. Các bánh răng phải được thổi cát để chải xước hoặc tạo vân tròn đồng tâm trên bề mặt. Các nan hoa (căm của bánh răng) và vành phải được hoàn thiện tỉ mỉ ở cả mặt dưới.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Các Bánh Đà phải được làm bằng kim loại quý và được trang trí.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Những Thông Tin Khác Về Tiêu Chuẩn Chất Lượng Của Patek Philippe Seal</span></strong></span></h2>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;">Nếu như ở trên chúng ta đã tìm hiểu các điểm chính về tiêu chuẩn để có được Patek Philippe Seal thì sau đây sẽ tiếp tục khám phá một số thông tin khác cũng nằm trong khuôn khổ hoặc liên quan đến của chuẩn chất lượng này.</span></em></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">✚</span>&nbsp;&nbsp;&nbsp; Đồng hồ Patek Philippe có tourbillon phải được kiểm tra trong quá trình sản xuất như tất cả đồng hồ cơ khí khác, tuy nhiên chúng phải tuân thủ các tiêu chuẩn khắc khe hơn như sau: Độ chính xác tỷ lệ của chúng được đo lường trong quá trình kiểm tra cuối cùng phải nằm trong khoảng -2 và +1 giây mỗi 24 giờ; độ lệch lớn nhất giữa tỷ lệ trung bình trong tất cả sáu vị trí đo và tỷ lệ trong mỗi vị trí không được vượt quá 4 giây trong 24 giờ. Độ chính xác của mỗi chiếc đồng hồ Patek Philippe có tourbillon được ghi lại bằng giấy chứng nhận và cấp riêng với đồng hồ. </span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">✚</span>&nbsp;&nbsp;&nbsp; Patek Philippe Seal là một lời hứa được hậu thuẫn bởi chính Philippe Stern, chủ tịch danh dự và chủ tịch kế nhiệm, Thierry Stern. Họ là thành viên của gia đình sở hữu Patek Philippe kể từ năm 1932. Họ đại diện cho thế hệ thứ ba và thứ tư đã lớn lên cùng với việc sản xuất trong công ty. Với lòng nhiệt thành kế thừa từ tổ tiên, họ cam kết sẽ đưa di sản của mình cho thế hệ kế tiếp, một truyền thống mà khách hàng Patek Philippe bị thu hút từ đồng hồ của họ.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">✚</span>&nbsp;&nbsp;&nbsp; Patek Philippe Seal cũng định nghĩa các tiêu chuẩn chất lượng từ các bước sản xuất ban đầu cho đến khi giao hàng và đó cũng là lời hứa đầu tiên của ngành công nghiệp đồng hồ về dịch vụ suốt đời. Patek Philippe đảm bảo rằng tất cả đồng hồ được phát hành từ khi công ty được thành lập năm 1839 này sẽ luôn có các dịch vụ bảo dưỡng hoặc phục hồi.</span></p>
<p style="text-align: center;"><img class="aligncenter wp-image-73209 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-4.jpg" alt="Patek Philippe Seal Là Gì? Tìm Hiểu Tiêu Chuẩn Chất Lượng Của Đồng Hồ Patek Philippe Máy" width="600" height="400" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-4.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-4-100x67.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/patek-philippe-seal-la-gi-tim-hieu-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe-4-261x174.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><em>Cận cảnh vẻ đẹp tinh tế của một chiếc cầu mỏng và nhỏ trong bộ máy Patek Philippe</em></span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">✚</span>&nbsp;&nbsp;&nbsp; Đặc biệt đối với vỏ đồng hồ, các kỹ thuật tạo lạnh truyền thống được triển khai để định hình vỏ từ các phôi kim loại rắn trong các máy ép có trọng tải lớn. Bộ ram và bộ khuôn tương ứng được tạo thành ​​thép cực kỳ cứng với dung sai chỉ vài phần nghìn milimet.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">✚</span>&nbsp;&nbsp;&nbsp; Các bước tiếp theo cũng bao gồm các phép đo chính xác và hoàn thiện thủ công. Cuối cùng, mỗi trường hợp được đánh bóng bằng tay. Hoạt động này đòi hỏi hai giờ làm việc cho một vỏ thép đơn giản và khoảng 6 giờ cho các vỏ bạch kim phức tạp.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">✚</span>&nbsp;&nbsp;&nbsp; Patek Philippe Seal còn đòi hỏi phải tuân thủ các yêu cầu kỹ thuật chất lượng được kiểm tra sau mỗi bước sản xuất. Tùy thuộc vào sự phức tạp của bộ máy, chúng sẽ được kiểm tra trong vòng 30 ngày, và sau khi ráp vỏ, đồng hồ hoàn chỉnh sẽ được đưa đi đánh giá độ chính xác, tính toàn vẹn chức năng và hiệu suất bằng thiết bị mô phỏng kéo dài đến 20 ngày.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #cc0000;">✚</span>&nbsp;&nbsp;&nbsp; Khả năng chịu nước của đồng hồ được kiểm tra bằng áp suất không khí và áp suất nước từ ​​3 đến 12 bar tùy thuộc vào mẫu mã. Sau đó, đồng hồ đi đến nước kiểm tra ngưng tụ, nếu vượt qua sẽ được kiểm tra độ chính xác, cuối cùng sẽ là kiểm tra bằng mắt trước khi được đóng gói chân không.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img draggable="false" class="emoji" alt="☑" src="https://s.w.org/images/core/emoji/2.3/svg/2611.svg">&nbsp;&nbsp; Patek Philippe Seal thể hiện cho trách nhiệm đảm bảo tuân thủ nghiêm ngặt các quy tắc và tiêu chuẩn mà chính Patek Philippe cam kết. Để đảm bảo rằng các quy tắc được tuân thủ mà không có sự thỏa hiệp nào dù là nhỏ nhất, cơ quan làm luật và cơ quan điều hành của Patek Philippe hoạt động độc lập với nhau.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img draggable="false" class="emoji" alt="☑" src="https://s.w.org/images/core/emoji/2.3/svg/2611.svg">&nbsp;&nbsp; Đến đây thì đã kết thúc bài viết khám phá về Patek Philippe Seal và các tiêu chuẩn chất lượng của thương hiệu đồng hồ đẳng cấp nhất Thụy Sĩ rồi, hẹn gặp lại trong một chủ đề khác của Hải Triều nhé.</span></p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;">Tổng hợp từ Patek Philippe, monochrome-watches, fhs, watchtime</span></em></span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/nhung-the-he-noi-nghiep-va-thua-ke-trong-gia-dinh-so-huu-patek-philippe.html" target="_blank" rel="noopener" data-wpel-link="internal"><span style="font-family: times new roman, times, serif;"><img class="alignleft wp-image-57224 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x.gif" alt="Những Thế Hệ Nối Nghiệp Và Thừa Kế Trong Gia Đình Sở Hữu Patek Philippe" width="299" height="179" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x.gif 299w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x-100x60.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x-261x156.gif 261w" sizes="(max-width: 299px) 100vw, 299px"></span></a></span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">= = = = = = = = = = = = = = = = = = = =</span></p>
<p style="text-align: center;"><span style="text-decoration: underline; font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;">Câu chuyện về những người chủ hãng Patek Philippe:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/nhung-the-he-noi-nghiep-va-thua-ke-trong-gia-dinh-so-huu-patek-philippe.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>Những Thế Hệ Nối Nghiệp Và Thừa Kế Trong Gia Đình Sở Hữu Patek Philippe</strong></em></a><br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: right;"><span style="font-size: 12pt;"><em><strong><span style="font-family: times new roman, times, serif;">HRDThao</span></strong></em></span></p>
<!-- Begin Yuzo --><div class="yuzo_related_post style-3" data-version="5.12.70"><div class="yuzo_clearfixed yuzo__title"><h3>Bài Viết Liên Quan</h3></div><div class="yuzo_wraps">
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/rolex-la-thuong-hieu-dong-ho-co-gia-tri-nhat-the-gioi.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Rolex Là Thương Hiệu Đồng Hồ Có Giá Trị Nhất Thế Giới </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/kham-pha-doxa-grandemetre-blue-planet-chronometer-d198rbu-sieu-pham-goi-nho-ve-thien-nhien-tuoi-dep.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Khám Phá Doxa GrandeMetre Blue Planet® Chronometer D198RBU, Siêu Phẩm Dùng Chất Liệu Quý Gợi Nhớ Về ... </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/7-chuyen-chua-ke-ve-dong-ho-hieu-movado-den-tu-thuy-si.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> 7 Chuyện Chưa Kể Về Đồng Hồ Hiệu Movado Đến Từ Thụy Sĩ </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/kham-pha-6-bi-mat-tao-nen-dang-cap-cho-dong-ho-patek-philippe.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Khám Phá 6 Bí Mật Tạo Nên Đẳng Cấp Cho Đồng Hồ Patek Philippe </a>
							  
					</div></div> <!-- end wrap -->
</div> <style>
							.yuzo_related_post .relatedthumb{background: !important; -webkit-transition: background 0.2s linear; -moz-transition: background 0.2s linear; -o-transition: background 0.2s linear; transition: background 0.2s linear;;color:!important;}
							.yuzo_related_post .relatedthumb:hover{background:#ffffff !important; -webkit-transition: background 0.2s linear; -moz-transition: background 0.2s linear; -o-transition: background 0.2s linear; transition: background 0.2s linear;;color:!important;}
							.yuzo_related_post .yuzo_text, .yuzo_related_post .yuzo_views_post {color:!important;}
							.yuzo_related_post .relatedthumb:hover .yuzo_text, .yuzo_related_post:hover .yuzo_views_post {color:!important;}
							.yuzo_related_post .relatedthumb a{color:!important;}
							.yuzo_related_post .relatedthumb a:hover{color:!important;}
							.yuzo_related_post .relatedthumb:hover a{ color:!important;}
							.yuzo_related_post .relatedthumb{  margin: 0px  0px  0px  0px;   padding: 5px  5px  5px  5px;  }
							</style>  <!-- End Yuzo :) -->                            </div>', 0, N'patek-philippe-seal-la-gi-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe', N'patek-philippe-seal-la-gi-tieu-chuan-chat-luong-cua-dong-ho-patek-philippe.jpg', 1)
INSERT [baiViet] ([maBV], [tenBV], [ngayDang], [tkThanhVien], [ndTomTat], [noiDungBV], [soLanDoc], [biDanh], [hinhDD], [daDuyet]) VALUES (3, N'Nguồn Gốc Do Thái Của Nghề Sản Xuất Đồng Hồ Thụy Sĩ

', CAST(N'2017-12-06 10:19:29.380' AS DateTime), N'thienvu', N'“Thung lũng đồng hồ – Watch Valley” (Thung Lũng Jura – Vallée de Joux) ở Thụy Sĩ, kinh đô của ngành sản xuất đồng hồ khắp thế giới không chỉ được tạo ra bởi những người Tin Lành mà người Do Thái từ Alsace cũng đã góp phần to lớn không kém gì cho sự xuất hiện của nghề chế tác máy thời gian của…

Nguồn: http://donghohaitrieu.com/tin-tuc/dong-ho#ixzz50RnWgIWK', N'<div class="content-article entry-content">
                                <div id="fsb-social-bar" class="fsb-social-bar fsb-no-float" data-post-id="72954" data-socialite="true"><style type="text/css">            #fsb-social-bar { width: 100%; border-bottom: 1px solid #dbdbdb; border-top: 1px solid #dbdbdb; padding: 10px 0; margin: 0px 0 20px 0; float: left; background: #fff; position: relative; clear: both; }            #fsb-social-bar a { border: 0px !important }            #fsb-social-bar.fsb-fixed { position: fixed; top: -2px; z-index: 99999; }            #fsb-social-bar .fsb-title { display: block; float: left; margin: 3px 20px 0 0; font-size: 16px; font-family: Arial, Helvetica, sans-serif; text-decoration: none; color: #333; }            #fsb-social-bar .fsb-share-facebook { width: 120px; float: left; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-facebook.fsb-hide-count { width: 44px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-twitter { float: left; width: 135px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-twitter.fsb-hide-count { width: 61px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-google { float: left; width: 105px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-google.fsb-hide-count { width: 33px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-linkedin { float: left; width: 135px; padding: 3px 0 2px; height: 25px; }            #fsb-social-bar .fsb-share-linkedin.fsb-hide-count { width: 61px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .fsb-share-pinterest { float: left; width: 115px; padding: 3px 0 2px; height: 25px;}            #fsb-social-bar .fsb-share-pinterest.fsb-hide-count { width: 43px; overflow: hidden; margin-right: 30px; }            #fsb-social-bar .socialite { display: block; position: relative; background: url(http://cdn3.dhht.vn/wp-content/plugins/floating-social-bar/images/fsb-sprite.png) no-repeat scroll 0 0; }            #fsb-social-bar .socialite-loaded { background: none !important; }            #fsb-social-bar .fsb-service-title { display: none; }            #fsb-social-bar a { color: #333; text-decoration: none; font-size: 12px; font-family: Arial, Helvetica, sans-serif; }            #fsb-social-bar .fsb-twitter { width: 105px; height: 25px; background-position: -13px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-twitter .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 69px; color: #333; }            #fsb-social-bar .fsb-google { width: 75px; height: 25px; background-position: -136px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-google .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 41px; color: #333; }            #fsb-social-bar .fsb-google .socialite-button { margin: 0 !important; }            #fsb-social-bar .fsb-share-google .socialite-loaded .socialite-button{padding: 2px 0 0}            #fsb-social-bar .fsb-facebook { width: 89px; height: 25px; background-position: -231px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-facebook .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 52px; color: #333; }            #fsb-social-bar .fsb-facebook .socialite-button { margin: 0 !important;}            #fsb-social-bar .fsb-share-facebook .socialite-loaded .socialite-button {padding: 2px 0 0}            #fsb-social-bar .fsb-linkedin { width: 105px; height: 25px; background-position: -347px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-linkedin .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 70px; color: #333; }            #fsb-social-bar .fsb-linkedin .socialite-button { margin: 0 !important; }            #fsb-social-bar .fsb-pinterest { width: 88px; height: 25px; background-position: -484px -10px; line-height: 25px; vertical-align: middle; }            #fsb-social-bar .fsb-pinterest .fsb-count { width: 30px; text-align: center; display: inline-block; margin: 0px 0 0 50px; color: #333; }            #fsb-social-bar .fsb-pinterest .socialite-button { margin: 0 !important; }            .fsb-clear { clear: both; }            .fsb-clear:after { clear:both; content:; display:block; height:0; line-height:0; overflow:auto; visibility:hidden; zoom:1; }            @media (max-width: 768px) { #fsb-social-bar.fsb-fixed { position: relative !important; top: auto !important; } }        </style><span class="fsb-title">Like:</span><div class="fsb-share-google fsb-hide-count"><a href="https://plus.google.com/share?url=http://donghohaitrieu.com/tin-tuc/dong-ho/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si.html" class="socialite googleplus fsb-google" data-fsb-service="google" data-size="medium" data-href="http://donghohaitrieu.com/tin-tuc/dong-ho/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si.html" rel="nofollow" target="_blank" data-wpel-link="internal"><span class="fsb-service-title">Google+</span><span class="fsb-count">0</span></a></div><div class="fsb-share-facebook fsb-hide-count"><a href="http://www.facebook.com/sharer.php?u=http://donghohaitrieu.com/tin-tuc/dong-ho/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si.html" class="socialite facebook fsb-facebook" data-fsb-service="facebook" data-href="http://donghohaitrieu.com/tin-tuc/dong-ho/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si.html" data-send="false" data-layout="button_count" data-width="60" data-show-faces="false" rel="nofollow" target="_blank" data-wpel-link="internal"><span class="fsb-service-title">Facebook</span><span class="fsb-count">0</span></a></div></div><div class="fsb-clear"></div><p style="text-align: justify;"><span style="font-size: 12pt;"><em><strong><span style="font-family: times new roman, times, serif;">“Thung lũng đồng hồ – Watch Valley” (Thung Lũng Jura – Vallée de Joux) ở Thụy Sĩ, kinh đô của ngành sản xuất đồng hồ khắp thế giới không chỉ được tạo ra bởi những người Tin Lành mà người Do Thái từ Alsace cũng đã góp phần to lớn không kém gì cho sự xuất hiện của nghề chế tác máy thời gian của nơi này.</span></strong></em></span></p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Nguồn Gốc Do Thái Của Nghề Sản Xuất Đồng Hồ Thụy Sĩ</span></strong></span></h2>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">Vallée de Joux/Swiss Jurassic Arc – Thung Lũng Jura hay còn gọi là “Watch Valley” nghĩa là Thung lũng Đồng hồ, nơi được xem là cái nôi của cả ngành sản xuất <a href="http://donghohaitrieu.com" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>đồng hồ</strong></em></a> Thụy Sĩ kể từ thế kỷ 15. </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73050 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-watch-valley.jpg" alt="Nguồn Gốc Do Thái Của Nghề Sản Xuất Đồng Hồ Thụy Sĩ Thung Lũng Đồng Hồ" width="600" height="449" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-watch-valley.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-watch-valley-100x75.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-watch-valley-261x195.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Thung lũng Đồng hồ (màu vàng) được tạo ra bởi tay nghề của người Tin Lành và lớn mạnh bởi khả năng kinh doanh của người Do Thái</em><br>
 </span></p>
<p>&nbsp;</p>
<blockquote>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;">“Thung Lũng Jura trải dài từ khu vực Lake Geneva phía Nam đến Basel ở phía Bắc, bao gồm bang Jura, một phần bang Vaud, Neuchatel, Bern và Basel. Đây là nơi tập trung nhiều nhà sản xuất đồng hồ truyền thống danh tiếng như Audemars Piguet, Jaeger-LeCoultre, Breguet, Blancpain, Patek Philippe,…”</span></em></span></p>
</blockquote>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">✦</span>&nbsp;&nbsp;&nbsp; Xuyên suốt chiều dài lịch sử của mình, Thung lũng Đồng hồ còn được xem là bắt nguồn từ nhiều tín hữu Kháng Cách (Tin Lành) biểu tình trong cuộc cách mạng tôn giáo ở Pháp (còn gọi là Huguenots) chạy trốn cuộc đàn áp ở Pháp đã đến Thụy Sĩ.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">✦</span>&nbsp;&nbsp;&nbsp; Dòng người tị nạn có kỹ năng này đã đưa đồng hồ của họ và kỹ năng chế tác đồng hồ vào Geneva, giúp đưa nơi nền nông nghiệp khó phát triển này trở thành một thành phố nổi tiếng với ngành công nghiệp đồng hồ chất lượng cao.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">✦</span>&nbsp;&nbsp;&nbsp; Nhưng làm nên một Thung lũng Đồng hồ hùng vĩ không chỉ có công lao của những người Kháng Cách mà còn được tạo ra bởi những người Do Thái chỉ chiếm phần nhỏ trong dân số của Thụy Sĩ, thông qua con đường thương mại.</span></p>
<h2 style="text-align: justify;">&nbsp;</h2>
<h2 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Người Do Thái Đã Đưa Đồng Hồ Và Nghề Sản Xuất Đi Khắp Thụy Sĩ</span></strong></span></h2>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trước năm 1866, người Do Thái bị phân biệt đối xử nghiêm trọng ở Thụy Sĩ do Hiến pháp liên bang năm 1848 chỉ cho phép toàn bộ dân số Kitô hữu tự do đi lại và tự do định cư ở bất cứ đâu trên lãnh thổ Thụy Sĩ chứ không phải cho người Do Thái.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chỉ đến năm 1866, những người Do Thái mới có quyền tự quyết định nơi ở và quyền công dân đầy đủ. Nhưng đến Hiến pháp liên bang mới năm 1874 thì họ mới có quyền tự dọ tín ngưỡng và đức tin. </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73048 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Ebel_Villa-Turque.jpg" alt="Nguồn Gốc Do Thái Của Nghề Sản Xuất Đồng Hồ Thụy Sĩ EBEL" width="500" height="500" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Ebel_Villa-Turque.jpg 500w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Ebel_Villa-Turque-100x100.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Ebel_Villa-Turque-261x261.jpg 261w" sizes="(max-width: 500px) 100vw, 500px"><em>EBEL, thương hiệu nổi tiếng với dây có mắt lượn sóng do Eugène Blum, một người Do Thái-Pháp thành lập</em><br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cũng chính những điều khoản trong Hiến pháp 1874 đã gây ra làn sóng nhập cư đầu tiên khi Alsace bị Đức sát nhập vào năm 1871 và những người Alsace buộc phải chọn quốc tịch Đức hoặc rời khỏi đất nước.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhiều người Alsace gốc Do Thái và sau này là người Do Thái từ Đông Âu đã đi đến vùng Jura, những nơi quanh Neuchâtel, Bern, Geneva, Avenches. Từ đó, làng Hégenheim thuộc Pháp nằm ngay bên cạnh Basel vốn là nơi tập trung của cộng đồng người Do Thái đã trở thành điểm đến của một số thợ đồng hồ Do Thái bị từ chối cư trú tại Thụy Sĩ.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ban đầu, nhiều người Do Thái kinh doanh trong lĩnh vực buôn bán gia súc, vải vóc hoặc làm đại lý đồng hồ. Dần dần, một số người xem các đại lý. Một số trong số họ dần dần tiến đến việc sản xuất đồng hồ thông qua thương mại.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">▬</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhờ vào mối quan hệ quốc tế và chuyên môn thương mại của mình, sự xuất hiện của các gia đình Do Thái ở Thụy Sĩ đã tăng mạnh lượng tiêu thụ đồng hồ. Những gia đình nổi tiếng từ Hégenheim có thể kể ra như Bloch, Brunschweig, Didisheim, Dreyfus, Franck, Gintzburger, Grumbach, Lévy, Nordmann, Picard, Schwob và Weil. </span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><br>
 <strong><span style="text-decoration: underline;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/diem-danh-3-vung-san-xuat-dong-ho-thuy-si-quan-trong-nhat.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignleft wp-image-57225 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x.gif" alt="3 Vùng Sản Xuất Đồng Hồ Thụy Sĩ" width="291" height="63" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x.gif 291w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x-100x22.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-12x-261x57.gif 261w" sizes="(max-width: 291px) 100vw, 291px"></a>Khám phá Thung lũng Đồng hồ và:</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">Điểm Danh <a href="http://donghohaitrieu.com/tin-tuc/dong-ho/diem-danh-3-vung-san-xuat-dong-ho-thuy-si-quan-trong-nhat.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>3 Vùng Sản Xuất Đồng Hồ Thụy Sĩ</strong></em></a> <span style="color: #cc0000;">◄</span> Quan Trọng <span style="font-size: 18pt; color: #cc0000;">❶</span></span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">&nbsp;</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Hégenheim, Cái Nôi Của Các Tên Tuổi Lẫy Lừng Của Ngành Chế Tác Sản Xuất Đồng Hồ Thụy Sĩ</span></strong></span></h3>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Đến từ Allschwil gần Basel, gia đình Diedesheim di cư đến Hégenheim vào năm 1694. Theo thời gian, tên họ “Diedesheim” đã được chuyển thành Didisheim, Diedisheim, Ditisheim, Dietisheim và cuối cùng là Didesheim.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Năm 1850, anh em Marc và Emmanuel Didisheim thành lập một công ty sản xuất đồng hồ tại Saint-Imier và đăng ký nó dưới tên M &amp; E Didisheim vào năm 1884. Henry-Albert, Edgar và Hyppolite, các con trai của Marc đăng ký thương hiệu Marvin vào năm 1893.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Sau khi chuyển đến La Chaux-de-Fonds, họ lại biến Marvin thành một thương hiệu quốc tế. Từ năm 1893 trở lại đây, Marvin đã xuất khẩu đồng hồ đeo tay sang Hoa Kỳ và phát triển kinh doanh với những nỗ lực cơ giới hóa để sản xuất hàng loạt. Năm 1905, công ty bắt đầu kinh doanh dưới cái tên “Henri-Albert Didisheim, fabrique Marvin”.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Marc và Emmanuel còn có một người anh em là Jacques Didisheim, ông này đã mở ông mở một xưởng chế tạo đồng hồ tại Saint Imier gọi là Fabrique Juvenia Didisheim-Goldschmidt et Cie vào năm 1860, sau đó chuyển việc kinh doanh đến La Chaux-de-Fonds vào năm 1882.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="alignright wp-image-73051" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-watch-valley-Vulcain-Cricket-120.jpg" alt="Nguồn Gốc Do Thái Của Nghề Sản Xuất Đồng Hồ Thụy Sĩ Vulcain 120 Cricket " width="400" height="380" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-watch-valley-Vulcain-Cricket-120.jpg 527w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-watch-valley-Vulcain-Cricket-120-100x95.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-watch-valley-Vulcain-Cricket-120-261x248.jpg 261w" sizes="(max-width: 400px) 100vw, 400px"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Ngoài ra, ba con trai của Marc Didisheim đã kết hôn với ba cô con gái của Maurice Ditisheim. Chú của chú rể, Gaspard, là đồng sáng lập của Ditisheim &amp; Cie Fabrique Vulcain với anh trai Maurice và cha của Paul Bernard Ditisheim (người sáng lập Solvil ở La Chaux-de-Fonds).</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Maurice Ditisheim đã rời Hégenheim năm 1858 và định cư tại La Chaux-de-Fonds với tư cách là một nhà môi giới đồng hồ, hoạt động kinh doanh thông qua công ty Manufacture Maurice Ditisheim.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Tại Hội chợ Thế giới Paris năm 1889, công ty Manufacture Maurice Ditisheim đã được trao huy chương đồng cho “Vallée de l’Arve”, một chiếc đồng hồ có các chức năng cực kỳ phức tạp.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Vào năm 1894, công ty này sản xuất đồng hồ dưới thương hiệu “Vulcain” nhưng niềm tự hào của họ chỉ thực sự đến khi bộ máy 120 Cricket giới thiệu năm 1947 (bắt đầu phát triển vào năm 1942).</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Nói đến Paul Bernard Ditisheim, ông là người tham gia kinh doanh trước tiên trong gia đình Vulcain khi sáng lập ra lĩnh vực sản xuất đồng hồ với hai công ty Ditis và Solvil et Titus vào năm 1892.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Paul Bernard Ditisheim cũng được coi là cha đẻ của phương pháp đo lường thời gian hiện đại (chronometry), ông đã tạo ra các máy đo thời gian chính xác nhất đã từng sản xuất. Năm 1912, ông đã đạt được kỷ lục thế giới về Chronometric tại Đài Quan sát Hoàng gia ở Kew.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Paul Bernard Ditisheim còn cộng tác chặt chẽ với Charles Edouard Guillaume để nghiên cứu ảnh hưởng của áp suất khí quyển và từ trường và tạo ra chất bôi trơn tổng hợp với kỹ sư hóa học, Paul Woog. Năm 1930, ông đã bán công ty Solvil et Titus cho Paul Bernard Vogel.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Về phần Paul Bernard Vogel, ông kết hôn với Suzanne, một trong những người thừa kế của gia đình Eberhard và có được các mối quan hệ với những gia đình lớn trong ngành đồng hồ của thời kỳ đó, đặc biệt là ba gia đình Eberhards, Blums và Ditisheims. </span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="alignleft wp-image-73049" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Tavannes_Chronograph_AS01396_1.jpg" alt="Nguồn Gốc Do Thái Của Nghề Sản Xuất Đồng Hồ Thụy Sĩ Tavannes" width="540" height="360" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Tavannes_Chronograph_AS01396_1.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Tavannes_Chronograph_AS01396_1-100x67.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Tavannes_Chronograph_AS01396_1-261x174.jpg 261w" sizes="(max-width: 540px) 100vw, 540px"><em><span style="color: #ff6600;">◄</span> Thương hiệu từng lớn hàng đầu Thụy Sĩ xưa kia Tavannes có rất nhiều mối liên quan sâu sắc đến các thương gia Do Thái</em><br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Một người Do Thái khác, Théodore Schwob, sinh ra ở Hégenheim, định cư ở La Chauxde-Fonds như một thương gia buôn ngựa, sau đó tự xem mình như là một thợ đồng hồ bằng cách thành lập công ty Schwob Frères et Cie vào năm 1862.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Théodore Schwob gả con gái mình cho Adrien Schwob, con trai của Joseph Schwob, một người Alsace cũng đã di cư đến La Chaux-de-Fonds, trước đây là một thương gia buôn vải và sau này trở thành một đại diện bán hàng cho hãng Zenith.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Một thời gian sau, Adrien thành lập công ty riêng của mình tại Le Locle rồi bán nó và cùng góp vốn đầu tư với Théodore Schwob cho Henri Sandoz sản xuất đồng hồ ở công ty Tavannes của ông.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Do đó, vốn của Tavannes Watch Co, đăng ký vào ngày 25 tháng 9 năm 1895 đến từ Schwob Frères et Cie (Théodore Schwob) và Schwob et Cie (Joseph Schwob). Điều này đảm bảo cho việc Henri Sandoz, người được bổ nhiệm làm giám đốc của Tavannes sẽ để Théodore Schwob và Joseph Schwob bán đồng hồ do ông sản xuất.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Để tránh cạnh tranh lẫn nhau, các công ty cổ phần này chia nhau các thị trường Nga, Nhật Bản và Trung Đông. Ngay trước khi Chiến tranh thế giới thứ nhất nổ ra, công ty Tavannes Watch đã trở thành công ty sản xuất đồng hồ lớn thứ hai của Thụy Sỹ nhờ các phương pháp hợp lý hoá (tất cả cùng có lợi) dựa trên mô hình của Mỹ.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Năm 1945, Schwob Frères et Cie SA trở thành Cyma Watch Co SA. Năm 1966, Tavannes Watch Co đã được Ebauches SA và Cyma Watch Co SA mua lại, kể từ đó, sản phẩm của Tavannes đều sử dụng thương hiệu Cyma. </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73047 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Cyma_WWW_AS01679.jpg" alt="Nguồn Gốc Do Thái Của Nghề Sản Xuất Đồng Hồ Thụy Sĩ CYMA" width="600" height="400" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Cyma_WWW_AS01679.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Cyma_WWW_AS01679-100x67.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-Cyma_WWW_AS01679-261x174.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Đồng hồ thương hiệu CYMA</em><br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Vài tên tuổi khác cũng sinh ra ở Hégenheim, các anh em Achille, Léopold và Isidore Ditesheim thành lập công ty LAI Ditesheim ở La Chaux-de-Fonds năm 1883; đến năm 1903 nó đã trở thành Movado LAI Ditesheim.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Năm 1947, Nathan Georg Horwitt, một môn đồ của trường phái Bauhaus đã thiết kế nên biểu tượng Museum Watch ngày nay được sở hữu bởi hãng Movado, đồng hồ mà sau này được chọn trưng bày tại Bảo tàng Nghệ thuật Hiện đại New York.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">❖</span> &nbsp;&nbsp; Năm 1911, Eugène Blum, hậu duệ của chủ một đại lý đồng hồ ở Belfort và vợ ông, Alice Lévy, đã sáng lập nhà sản xuất Ebel Blum &amp; Cie ở La Chaux-de-Fonds, Ebel là chữ viết tắt của Eugène Blum Et Lévy, đó cũng chính là thương hiệu EBEL ngày nay. </span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/7-chuyen-chua-ke-ve-dong-ho-hieu-movado-den-tu-thuy-si.html" target="_blank" rel="noopener" data-wpel-link="internal"><img class="alignleft wp-image-57227 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-14x.gif" alt="7 Chuyện Chưa Kể Về Đồng Hồ Hiệu Movado Đến Từ Thụy Sĩ" width="300" height="100" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-14x.gif 300w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-14x-100x33.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-14x-261x87.gif 261w" sizes="(max-width: 300px) 100vw, 300px"></a>= = = = = = = = = = = = = = = = = = = = =</span></p>
<p style="text-align: center;"><span style="text-decoration: underline; font-size: 12pt;"><strong><span style="font-family: times new roman, times, serif;">Bạn có muốn biết?</span></strong></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/7-chuyen-chua-ke-ve-dong-ho-hieu-movado-den-tu-thuy-si.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>7 Chuyện Chưa Kể Về Đồng Hồ Hiệu Movado Đến Từ Thụy Sĩ</strong></em></a><br>
 </span></p>
<p style="text-align: justify;">&nbsp;</p>
<p>&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Bienne, Nhà Của Các Thợ Đồng Hồ Đến Từ Alsace Và Jura</span></strong></span></h3>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">✧</span>&nbsp;&nbsp;&nbsp; Sau sự xuất hiện của các thợ đồng hồ từ Jura ở Pháp, những người khác rời Alsace để đến định cư tại Bienne. Vì vậy, những công ty như Antima Watch (của gia đình Antmann và Appel), Liebmann và Liema Watch (Sigmund Liebmann) và Goschler et Cie đã được ra đời.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">✧</span>&nbsp;&nbsp;&nbsp; Sau này, Goschler Frères thành lập năm 1830 đã nổi tiếng với thương hiệu “Urania” dưới thời quản lý của Charles Picard, chủ tịch cộng đồng Do Thái ở Bienne. Một người khác, Léon Lévy, một trong 8 người con của Gaspard Lévy ở Hégenheim cũng đã thành lập công ty riêng Léon Lévy et Frères tại Bienne vào năm 1883.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">✧</span>&nbsp;&nbsp;&nbsp; Ba năm sau, công ty Léon Lévy et Frères đã có đến 700 nhân viên và có năng lực sản xuất hoàn chỉnh chiếc đồng hồ. Năm 1905, công ty này mở thêm một nhà máy ở Moutier và từ đó họ đã phát triển nên thương hiệu Pierce chuyên về đồng hồ tự động (đã sụp đổ vào năm 1980). </span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><img class="aligncenter wp-image-73053 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-ROAMER-R-Matic.jpg" alt="Nguồn Gốc Do Thái Của Nghề Sản Xuất Đồng Hồ Thụy Sĩ ROAMER R-Matic" width="600" height="296" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-ROAMER-R-Matic.jpg 600w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-ROAMER-R-Matic-100x49.jpg 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/11/nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si-ROAMER-R-Matic-261x129.jpg 261w" sizes="(max-width: 600px) 100vw, 600px"><em>Thương hiệu Roamer cũng là một thành tựu của người Do Thái (Ảnh: ROAMER R-Matic)</em><br>
 </span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">✧</span>&nbsp;&nbsp;&nbsp; Hay Fritz Meyer thành lập công ty đầu tiên của ông tại Solothurn năm 1888 và sau đó, liên kết với Johann Stüdeli để thành lập công ty thứ hai gọi là Meyer &amp; Stüdeli AG vào năm 1905. Bộ máy đồng hồ đầu tiên của họ là Médana và Roamer. Dần dần, cái tên của bộ máy Roamer đã trở thành tên của công ty, Roamer Watch Co SA.</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;"><span style="font-size: 14pt;"><strong><span style="font-family: times new roman, times, serif;">Và Những Cái Tên Khác?</span></strong></span></h3>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">●</span>&nbsp;&nbsp;&nbsp; Ngoài những tên tuổi lớn đã đề cập ở trên, vẫn còn rất nhiều các công ty được thành lập bởi người làm đồng hồ Do Thái, điển hình như Auréole Watch Cie của Philidor Wolf , Homis Watch của Schymanski, một gia đình di cư từ Ba Lan hay nhà sản xuất đồng hồ Nathan Weilđã tung ra chiếc đồng hồ đeo tay chronograph đầu tiên hoặc chronograph chia giây đầu tiên vào năm 1913.</span></p>
<p style="text-align: justify;"><span style="font-family: times new roman, times, serif; font-size: 12pt;"><span style="color: #d90000;">●</span>&nbsp;&nbsp;&nbsp; Cho dù những cái tên này vẫn tiếp tục sự nghiệp hay đã bị quên lãng giữa dòng thời gian thì tất cả họ đều góp phần vào sự phát triển của ngành công nghiệp đồng hồ Thụy Sỹ cũng như các xưởng đồng hồ thủ công được thành lập trước đó bởi những người Tin Lành.</span></p>
<blockquote>
<p style="text-align: center;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;">“Trong khi những tín hữu Tin Lành đã tạo ra nên nghề làm đồng hồ ở Thung Lũng Jura cũng như cả Thụy Sĩ, còn người Do Thái đã khiến ngành đồng hồ ở nơi đây và nhiều nơi khác phát triển lớn mạnh.”</span></em></span></p>
</blockquote>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><em><span style="font-family: times new roman, times, serif;">Theo Europa Star</span></em></span></p>
<p>&nbsp;</p>
<p style="text-align: justify;"><span style="font-size: 12pt;"><a href="http://donghohaitrieu.com/tin-tuc/dong-ho/nguon-goc-thuy-si-tren-dong-ho-cua-nhat-ban-nguyen-thuy.html" target="_blank" rel="noopener" data-wpel-link="internal"><span style="font-family: times new roman, times, serif;"><img class="alignleft wp-image-57224 size-full" src="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x.gif" alt="Nguồn Gốc Thụy Sĩ Trên Đồng Hồ Của Nhật Bản Nguyên Thủy" width="299" height="179" srcset="http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x.gif 299w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x-100x60.gif 100w,  http://cdn3.dhht.vn/wp-content/uploads/2017/03/button-11x-261x156.gif 261w" sizes="(max-width: 299px) 100vw, 299px"></span></a></span></p>
<p>&nbsp;</p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">= = = = = = = = = = = = = = = = = = = = = = =</span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">Khám phá thêm: <a href="http://donghohaitrieu.com/tin-tuc/dong-ho/nguon-goc-thuy-si-tren-dong-ho-cua-nhat-ban-nguyen-thuy.html" target="_blank" rel="noopener" data-wpel-link="internal"><em><strong>Nguồn Gốc Thụy Sĩ Trên Đồng Hồ Của Nhật Bản Nguyên Thủy</strong></em></a></span></p>
<p style="text-align: center;"><span style="font-family: times new roman, times, serif; font-size: 12pt;">= = = = = = = = = = = = = = = = = = = = = = =</span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="text-align: right;"><span style="font-size: 12pt;"><em><strong><span style="font-family: times new roman, times, serif;">RQSThao</span></strong></em></span></p>
<!-- Begin Yuzo --><div class="yuzo_related_post style-3" data-version="5.12.70"><div class="yuzo_clearfixed yuzo__title"><h3>Bài Viết Liên Quan</h3></div><div class="yuzo_wraps">
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/5-dieu-khong-the-khong-biet-ve-huyen-thoai-dong-ho-lan-doxa-sub.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> 5 Điều Không Thể Không Biết Về Huyền Thoại Đồng Hồ Lặn Doxa Sub </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/frederique-constant-hieu-dong-ho-thuy-si-may-in-house-gia-hop-ly-nhat.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Frederique Constant, Hiệu Đồng Hồ Thụy Sĩ Máy In-House Giá Hợp Lý Nhất </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/tu-dien-thuat-ngu-de-choi-dong-ho-rolex-thuy-sy-chinh-hang.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Từ Điển Thuật Ngữ Để Chơi Đồng Hồ Rolex Thụy Sỹ Chính Hãng </a>
							  
					</div>
					<div class="relatedthumb yuzo-list">  
						<a class="link-list yuzo__text--title" href="http://donghohaitrieu.com/tin-tuc/dong-ho/ban-co-biet-dong-ho-vang-khoi-thuy-si-luon-la-18k-tai-sao.html" target="_blank" style="font-size:13px;font-weight:bold;;line-height:21px;" data-wpel-link="internal"> Bạn Có Biết Đồng Hồ Vàng Khối Thụy Sĩ Luôn là 18K? Tại Sao? </a>
							  
					</div></div> <!-- end wrap -->
</div> <style>
							.yuzo_related_post .relatedthumb{background: !important; -webkit-transition: background 0.2s linear; -moz-transition: background 0.2s linear; -o-transition: background 0.2s linear; transition: background 0.2s linear;;color:!important;}
							.yuzo_related_post .relatedthumb:hover{background:#ffffff !important; -webkit-transition: background 0.2s linear; -moz-transition: background 0.2s linear; -o-transition: background 0.2s linear; transition: background 0.2s linear;;color:!important;}
							.yuzo_related_post .yuzo_text, .yuzo_related_post .yuzo_views_post {color:!important;}
							.yuzo_related_post .relatedthumb:hover .yuzo_text, .yuzo_related_post:hover .yuzo_views_post {color:!important;}
							.yuzo_related_post .relatedthumb a{color:!important;}
							.yuzo_related_post .relatedthumb a:hover{color:!important;}
							.yuzo_related_post .relatedthumb:hover a{ color:!important;}
							.yuzo_related_post .relatedthumb{  margin: 0px  0px  0px  0px;   padding: 5px  5px  5px  5px;  }
							</style>  <!-- End Yuzo :) -->                            </div>', 5, N'nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si', N'nguon-goc-do-thai-cua-nghe-san-xuat-dong-ho-thuy-si.jpg', 1)
INSERT [HangSanXuat] ([maHangSX], [tenHangSX]) VALUES (N'Aiers', N'Aiers')
INSERT [HangSanXuat] ([maHangSX], [tenHangSX]) VALUES (N'Bestdon', N'Bestdon')
INSERT [HangSanXuat] ([maHangSX], [tenHangSX]) VALUES (N'Binger', N'Binger')
INSERT [HangSanXuat] ([maHangSX], [tenHangSX]) VALUES (N'Time2U', N'Time2U')
INSERT [HangSanXuat] ([maHangSX], [tenHangSX]) VALUES (N'Vinoce', N'Vinoce')
SET IDENTITY_INSERT [hopThu] ON 

INSERT [hopThu] ([hopThuID], [hoTen], [sdt], [email], [noiDung], [ngayGui], [daDuyet], [tkDuyet], [ghiChu]) VALUES (1, N'nguyễn tuấn tú', N'0168568530', N'nguyentuantu@gmail.com', N'Test gửi lần 1', CAST(N'2017-11-21 15:01:21.707' AS DateTime), 0, N'thienvu', N'đã duyệt ngày 5/12/2017')
SET IDENTITY_INSERT [hopThu] OFF
INSERT [loaiSP] ([maLoai], [tenLoai], [biDanh]) VALUES (N'Nam', N'Nam', N'dong-ho-nam')
INSERT [loaiSP] ([maLoai], [tenLoai], [biDanh]) VALUES (N'Nu', N'Nữ', N'dong-ho-nu')
INSERT [quyen] ([maQuyen], [tenQuyen]) VALUES (N'admin', N'Quản trị')
INSERT [quyen] ([maQuyen], [tenQuyen]) VALUES (N'author', N'Tác giả')
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (1, N'Nam', N'Bestdon', N'Đồng hồ nam Bestdon Chronograph', N'<p style="text-align: justify;">
			- Đồng hồ nam, mặt tròn, thiết kế trẻ trung, hiện đại, sang trọng và phong cách.<br>
			<br>
			- Mặt gồm: 3 đồng hồ nhỏ hiển thị thời gian dễ hiểu, dễ theo dõi.<br>
			<br>
			- Mặt kính sapphire cao cấp chịu lực, chống xước tuyệt đối chỉ sau kim cương.<br>
			<br>
			- Vỏ chất liệu thép không gỉ, chống oxy hóa, chống trầy xước.<br>
			<br>
			- Đồng hồ có 2 phiên bản dây da và dây kim loại đầy tiện dụng, thời trang và đa dạng phong cách.<br>
			<br>
			- Sườn phải gồm 3 nút: start/reset và núm vặn vô cùng bền đẹp, dễ dàng sử dụng.<br>
			<br>
			- Ô nhỏ hiển thị ngày tự động trong khoảng 4-5h dễ nhìn.<br>
			<br>
			- Công nghệ chống nước 3ATM cho phép bạn đi mưa, rửa tay mà không lo nước thấm vào làm hỏng động cơ.</p>', N'thienvu', 3799000, 34, 50, N'dong-ho-nam-bestdon-chronograph', N'dong-ho-nam-bestdon-chronograph.jpg', 0, N'', N'Bạc - Vàng', N'Trung bình - To', 5, 0, 0, CAST(N'2017-11-10 00:00:00.000' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (2, N'Nam', N'Aiers', N'Đồng hồ nam Aiers B125G chạm rỗng hai mặt', N'Đồng hồ nam Aiers chạm rỗng hai mặt thiết kế phục cổ, tạo hình quả quýt; mặt chạm rỗng mạ vàng 18k; bộ máy cơ tự động chạy giờ chuẩn xác; mang tới nét lịch sự và sang trọng cho phái mạnh', N'thienvu', 3999000, 35, 50, N'dong-ho-nam-aiers-b125g-cham-rong-hai-mat', N'dong-ho-nam-aiers-b125g-cham-rong-hai-mat.jpg', 4, N'', N'Trắng - Đen - Nâu', N'Nhỏ - Trung bình - To', 5, 0, 0, CAST(N'2017-11-11 12:55:33.093' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (3, N'Nam', N'Aiers', N'Đồng hồ cơ automatic nam Aiers B126G', N'Đồng hồ cơ nam chạm rỗng hai mặt Aiers B126G thiết kế hai mặt chạm rỗng, mạ vàng 18k, bề mặt kính 3D mang đến vẻ sang trọng, cao cấp, chịu lực tốt, nhìn thấu từng chuyển động kiểu đồng hồ cơ tự động, mặt tròn, kiểu dáng sang trọng khẳng định đẳng cấp, lịch lãm, quyền uy của phái mạnh.', N'thienvu', 2699000, 36, 25, N'dong-ho-co-automatic-nam-aiers-b126g', N'dong-ho-co-automatic-nam-aiers-b126g.jpg', 5, N'', N'Nâu - Đen', N'Nhỏ - To', 4, 0, 0, CAST(N'2017-11-11 13:36:06.420' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (4, N'Nam', N'Vinoce', N'Đồng hồ doanh nhân nam máy cơ Vinoce V633231G', N'Đồng hồ cơ nam Vinoce V633231G mặt chạm rỗng, với thiết kế máy cơ MIYOTA hoàn toàn tự động giúp chạy giờ chuẩn xác giúp bạn dễ dàng sắp xếp công việc hàng ngày một cách phù hợp nhất, kim và mốc chỉ giờ được thiết kế ấn tượng, bắt mắt tôn lên đẳng cấp của sản phẩm.', N'author1', 3499000, 35, 25, N'dong-ho-doanh-nhan-nam-may-co-vinoce-v633231g', N'dong-ho-doanh-nhan-nam-may-co-vinoce-v633231g.jpg', 3, N'', N'Bạc - Vàng', N'Trung bình - To', 5, 0, 0, CAST(N'2017-11-11 13:38:06.203' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (5, N'Nu', N'Aiers', N'Đồng hồ cơ tự động nữ Aiers B202L', N'Đồng hồ cơ chạm rỗng nữ Aiers B202L kiểu máy cơ tự động được chạm rỗng, hệ thống được gắn đá ru-bi chống mài mòn, sang trọng, đẳng cấp, ổn định, chuẩn xác, nhìn thấu bên trong; mặt tròn đá sapphire mang đến vẻ sang trọng, tinh tế và quyến rũ của phái đẹp.', N'author1', 3799000, 34, 20, N'dong-ho-co-tu-dong-nu-aiers-b202l', N'dong-ho-co-tu-dong-nu-aiers-b202l.jpg', 5, N'', N'Đỏ - Nẩu', N'Nhỏ - Trung bình', 4, 0, 0, CAST(N'2017-11-11 13:39:43.983' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (6, N'Nam', N'Vinoce', N'Đồng hồ nam dây da Vinoce 8388G kiểu dáng đơn giản', N'Đồng hồ nam dây da Vinoce 8388G kiểu dáng đơn giản, thiết kế số chỉ giờ la mã mang hơi hướng phục cổ cùng mốc giờ to bản vừa toát lên vẻ đẹp mạnh mẽ, khỏe khoắn vừa giúp bạn dễ dàng theo dõi thời gian, mặt kính có khả năng chống trầy xước giữ cho sản phẩm luôn bền đẹp trong suốt quá trình sử dụng.', N'author2', 3799000, 34, 25, N'dong-ho-nam-day-da-vinoce-8388g-kieu-dang-don-gian', N'dong-ho-nam-day-da-vinoce-8388g-kieu-dang-don-gian.jpg', 3, N'', N'Đen', N'Trung bình', 4, 0, 0, CAST(N'2017-11-11 14:06:44.670' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (7, N'Nam', N'Binger', N'Đồng hồ doanh nhân nam Binger', N'Đồng hồ nam Binger máy quartz, phong cách doanh nhân, mốc giờ số La Mã xen kẽ đính đá nổi bật, vỏ và dây đeo thép 316L tinh luyện, chống nước 3ATM thuận tiện trong sinh hoạt.', N'author2', 1099000, 27, 10, N'dong-ho-doanh-nhan-nam-binger', N'dong-ho-doanh-nhan-nam-binger.jpg', 3, N'', N'Bạc - Trắng', N'To', 5, 0, 0, CAST(N'2017-11-11 14:08:11.900' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (8, N'Nam', N'Vinoce', N'Đồng hồ nam Vinoce mặt siêu mỏng (5mm)', N'Đồng hồ nam Vinoce mặt siêu mỏng (5mm) thiết kế là sự kết hợp giữa cái đẹp và sự giản đơn, mang đến cho bạn một sự thoải mái tuyệt vời với mức chống thấm 3ATM.', N'author2', 2990000, 33, 10, N'dong-ho-nam-vinoce-mat-sieu-mong-5mm', N'dong-ho-nam-vinoce-mat-sieu-mong-5mm.jpg', 3, N'', N'Vàng', N'Trung bình - To', 5, 0, 0, CAST(N'2017-11-11 14:09:16.393' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (9, N'Nam', N'Aiers', N'Đồng hồ nam Aiers D113G phong cách Thụy Sĩ', N'Đồng hồ nam Aiers D113G phong cách Thụy Sĩ, sử dụng ô nhỏ hình chữ nhật chỉ ngày làm tăng thêm sự tiện ích cho sản phẩm
                ', N'author1', 3640000, 30, 10, N'dong-ho-nam-aiers-d113g-phong-cach-thuy-si', N'dong-ho-nam-aiers-d113g-phong-cach-thuy-si.jpg', 3, N'', N'Vàng - Bạc', N'Trung bình', 5, 0, 0, CAST(N'2017-11-14 11:37:56.853' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (10, N'Nam', N'Aiers', N'Đồng hồ cơ dây da nam Aiers B163G', N'Đồng hồ nam Aiers tạo vân hình học, mốc giờ kết hợp dạng số La Mã kết hợp nạm đá tinh xảo, cố định chắc chắn thể hiện vẻ đẹp lịch lãm, lãng mạn', N'author1', 2100000, 30, 8, N'dong-ho-co-day-da-nam-aiers-b163g', N'dong-ho-co-day-da-nam-aiers-b163g.jpg', 5, N'', N'Vàng - Trắng', N'Trung bình - To', 5, 0, 0, CAST(N'2017-11-14 11:46:28.743' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (11, N'Nam', N'Aiers', N'Đồng hồ nam Aiers B120G dây silicone dẻo dai', N'Đồng hồ nam Aiers B120G dây silicone dẻo dai, có bề mặt kính chất lượng cao cấp; kim chỉ dạng thanh kiếm với chức năng hiển thị dạ quang; dây đeo hai mặt sử dụng chất liệu da cao cấp mang đến vẻ oai phong lẫm liệt, đầy nam tính cho phái mạnh', N'author1', 1470000, 30, 15, N'dong-ho-nam-aiers-b120g-day-silicone-deo-dai', N'dong-ho-nam-aiers-b120g-day-silicone-deo-dai.jpg', 1, N'', N'Trắng', N'Nhỏ - Trung Bình', 4, 0, 0, CAST(N'2017-11-14 12:02:14.317' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (12, N'Nam', N'Bestdon', N'Đồng hồ nam Bestdon Chronograph 9918G', N'Đồng hồ nam Bestdon Chronograph 9918G phong cách Thụy Sỹ', N'author2', 1750000, 30, 12, N'dong-ho-nam-bestdon-chronograph-9918g', N'dong-ho-nam-bestdon-chronograph-9918g.jpg', 1, N'', N'Trắng', N'Trung bình', 5, 0, 0, CAST(N'2017-11-14 12:06:22.557' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (13, N'Nam', N'Aiers', N'Đồng hồ nam Aiers B111G', N'Đồng hồ nam Aiers B111G mặt tròn cổ điển, thiết kế đồng hồ kiểu 6 kim tiện dụng mang lại nét mới lạ, mạnh mẽ và nam tính', N'author2', 2030000, 30, 55, N'dong-ho-nam-aiers-b111g', N'dong-ho-nam-aiers-b111g.jpg', 5, N'<div id="pdt_tdt" class="box_pdt_detail" style="border-top: 0;">
                        <div style="font-size: 11.8181819915771px; text-align: justify;">
	<div style="font-size: 11.8181819915771px;">
		<strong>Nhãn hàng</strong>: Aiers</div>
	<div style="font-size: 11.8181819915771px;">
		&nbsp;</div>
	<div style="font-size: 11.8181819915771px;">
		<strong>Loại đồng hồ</strong>: Quartz</div>
	<div style="font-size: 11.8181819915771px;">
		&nbsp;</div>
	<div style="font-size: 11.8181819915771px;">
		<strong>Giới tính</strong>: Nam
		<div>
			&nbsp;</div>
		<div>
			<div style="font-size: 11.8181819915771px;">
				<strong>Kiểu mặt</strong>: Tròn</div>
		</div>
		<br>
		<strong>Chất liệu mặt:</strong>&nbsp;Kính khoáng</div>
	<div style="font-size: 11.8181819915771px;">
		&nbsp;</div>
	<div style="font-size: 11.8181819915771px;">
		<strong>Chất liệu quai</strong>: Hợp kim</div>
	<div style="font-size: 11.8181819915771px;">
		&nbsp;</div>
	<div style="font-size: 11.8181819915771px;">
		<strong>Chất liệu vỏ</strong>: Thép không gỉ</div>
	<div style="font-size: 11.8181819915771px;">
		<br>
		<strong>Đường kính mặt</strong>: Rộng 40mm<br>
		<br>
		<div>
			<div style="font-size: 11.8181819915771px;">
				<strong>Độ dày mặt:</strong>&nbsp;10mm<br>
				<br>
				<strong>Kích thước dây:</strong>&nbsp;325 x 18mm<br>
				&nbsp;</div>
			<div style="font-size: 11.8181819915771px;">
				<strong>Kiểu khóa</strong>: Khóa ấn</div>
		</div>
		<div>
			<div style="font-size: 11.8181819915771px;">
				&nbsp;</div>
			<div style="font-size: 11.8181819915771px;">
				<strong>Chống nước</strong>: 5ATM<br>
				<br>
				<strong style="font-size: 11.8181819915771px;">Bảo hành</strong><span style="font-size: 11.8181819915771px;">: 1 năm<br>
				<br>
				<strong>Giới thiệu:</strong></span><br>
				<br>
				&nbsp;</div>
			<div style="font-size: 11.8181819915771px;">
				&nbsp;</div>
			<div style="font-size: 11.8181819915771px; text-align: center;">
				<span style="font-size: 11.8181819915771px;"><img alt="Đồng hồ nam Aiers B111G " src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/WYL7SisN.jpg?v=635484448513435089" style="width: 700px; height: 463px;"><img alt="Đồng hồ nam Aiers B111G đẹp" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/eGLFBlq9.jpg?v=635484448559427719" style="width: 700px; height: 457px;"><img alt="Đồng hồ nam Aiers B111G độc" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/kWti5zrd.jpg?v=635484448608150506" style="width: 700px; height: 594px;"><img alt="Đồng hồ nam Aiers B111G lạ" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/vIvYWbcM.jpg?v=635484448660973528" style="width: 700px; height: 642px;"><img alt="Đồng hồ nam Aiers B111G ấn tượng" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/3TvE6bdM.jpg?v=635484448714506589" style="width: 700px; height: 1102px;"><img alt="Đồng hồ nam Aiers B111G thời trang" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/EpHCLxo4.jpg?v=635484448770419788" style="width: 700px; height: 671px;"><img alt="Đồng hồ nam Aiers B111G phong cách" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/oKDGVGWg.jpg?v=635484448825722951" style="width: 700px; height: 681px;"><img alt="Đồng hồ nam Aiers B111G nổi bật" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/ZhK8wF7d.jpg?v=635484448875565802" style="width: 700px; height: 625px;"><img alt="Đồng hồ nam Aiers B111G cao cấp" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/iRlBSRTL.jpg?v=635484448928588834" style="width: 700px; height: 394px;"><img alt="Đồng hồ nam Aiers B111G chất lượng" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/IG6qusqt.jpg?v=635484448980151783" style="width: 700px; height: 392px;"><img alt="Đồng hồ nam Aiers B111G chính hãng" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/VuP5Jvaj.jpg?v=635484449030874685" style="width: 700px; height: 665px;"><img alt="Đồng hồ nam Aiers B111G hiện đại" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/nAie3klT.jpg?v=635484449078737422" style="width: 700px; height: 546px;"><img alt="Đồng hồ nam Aiers B111G lịch lãm" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/FkVm6xpK.jpg?v=635484449130150363" style="width: 700px; height: 548px;"><img alt="Đồng hồ nam Aiers B111G thiết kế đẹp" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/imficSM1.jpg?v=635484449181463298" style="width: 700px; height: 578px;"><img alt="Đồng hồ nam Aiers B111G thiết kế ấn tượng" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/Rfa2vMd6.jpg?v=635484449235916412" style="width: 700px; height: 1108px;"></span></div>
			<div style="font-size: 11.8181819915771px; text-align: center;">
				<img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/121ZkQ2P.jpg?v=635764408629247372" style="font-size: 11.8181819915771px; width: 700px; height: 1064px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/Yw57WVWm.jpg?v=635764408731403215" style="font-size: 11.8181819915771px; width: 700px; height: 674px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/9xF5hxSg.jpg?v=635764408905403167" style="font-size: 11.8181819915771px; width: 700px; height: 495px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/RkK87f18.jpg?v=635764409014369400" style="font-size: 11.8181819915771px; width: 700px; height: 584px;"></div>
			<div>
				&nbsp;</div>
			<div>
				&nbsp;</div>
		</div>
	</div>
</div>
<p style="text-align: justify;">
	&nbsp;</p>
<h2 style="text-align: center;">
	<br>
	<strong><span style="font-size:14px;">Đồng hồ nam Aiers B111G</span></strong><br>
	&nbsp;</h2>
<p style="text-align: justify;">
	Ngay từ thời xa xưa, con người đã rất quan tâm đến thời gian, người ta theo dõi mặt trời, mặt trăng, nước thủy triều để xác định thời gian. Những đồng hồ đầu tiên trên thế giới được nhắc đến là đồng hồ mặt trời, đồng hồ cát. Người ta cũng sử dụng nến, nhang để ước lượng thời gian. Đây có thể coi là những chiếc đồng hồ thô sơ đầu tiên trên thế giới do sự sáng tạo của con người phát minh ra. Trải qua sự biến chuyển của thời gian và óc sáng tạo, mày mò nghiên cứu của con người, những chiếc&nbsp; <strong>đồng hồ đeo tay</strong>&nbsp; đã ra đời phục vụ nhu cầu và lợi ích cần thiết của con người.</p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: justify;">
	<a href="http://baza.vn/dong-ho-nam-aiers-b111g/p/qbHQAjgV"><strong>Đồng hồ nam Aiers</strong> </a>B111G là một kiết tác nghệ thuật độc đáo, là đứa con tinh thần của nhà chế tác, mẫu đồng hồ này nằm trong bộ sưu tập đồng hồ hiệu nam mới nhất của thương hiệu đồng hồ cao cấp Aiers.</p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: justify;">
	Mặt chiếc &nbsp;<strong>đồng hồ nam</strong> &nbsp;này với nền màu đen, khắc số màu trắng và logo màu vàng sang trọng, với sự phối màu nổi bật, 6 kim chỉ thời gian và ô lịch nhỏ được sắp xếp một cách đầy thời trang và tinh tế. Bảo vệ cho các chi tiết này chính là mặt kính đồng hồ chất liệu sapphire cao cấp có độ cứng chỉ sau kim cương. Mặt kính sapphire có độ trong suốt và chống xước rất tốt, hoàn toàn chịu được những va đập thông thường mà không hề hấn gì.</p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: justify;">
	Sẽ thật là thiếu sót nếu không nhắc đến thiết kế núm chỉnh giời của chiếc&nbsp; <a href="http://baza.vn/dong-ho-nam/c"><strong>đồng hồ nam</strong></a>&nbsp; này. Núm chỉnh giờ được thiết kế với những đường răng chống trơn trượt, giúp dễ dàng chỉnh giờ, chống nước, chống bụi tốt. Nút A/B ở bên trên/dưới dùng để chỉnh thời gian.</p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: justify;">
	Thêm vào đó, mặt đáy của đồng hồ cũng sử dụng chất liệu thép 316L chống gỉ, in chìm logo thương hiệu và các thông số cơ bản một cách tinh tế cùng với mã vạch sản phẩm chống hàng giả, khẳng định thương hiệu&nbsp;&nbsp;&nbsp; <strong>đồng hồ nam cao cấp</strong>.<br>
	&nbsp;</p>
<p style="text-align: justify;">
	Với những quý ông đẳng cấp&nbsp; thì một chiếc đồng hồ thời trang và lịch lãm là chưa đủ mà chiếc đồng hồ còn phải đạt tiêu chuẩn về chất lượng quốc tế. Và chắc chắn rằng chiếc &nbsp;&nbsp;<strong>đồng hồ nam</strong> <strong>Aiers</strong> &nbsp;là một sản phẩm đạt tiêu chuẩn như thế bởi vỏ máy được làm từ hợp kim thép không gỉ, luôn sáng bóng kết hợp với mặt kính khoáng cao cấp có khả năng chống xước và chịu lực tốt giúp bạn thoải mái, tự tin vui chơi cùng bạn bè người thân mà sản phẩm vẫn luôn bền đẹp và sáng bóng cùng với thời gian. Hơn nữa, đồng có độ chống nước 3ATM nên bạn có thể rửa tay hoặc đi mưa mà không nước làm hỏng chiếc đồng hồ của bạn.</p>
<p style="text-align: justify;">
	&nbsp;</p>
<h3 style="text-align: justify;">
	<strong><span style="font-size:12px;">Đồng hồ nam Aiers B111G, chiếc đồng hồ nam là báu vật thời trang của phái mạnh, là thước đo uy quyền và đẳng cấp nam nhân</span></strong><br>
	&nbsp;</h3>
<p style="text-align: justify;">
	Là item an toàn và không kén trang phục, chỉ với sự xuất hiện giản đơn, đồng hồ sẽ làm cánh mày râu tỏa sáng. Cùng với thắt lưng và giày da sành điệu, một chiếc đồng hồ nam&nbsp; phù hợp sẽ làm nhiệm vụ cân bằng cơ thể một cách hoàn hảo nếu chàng biết phối màu một cách hài hòa và trang nhã. Sự kết hợp giữa&nbsp; <strong>đồng hồ đeo tay&nbsp; </strong>với các phụ kiện khác và trang phục sẽ mang đến một hình ảnh thật mới mẻ và cuốn hút.</p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: justify;">
	Đồng hồ cũng giúp bộ vest cứng nhắc trở nên mềm mại và hấp dẫn hơn với bạn bè, đồng nghiệp mà đặc biệt là nữ giới. Bất kỳ tín đồ thời trang nào cũng không dám quên tầm quan trọng và ma lực khó cưỡng của món phụ kiện quan trọng này. Đồng hồ sẵn sàng tố cáo bạn là người xuề xòa hay tôn vinh bạn là người lịch thiệp, sang trọng chỉ với sự hiện diện của nó.</p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: justify;">
	Vậy bạn còn chần chừ gì mà không đến ngay baza, số 10 – Trần Phú – Hà đông – Hà Nội để rinh ngay cho mình chiếc&nbsp; <a href="http://baza.vn/dong-ho-hieu-nam/c"><strong>đồng hồ hiệu nam </strong>&nbsp;</a>này nhé!</p>
<p style="text-align: justify;">
	Bạn sẽ thực sự nổi bật, thời trang và lịch lãm với sản phẩm này đấy!<br>
	<br>
	<br>
	<img alt="" src="http://img1.baza.vn/upload/files/products-lM2UAZ2N/vBxwiDzl.jpg?v=635711698664476541" style="width: 700px; height: 600px;"></p>
<div>
	&nbsp;</div>
<div>
	<div style="text-align: center;">
		<p style="text-align: justify;">
			<span style="color: rgb(255, 0, 0);"><strong>XỬ LÝ ĐỒNG HỒ BỊ VÀO NƯỚC</strong></span><br>
			<br>
			Vì một số nguyên nhân khách quan hay chủ quan khi sử dụng đồng hồ như ấn chốt khi tiếp xúc với nước, tiếp xúc với chất tẩy rửa, tiếp xúc với môi trường muối, môi trường nhiệt độ cao... mà đồng hồ bị vào nước, về lâu về dài có thể làm hỏng bộ máy. Khắc phục hiện tượng này, có một số biện pháp như sau:<br>
			<br>
			<em>- Khử nước bằng khăn giấy.</em>&nbsp;Dùng giấy/khăn mềm lau khô nhưng tránh làm xước mặt số, dùng tô vít nhỏ mở nắp lưng mặt số, tránh không đụng vào bánh răng hoặc các linh kiện khác. Tiếp theo, úp mặt đồng hồ xuống, bên dưới lót vải hoặc khăn giấy mềm để không làm xước mặt và để tự khô trong 24 giờ, đồng hồ có thể chạy bình thường.<br>
			<br>
			<em>- Làm khô bằng bóng đèn tròn.</em>&nbsp;Bọc đồng hồ bằng giấy mềm hoặc vải nhung, đặt dưới đèn tròn 40W cách khoảng 5-10cm khoảng 30 phút, sẽ không còn hơi nước bên trong đồng hồ.<br>
			<br>
			<em>- Đeo ngược đồng hồ.</em>&nbsp;Với trường hợp có hơi nước ở mặt kính, hãy đeo ngược chiếc đồng hồ, để mặt kính úp vào tay khoảng vài tiếng, dưới tác động của lực hút hấp dẫn, hơi nước sẽ dần biến mất. Lưu ý để đồng hồ xa nguồn phát ra từ trường mạnh.<br>
			<br>
			<em>- Dùng gói hút ẩm.</em>&nbsp;Bỏ đồng hồ vào hộp hút ẩm như các hộp đựng và bảo quản máy ảnh. Hoặc mua gói bột hút ẩm về cho vào 1 hộp kín và để đồng hồ vào trong đó để hút ẩm đồng hồ.&nbsp;<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">BẢO HÀNH</strong><br>
			<br>
			- Thời gian bảo hành được tính từ ngày mua ghi trên THẺ BẢO HÀNH và không được gia hạn sau khi hết thời hạn bảo hành theo qui định.<br>
			<br>
			- Chỉ bảo hành về MÁY và CÁC LINH KIỆN bên trong của Đồng hồ.<br>
			<br>
			- Bảo hành chỉ có giá trị khi Đồng hồ có THẺ BẢO HÀNH được đóng dấu của Công Ty Cổ Phần Baza Việt Nam.<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">KHÔNG BẢO HÀNH</strong><br>
			<br>
			- Không bảo hành cho phần bên ngoài của Đồng hồ như: vỏ máy, mặt kính, khóa, dây bị hỏng hóc do sử dụng không đúng. Ví dụ: vết hằn, móp méo, trầy xước, nứt vỡ kính... trừ trường hợp lỗi kỹ thuật do nhà sản xuất và được khách hàng phát hiện trong vòng 7 ngày kể từ khi nhận sản phẩm. Vì vậy, kính mong quý khách xem kỹ hàng sau khi nhận.<br>
			<br>
			- Không bảo hành cho những hậu quả gián tiếp của việc sử dụng không đúng cách của người sử dụng như: đeo Đồng hồ trong khi xông hơi, tắm nước nóng, để Đồng hồ tiếp xúc với các loại hóa chất, axít, chất tẩy rửa có độ ăn mòn cao…<br>
			<br>
			- Không bảo hành cho Đồng hồ bị hư hỏng do ảnh hưởng của thiên tai, hỏa hoạn, lũ lụt, tai nạn hoặc cố tình gây hư hỏng…<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">MẤT THẺ BẢO HÀNH</strong><br>
			<br>
			Trong trường hợp mất THẺ BẢO HÀNH vui lòng liên hệ ngay với chúng tôi để được hỗ trợ.</p>
		<div>
			&nbsp;</div>
	</div>
</div>
<p>
	&nbsp;</p>
                    </div>', N'Bạc', N'Trung bình', 5, 0, 0, CAST(N'2017-11-20 00:00:00.000' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (14, N'Nu', N'Aiers', N'Đồng hồ nữ Aiers F112L số 10 khắc nổi', N'Đồng hồ nữ Aiers F112L số 10 khắc nổi tinh tế, đơn giản mang đậm phong cách Hàn Quốc, mặt kính sapphire chống xước hiệu quả, độ nét cao; chống nước ở mức 5 atm cho bạn an tâm khi sử dụng', N'author2', 1260000, 30, 20, N'dong-ho-nu-aiers-f112l-so-10-khac-noi', N'dong-ho-nu-aiers-f112l-so-10-khac-noi.jpg', 1, N'<div id="pdt_tdt" class="box_pdt_detail" style="border-top: 0;">
                        <div style="text-align: justify;">
	<strong>Nhãn hàng</strong>: Aiers</div>
<div style="text-align: justify;">
	&nbsp;</div>
<div style="text-align: justify;">
	<strong>Loại đồng hồ</strong>: Quartz</div>
<div style="text-align: justify;">
	&nbsp;</div>
<div style="text-align: justify;">
	<strong>Giới tính</strong>: Nữ</div>
<div style="text-align: justify;">
	&nbsp;</div>
<div style="text-align: justify;">
	<strong>Chất liệu qua</strong>i: Da</div>
<div style="text-align: justify;">
	&nbsp;</div>
<div style="text-align: justify;">
	<strong>Chất liệu vỏ</strong>: Thép không gỉ</div>
<div style="text-align: justify;">
	&nbsp;</div>
<div style="text-align: justify;">
	<strong>Chống nước</strong>: 3ATM</div>
<div style="text-align: justify;">
	&nbsp;</div>
<div style="text-align: justify;">
	<strong>Hình dáng mặt</strong>: Tròn</div>
<div style="text-align: justify;">
	&nbsp;</div>
<div style="text-align: justify;">
	<strong>Kiểu khóa</strong>: Khóa gài</div>
<div style="text-align: justify;">
	&nbsp;</div>
<div style="text-align: justify;">
	<strong>Kích thước mặt</strong>: Rộng 36mm; Dầy 10mm<br>
	<br>
	<strong>Bảo hành</strong>: 1 năm<br>
	<br>
	<strong>Giới thiệu:</strong><br>
	&nbsp;</div>
<div>
	<div>
		&nbsp;</div>
</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/jT8vu5GO.jpg?v=635805052612951644" style="width: 700px; height: 231px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/hKdGnLMD.jpg?v=635429280721526054" style="width: 700px; height: 425px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/Ee9brKNu.jpg?v=635429280760218267" style="width: 700px; height: 627px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/cj6GOydV.jpg?v=635429280799970540" style="width: 700px; height: 615px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/b2yMSt8V.jpg?v=635429280844673097" style="width: 700px; height: 623px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/GZ5a1q5y.jpg?v=635429280891625783" style="width: 700px; height: 619px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/zWIlTzb9.jpg?v=635429280946668931" style="width: 700px; height: 569px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/2BZYlHIu.jpg?v=635429280986821228" style="width: 700px; height: 581px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/Hhx7ptHi.jpg?v=635429281026313486" style="width: 700px; height: 571px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/kVoGkEbe.jpg?v=635429281069235941" style="width: 700px; height: 614px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/5sOiCoeX.jpg?v=635805052861835879" style="width: 700px; height: 682px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/vxf14id1.jpg?v=635805053001973895" style="width: 700px; height: 622px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/sxWASogJ.jpg?v=635429281197783294" style="width: 700px; height: 611px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/hmRtSr9Z.jpg?v=635429281231845242" style="width: 700px; height: 647px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/72Y62mRX.jpg?v=635429281275227723" style="width: 700px; height: 583px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/xfGkNdOa.jpg?v=635429281310959767" style="width: 700px; height: 458px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/hDHUkTsR.jpg?v=635429281355862335" style="width: 700px; height: 581px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/98KlIBv5.jpg?v=635429281391664383" style="width: 700px; height: 542px;"><img alt="" src="http://img1.baza.vn/upload/files/products-uu81VG1b/EbQ1Gah9.jpg?v=635429281436316937"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/121ZkQ2P.jpg?v=635764408629247372" style="width: 700px; height: 1064px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/Yw57WVWm.jpg?v=635764408731403215" style="width: 700px; height: 674px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/9xF5hxSg.jpg?v=635764408905403167" style="width: 700px; height: 495px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/RkK87f18.jpg?v=635764409014369400" style="width: 700px; height: 584px;"></div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<h2 style="text-align: center;">
	<br style="text-align: justify;">
	<br>
	<span style="font-size:14px;">Đồng hồ Aiers sành điệu</span></h2>
<div>
	&nbsp;</div>
<div style="text-align: justify;">
	<br style="text-align: justify;">
	<span style="text-align: justify;">Đồng hồ dây da thường được thiết kế đơn giản nhưng lại được rất nhiều các bạn gái yêu thích vì nó dễ dàng kết hợp được với nhiều kiểu trang phục, lại thể hiện được phong cách thời trang của bạn gái. Baza xin giới thiệu đến bạn mẫu đồng hồ hội tụ đầy đủ những nét tinh tế, độc đáo của một chiếc đồng hồ, đồng hồ nữ Aiers số 10 khắc nổi.</span><br>
	<br style="text-align: justify;">
	<br style="text-align: justify;">
	<span style="text-align: justify;">Thoạt nhìn vào chiếc đồng hồ, bạn sẽ thấy nó không có gì nổi bật so với những chiếc đồng hồ khác, nhưng nếu quan sát kĩ hơn một chút, bạn sẽ thấy đó là một chiếc đồng hồ hoàn hảo và bạn sẽ muốn sở hữu nó ngay lập tức. Nói như vậy vì mặt đồng hồ được thiết kế đơn giản gồm một đồng hồ chính ở trong và một vòng tròn nhỏ lồng vào phía dưới đồng hồ chính, bên trong vòng tròn nhỏ có đính pha lê cao cấp làm cho chiếc đồng hồ trở nên độc đáo hơn. Số 10 đứng độc lập và được khắc nổi tạo điểm nhấn cho sản phẩm, làm cho bạn gái trở nan nổi bật và quý phái hơn</span><br style="text-align: justify;">
	<br>
	<br style="text-align: justify;">
	<span style="text-align: justify;">Dây đeo được làm từ da cao cấp, mềm mịn và chống mồ hôi kết hợp với kiểu kháo gài đơn giản mang lại sự thoải mái và tiện lợi cho người dùng. Đồng hồ sử dụng mặt kính gia tăng độ cứng, chống lóa mắt giúp sản phẩm chống xước và chịu lực tốt, lại có tác dụng bảo vệ cho đôi mắt của phái đẹp.</span><br style="text-align: justify;">
	<br>
	<br style="text-align: justify;">
	<span style="text-align: justify;">Thiết kế mặt đáy sử dụng thép không gỉ, logo thương hiệu sáng bóng đảm bảo sản phẩm chính hãng làm tăng thêm giá trị cho sản phẩm. Đồng hồ chống nước ở mức 5 atm nên bạn hoàn toàn có thể an tâm khi tham gia các hoạt động hàng ngày.</span><br style="text-align: justify;">
	<br>
	<br style="text-align: justify;">
	<span style="text-align: justify;">Đồng hồ nữ Aiers số 10 khắc nổi cùng bạn làm cho mỗi phút giây cuộc sống trở nên ý nghĩa hơn.</span><br>
	<br>
	&nbsp;</div>
<div style="text-align: center;">
	<div>
		<img alt="" src="http://img1.baza.vn/upload/files/products-36IKPylC/kStoKxfc.jpg?v=635410308691284189" style="width: 700px; height: 600px;"></div>
	<div>
		<div>
			&nbsp;</div>
		<div>
			<div>
				<p style="text-align: justify;">
					<span style="color: rgb(255, 0, 0);"><strong>XỬ LÝ ĐỒNG HỒ BỊ VÀO NƯỚC</strong></span><br>
					<br>
					Vì một số nguyên nhân khách quan hay chủ quan khi sử dụng đồng hồ như ấn chốt khi tiếp xúc với nước, tiếp xúc với chất tẩy rửa, tiếp xúc với môi trường muối, môi trường nhiệt độ cao... mà đồng hồ bị vào nước, về lâu về dài có thể làm hỏng bộ máy. Khắc phục hiện tượng này, có một số biện pháp như sau:<br>
					<br>
					<em>- Khử nước bằng khăn giấy.</em>&nbsp;Dùng giấy/khăn mềm lau khô nhưng tránh làm xước mặt số, dùng tô vít nhỏ mở nắp lưng mặt số, tránh không đụng vào bánh răng hoặc các linh kiện khác. Tiếp theo, úp mặt đồng hồ xuống, bên dưới lót vải hoặc khăn giấy mềm để không làm xước mặt và để tự khô trong 24 giờ, đồng hồ có thể chạy bình thường.<br>
					<br>
					<em>- Làm khô bằng bóng đèn tròn.</em>&nbsp;Bọc đồng hồ bằng giấy mềm hoặc vải nhung, đặt dưới đèn tròn 40W cách khoảng 5-10cm khoảng 30 phút, sẽ không còn hơi nước bên trong đồng hồ.<br>
					<br>
					<em>- Đeo ngược đồng hồ.</em>&nbsp;Với trường hợp có hơi nước ở mặt kính, hãy đeo ngược chiếc đồng hồ, để mặt kính úp vào tay khoảng vài tiếng, dưới tác động của lực hút hấp dẫn, hơi nước sẽ dần biến mất. Lưu ý để đồng hồ xa nguồn phát ra từ trường mạnh.<br>
					<br>
					<em>- Dùng gói hút ẩm.</em>&nbsp;Bỏ đồng hồ vào hộp hút ẩm như các hộp đựng và bảo quản máy ảnh. Hoặc mua gói bột hút ẩm về cho vào 1 hộp kín và để đồng hồ vào trong đó để hút ẩm đồng hồ.&nbsp;<br>
					<br>
					<strong style="color: rgb(255, 0, 0);">BẢO HÀNH</strong><br>
					<br>
					- Thời gian bảo hành được tính từ ngày mua ghi trên THẺ BẢO HÀNH và không được gia hạn sau khi hết thời hạn bảo hành theo qui định.<br>
					<br>
					- Chỉ bảo hành về MÁY và CÁC LINH KIỆN bên trong của Đồng hồ.<br>
					<br>
					- Bảo hành chỉ có giá trị khi Đồng hồ có THẺ BẢO HÀNH được đóng dấu của Công Ty Cổ Phần Baza Việt Nam.<br>
					<br>
					<strong style="color: rgb(255, 0, 0);">KHÔNG BẢO HÀNH</strong><br>
					<br>
					- Không bảo hành cho phần bên ngoài của Đồng hồ như: vỏ máy, mặt kính, khóa, dây bị hỏng hóc do sử dụng không đúng. Ví dụ: vết hằn, móp méo, trầy xước, nứt vỡ kính... trừ trường hợp lỗi kỹ thuật do nhà sản xuất và được khách hàng phát hiện trong vòng 7 ngày kể từ khi nhận sản phẩm. Vì vậy, kính mong quý khách xem kỹ hàng sau khi nhận.<br>
					<br>
					- Không bảo hành cho những hậu quả gián tiếp của việc sử dụng không đúng cách của người sử dụng như: đeo Đồng hồ trong khi xông hơi, tắm nước nóng, để Đồng hồ tiếp xúc với các loại hóa chất, axít, chất tẩy rửa có độ ăn mòn cao…<br>
					<br>
					- Không bảo hành cho Đồng hồ bị hư hỏng do ảnh hưởng của thiên tai, hỏa hoạn, lũ lụt, tai nạn hoặc cố tình gây hư hỏng…<br>
					<br>
					<strong style="color: rgb(255, 0, 0);">MẤT THẺ BẢO HÀNH</strong><br>
					<br>
					Trong trường hợp mất THẺ BẢO HÀNH vui lòng liên hệ ngay với chúng tôi để được hỗ trợ.</p>
				<div>
					&nbsp;</div>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
                    </div>', N'Nâu', N'Nhỏ - Trung bình', 4, 0, 0, CAST(N'2017-11-20 00:00:00.000' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (15, N'Nam', N'Aiers', N'Đồng hồ nam Aiers B127G kim dạ quang', N'Đồng hồ nam Aiers B127G mặt tròn cổ điển, 3 kim chỉ giờ dạ quang thuận tiện xem giờ trong bóng tối, nơi thiếu ánh sáng, ôhiển thị lịch tự động ở mốc 3h dễ nhìn, phái trên có miếng kính nhỏ có tác dụng phóng to tiện dụng', N'thienvu', 420000, 30, 20, N'dong-ho-nam-aiers-b127g-kim-da-quang', N'dong-ho-nam-aiers-b127g-kim-da-quang.jpg', 3, N'<div id="pdt_tdt" class="box_pdt_detail" style="border-top: 0;">
                        <div style="font-size: 11.8181819915771px; text-align: justify;">
	<div style="font-size: 11.8181819915771px;">
		<strong>Nhãn hàng</strong>: Aiers</div>
	<div style="font-size: 11.8181819915771px;">
		&nbsp;</div>
	<div style="font-size: 11.8181819915771px;">
		<strong>Loại đồng hồ</strong>: Quartz</div>
	<div style="font-size: 11.8181819915771px;">
		&nbsp;</div>
	<div style="font-size: 11.8181819915771px;">
		<strong>Giới tính</strong>: Nam
		<div>
			&nbsp;</div>
		<div>
			<div style="font-size: 11.8181819915771px;">
				<strong>Kiểu mặt</strong>: Tròn</div>
		</div>
		<br>
		<strong>Chất liệu mặt:</strong>&nbsp;Kính khoáng</div>
	<div style="font-size: 11.8181819915771px;">
		&nbsp;</div>
	<div style="font-size: 11.8181819915771px;">
		<strong>Chất liệu quai</strong>: Hợp kim</div>
	<div style="font-size: 11.8181819915771px;">
		&nbsp;</div>
	<div style="font-size: 11.8181819915771px;">
		<strong>Chất liệu vỏ</strong>: Thép không gỉ</div>
	<div style="font-size: 11.8181819915771px;">
		<br>
		<strong>Đường kính mặt</strong>: Rộng 41mm<br>
		<br>
		<div>
			<div style="font-size: 11.8181819915771px;">
				<strong>Độ dày mặt:</strong>&nbsp;8mm<br>
				<br>
				<strong>Kích thước dây:</strong>&nbsp;<br>
				&nbsp;</div>
			<div style="font-size: 11.8181819915771px;">
				<strong>Kiểu khóa</strong>: Khóa ấn</div>
		</div>
		<div>
			<div style="font-size: 11.8181819915771px;">
				&nbsp;</div>
			<div style="font-size: 11.8181819915771px;">
				<strong>Chống nước</strong>: 3ATM<br>
				<br>
				<strong style="font-size: 11.8181819915771px;">Bảo hành</strong><span style="font-size: 11.8181819915771px;">: 6 tháng<br>
				<br>
				<strong>Giới thiệu:</strong></span><br>
				<br>
				&nbsp;</div>
		</div>
		<p style="text-align: center;">
			<img alt="đồng hồ nam Aiers B127G kim dạ quang " src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/eWQOrVS6.jpg?v=635484430825763412" style="width: 700px; height: 653px;"><img alt="đồng hồ nam Aiers B127G kim dạ quang thiết kế mặt độc đáo" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/Q4MFl9px.jpg?v=635484430871026001" style="width: 700px; height: 676px;"><img alt="đồng hồ nam Aiers B127G kim chỉ dạ quang " src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/Jf5jiVlm.jpg?v=635484430919958800" style="width: 700px; height: 590px;"><img alt="đồng hồ nam Aiers B127G kim dạ quang cho nam giới tạo lập sự nghiệp" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/7zamHvpw.jpg?v=635484430968131555" style="width: 700px; height: 505px;"><img alt="đồng hồ nam Aiers B127G kim dạ quang là biểu tượng cho người đàn ông" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/7BLsNeFl.jpg?v=635484431014924231" style="width: 700px; height: 551px;"><img alt="đồng hồ nam Aiers B127G kim dạ quang cao cấp" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/Ygxe9jVq.jpg?v=635484431065097101" style="width: 700px; height: 790px;"><img alt="đồng hồ nam Aiers B127G vỏ đáy hợp kim tinh xảo" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/WQuRESTg.jpg?v=635484431117470097" style="width: 700px; height: 692px;"><img alt="đồng hồ nam Aiers B127G thiết kế núm chỉnh giờ tinh tế" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/AbrD6FYb.jpg?v=635484431170613136" style="width: 700px; height: 721px;"><img alt="đồng hồ nam Aiers B127G chống nước 3ATM" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/hOeVb3oz.jpg?v=635484431230176543" style="width: 700px; height: 705px;"><img alt="đồng hồ nam chính hãng Aiers B127G kim dạ quang " src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/SsoXvy1N.jpg?v=635484431275909159" style="width: 700px; height: 636px;"><img alt="đồng hồ nam Aiers B127G nét đẹp cổ điển" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/vBN3bm6E.jpg?v=635484431326302041" style="width: 700px; height: 743px;"><img alt="đồng hồ nam Aiers B127G sử dụng bộ máy quartz nhập khẩu " src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/sbP6IxRR.jpg?v=635484431379555087" style="width: 700px; height: 608px;"><img alt="đồng hồ nam Aiers B127G đơn giản mà sang trọng" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/lTJkBCVc.jpg?v=635484431438038432" style="width: 700px; height: 650px;"><img alt="Mix đồ với đồng hồ nam Aiers B127G kim dạ quang " src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/bogPjdWn.jpg?v=635484431488581323" style="width: 700px; height: 640px;"><img alt="Tặng đồng hồ nam Aiers B127G kim dạ quang cho người thân của bạn" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/dbUWlLYM.jpg?v=635484431541004321" style="width: 700px; height: 567px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/121ZkQ2P.jpg?v=635764408629247372" style="font-size: 11.8181819915771px; width: 700px; height: 1064px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/Yw57WVWm.jpg?v=635764408731403215" style="font-size: 11.8181819915771px; width: 700px; height: 674px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/9xF5hxSg.jpg?v=635764408905403167" style="font-size: 11.8181819915771px; width: 700px; height: 495px;"><img alt="" src="http://img1.baza.vn/upload/files/products-SlSmpgOg/RkK87f18.jpg?v=635764409014369400" style="font-size: 11.8181819915771px; width: 700px; height: 584px;"></p>
		<div>
			&nbsp;</div>
		<div>
			&nbsp;</div>
	</div>
</div>
<p>
	<br>
	&nbsp;</p>
<h2 style="text-align: center;">
	<span style="font-size:14px;"><strong>Đồng hồ nam Aiers B127G kim dạ quang – Bạn đồng hành đấng mày râu</strong></span><br>
	<br>
	&nbsp;</h2>
<p style="text-align: justify;">
	Ngày nay, với mọi người nói chung và các chàng trai nói riêng thì đồng hồ không những có công dụng là coi giờ nữa mà món đồ này đã trở thành phụ kiện vô cùng thân thiết vì tính cần thiết cũng như &nbsp;sự tiện lợi của chúng mang đến. Bạn cũng có thể dành món quà ý nghĩa này cho bề trên bạn tôn kính, tặng chồng, người yêu, bạn bè, đồng nghiệp,.. là những người bạn yêu thương nhất. Baza giới thiệu đến bạn sản phẩm <a href="http://baza.vn/dong-ho-nam-aiers-b127g-kim-da-quang/p/asSbvgMI"><strong>đồng hồ nam Aiers B127G kim dạ quang </strong></a>– món đồ sẽ trở thành người bạn đồng hành của đấng mày râu. &nbsp;<br>
	<br>
	&nbsp;</p>
<p style="text-align: justify;">
	<a href="http://baza.vn/dong-ho-nam/c/"><strong>Đồng hồ nam</strong></a>&nbsp; thiết kế mặt kính khoáng cao cấp, kính siêu cứng có độ rõ nét cao, chống mài mòn, chịu áp lực tốt, chống trầy xước hiệu quả, bề mặt sáng bóng, chống lóa không gây mỏi mắt khi nhìn. Thiết kế đặc biệt với ô vuông nhỏ phóng to, ô chỉ ngày giúp bạn nắm bắt từng chuyển động của thời gian. Thuộc loại máy <strong>đồng hồ Quartz</strong>, kỹ thuật chế tác hàng đầu thế giới về công nghệ tiên tiến và kỹ thuật tinh vi. Sự định thời gian được chi phối bởi các tần số giao động của tinh thể thạch anh, rung động ở tốc độ 32.768 lần mỗi giây, do đó đồng hồ chạy chính xác đến từng phút giây.<br>
	<br>
	&nbsp;</p>
<p style="text-align: justify;">
	<a href="http://baza.vn/dong-ho/c/"><strong>Đồng hồ</strong></a> mặt tròn cổ điển, đơn giản, kim chỉ giờ và vị trí chỉ giờ có dạ quang không bị oxi hóa, chống bức xạ, chống phản xạ tốt, không hại mắt giúp thuận tiện xem giờ trong bóng tối, nơi thiếu ánh sáng. Với đường kính mặt là 41mm và độ dày 8mm. Ô hiển thị lịch tự động ở mốc 3h dễ nhìn, phía trên có miếng kính nhỏ có tác dụng phóng to tiện dụng.<br>
	<br>
	&nbsp;</p>
<p style="text-align: justify;">
	Đáy đồng hồ hợp kim tinh xảo, chống trơn trượt, chống xước, chống oxi hóa. Bề mặt được in logo laser chống hàng giả, hàng nhái đảm bảo chất lượng cho bạn sử dụng chiếc <a href="http://baza.vn/dong-ho-thoi-trang-nam/c/"><strong>đồng hồ nam thời trang</strong></a> chính hãng.<br>
	<br>
	&nbsp;</p>
<p style="text-align: justify;">
	Vỏ đồng hồ chất liệu hợp kim không bị phai màu, luôn luôn sáng bóng, bền đep, không bị oxy hóa, không gây kích ứng da, không hại da tay.<br>
	<br>
	&nbsp;</p>
<p style="text-align: justify;">
	Dây đeo hợp kim, khóa ấn cao cấp, mắt xích đều đặn cho phép bạn có thể điều chỉnh kích thước dây đeo phù hợp kích thước cổ tay tạo cảm giác thoải mái cho người dùng. Với đường nét rõ ràng cùng nét cổ điển tỏa sáng cùng cử động của tay.<br>
	<br>
	&nbsp;</p>
<p style="text-align: justify;">
	Núm chỉnh giờ tinh xảo, làm từ hợp kim được đánh bóng, với thiết kế viền dạng ô vuông nhỏ chống trơn trượt, khéo léo giúp bạn dễ dàng chỉnh giờ hơn.<br>
	<br>
	&nbsp;</p>
<p style="text-align: justify;">
	Chức năng đặc biệt của chiếc <a href="http://baza.vn/dong-ho-nam/c/"><strong>đồng hồ nam</strong></a> này chính là có thể xem lịch dương tự động. Đồng hồ có khả năng chống chịu nước ở mức 3ATM cho phép bạn thoải mái yên tâm sử dụng khi đi dưới trời mưa, khi tắm hay các hoạt động thường ngày khác.<br>
	<br>
	&nbsp;</p>
<p style="text-align: justify;">
	<strong>Đồng hồ nam Aiers</strong> thực sự mang lại cho nam giới phong cách thời trang mới với sự sang trọng lôi cuốn, dễ dàng kết hợp với các loại trang phục phổ thông hàng ngày. Nam giới cần tạo lập sự nghiệp với trái tim cần luôn hướng về phía trước, hành động cần luôn dẫn đầu, một chiếc <strong>đồng hồ nam </strong>thu hút sẽ giúp bạn tự tin thể hiện chính mình và nắm bắt thời cơ thật chuẩn xác. Chiếc đồng hồ lịch lãm này sẽ cho bạn cảm nhận được tất cả.&nbsp;<br>
	<br>
	<br>
	<img alt="" src="http://img1.baza.vn/upload/files/products-dn3yu2IZ/LQcNeU1i.jpg?v=635711695900588456" style="width: 700px; height: 600px;"></p>
<div>
	&nbsp;</div>
<div>
	<div style="text-align: center;">
		<p style="text-align: justify;">
			<span style="color: rgb(255, 0, 0);"><strong>XỬ LÝ ĐỒNG HỒ BỊ VÀO NƯỚC</strong></span><br>
			<br>
			Vì một số nguyên nhân khách quan hay chủ quan khi sử dụng đồng hồ như ấn chốt khi tiếp xúc với nước, tiếp xúc với chất tẩy rửa, tiếp xúc với môi trường muối, môi trường nhiệt độ cao... mà đồng hồ bị vào nước, về lâu về dài có thể làm hỏng bộ máy. Khắc phục hiện tượng này, có một số biện pháp như sau:<br>
			<br>
			<em>- Khử nước bằng khăn giấy.</em>&nbsp;Dùng giấy/khăn mềm lau khô nhưng tránh làm xước mặt số, dùng tô vít nhỏ mở nắp lưng mặt số, tránh không đụng vào bánh răng hoặc các linh kiện khác. Tiếp theo, úp mặt đồng hồ xuống, bên dưới lót vải hoặc khăn giấy mềm để không làm xước mặt và để tự khô trong 24 giờ, đồng hồ có thể chạy bình thường.<br>
			<br>
			<em>- Làm khô bằng bóng đèn tròn.</em>&nbsp;Bọc đồng hồ bằng giấy mềm hoặc vải nhung, đặt dưới đèn tròn 40W cách khoảng 5-10cm khoảng 30 phút, sẽ không còn hơi nước bên trong đồng hồ.<br>
			<br>
			<em>- Đeo ngược đồng hồ.</em>&nbsp;Với trường hợp có hơi nước ở mặt kính, hãy đeo ngược chiếc đồng hồ, để mặt kính úp vào tay khoảng vài tiếng, dưới tác động của lực hút hấp dẫn, hơi nước sẽ dần biến mất. Lưu ý để đồng hồ xa nguồn phát ra từ trường mạnh.<br>
			<br>
			<em>- Dùng gói hút ẩm.</em>&nbsp;Bỏ đồng hồ vào hộp hút ẩm như các hộp đựng và bảo quản máy ảnh. Hoặc mua gói bột hút ẩm về cho vào 1 hộp kín và để đồng hồ vào trong đó để hút ẩm đồng hồ.&nbsp;<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">BẢO HÀNH</strong><br>
			<br>
			- Thời gian bảo hành được tính từ ngày mua ghi trên THẺ BẢO HÀNH và không được gia hạn sau khi hết thời hạn bảo hành theo qui định.<br>
			<br>
			- Chỉ bảo hành về MÁY và CÁC LINH KIỆN bên trong của Đồng hồ.<br>
			<br>
			- Bảo hành chỉ có giá trị khi Đồng hồ có THẺ BẢO HÀNH được đóng dấu của Công Ty Cổ Phần Baza Việt Nam.<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">KHÔNG BẢO HÀNH</strong><br>
			<br>
			- Không bảo hành cho phần bên ngoài của Đồng hồ như: vỏ máy, mặt kính, khóa, dây bị hỏng hóc do sử dụng không đúng. Ví dụ: vết hằn, móp méo, trầy xước, nứt vỡ kính... trừ trường hợp lỗi kỹ thuật do nhà sản xuất và được khách hàng phát hiện trong vòng 7 ngày kể từ khi nhận sản phẩm. Vì vậy, kính mong quý khách xem kỹ hàng sau khi nhận.<br>
			<br>
			- Không bảo hành cho những hậu quả gián tiếp của việc sử dụng không đúng cách của người sử dụng như: đeo Đồng hồ trong khi xông hơi, tắm nước nóng, để Đồng hồ tiếp xúc với các loại hóa chất, axít, chất tẩy rửa có độ ăn mòn cao…<br>
			<br>
			- Không bảo hành cho Đồng hồ bị hư hỏng do ảnh hưởng của thiên tai, hỏa hoạn, lũ lụt, tai nạn hoặc cố tình gây hư hỏng…<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">MẤT THẺ BẢO HÀNH</strong><br>
			<br>
			Trong trường hợp mất THẺ BẢO HÀNH vui lòng liên hệ ngay với chúng tôi để được hỗ trợ.</p>
		<div>
			&nbsp;</div>
	</div>
</div>
<p>
	&nbsp;</p>
                    </div>', N'Trắng', N'To', 5, 0, 0, CAST(N'2017-11-20 00:00:00.000' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (16, N'Nam', N'Vinoce', N'Đồng hồ thời trang nam Vinoce 3287 cao cấp', N'Đồng hồ thời trang nam Vinoce 3287 phong cách cổ điển, nam tính, dây đeo da linh hoạt tiện lợi khi sử dụng, chất liệu chống nước cao cấp', N'thienvu', 2499000, 34, 3, N'dong-ho-thoi-trang-nam-vinoce-3287-cao-cap', N'dong-ho-thoi-trang-nam-vinoce-3287-cao-cap.jpg', 5, N'<div id="pdt_tdt" class="box_pdt_detail" style="border-top: 0;">
                        <p>
	<strong>Nhãn hàng:</strong>&nbsp;Vinoce<br>
	<br>
	<strong>Loại đồng hồ:&nbsp;</strong>Quartz<br>
	<br>
	<strong>Bộ máy</strong>: Nhật Bản<br>
	<br>
	<strong>Giới tính:&nbsp;</strong>Nam<br>
	<br>
	<strong>Kiểu mặt:&nbsp;</strong>Mặt tròn<br>
	<br>
	<strong>Đường kính mặt đồng hồ:&nbsp;</strong>39mm<br>
	<br>
	<strong>Độ dày mặt đồng hồ:</strong>&nbsp;8mm<br>
	<br>
	<strong>Kích thước dây:&nbsp;<br>
	<br>
	Chất liệu mặt:</strong> Sapphire<br>
	<br>
	<strong>Chất liệu vỏ máy:</strong>&nbsp;Hợp kim thép không gỉ<br>
	<br>
	<strong>Chất liệu dây:&nbsp;</strong>Da<br>
	<br>
	<strong>Kiểu khóa:</strong>&nbsp;Khóa gài<br>
	<br>
	<strong>Chống thấm nước: </strong>5ATM<br>
	<br>
	<br>
	&nbsp;</p>
<div style="text-align: center;">
	<img alt="Đồng hồ thời trang nam Vinoce 3287 " src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/TpWOmOrI.jpg?v=635512053405035625" style="width: 700px; height: 369px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 ĐẸP" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/YpcqgHDo.jpg?v=635512053458258669"><img alt="" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/HlnJRYO7.jpg?v=635512053506771444" style="width: 700px; height: 242px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 độc" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/FT5szs5R.jpg?v=635512053557894368" style="width: 700px; height: 520px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 lạ" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/9e7YPCR3.jpg?v=635512053608467260" style="width: 700px; height: 579px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 hot" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/U1VtaIK5.jpg?v=635512053660010208" style="width: 700px; height: 479px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 ấn tượng" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/oGXJktcS.jpg?v=635512053708542984" style="width: 700px; height: 549px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thời trang" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/TJmd9C2h.jpg?v=635512053766026272"><img alt="Đồng hồ thời trang nam Vinoce 3287 phong cách" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/lHsjjX9r.jpg?v=635512053817479215" style="width: 700px; height: 489px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 cá tính" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/hl7kXVy8.jpg?v=635512053878092682" style="width: 700px; height: 562px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 chất lượng" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/NPDzz4hq.jpg?v=635512053938966164" style="width: 700px; height: 456px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 chính hãng" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/uwisuMP5.jpg?v=635512053990819130" style="width: 700px; height: 611px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 bền" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/eAhY6If1.jpg?v=635512054043542145" style="width: 700px; height: 740px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 bền đẹp" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/Kyl3JZJD.jpg?v=635512054094805077" style="width: 700px; height: 582px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 cao cấp" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/Bp7AXaeW.jpg?v=635512054146558037" style="width: 700px; height: 531px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 lịch lãm" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/uy6ySOt7.jpg?v=635512054192190647" style="width: 700px; height: 524px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 hoàn hảo" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/vj5wa5pF.jpg?v=635512054235683135" style="width: 700px; height: 550px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 tuyệt vời" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/XNFW35A7.jpg?v=635512054285846004" style="width: 700px; height: 515px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế đẹp" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/WevoSGkm.jpg?v=635512054334658796" style="width: 700px; height: 627px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế độc" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/sJ1dCXp1.jpg?v=635512054385741718" style="width: 700px; height: 482px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế lạ" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/RSzseuuW.jpg?v=635512054436644629" style="width: 700px; height: 749px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế ấn tượng" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/oVjxn3x7.jpg?v=635512054489797670" style="width: 700px; height: 503px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế độc đáo" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/ldqVUGv6.jpg?v=635512054542720697" style="width: 700px; height: 786px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế tinh tế" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/tVKqYMjZ.jpg?v=635512054591903510" style="width: 700px; height: 751px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế tinh xảo" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/GhKTLvkq.jpg?v=635512054644796535" style="width: 700px; height: 401px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế hoàn hảo" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/tYXsNzeZ.jpg?v=635512054696939517" style="width: 700px; height: 428px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế tuyệt vời" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/17yYgjgw.jpg?v=635512054766683507" style="width: 700px; height: 535px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế chất lượng" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/QsoNpoFW.jpg?v=635512054829287087" style="width: 700px; height: 425px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế bền" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/5OiNyli7.gif?v=635512055213059038" style="width: 700px; height: 470px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế bền đẹp" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/t734YZhi.jpg?v=635512055827984209" style="width: 700px; height: 496px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế độc và hot" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/tU6lxeQ7.gif?v=635512055322095274" style="width: 700px; height: 465px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế độc và lạ" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/GuQfqgKK.gif?v=635512055419150826" style="width: 700px; height: 595px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế hiện đại" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/F1Clyoa6.gif?v=635512055516206377" style="width: 700px; height: 433px;"><img alt="" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/73BNjYkw.jpg?v=635512055979242861" style="width: 700px; height: 319px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế thời trang vf cuốn hút" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/TibVSYR9.jpg?v=635512056034105999" style="width: 700px; height: 712px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế lịch lãm" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/W4zAIZvA.jpg?v=635512056089179149" style="width: 700px; height: 559px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế chất" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/VChI46v5.jpg?v=635512056139652036" style="width: 700px; height: 532px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế sáng bóng" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/yotqbhfT.jpg?v=635512056193515117" style="width: 700px; height: 527px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế tinh xảo" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/U9qcsawx.jpg?v=635512056250698387" style="width: 700px; height: 542px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế hoàn hảo và đẹp" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/Akmflf7D.jpg?v=635512056307971663" style="width: 700px; height: 549px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế thời thượng" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/wdFS1n3e.jpg?v=635512056363984867" style="width: 700px; height: 561px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế sành điệu" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/mPAhhP1p.jpg?v=635512056416537873" style="width: 700px; height: 670px;"><img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế nổi bật" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/uuB6Nh3z.jpg?v=635512056470110937" style="width: 700px; height: 824px;"></div>
<div style="text-align: center;">
	<br>
	<br>
	<br>
	<img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế phong cách và đẹp" src="http://img1.baza.vn/upload/files/products-u1GoZ8tR/NIcgweAr.jpg?v=635512056521663886" style="width: 700px; height: 911px;"></div>
<div style="text-align: center;">
	<p style="text-align: justify;">
		&nbsp;</p>
	<h2>
		<span style="font-size:14px;">Đồng hồ thời trang nam Vinoce 3287 cổ điển cá tính</span><br>
		&nbsp;</h2>
	<div style="text-align: justify;">
		Cuộc sống ngày càng phát triển, nhu cầu của con người cũng không ngừng tăng lên, không còn dừng lại ở những nhu cầu cơ bản như “ăn no”, “mặc ấm” mà đã phát triển lên thành “ăn ngon”, “mặc đẹp”. Đáp lại nhu cầu “mặc đẹp” chính là sự bùng nổ của ngành công nghiệp thời trang. Từ thời trang cho nữ giới tới thời trang nam, đều có sự thay đổi chóng mặt và sự đa dạng không thể kể hết. Từ những món đồ cơ bản như quần, áo, giày dép cho đến những loại phụ kiện như trang sức, mũ nón, túi ví, dây lưng và <strong><a href="http://baza.vn/dong-ho/c">đồng hồ</a></strong>.<br>
		<br>
		<strong>Đồng hồ đeo tay</strong> hiện nay được coi như món phụ kiện hoàn hảo, giống như vàng bạc, đồng hồ đã được nâng tầm lên bậc trang sức vì chiếc đồng hồ ngoài công dụng xem giờ, còn là một món đồ trang sức được nam giới ưa dùng. Cá tính, lịch lãm, tạo sự hài hòa cho bộ đồ hay đơn giản là khẳng định bản thân, đồng hồ hoàn toàn có thể giúp bạn thể hiện. Chính vì vậy một chiếc đồng hồ nam là phụ kiện, trang sức cần thiết và quan trọng với mỗi chàng trai hiện đại, yêu thích thời trang.<br>
		&nbsp;</div>
	<div style="text-align: justify;">
		Với thiết kế cao cấp, trẻ trung và hiện đại, <strong><a href="http://baza.vn/dong-ho-thoi-trang-nam-vinoce-3287/p/W6mLuwtC">Đồng hồ thời trang nam Vinoce 3287</a></strong> được đông đảo phái mạnh lựa chọn và ưa chuộng.<br>
		&nbsp;</div>
	<h3 style="text-align: justify;">
		<span style="font-size:12px;">&nbsp;Vẻ đẹp thời trang của đồng hồ thời trang nam Vinoce 3287</span><br>
		&nbsp;</h3>
	<div style="text-align: justify;">
		Đồng hồ nam Vinoce đậm chất nam tính có mặt đồng hồ được thiết kế vô cùng độc đáo, mới lạ kết hợp với mặt kính Sapphire&nbsp;cao cấp trong suốt, chống xước và chịu lực tốt làm cho sản phẩm trở nên nổi bật và thu hút mọi ánh nhìn. Vỏ đồng hồ làm từ hợp kim cao cấp, sáng bóng và không bị gỉ càng làm nổi bật mặt đồng hồ hơn.</div>
	<div style="text-align: justify;">
		&nbsp;</div>
	<div style="text-align: justify;">
		<strong>Dây đeo đồng hồ</strong> được làm từ da chất lượng cao cấp, luôn mềm mịn, thoáng khí, thân thiện với da. Điều này khiến cho người dùng cảm thấy sự sang trọng và lịch lãm với tính đơn giản của sản phẩm. &nbsp;Kết hợp với thiết kế kiểu khóa gài tiện lợi mang lại cho nam giới sự thoải mái, an toàn khi đeo đồng hồ. Chiếc <strong><a href="http://baza.vn/dong-ho-thoi-trang-nam/c">đồng hồ thời trang nam</a></strong> này có nút chỉnh giờ được thiết kế những rãnh sâu giúp chống trơn trượt và tiện lợi khi sử dụng.</div>
	<div style="text-align: justify;">
		&nbsp;</div>
	<div style="text-align: justify;">
		Sẽ thật là thiếu sót nếu không nhắc tới thiết kế đế da chống nước của chiếc<strong> đồng hồ thời trang nam</strong> này. Mặt sau dây đeo được thiết kế với đế da chống nước, không thấm nước, giúp chàng đeo vào mùa hè không sợ bị thấm mồ hôi, mùa đông vô cùng dễ chịu. Dễ dàng làm sạch với khăn ướt và đặt biết kéo dài thời gian sử dụng của sản phẩm. Dây đeo với công nghệ viền chỉ chắc chắn, được thiết kế dày ở phần nối với mặt đồng hồ cho người dùng cảm giác tự nhiên hơn khi đeo.</div>
	<div style="text-align: justify;">
		Chốt khóa dạng kim cổ điển, chế tác từ thép không gỉ 316L được mạ đồng chân không chắc chắn, tạo điểm nhấn phong cách, sự thu hút người đối diện.<br>
		&nbsp;</div>
	<div style="text-align: justify;">
		Logo thương hiệu của Vicone được bố trí tại các vị trí như mặt đồng hồ, móc khoá, nút chỉnh vừa tăng tính thẩm mỹ cho sản phẩm lại vừa giúp người sử dụng dễ dàng phân biệt sản phẩm với các hãng khác, giúp khẳng định thương hiệu.</div>
	<div style="text-align: justify;">
		&nbsp;</div>
	<div style="text-align: justify;">
		<strong>Đồng hồ thời trang nam Vinoce 3287</strong> đậm chất nam tính, mẫu <strong><a href="http://baza.vn/dong-ho-nam/c">đồng hồ nam</a></strong> này là món quà tuyệt vời dành tặng người thân yêu</div>
	<div style="text-align: justify;">
		&nbsp;</div>
	<p style="text-align: justify;">
		&nbsp;</p>
	<div style="text-align: justify;">
		Là món quà đầy yêu thương bạn dành cho cho bố - người đàn ông đã vì bạn, chăm lo cho bạn mà gánh trên vai bao khó khăn nhọc nhằn, trải qua bao đắng cay đến “sờn bao vai áo”. Là lời cảm ơn bạn dành tặng cho người chồng thân yêu – người đàn ông đã vì bạn mà hi sinh biết bao sở thích cá nhân, chỉ bởi mong muốn mang lại cho bạn một cuộc sống đủ đầy, không phải lo nghĩ về vật chất mà không quản khó khăn, thức khuya dậy sớm. Và cũng là món quà ý nghĩa bạn dành tặng cho chính bản thân mình – sau bao ngày vất vả, bận rộn mà quên đi việc tạo ra niềm vui cho chính bản thân mình. Hãy đến với Baza, số 10 Trần Phú – Hà Đông – Hà Nội để lựa chọn cho mình món quà ưng ý, <strong>đồng hồ nam</strong>, <strong>đồng hồ nữ</strong> độc nhất với mức giá ưu đãi nhất bạn nhé!<br>
		<br>
		<br>
		<br>
		&nbsp;</div>
	<br>
	<img alt="Đồng hồ thời trang nam Vinoce 3287 thiết kế chất lượng chính hãng" src="http://img1.baza.vn/upload/files/products-36IKPylC/kStoKxfc.jpg?v=635410308691284189" style="width: 700px; height: 600px;"></div>
<div style="text-align: center;">
	&nbsp;</div>
<div style="text-align: justify;">
	<div style="text-align: center;">
		<p style="text-align: justify;">
			<span style="color: rgb(255, 0, 0);"><strong>XỬ LÝ ĐỒNG HỒ BỊ VÀO NƯỚC</strong></span><br>
			<br>
			Vì một số nguyên nhân khách quan hay chủ quan khi sử dụng đồng hồ như ấn chốt khi tiếp xúc với nước, tiếp xúc với chất tẩy rửa, tiếp xúc với môi trường muối, môi trường nhiệt độ cao... mà đồng hồ bị vào nước, về lâu về dài có thể làm hỏng bộ máy. Khắc phục hiện tượng này, có một số biện pháp như sau:<br>
			<br>
			<em>- Khử nước bằng khăn giấy.</em>&nbsp;Dùng giấy/khăn mềm lau khô nhưng tránh làm xước mặt số, dùng tô vít nhỏ mở nắp lưng mặt số, tránh không đụng vào bánh răng hoặc các linh kiện khác. Tiếp theo, úp mặt đồng hồ xuống, bên dưới lót vải hoặc khăn giấy mềm để không làm xước mặt và để tự khô trong 24 giờ, đồng hồ có thể chạy bình thường.<br>
			<br>
			<em>- Làm khô bằng bóng đèn tròn.</em>&nbsp;Bọc đồng hồ bằng giấy mềm hoặc vải nhung, đặt dưới đèn tròn 40W cách khoảng 5-10cm khoảng 30 phút, sẽ không còn hơi nước bên trong đồng hồ.<br>
			<br>
			<em>- Đeo ngược đồng hồ.</em>&nbsp;Với trường hợp có hơi nước ở mặt kính, hãy đeo ngược chiếc đồng hồ, để mặt kính úp vào tay khoảng vài tiếng, dưới tác động của lực hút hấp dẫn, hơi nước sẽ dần biến mất. Lưu ý để đồng hồ xa nguồn phát ra từ trường mạnh.<br>
			<br>
			<em>- Dùng gói hút ẩm.</em>&nbsp;Bỏ đồng hồ vào hộp hút ẩm như các hộp đựng và bảo quản máy ảnh. Hoặc mua gói bột hút ẩm về cho vào 1 hộp kín và để đồng hồ vào trong đó để hút ẩm đồng hồ.&nbsp;<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">BẢO HÀNH</strong><br>
			<br>
			- Thời gian bảo hành được tính từ ngày mua ghi trên THẺ BẢO HÀNH và không được gia hạn sau khi hết thời hạn bảo hành theo qui định.<br>
			<br>
			- Chỉ bảo hành về MÁY và CÁC LINH KIỆN bên trong của Đồng hồ.<br>
			<br>
			- Bảo hành chỉ có giá trị khi Đồng hồ có THẺ BẢO HÀNH được đóng dấu của Công Ty Cổ Phần Baza Việt Nam.<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">KHÔNG BẢO HÀNH</strong><br>
			<br>
			- Không bảo hành cho phần bên ngoài của Đồng hồ như: vỏ máy, mặt kính, khóa, dây bị hỏng hóc do sử dụng không đúng. Ví dụ: vết hằn, móp méo, trầy xước, nứt vỡ kính... trừ trường hợp lỗi kỹ thuật do nhà sản xuất và được khách hàng phát hiện trong vòng 7 ngày kể từ khi nhận sản phẩm. Vì vậy, kính mong quý khách xem kỹ hàng sau khi nhận.<br>
			<br>
			- Không bảo hành cho những hậu quả gián tiếp của việc sử dụng không đúng cách của người sử dụng như: đeo Đồng hồ trong khi xông hơi, tắm nước nóng, để Đồng hồ tiếp xúc với các loại hóa chất, axít, chất tẩy rửa có độ ăn mòn cao…<br>
			<br>
			- Không bảo hành cho Đồng hồ bị hư hỏng do ảnh hưởng của thiên tai, hỏa hoạn, lũ lụt, tai nạn hoặc cố tình gây hư hỏng…<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">MẤT THẺ BẢO HÀNH</strong><br>
			<br>
			Trong trường hợp mất THẺ BẢO HÀNH vui lòng liên hệ ngay với chúng tôi để được hỗ trợ.</p>
		<div>
			&nbsp;</div>
	</div>
</div>
<div>
	&nbsp;</div>
                    </div>', N'Bạc - Vàng', N'Trung bình', 5, 0, 0, CAST(N'2017-11-20 00:00:00.000' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (17, N'Nu', N'Vinoce', N'Đồng hồ nữ Vinoce V6255 dây da mặt ngọc trai mới', N'Đồng hồ nữ Vinoce V6255 mặt vỏ trai tự nhiên dây đeo da cá tính, mặt đồng hồ thiết kế phá cách với các chi tiết tinh xảo đến kinh ngạc, chất liệu chống thấm nước và khả năng chịu va đập cao', N'thienvu', 2499000, 34, 5, N'dong-ho-nu-vinoce-v6255-day-da-mat-ngoc-trai-moi', N'dong-ho-nu-vinoce-v6255-day-da-mat-ngoc-trai-moi.jpg', 3, N'<div id="pdt_tdt" class="box_pdt_detail" style="border-top: 0;">
                        <p>
	<strong>Nhãn hàng:</strong>&nbsp;Vinoce<br>
	<br>
	<strong>Loại đồng hồ:&nbsp;</strong>Quartz<br>
	<br>
	<strong>Bộ máy :</strong> Nhật Bản<br>
	<br>
	<strong>Giới tính:&nbsp;</strong>Nữ<br>
	<br>
	<strong>Kiểu mặt:&nbsp;</strong>Mặt tròn<br>
	<br>
	<strong>Đường kính mặt đồng hồ:&nbsp;</strong>28mm<br>
	<br>
	<strong>Độ dày mặt đồng hồ:</strong>&nbsp;10mm<br>
	<br>
	<strong>Kích thước dây:&nbsp;</strong>240 x 16mm<br>
	<br>
	<strong>Chất liệu vỏ máy:</strong>&nbsp;Thép không gỉ<br>
	<br>
	<strong>Chất liệu dây:&nbsp;</strong>Da<br>
	<br>
	<strong>Kiểu khóa:</strong>&nbsp;Khóa gài<br>
	<br>
	<strong>Chống thấm nước:&nbsp;</strong>3ATM<br>
	&nbsp;</p>
<p>
	&nbsp;</p>
<div style="text-align: center;">
	<img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/TALKssBR.jpg?v=635510421295744381" style="width: 700px; height: 408px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/FITYXFxI.jpg?v=635510421594901492" style="width: 700px; height: 97px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/DoUidaLL.jpg?v=635510421641484156" style="width: 700px; height: 557px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/CaeoNxYp.jpg?v=635510421728819151" style="width: 700px; height: 354px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/aNk4SO7G.jpg?v=635510421780612114" style="width: 700px; height: 469px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/AkG68TBD.jpg?v=635510421831034998" style="width: 700px; height: 641px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/2hPStoxO.jpg?v=635510421883137978" style="width: 700px; height: 688px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/8PfHPgMJ.jpg?v=635510421932680811" style="width: 700px; height: 340px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/OLmvSY6C.jpg?v=635510421996674472" style="width: 700px; height: 837px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/my7lYrdy.jpg?v=635510422045737278" style="width: 700px; height: 242px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/Ngc9uiik.jpg?v=635510422098810313" style="width: 700px; height: 713px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/3fjVg6Ce.jpg?v=635510422151623334" style="width: 700px; height: 269px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/af6Zgw6f.jpg?v=635510422201636195" style="width: 700px; height: 710px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/mj56gTfP.jpg?v=635510422247298807" style="width: 700px; height: 219px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/zUtIAwpC.jpg?v=635510422299231777" style="width: 700px; height: 735px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/rjcfXX9f.jpg?v=635510422342544254" style="width: 700px; height: 485px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/WJNbNfPx.jpg?v=635510422385906734" style="width: 700px; height: 181px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/lGrtzOh3.jpg?v=635510422434059489" style="width: 700px; height: 360px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/BjcwLW3o.jpg?v=635510422485402425" style="width: 700px; height: 816px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/VgI5fp63.jpg?v=635510422535915314" style="width: 700px; height: 358px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/4QsxtUzI.jpg?v=635510422586088184" style="width: 700px; height: 1126px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/UrCxjPGI.jpg?v=635510422630160705" style="width: 700px; height: 503px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/jNmZVhyz.jpg?v=635510422674603247" style="width: 700px; height: 552px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/YyxZf3IB.jpg?v=635510422718995786" style="width: 700px; height: 712px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/Eaf2aMfo.jpg?v=635510422764868410" style="width: 700px; height: 823px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/hEemb57k.jpg?v=635510422824231805" style="width: 700px; height: 804px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/OQkkWBhn.jpg?v=635510422873074599" style="width: 700px; height: 875px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/bxuufxtr.jpg?v=635510422921867390" style="width: 700px; height: 842px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/Qqu9gujQ.jpg?v=635510422979980714" style="width: 700px; height: 841px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/7IqIatss.jpg?v=635510423038864081" style="width: 700px; height: 826px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/ORCd4iUq.jpg?v=635510423086536808" style="width: 700px; height: 813px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/HKhnAV2W.jpg?v=635510423136319656" style="width: 700px; height: 561px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/z5m3nx93.gif?v=635510423263656939" style="width: 700px; height: 467px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/NVHScISH.gif?v=635510423383723806" style="width: 700px; height: 477px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/9hhhM9Bv.jpg?v=635510423600286193" style="width: 700px; height: 446px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/ghEep9Yi.jpg?v=635510423647798911" style="width: 700px; height: 559px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/UmtzyVDj.jpg?v=635510423714902749" style="width: 700px; height: 639px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/HYdhIOzp.jpg?v=635510423761085390" style="width: 700px; height: 579px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/TMTNxVpe.jpg?v=635510423805447928" style="width: 700px; height: 670px;"><img alt="" src="http://img1.baza.vn/upload/files/products-wpUPgSfi/bWOxgHa2.jpg?v=635510423856210831" style="width: 700px; height: 911px;"></div>
<div style="text-align: center;">
	<div>
		<br>
		<br>
		<br>
		<h2>
			<span style="font-size: 14px;">Đồng hồ nữ Vinoce V6255 - Nét duyên dáng trên đôi tay bạn gái</span><br>
			<br>
			&nbsp;</h2>
		<p style="text-align: justify;">
			Nếu hỏi một cô gái xem rằng cô ấy có yêu thích các mẫu phụ kiện hay không chắc chắn phần lớn đều trả lời là có. Con gái không những có tình yêu lớn với các phụ kiện thời trang mà còn mong muốn được cập nhật những mốt mới, sở hữu chúng để làm đẹp cho bản thân mình. &nbsp;Bạn là một chàng trai, một người đang băn khoăn suy nghĩ xem phải tặng món quà nào đó cho một nửa của mình hay cho người bạn mà bạn yêu quý, thì đồng hồ đeo tay chính là món quà không thể ý nghĩa hơn. Việc được tặng một chiếc đồng hồ đúng với sở thích cá nhân và phong cách sống của người tặng không những mang lại niềm vui thích cho người nhận mà còn thể hiện sự quan tâm, thấu hiểu của người tặng làm cho món quà càng thêm phần ý nghĩa. Giới thiệu với bạn chiếc&nbsp;<a href="http://baza.vn/dong-ho-nu-vinoce-v6255-day-da-mat-vo-trai-tu-nhien/p/ps9M3QRG"><strong>đồng hồ nữ Vinoce V6255 dây da, mặt vỏ trai cá tính</strong></a>&nbsp;chắc chắn sẽ là món quà vô cùng ý nghĩa.<br>
			<br>
			&nbsp;</p>
		<h3 style="text-align: justify;">
			<span style="font-size: 12px;"><strong>Đồng hồ thời trang KIMIO ô vuông màu sắc</strong>&nbsp;</span><strong><span style="font-size: 12px;">thiết kế ưu tú, chất lượng cao cấp, tôn vinh vẻ đẹp của mọi cô gái.</span></strong><br>
			<br>
			&nbsp;</h3>
		<p style="text-align: justify;">
			Chiếc&nbsp;<strong>đồng hồ thời trang</strong>&nbsp;được thiết kế kiểu dáng mới như những một món đồ nhỏ xinh tô điểm cho đôi tay bạn gái thêm phần đáng yêu hơn. Phần mặt kính của đồng hồ dạng tròn cổ điển, tinh tế và thanh thoát, thể hiện sự dịu dàng, cuốn hút rất riêng của người con gái. Các con số được thay bằng pha lê tinh xảo, càng nhìn càng thêm quyến rũ hơn. Trên bề mặt kính đều có đường vân chìm khác nhau, đem tới những trải nghiệm thời trang mới mẻ cho các cô gái. Logo thương hiệu được in tinh tế trên mặt&nbsp;<a href="http://baza.vn/dong-ho/c"><strong>đồng hồ</strong></a>, khẳng định chất lượng dòng sản phẩm chính hãng, bền đẹp qua thời gian.<br>
			<br>
			&nbsp;</p>
		<p style="text-align: justify;">
			Mặt kính là từ chất liệu kính khoáng cao cấp, bề mặt kính trong suốt, có thể nhìn rõ hoạt động bên trong của&nbsp;<strong>đồng hồ</strong>. Chất liệu kính khoáng chất bền bỉ, chịu được áp lực cao và không bị va đập hay trầy xước làm mất đi tính thẩm mĩ, bạn hoàn toàn yên tâm diện chúng tới khắp mọi nơi, tỏa sáng trong nhiều hoàn cảnh khác nhau.<br>
			&nbsp;</p>
		<p style="text-align: justify;">
			&nbsp;</p>
		<p style="text-align: justify;">
			Viền ngoài của&nbsp;<a href="http://baza.vn/dong-ho-nu/c/"><strong>đồng hồ nữ</strong></a>&nbsp;là chất liệu hợp kim chống gỉ, được mạ điện chân không nhiều lần sáng bóng và không dễ bị han gỉ dẫu cho bạn sử dụng thường xuyên. Núm chỉnh thời trang có rãnh chống trơn trượt cho bạn gái dễ dàng điều chỉnh ngày giờ.<br>
			&nbsp;</p>
		<p style="text-align: justify;">
			&nbsp;</p>
		<p style="text-align: justify;">
			Dây&nbsp;<a href="http://baza.vn/dong-ho-hieu-nu/c/"><strong>đồng hồ hiệu nữ</strong></a>&nbsp;được thiết kế mới lạ, chất liệu da bền đẹp sẽ giúp cổ tay của bạn thêm xinh xắn và luôn được thoải mái mỗi khi vận động hàng ngày. Máy quazrt nhập khẩu dòng cao cấp tại nước ngoài chạy giờ chính xác, bền bỉ và hoạt động tớt trong nhiều điều kiện tác động khác nhau. Chỉ số chống thấm nước của đồng hồ rất cao, &nbsp;cho bạn thoải mái trong các hoạt động hàng ngày đều không bị thấm nước vào trong, an toàn và bền bỉ.<br>
			&nbsp;</p>
		<p style="text-align: justify;">
			&nbsp;</p>
		<p style="text-align: justify;">
			Khi mix đồ, bạn gái nên lưu ý chọn màu sắc cùng tông màu với đồng hồ để đạt hiệu quả phối hợp ăn ý nhất, vừa đơn giản vừa hiệu quả đúng không nào.<br>
			&nbsp;</p>
		<p style="text-align: justify;">
			&nbsp;</p>
		<h3 style="text-align: justify;">
			<span style="font-size: 12px;"><strong>Đồng hồ nữ Vinoce</strong>&nbsp;</span><strong><span style="font-size: 12px;">với chất liệu cao cấp và chế tác tinh xảo, chiếc đồng hồ toát lên vẻ đẹp cuốn hút mà bất kỳ cô gái nào cũng phải xiêu lòng.</span></strong><br>
			&nbsp;</h3>
		<p style="text-align: justify;">
			&nbsp;</p>
		<p style="text-align: justify;">
			Sản phẩm được cung cấp bởi Baza- chất lượng đảm bảo, giá cả phải chăng với nhiều ưu đãi lớn. Chắc chắn, khi được tặng món quà này, cô gái được nhận sẽ rất vui và hạnh phúc. Hãy nhanh tay sở hữu và mang tới những niềm vui bất ngờ cho người thân của bạn với chiếc đồng hồ này nhé.<br>
			&nbsp;</p>
		<p style="text-align: justify;">
			&nbsp;</p>
		<p style="text-align: justify;">
			<strong><u>Cách bảo quản đồng hồ:</u></strong><br>
			&nbsp;</p>
		<p style="text-align: justify;">
			-Không nên thử độ cứng và chống xước của kính đồng hồ (Sapphire glass) bằng các vật có tính chất cứng hơn sapphire như dao cắt kính, kim cương… vì như vậy sẽ làm hư hại kính đồng hồ.<br>
			&nbsp;</p>
		<p style="text-align: justify;">
			-Lưu ý đóng chặt núm điều chỉnh của đồng hồ sau khi chỉnh giờ hoặc lịch, để tránh nước có thể thẩm thấu vào bên trong đồng hồ. Việc thường xuyên đeo đồng hồ trong khi tắm nước nóng hoặc xông hơi cũng khiến khả năng chống thấm nước của đồng hồ bị suy giảm.<br>
			&nbsp;</p>
		<p style="text-align: justify;">
			-Luôn đảm bảo có đủ năng lượng cho bộ máy của đồng hồ, thay pin định kỳ và đúng chủng loại pin .<br>
			<br>
			<br>
			<br>
			&nbsp;</p>
	</div>
	<img alt="" src="http://img1.baza.vn/upload/files/products-36IKPylC/kStoKxfc.jpg?v=635410308691284189" style="width: 700px; height: 600px;"><br>
	&nbsp;</div>
<div style="text-align: justify;">
	<div style="text-align: center;">
		<p style="text-align: justify;">
			<span style="color: rgb(255, 0, 0);"><strong>XỬ LÝ ĐỒNG HỒ BỊ VÀO NƯỚC</strong></span><br>
			<br>
			Vì một số nguyên nhân khách quan hay chủ quan khi sử dụng đồng hồ như ấn chốt khi tiếp xúc với nước, tiếp xúc với chất tẩy rửa, tiếp xúc với môi trường muối, môi trường nhiệt độ cao... mà đồng hồ bị vào nước, về lâu về dài có thể làm hỏng bộ máy. Khắc phục hiện tượng này, có một số biện pháp như sau:<br>
			<br>
			<em>- Khử nước bằng khăn giấy.</em>&nbsp;Dùng giấy/khăn mềm lau khô nhưng tránh làm xước mặt số, dùng tô vít nhỏ mở nắp lưng mặt số, tránh không đụng vào bánh răng hoặc các linh kiện khác. Tiếp theo, úp mặt đồng hồ xuống, bên dưới lót vải hoặc khăn giấy mềm để không làm xước mặt và để tự khô trong 24 giờ, đồng hồ có thể chạy bình thường.<br>
			<br>
			<em>- Làm khô bằng bóng đèn tròn.</em>&nbsp;Bọc đồng hồ bằng giấy mềm hoặc vải nhung, đặt dưới đèn tròn 40W cách khoảng 5-10cm khoảng 30 phút, sẽ không còn hơi nước bên trong đồng hồ.<br>
			<br>
			<em>- Đeo ngược đồng hồ.</em>&nbsp;Với trường hợp có hơi nước ở mặt kính, hãy đeo ngược chiếc đồng hồ, để mặt kính úp vào tay khoảng vài tiếng, dưới tác động của lực hút hấp dẫn, hơi nước sẽ dần biến mất. Lưu ý để đồng hồ xa nguồn phát ra từ trường mạnh.<br>
			<br>
			<em>- Dùng gói hút ẩm.</em>&nbsp;Bỏ đồng hồ vào hộp hút ẩm như các hộp đựng và bảo quản máy ảnh. Hoặc mua gói bột hút ẩm về cho vào 1 hộp kín và để đồng hồ vào trong đó để hút ẩm đồng hồ.&nbsp;<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">BẢO HÀNH</strong><br>
			<br>
			- Thời gian bảo hành được tính từ ngày mua ghi trên THẺ BẢO HÀNH và không được gia hạn sau khi hết thời hạn bảo hành theo qui định.<br>
			<br>
			- Chỉ bảo hành về MÁY và CÁC LINH KIỆN bên trong của Đồng hồ.<br>
			<br>
			- Bảo hành chỉ có giá trị khi Đồng hồ có THẺ BẢO HÀNH được đóng dấu của Công Ty Cổ Phần Baza Việt Nam.<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">KHÔNG BẢO HÀNH</strong><br>
			<br>
			- Không bảo hành cho phần bên ngoài của Đồng hồ như: vỏ máy, mặt kính, khóa, dây bị hỏng hóc do sử dụng không đúng. Ví dụ: vết hằn, móp méo, trầy xước, nứt vỡ kính... trừ trường hợp lỗi kỹ thuật do nhà sản xuất và được khách hàng phát hiện trong vòng 7 ngày kể từ khi nhận sản phẩm. Vì vậy, kính mong quý khách xem kỹ hàng sau khi nhận.<br>
			<br>
			- Không bảo hành cho những hậu quả gián tiếp của việc sử dụng không đúng cách của người sử dụng như: đeo Đồng hồ trong khi xông hơi, tắm nước nóng, để Đồng hồ tiếp xúc với các loại hóa chất, axít, chất tẩy rửa có độ ăn mòn cao…<br>
			<br>
			- Không bảo hành cho Đồng hồ bị hư hỏng do ảnh hưởng của thiên tai, hỏa hoạn, lũ lụt, tai nạn hoặc cố tình gây hư hỏng…<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">MẤT THẺ BẢO HÀNH</strong><br>
			<br>
			Trong trường hợp mất THẺ BẢO HÀNH vui lòng liên hệ ngay với chúng tôi để được hỗ trợ.</p>
		<div>
			&nbsp;</div>
	</div>
</div>
<div>
	&nbsp;</div>
                    </div>', N'Đỏ - Trắng - Nâu', N'Nhỏ - Trung bình', 3, 0, 0, CAST(N'2017-11-20 00:00:00.000' AS DateTime))
INSERT [sanPham] ([maSP], [maLoai], [maHangSX], [tenSP], [ndTomTat], [tkThanhVien], [giaBan], [daGiamGia], [soLuong], [biDanh], [hinhDaiDien], [soHinhKem], [ndSanPham], [mauSac], [kichCo], [danhGia], [soLanQT], [soLanGD], [ngayDangSP]) VALUES (18, N'Nam', N'Vinoce', N'Đồng hồ nam không số VINOCE', N'Là phiên bản mới nhất của thương hiệu đồng hồ VINOCE, chiếc đồng hồ mang trong mình vẻ ngoài lịch lãm sang trọng, thiết kế đơn giản nhưng sắc nét tới từng chi tiết cùng 2 phiên bản dây da thật và dây kim loại đáp ứng sự lựa chọn của quý ông', N'thienvu', 2199000, 15, 5, N'dong-ho-nam-khong-so-vinoce', N'dong-ho-nam-khong-so-vinoce.jpg', 5, N'<div id="pdt_tdt" class="box_pdt_detail" style="border-top: 0;">
                        <div>
	<strong>Nhãn hiệu: </strong>Vinoce<br>
	<br>
	<strong>Giới tính: </strong>Nam<br>
	<br>
	<strong><span style="font-size: 12.7273px;">Máy:</span></strong><span style="font-size: 12.7273px;"> Quartz</span><br>
	<br>
	<strong>Bộ máy: </strong>Nhật Bản<br>
	&nbsp;</div>
<div>
	<strong>Chất liệu: </strong>Thép không gỉ</div>
<div>
	&nbsp;</div>
<div>
	<strong>Mặt kính:</strong> Mặt kính khoáng<br>
	<br>
	<strong><span style="font-size: 12px;">Đường kính mặt:</span></strong><span style="font-size: 12px;"> 38mm &nbsp; &nbsp;</span><br>
	<br>
	<strong><span style="font-size: 12px;">Độ dày mặt:</span></strong><span style="font-size: 12px;"> 7mm&nbsp;</span><br>
	&nbsp;</div>
<div>
	<strong>Độ chống nước: </strong>3ATM</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div style="text-align: center;">
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/Nk22M2sw.jpg"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/uQQXQStW.jpg" style="width: 700px; height: 725px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/u47bgepg.jpg" style="width: 700px; height: 769px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/rofyq511.jpg" style="width: 700px; height: 699px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/fsh1dp3Z.jpg" style="width: 700px; height: 533px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/RVXeMnbe.jpg" style="width: 700px; height: 584px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/6fUnGiMg.jpg" style="width: 700px; height: 837px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/W3KWeaVj.jpg" style="width: 700px; height: 774px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/xs4gSKRq.jpg" style="width: 700px; height: 624px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/wLQGTiDW.jpg" style="width: 700px; height: 721px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/cM2ESpH5.jpg" style="width: 700px; height: 592px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/PJ5LaRUk.jpg" style="width: 700px; height: 507px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/KRob1zKS.jpg" style="width: 700px; height: 638px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/2zOLdgtC.jpg" style="width: 700px; height: 621px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/BkLEhXL4.jpg" style="width: 700px; height: 616px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/nPsStASI.jpg" style="width: 700px; height: 559px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/Ylpk1scV.jpg" style="width: 700px; height: 634px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/UybaCON8.jpg" style="width: 700px; height: 457px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/fZMXwNNM.jpg" style="width: 700px; height: 940px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/BiMK97FG.jpg" style="width: 700px; height: 594px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/anUQ83vb.jpg" style="width: 700px; height: 549px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/2tdfVOGJ.jpg" style="width: 700px; height: 572px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/d9Mugf7P.jpg" style="width: 700px; height: 342px;"><img alt="" src="http://img.baza.vn/upload/files/products-LjBGX5zb/Uz8fpvYn.jpg" style="width: 700px; height: 467px;"></div>
<div>
	&nbsp;</div>
<div>
	<div style="font-size: 12.7273px; text-align: center;">
		<p>
			<img alt="Bảng phân loại mức độ chống thấm nước của đồng hồ" src="http://img1.baza.vn/upload/files/products-goTVh9XV/8oSWrZYR.jpg?v=635709999656634707" style="width: 700px; height: 600px;"></p>
	</div>
	<div style="font-size: 12.7273px; text-align: center;">
		<p style="text-align: justify;">
			<br>
			<span style="color: rgb(255, 0, 0);"><strong>XỬ LÝ ĐỒNG HỒ BỊ VÀO NƯỚC</strong></span><br>
			<br>
			Vì một số nguyên nhân khách quan hay chủ quan khi sử dụng đồng hồ như ấn chốt khi tiếp xúc với nước, tiếp xúc với chất tẩy rửa, tiếp xúc với môi trường muối, môi trường nhiệt độ cao... mà đồng hồ bị vào nước, về lâu về dài có thể làm hỏng bộ máy. Khắc phục hiện tượng này, có một số biện pháp như sau:<br>
			<br>
			<em>- Khử nước bằng khăn giấy.</em>&nbsp;Dùng giấy/khăn mềm lau khô nhưng tránh làm xước mặt số, dùng tô vít nhỏ mở nắp lưng mặt số, tránh không đụng vào bánh răng hoặc các linh kiện khác. Tiếp theo, úp mặt đồng hồ xuống, bên dưới lót vải hoặc khăn giấy mềm để không làm xước mặt và để tự khô trong 24 giờ, đồng hồ có thể chạy bình thường.<br>
			<br>
			<em>- Làm khô bằng bóng đèn tròn.</em>&nbsp;Bọc đồng hồ bằng giấy mềm hoặc vải nhung, đặt dưới đèn tròn 40W cách khoảng 5-10cm khoảng 30 phút, sẽ không còn hơi nước bên trong đồng hồ.<br>
			<br>
			<em>- Đeo ngược đồng hồ.</em>&nbsp;Với trường hợp có hơi nước ở mặt kính, hãy đeo ngược chiếc đồng hồ, để mặt kính úp vào tay khoảng vài tiếng, dưới tác động của lực hút hấp dẫn, hơi nước sẽ dần biến mất. Lưu ý để đồng hồ xa nguồn phát ra từ trường mạnh.<br>
			<br>
			<em>- Dùng gói hút ẩm.</em>&nbsp;Bỏ đồng hồ vào hộp hút ẩm như các hộp đựng và bảo quản máy ảnh. Hoặc mua gói bột hút ẩm về cho vào 1 hộp kín và để đồng hồ vào trong đó để hút ẩm đồng hồ.&nbsp;<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">BẢO HÀNH</strong><br>
			<br>
			- Thời gian bảo hành được tính từ ngày mua ghi trên THẺ BẢO HÀNH và không được gia hạn sau khi hết thời hạn bảo hành theo qui định.<br>
			<br>
			- Chỉ bảo hành về MÁY và CÁC LINH KIỆN bên trong của Đồng hồ.<br>
			<br>
			- Bảo hành chỉ có giá trị khi Đồng hồ có THẺ BẢO HÀNH được đóng dấu của Công Ty Cổ Phần Baza Việt Nam.<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">KHÔNG BẢO HÀNH</strong><br>
			<br>
			- Không bảo hành cho phần bên ngoài của Đồng hồ như: vỏ máy, mặt kính, khóa, dây bị hỏng hóc do sử dụng không đúng. Ví dụ: vết hằn, móp méo, trầy xước, nứt vỡ kính... trừ trường hợp lỗi kỹ thuật do nhà sản xuất và được khách hàng phát hiện trong vòng 7 ngày kể từ khi nhận sản phẩm. Vì vậy, kính mong quý khách xem kỹ hàng sau khi nhận.<br>
			<br>
			- Không bảo hành cho những hậu quả gián tiếp của việc sử dụng không đúng cách của người sử dụng như: đeo Đồng hồ trong khi xông hơi, tắm nước nóng, để Đồng hồ tiếp xúc với các loại hóa chất, axít, chất tẩy rửa có độ ăn mòn cao…<br>
			<br>
			- Không bảo hành cho Đồng hồ bị hư hỏng do ảnh hưởng của thiên tai, hỏa hoạn, lũ lụt, tai nạn hoặc cố tình gây hư hỏng…<br>
			<br>
			<strong style="color: rgb(255, 0, 0);">MẤT THẺ BẢO HÀNH</strong><br>
			<br>
			Trong trường hợp mất THẺ BẢO HÀNH vui lòng liên hệ ngay với chúng tôi để được hỗ trợ.</p>
	</div>
</div>
<p>
	&nbsp;</p>
                    </div>', N'Trắng - Bạc - Vàng', N'Trung bình - To', 5, 0, 0, CAST(N'2017-11-20 00:00:00.000' AS DateTime))
INSERT [taiKhoan] ([tkThanhVien], [matKhau], [ngayCap], [maQuyen], [hoTV], [tenTV], [gioiTinh], [hinhAnh], [ngaySinh], [noiSinh], [soDT], [eMail], [dcLienLac], [duocSD], [ghiChu]) VALUES (N'author1', N'123456', CAST(N'2017-11-11 00:00:00.000' AS DateTime), N'author', N'Lê Hoàng Thiên', N'Vũ', 1, N'author1.jpg', CAST(N'1995-05-02 00:00:00.000' AS DateTime), N'TP.HCM', N'01685621585', N'lehoangthienvu@gmail.com', N'TPHCM', 1, N'')
INSERT [taiKhoan] ([tkThanhVien], [matKhau], [ngayCap], [maQuyen], [hoTV], [tenTV], [gioiTinh], [hinhAnh], [ngaySinh], [noiSinh], [soDT], [eMail], [dcLienLac], [duocSD], [ghiChu]) VALUES (N'author2', N'123456', CAST(N'2017-11-11 00:00:00.000' AS DateTime), N'author', N'Nguyễn Cao Kỳ', N'Duyên', 0, N'author2.jpg', CAST(N'1995-10-12 00:00:00.000' AS DateTime), N'Bến Tre', N'01865652521', N'nguyencaokyduyen@gmail.com', N'TPHCM', 1, N'')
INSERT [taiKhoan] ([tkThanhVien], [matKhau], [ngayCap], [maQuyen], [hoTV], [tenTV], [gioiTinh], [hinhAnh], [ngaySinh], [noiSinh], [soDT], [eMail], [dcLienLac], [duocSD], [ghiChu]) VALUES (N'thienvu', N'lehoangthienvu', CAST(N'2017-11-10 00:00:00.000' AS DateTime), N'admin', N'Nguyễn Ái', N'Tuấn', 1, N'tuannguyen.jpg', CAST(N'1995-08-01 00:00:00.000' AS DateTime), N'Vĩnh Phúc', N'01648315269', N'nguyenaituan95@gmail.com', N'25/2 KP5, phường Tân Chánh Hiệp, quận 12, TPHCM', 1, NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [Unique_biDanh_baiViet]    Script Date: 6-12-2017 10:22:24 AM ******/
ALTER TABLE [baiViet] ADD  CONSTRAINT [Unique_biDanh_baiViet] UNIQUE NONCLUSTERED 
(
	[biDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Unique_tenBV_baiViet]    Script Date: 6-12-2017 10:22:24 AM ******/
ALTER TABLE [baiViet] ADD  CONSTRAINT [Unique_tenBV_baiViet] UNIQUE NONCLUSTERED 
(
	[tenBV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__donHang__AB6E6164EBEBC883]    Script Date: 6-12-2017 10:22:24 AM ******/
ALTER TABLE [donHang] ADD  CONSTRAINT [UQ__donHang__AB6E6164EBEBC883] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Unique_biDanh_loaiSP]    Script Date: 6-12-2017 10:22:24 AM ******/
ALTER TABLE [loaiSP] ADD  CONSTRAINT [Unique_biDanh_loaiSP] UNIQUE NONCLUSTERED 
(
	[biDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Unique_biDanh_sanPham]    Script Date: 6-12-2017 10:22:24 AM ******/
ALTER TABLE [sanPham] ADD  CONSTRAINT [Unique_biDanh_sanPham] UNIQUE NONCLUSTERED 
(
	[biDanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [donHang] ADD  CONSTRAINT [DF__donHang__gioiTin__35BCFE0A]  DEFAULT ((1)) FOR [gioiTinh]
GO
ALTER TABLE [donHang] ADD  CONSTRAINT [DF__donHang__diaChi__36B12243]  DEFAULT ('') FOR [diaChi]
GO
ALTER TABLE [donHang] ADD  CONSTRAINT [DF__donHang__tdDatHa__398D8EEE]  DEFAULT (getdate()) FOR [tdDatHang]
GO
ALTER TABLE [donHang] ADD  CONSTRAINT [DF_donHang_daGiaoHang]  DEFAULT ((0)) FOR [daGiaoHang]
GO
ALTER TABLE [donHang] ADD  CONSTRAINT [DF__donHang__ghiChu__3B75D760]  DEFAULT ('') FOR [ghiChu]
GO
ALTER TABLE [baiViet]  WITH CHECK ADD  CONSTRAINT [FK__baiViet__tkThanh__1BFD2C07] FOREIGN KEY([tkThanhVien])
REFERENCES [taiKhoan] ([tkThanhVien])
GO
ALTER TABLE [baiViet] CHECK CONSTRAINT [FK__baiViet__tkThanh__1BFD2C07]
GO
ALTER TABLE [chiTietDH]  WITH CHECK ADD  CONSTRAINT [FK__chiTietDH__maDH__3E52440B] FOREIGN KEY([maDH])
REFERENCES [donHang] ([maDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [chiTietDH] CHECK CONSTRAINT [FK__chiTietDH__maDH__3E52440B]
GO
ALTER TABLE [chiTietDH]  WITH CHECK ADD  CONSTRAINT [FK__chiTietDH__maSP__3F466844] FOREIGN KEY([maSP])
REFERENCES [sanPham] ([maSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [chiTietDH] CHECK CONSTRAINT [FK__chiTietDH__maSP__3F466844]
GO
ALTER TABLE [hopThu]  WITH CHECK ADD  CONSTRAINT [FK_hopThu_taiKhoan] FOREIGN KEY([tkDuyet])
REFERENCES [taiKhoan] ([tkThanhVien])
GO
ALTER TABLE [hopThu] CHECK CONSTRAINT [FK_hopThu_taiKhoan]
GO
ALTER TABLE [sanPham]  WITH CHECK ADD  CONSTRAINT [FK__sanPham__maLoai__267ABA7A] FOREIGN KEY([maLoai])
REFERENCES [loaiSP] ([maLoai])
GO
ALTER TABLE [sanPham] CHECK CONSTRAINT [FK__sanPham__maLoai__267ABA7A]
GO
ALTER TABLE [sanPham]  WITH CHECK ADD  CONSTRAINT [FK__sanPham__tkThanh__29572725] FOREIGN KEY([tkThanhVien])
REFERENCES [taiKhoan] ([tkThanhVien])
GO
ALTER TABLE [sanPham] CHECK CONSTRAINT [FK__sanPham__tkThanh__29572725]
GO
ALTER TABLE [sanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanPham_HangSanXuat] FOREIGN KEY([maHangSX])
REFERENCES [HangSanXuat] ([maHangSX])
GO
ALTER TABLE [sanPham] CHECK CONSTRAINT [FK_sanPham_HangSanXuat]
GO
ALTER TABLE [taiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_taiKhoan_quyen] FOREIGN KEY([maQuyen])
REFERENCES [quyen] ([maQuyen])
GO
ALTER TABLE [taiKhoan] CHECK CONSTRAINT [FK_taiKhoan_quyen]
GO
ALTER TABLE [sanPham]  WITH CHECK ADD  CONSTRAINT [CK__sanPham__giaBan__2A4B4B5E] CHECK  (([giaBan]>=(0)))
GO
ALTER TABLE [sanPham] CHECK CONSTRAINT [CK__sanPham__giaBan__2A4B4B5E]
GO
ALTER TABLE [sanPham]  WITH CHECK ADD  CONSTRAINT [CK__sanPham__soLuong__2D27B809] CHECK  (([soLuong]>=(0)))
GO
ALTER TABLE [sanPham] CHECK CONSTRAINT [CK__sanPham__soLuong__2D27B809]
GO
ALTER TABLE [sanPham]  WITH CHECK ADD  CONSTRAINT [CK_sanPham_daGiamGia] CHECK  (([daGiamGia]>(0)))
GO
ALTER TABLE [sanPham] CHECK CONSTRAINT [CK_sanPham_daGiamGia]
GO
/****** Object:  Trigger [trig1_sanPham]    Script Date: 6-12-2017 10:22:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [trig1_sanPham] on [sanPham]
after insert, update
as
declare @tenSP nvarchar(468)
if UPDATE(tenSP)
begin
     select top 1 @tenSP = tenSP from inserted
	 if (select count(tenSP) from sanPham where tenSP = @tenSP and tenSP is not null) > 1
	 begin 
		raiserror (N'Tên sản phẩm bị trùng với sản phẩm khác. Xin nhập tên khác!',16,1)
		rollback tran
	 end
end

GO
USE [master]
GO
ALTER DATABASE [LuxuryWatches] SET  READ_WRITE 
GO
