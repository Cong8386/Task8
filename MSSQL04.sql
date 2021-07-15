CREATE TABLE PhieuSanPham
(
    MaSoSP varchar(11) PRIMARY KEY,
    NgaySX datetime NOT NULL,
    TenSP varchar (30) NOT NULL,
    MaLoaiSP varchar (7), NOT NULL
    NguoiChiuTrachNhiem varchar (30) NOT NULL,
    MaSoNguoiChiuTrachNhiem varchar(7) NOT NULL
    
);

INSERT INTO PhieuSanPham (MaSoSP,NgaySX,TenSP,MaLoaiSP,NguoiChiuTrachNhiem,MaSoNguoiChiuTrachNhiem)VALUES
('Z37111111','2022/07/01','Máy tính sách tay Z37','Z37E','Nguyen Van An','987688')

INSERT INTO PhieuSanPham (MaSoSP,NgaySX,TenSP,MaLoaiSP,NguoiChiuTrachNhiem,MaSoNguoiChiuTrachNhiem)VALUES
('A1211111','2022/07/05','Iphone 12promax ','Ip12','Nguyen Van B','987687')

INSERT INTO PhieuSanPham (MaSoSP,NgaySX,TenSP,MaLoaiSP,NguoiChiuTrachNhiem,MaSoNguoiChiuTrachNhiem)VALUES
('S1011111','2022/07/02','SamSungGaLaXy S10 ','SS10','Nguyen Van C','987686')

INSERT INTO PhieuSanPham (MaSoSP,NgaySX,TenSP,MaLoaiSP,NguoiChiuTrachNhiem,MaSoNguoiChiuTrachNhiem)VALUES
('OPF911111','2022/07/03','Dien thoai OPPO F9 ','OPPO F9','Nguyen Van D','987685')

INSERT INTO PhieuSanPham (MaSoSP,NgaySX,TenSP,MaLoaiSP,NguoiChiuTrachNhiem,MaSoNguoiChiuTrachNhiem)VALUES
('HW911111','2022/07/04','Dien Thoai Huawei63  ','HW 63','Nguyen Van E','987684')


4a......Liệt kê danh sách loại sản phẩm của công ty.
SELECT MaLoaiSP FROM PhieuSanPham

4b.......Liệt kê danh sách sản phẩm của công ty.
SELECT TenSP FROM PhieuSanPham

4c..... Liệt kê danh sách người chịu trách nhiệm của công ty.
SELECT NguoiChiuTrachNhiem FROM PhieuSanPham


5a.....Liệt kê danh sách loại sản phẩm của công ty theo thứ tự tăng dần của tên
SELECT * FROM PhieuSanPham ORDER BY TenSP ASC; 

5b...... Liệt kê danh sách người chịu trách nhiệm của công ty theo thứ tự tăng dần của tên.
SELECT * FROM PhieuSanPham ORDER BY NguoiChiuTrachNhiem ASC; 


5c.....Liệt kê các sản phẩm của loại sản phẩm có mã số là Z37E.
SELECT TenSP, MaLoaiSP FROM PhieuSanPham WHERE MaLoaiSP='Z37E'

5d....Liệt kê các sản phẩm Nguyễn Văn An chịu trách nhiệm theo thứ tự giảm đần của mã.
SELECT * FROM PhieuSanPham WHERE NguoiChiuTrachNhiem='Nguyen Van An' ORDER BY TenSP DESC
