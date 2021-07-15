
CREATE TABLE ThongTinKhachHang(
TenKhachhang varchar(30) NOT NULL,
SoCMT varchar(11) PRIMARY KEY,
DiaChi text NOT NULL,
SoThueBao varchar(30) NOT NULL,
LoaiThueBao varchar(30) NOT NULL,
NgayDangKy datetime 

);
INSERT INTO `ThongTinKhachHang`(`TenKhachhang`, `SoCMT`, `DiaChi`, `SoThueBao`, `LoaiThueBao`, `NgayDangKy`) VALUES ('Phạm Văn Tuấn','1902997269','Quảng Ninh ','0384608249','Trả Sau ','2022/06/15')

INSERT INTO `ThongTinKhachHang`(`TenKhachhang`, `SoCMT`, `DiaChi`, `SoThueBao`, `LoaiThueBao`, `NgayDangKy`) VALUES ('Nguyễn Quang Hải ','017298468','Thanh Hóa  ','0968200258','Trả Sau ','2022/06/12')

INSERT INTO `ThongTinKhachHang`(`TenKhachhang`, `SoCMT`, `DiaChi`, `SoThueBao`, `LoaiThueBao`, `NgayDangKy`) VALUES ('Nguyễn Nguyệt Nga ','123456789','Hà Nội  ','0123456789','Trả Trước ','2022/12/12')
 
 INSERT INTO `ThongTinKhachHang`(`TenKhachhang`, `SoCMT`, `DiaChi`, `SoThueBao`, `LoaiThueBao`, `NgayDangKy`) VALUES ('Trần Xuân Bắc ','1902997266','Hà Nội  ','0968764225','Trả Sau ','2022/04/21')
 
 INSERT INTO `ThongTinKhachHang`(`TenKhachhang`, `SoCMT`, `DiaChi`, `SoThueBao`, `LoaiThueBao`, `NgayDangKy`) VALUES ('Phạm THu Hương ','1903969686','Hà Nội ','0333770709','Trả Sau ','2022/06/15')
 
INSERT INTO `ThongTinKhachHang`(`TenKhachhang`, `SoCMT`, `DiaChi`, `SoThueBao`, `LoaiThueBao`, `NgayDangKy`) VALUES ('Nguyễn Thúy Hằng ','017298461','Hải Phòng   ','01666083435','Trả Trước ','2022/12/07')


4a....Hiển thị toàn bộ thông tin của các khách hàng của công ty.
 SELECT * FROM `ThongTinKhachHang`; 
4b.... Hiển thị toàn bộ thông tin của các số thuê bao của công ty.

SELECT TenKhachhang, SoCMT,DiaChi,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE SoThueBao=0968200258; 

SELECT TenKhachhang, SoCMT,DiaChi,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE SoThueBao=0968764225

SELECT TenKhachhang, SoCMT,DiaChi,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE SoThueBao=0333770709

SELECT TenKhachhang, SoCMT,DiaChi,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE SoThueBao=0384608249

SELECT TenKhachhang, SoCMT,DiaChi,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE SoThueBao=01666083435

SELECT TenKhachhang, SoCMT,DiaChi,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE SoThueBao=0123456789
~~~~~~~~~~~~~~~~~~~~~~~~
5a.... Hiển thị toàn bộ thông tin của thuê bao có số: 0123456789
SELECT TenKhachhang, SoCMT,DiaChi,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE SoThueBao=0123456789

5b....Hiển thị thông tin về khách hàng có số CMTND: 123456789
SELECT TenKhachhang,SoThueBao,DiaChi,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE SoCMT=123456789

5c...Hiển thị các số thuê bao của khách hàng có số CMTND:123456789
SELECT SoThueBaoFROM ThongTinKhachHang WHERE SoCMT=123456789

5d... Liệt kê các thuê bao đăng ký vào ngày 12/12/2022
SELECT TenKhachhang,SoThueBao, SoCMT,DiaChi,LoaiThueBao FROM ThongTinKhachHang WHERE NgayDangKy= '2022/12/12'

5d...Liệt kê các thuê bao có địa chỉ tại Hà Nội
SELECT TenKhachhang, SoCMT,SoThueBao,LoaiThueBao,NgayDangKy FROM ThongTinKhachHang WHERE DiaChi='Hà Nội'

6a...Tổng số khách hàng của công ty.
SELECT COUNT(*)TenKhachhang FROM ThongTinKhachHang

6b...Tổng số thuê bao của công ty.
SELECT COUNT(*)SoThueBao FROM ThongTinKhachHang

6c...Tổng số thuê bào đăng ký ngày 12/12/22.
SELECT COUNT(*)SoThueBao FROM ThongTinKhachHang
WHERE NgayDangKy='2022/12/12'

7a...Viết câu lệnh để thay đổi trường ngày đăng ký là not null.
ALTER TABLE ThongTinKhachHang
MODIFY COLUMN NgayDangKy datetime NOT NULL

7b...Viết câu lệnh để thay đổi trường ngày đăng ký là trước hoặc bằng ngày hiện tại.
 
 
7c... Viết câu lệnh để thay đổi số điện thoại phải bắt đầu 09
ALTER TABLE ThongTinKhachHang
MODIFY COLUMN SoThueBao varchar(30) NOT NULL

7d...Viết câu lệnh để thêm trường số điểm thưởng cho mỗi số thuê bao.
ALTER TABLE ThongTinKhachHang
ADD  SốĐiểmThưởng int NULL


