CREATE TABLE QuanLyKhoSach
(
    MaSach varchar(5) PRIMARY kEY,
   TenSach varchar(50) NOT NULL,
    TacGia varchar(20)NOT NULL,
    NoiDungTomTat text NOT NULL,
    NamXuatBan datetime NOT NULL,
    LanXuatban int NOT NULL,
    NhaXuatban varchar (50) NOT NULL,
    DiaChiNXB text NOT NULL,
    GiaBan float NOT NULL,
    SoLuong int NOT NULL,
    LoaiSach varchar(50)
);
INSERT INTO QuanLyKhoSach(MaSach, TenSach, TacGia, NoiDungTomTat, NamXuatBan, LanXuatban, NhaXuatban, DiaChiNXB, GiaBan, SoLuong, LoaiSach) VALUES ('T123','Toán Học và nghệ thuật','Nguyễn Tiến Dũng','Quyển sách nhỏ này gồm tám chương, bàn về các thể loại nghệ thuật khác nhau, từ kiến trúc, hình họa cho đến âm nhạc, thơ ca, và sự liên quan với toán học. Phần lón các kiến thức về nghệ thuật cũng như về toán ỏ đây là khá cơ bản, hoặc ít ra được giải thích một cách đơn giản, sao cho học sinh phổ thông, thậm chí ỏ bậc tiểu học, cũng có thể hiểu được phần nhiều.','2012','105','CÔNG TY CỔ PHẦN GIÁO DỤC SPUTNIK','Xã giai pham, Huyện Hưng Yên','117.900','220','Toán Học')

INSERT INTO QuanLyKhoSach(MaSach, TenSach, TacGia, NoiDungTomTat, NamXuatBan, LanXuatban, NhaXuatban, DiaChiNXB, GiaBan, SoLuong, LoaiSach) VALUES ('B001','Trí Tuệ Do Thái ','Eran Katz','Bạn có muốn biết: Người Do Thái sáng tạo ra cái gì và nguồn gốc
trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dần hé lộ
những bí ẩn về sự thông thái của người Do Thái, của một dân tộc
thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí
thức đã được giữ kín hàng nghìn năm như một bí ẩn mật mang tính
văn hóa..','2010','1','Tri Thức','53 Nguyễn Du, Hai Bà Trưng, Hà Nội','79.000','100','Khoa Học Xã Hội')

INSERT INTO QuanLyKhoSach(MaSach, TenSach, TacGia, NoiDungTomTat, NamXuatBan, LanXuatban, NhaXuatban, DiaChiNXB, GiaBan, SoLuong, LoaiSach) VALUES ('E004','Excel dành cho người mới bắt đầu ','Pham Quang Hien ','Sách trình bày qua 14 chương với các hướng dẫn từng bước giúp các bạn tiết kiệm thời gian cũng như đạt năng suất hơn khi làm việc với Excel phiên bản 2013, 2016 cũng như 2019. Với bố cục chặt chẽ, trình bày rõ ràng, dễ dàng sử dụng cho phép bạn thực hành xuyên suốt tất cả các bài tập trong các chương từ bắt đầu đến kết thúc.','2018','90','Nhà Xuất Bản Thanh Niên','Huyện An lộc Tỉnh Nghệ An ','82.900','120','Tin Học ')
~~~~Liệt kê các cuốn sách có năm xuất bản từ 2008 đến nay
SELECT TenSach FROM QuanLyKhoSach WHERE NamXuatBan BETWEEN '2008' AND '2022';

~~~~~~Liệt kê  cuốn sách có giá bán cao nhất
SELECT *
FROM QuanLyKhoSach
WHERE GiaBan = (SELECT MAX(GiaBan) FROM QuanLyKhoSach);

~~~~Tìm những cuốn sách có tiêu đề chứa từ “tin học”
SELECT TenSach FROM QuanLyKhoSach WHERE LoaiSach='Tin Học'

~~~~Liệt kê các cuốn sách có tên bắt đầu với chữ “T” theo thứ tự giá giảm dần
SELECT * FROM QuanLyKhoSach WHERE TenSach LIKE "T%" ORDER BY TenSach DESC

~~~~Liệt kê các cuốn sách của nhà xuất bản Tri thức
SELECT TenSach FROM QuanLyKhoSach WHERE NhaXuatban='Tri Thức'


~~~~Lấy thông tin chi tiết về nhà xuất bản xuất bản cuốn sách “Trí tuệ Do Thái”
SELECT  TenSach, NhaXuatban,LanXuatban,DiaChiNXB,LoaiSach FROM QuanLyKhoSach WHERE TenSach='Trí tuệ DO Thái'

~~~~Hiển thị các thông tin sau về các cuốn sách: Mã sách, Tên sách, Năm xuất bản, Nhà xuất bản,
Loại sách
SELECT MaSach, TenSach,NhaXuatban,NamXuatBan,LoaiSach FROM QuanLyKhoSach


~~~~Tìm các cuốn sách của tác giả “Eran Katz”
SELECT TenSach FROM QuanLyKhoSach WHERE TacGia='Eran Katz'


~~~~Tìm cuốn sách có số lượng lớn nhất trong kho
SELECT*FROM QuanLyKhoSach
WHERE SoLuong = (SELECT MAX(SoLuong) FROM QuanLyKhoSach);

Thống kê số đầu sách của mỗi nhà xuất bản
SELECT COUNT(*)
  FROM QuanLyKhoSach
  WHERE NhaXuatban='Tri Thức'
  


