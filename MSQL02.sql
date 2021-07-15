CREATE DATABASE MSQL02

Cấu trúc bảng cho bảng `SanPham`
--

CREATE TABLE SanPham (
  MaSP varchar(7) PRIMARY KEY,
  TenSP varchar(30),
  MoTaSP varchar(100) NOT NULL,
  Donvi varchar(5) NOT NULL,
  GiaSP float NOT NULL,
  SoLuong int(11) NOT NULL
  CONSTRAINT PK_MASP FOREGIN KEY(MaSP) REFERENCES SanPhamTheoHang(MaSP)
  );
  
  
  INSERT INTO SanPham (MaSP, TenSP, MoTaSP,Donvi,GiaSP,SoLuong)VALUES('123','Máy Tính  T450','Máy Nhâp Cũ','Chiec','1000','10')
  
  INSERT INTO SanPham (MaSP, TenSP, MoTaSP,Donvi,GiaSP,SoLuong)VALUES('124','Điện Thoại
Nokia5670','Điện Thoại đang hot ','Chiec','200','200')
INSERT INTO SanPham (MaSP, TenSP, MoTaSP,Donvi,GiaSP,SoLuong)VALUES('125','Máy In SamSung450','Máy Nhập Mới','Chiec','100','10')
  
  
  
  
Cấu trúc bảng cho bảng `SanPhamTheoHang`

    CREATE TABLE SanPhamTheoHang(
    MaSP int 
    TenHang varchar(50) NOT NULL,
    DiaChi text NOT NULL,
    SoDT bigint NOT NULL,
    CONSTRAINT PK_MASP FOREGIN KEY(MaSP) REFERENCES SanPham(MaSP)
    
    
);
INSERT INTO SanPhamTheoHang(MaSoHang,TenHang,DiaChi,SoDT) VALUES('123','Asus','USA','983233')
INSERT INTO SanPhamTheoHang(MaSoHang,TenHang,DiaChi,SoDT) VALUES('124','Nokia','HanQuoc','983234')
INSERT INTO SanPhamTheoHang(MaSoHang,TenHang,DiaChi,SoDT) VALUES('125','SamSung','HanQuoc','983235')


``Hiển thị tất cả các hãng sản xuất.
SELECT TenHang FROM SanPhamTheoHang


~~~Hiển thị tất cả các sản phẩm.
SELECT TenSP FROM SanPham


Liệt kê danh sách hãng theo thứ thự ngược với alphabet của tên.
SELECT TenHang FROM SanPhamTheoHang ORDER BY TenHang DESC


````Liệt kê danh sách sản phẩm của cửa hàng theo thứ thự giá giảm dần.
SELECT  Ten SP, GiaSP FROM SanPham ORDER BY GiaSP DESC


~~~Hiển thị thông tin của hãng Asus.
SELECT TenHang MaSP, DiaChi,SoDT FROM SanPhamTheoHang
WHERE TenHang='Asus'

~~~Liệt kê danh sách sản phẩm còn ít hơn 11 chiếc trong kho
SELECT  TenSP,SoLuong FROM SanPham WHERE SoLuong <11; 


















