CREATE DATABASE MSSQL05

CREATE TABLE DanhBa(
HoTen varchar(30), NOT NULL,
DienThoai varchar(200) PRIMARY KEY,
DiaChi text NOT NULL,
NgaySinh datetime NOT NULL
);

INSERT INTO DanhBa (HoTen,DienThoai,DiaChi,NgaySinh)VALUES
('Nguyen van B','456123987 ','113 Nguyễn Trãi, Thanh Xuân, Hà Nội','1995/08/01')

INSERT INTO DanhBa (HoTen,DienThoai,DiaChi,NgaySinh)VALUES
('Nguyen van A','789654321','113 Nguyễn Trãi, Thanh Xuân, Hà Nội','1994/08/01')

INSERT INTO DanhBa (HoTen,DienThoai,DiaChi,NgaySinh)VALUES
('Nguyen van C','123456789 ' ,'58  Láng Ha, Ngã Tư S, Hà Nội','1994/08/01')

INSERT INTO DanhBa (HoTen,DienThoai,DiaChi,NgaySinh)VALUES
('Nguyen van D','024681357 , 024683751 ' ,'63 Minh Khai- Hai Ba Trung, Hà Nội','1995/08/01')

4a.....Liệt kê danh sách những người trong danh bạ
SELECT HoTen FROM DanhBa

4b.....Liệt kê danh sách số điện thoại có trong danh bạ
SELECT DienThoai FROM DanhBa

5a.....Liệt kê danh sách người trong danh bạ theo thứ thự alphabet.
SELECT * FROM DanhBa ORDER BY HoTen ASC; 

5b....Liệt kê các số điện thoại của người có thên là Nguyễn Văn A
SELECT HoTen ,DienThoai FROM DanhBa WHERE HoTen='Nguyen van A'

5c.....Liệt kê những người có ngày sinh là 1994/08/01
SELECT HoTen,NgaySinh FROM DanhBa WHERE NgaySinh='1994/08/01'

6a......Tìm số lượng số điện thoại của mỗi người trong danh bạ.


..........Tìm tổng số người trong danh bạ sinh vào năm 1994
SELECT HoTen, DienThoai,DiaChi from DanhBa WHERE YEAR(NgaySinh) =1994; 



..........Hiển thị toàn bộ thông tin về người, của từng số điện thoại..
SELECT HoTen,NgaySinh,DiaChi FROM DanhBa WHERE DienThoai='456123987'; 

....Hiển thị toàn bộ thông tin về người, của số điện thoại 123456789.
SELECT HoTen,NgaySinh,DiaChi FROM DanhBa WHERE DienThoai='123456789'; 

