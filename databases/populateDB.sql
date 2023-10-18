INSERT INTO faculty (facultyID, facultyName)
VALUES
	("CNTT", "Công nghệ thông tin"),
	("NNA", "Ngôn ngữ Anh"),
	("TLH", "Tâm lý học")
;

INSERT INTO lecturer (lecturerID, lecturerName, facultyID)
VALUES
	("NVH", "Nguyễn Viết Hưng", "CNTT"),
	("NQV", "Ngô Quốc Việt", "CNTT"),
	("LTHH", "Lương Trần Hy Hiến", "CNTT"),
	("LTNK", "Lương Trần Ngọc Khiết", "CNTT"),
	("NDTH", "Nguyễn Đỗ Thái Nguyên", "CNTT"),
	("TNN", "Trần Thanh Nhã", "CNTT"),
	("NXM", "Nguyễn Xuân Mai", "NNA"),
	("NKA", "Huỳnh Nhật Tiến", "TLH")
;

INSERT INTO student (tempLoginCredential, firstName, lastName, facultyID)
VALUES
	("TA", "Anh", "Phan Vũ Tuấn", "CNTT"),
	("TB", "Bảo", "Trương Đinh Thiên", "CNTT"),
	("KL", "Linh", "Nguyễn Hà Khánh", "CNTT"),
	("HK", "Kha", "Võ Hoàng", "CNTT"),
	("BN", "Ngân", "Lê Thị Bích", "CNTT"),
	("CT", "Tiên", "Lưu Thị Cẩm", "TLH"),
	("TV", "Vân", "Vũ Thị Thuý", "TLH"),
	("GH", "Hân", "Ngô Gia", "TLH"),
	("KA", "Anh", "Nguyễn Kim", "NNA"),
	("HD", "Duy", "Cao Hoàng", "NNA")
;

INSERT INTO course (courseID, courseName, courseType, facultyID, lecturerID)
VALUES
	-- Chung
    
	-- CNTT
	("COMP101601", "Cấu trúc dữ liệu", "Cơ sở ngành", "CNTT", "NDTH"),
	("COMP101602", "Cấu trúc dữ liệu", "Cơ sở ngành", "CNTT", "NDTH"),
	("COMP101701", "Lập trình hướng đối tượng", "Cơ sở ngành", "CNTT", "LTNK"),
	("COMP101702", "Lập trình hướng đối tượng", "Cơ sở ngành", "CNTT", "LTNK"),
	("COMP130301", "Phát triển ứng dụng web", "Cơ sở ngành", "CNTT", "LTHH"),
	("COMP130302", "Phát triển ứng dụng web", "Cơ sở ngành", "CNTT", "LTHH"),
	("COMP170101", "Lý thuyết đồ thị", "Cơ sở ngành", "CNTT", "NVH"),
	("COMP170102", "Lý thuyết đồ thị", "Cơ sở ngành", "CNTT", "NVH"),
	("COMP170103", "Lý thuyết đồ thị", "Cơ sở ngành", "CNTT", "NVH"),
	("COMP104001", "Xử lý ảnh số", "Chuyên ngành", "CNTT", "NQV"),
	("COMP131401", "Trí tuệ nhân tạo", "Chuyên ngành", "CNTT", "LTNK"),
	("COMP131402", "Trí tuệ nhân tạo", "Chuyên ngành", "CNTT", "LTNK"),
	("COMP131403", "Trí tuệ nhân tạo", "Chuyên ngành", "CNTT", "LTNK"),

	-- NNA
	("ENG201001", "Ngôn ngữ Anh CSN", "Cơ sở ngành", "NNA", "NXM"),
	("ENG201002", "Ngôn ngữ Anh CSN", "Cơ sở ngành", "NNA", "NXM"),
	("ENG201003", "Ngôn ngữ Anh CSN", "Cơ sở ngành", "NNA", "NXM"),
	("ENG291001", "Ngôn ngữ Anh CN", "Chuyên nghành", "NNA", "NXM"),
	("ENG291002", "Ngôn ngữ Anh CN", "Chuyên nghành", "NNA", "NXM"),
	("ENG291003", "Ngôn ngữ Anh CN", "Chuyên nghành", "NNA", "NXM")

	-- TLH
;

SELECT * FROM faculty;
SELECT * FROM lecturer;
SELECT * FROM student;
SELECT * FROM course;