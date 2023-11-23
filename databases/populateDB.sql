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
	("NDH", "Nguyễn Đình Hiển", "CNTT"),
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

INSERT INTO course (
courseID,
courseName,
courseType,
creditCount,
facultyID,
lecturerID,

weekDay,
classroomID,
startSession,
endSession,

startDate,
endDate)
VALUES
	-- Chung
    
	-- CNTT
	("COMP101601", "Cấu trúc dữ liệu", "Cơ sở ngành", 3, "CNTT", "NDTH",
		2, "ADV_I101", 1, 5,
		"2023-9-1", "2023-12-31"),
	("COMP101602", "Cấu trúc dữ liệu", "Cơ sở ngành", 3, "CNTT", "NDTH",
		4, "ADV_I102", 7, 11,
		"2023-9-1", "2023-12-31"),
	("COMP101701", "Lập trình hướng đối tượng", "Cơ sở ngành", 3, "CNTT", "LTNK",
		3, "ADV_I201", 1, 5,
		"2023-9-1", "2023-12-31"),
	("COMP101702", "Lập trình hướng đối tượng", "Cơ sở ngành", 3, "CNTT", "LTNK",
		2, "ADV_I201", 7, 11,
		"2023-9-1", "2023-12-31"),
	("COMP130301", "Phát triển ứng dụng web", "Cơ sở ngành", 3, "CNTT", "LTHH",
		4, "ADV_I201", 7, 11,
		"2023-9-1", "2023-12-31"),
	("COMP130302", "Phát triển ứng dụng web", "Cơ sở ngành", 3, "CNTT", "LTHH",
		7, "ADV_I201", 7, 11,
		"2023-9-1", "2023-12-31"),
	("COMP170101", "Lý thuyết đồ thị", "Cơ sở ngành", 3, "CNTT", "NVH",
		2, "LVS_D104", 1, 5,
		"2023-9-1", "2023-12-31"),
	("COMP170102", "Lý thuyết đồ thị", "Cơ sở ngành", 3, "CNTT", "NVH",
		2, "LVS_D103", 1, 5,
		"2023-9-1", "2023-12-31"),
	("COMP170103", "Lý thuyết đồ thị", "Cơ sở ngành", 3, "CNTT", "NVH",
		2, "LVS_D104", 7, 11,
		"2023-9-1", "2023-12-31"),
	("COMP104001", "Xử lý ảnh số", "Chuyên ngành", 3, "CNTT", "NQV",
		3, "ADV_B205", 1, 5,
		"2023-9-1", "2023-12-31"),
	("COMP131401", "Trí tuệ nhân tạo", "Chuyên ngành", 3, "CNTT", "NDH",
		6, "ADV_B214", 1, 3,
		"2023-9-1", "2023-12-31"),
	("COMP131402", "Trí tuệ nhân tạo", "Chuyên ngành", 3, "CNTT", "NDH",
		6, "ADV_B214", 4, 6,
		"2023-9-1", "2023-12-31"),
	("COMP131403", "Trí tuệ nhân tạo", "Chuyên ngành", 3, "CNTT", "LTNK",
		6, "ADV_B213", 1, 3,
		"2023-9-1", "2023-12-31"),
	("COMP131404", "Trí tuệ nhân tạo", "Chuyên ngành", 3, "CNTT", "LTNK",
		6, "ADV_B213", 4, 6,
		"2023-9-1", "2023-12-31"),
	("COMP104601", "Các hệ cơ sở tri thức", "Chuyên ngành", 3, "CNTT", "NDH",
		6, "ADV_B214", 10, 12,
		"2023-9-1", "2023-12-31"),

	-- NNA
	("ENG201001", "Ngôn ngữ Anh CSN", "Cơ sở ngành", 3, "NNA", "NXM",
		0, "ADV_A000", 1, 5,
		"2023-9-1", "2023-12-31"),
	("ENG201002", "Ngôn ngữ Anh CSN", "Cơ sở ngành", 3, "NNA", "NXM",
		0, "ADV_A000", 1, 5,
		"2023-9-1", "2023-12-31"),
	("ENG201003", "Ngôn ngữ Anh CSN", "Cơ sở ngành", 3, "NNA", "NXM",
		0, "ADV_A000", 1, 5,
		"2023-9-1", "2023-12-31"),
	("ENG291001", "Ngôn ngữ Anh CN", "Chuyên nghành", 3, "NNA", "NXM",
		0, "ADV_A000", 1, 5,
		"2023-9-1", "2023-12-31"),
	("ENG291002", "Ngôn ngữ Anh CN", "Chuyên nghành", 3, "NNA", "NXM",
		0, "ADV_A000", 1, 5,
		"2023-9-1", "2023-12-31"),
	("ENG291003", "Ngôn ngữ Anh CN", "Chuyên nghành", 3, "NNA", "NXM",
		0, "ADV_A000", 1, 5,
		"2023-9-1", "2023-12-31")
;

SELECT * FROM faculty;
SELECT * FROM lecturer;
SELECT * FROM student;
SELECT * FROM course;