USE dkhp;

DELETE FROM faculty;
DELETE FROM lecturer;

INSERT INTO faculty
	(facultyID,	facultyName)
VALUES
	("CNTT",	"Công nghệ thông tin"),
	("TLH",		"Tâm lý học"),
	("GDQP",	"Giáo dục quốc phòng"),
	("GDCT",	"Giáo dục chính trị"),
	("TA",		"Tiếng Anh"),
	("TP",		"Tiếng Pháp"),
	("TT",		"Tiếng Trung"),
	("GDTC",	"Giáo dục thể chất"),
	("GDTH",	"Giáo dục tiểu học")
;

INSERT INTO lecturer
	(lecturerID,	lecturerName,				facultyID)
VALUES
	("NDT",			"Nguyễn Đức Trọng",			"GDQP"),
	("NHT",			"Nguyễn Hoàng Tùng",		"GDQP"),
	("DVK",			"Đặng Văn Khoa",			"GDQP"),
	("BQT",			"Bùi Quang Tuyến",			"GDQP"),
	("TVH",			"Trần Văn Hiếu",			"GDQP"),
	("NVD",			"Nguyễn Văn Dũng",			"GDQP"),
	("THQH",		"Trần Hữu Quốc Huy",		"TA"),
	("NTO",			"Nguyễn Thúy Oanh",			"TA"),
	("NTH",			"Nguyễn Trọng Hoàng",		"TA"),
	("PTMH",		"Phạm Trần Mỹ Hạnh",		"TA"),
	("NHMT",		"Nguyễn Hà Minh Thanh",		"TP"),
	("TLBC",		"Trần Lê Bảo Chân",			"TP"),
	("VTM",			"Vũ Triết Minh",			"TP"),
	("DTHH",		"Đặng Thị Hồng Hạnh",		"TT"),
	("VTH",			"Võ Tiến Hồng",				"TT"),
	("PND",			"Phạm Ngọc Đăng",			"TT"),
	("NNHD",		"Nguyễn Ngọc Hoa Đăng",		"GDCT"),
	("NHH",			"Nguyễn Hoàn Hảo",			"GDCT"),
	("NTMH",		"Nguyễn Trần Minh Hải",		"GDCT"),
	("NHBP",		"Nguyễn Huỳnh Bích Phương", "GDCT"),
	("NKT",			"Nguyễn Kiều Tiên",			"GDCT"),
	("LNVA",		"Lê Nguyễn Văn An",			"GDCT"),
	("TBP",			"Trịnh Bá Phương",			"GDCT"),
	("NBK",			"Ngô Bá Khiêm",				"GDCT"),
	("TTHN",		"Tô Thị Hạnh Nhân",			"GDCT"),
	("LVT",			"Lương Văn Tám",			"GDCT"),
	("PQH",			"Phạm Quốc Hương",			"GDCT"),
	("PMT",			"Phạm Mạnh Thắng",			"GDCT"), 
	("DTTY",		"Đỗ Thị Thúy Yến",			"GDCT"),
	("NTQT",		"Nguyễn Thị Quỳnh Trang",	"GDCT"),
	("BNB",			"Bùi Ngọc Bích",			"GDTC"),
	("NQH",			"Nguyễn Quang Huy",			"GDTC"),
	("PTL",			"Phan Thành Lễ",			"GDTC"),
	("LVKH",		"Lê Vũ Kiều Hoa",			"GDTC"),
	("NTTX",		"Nguyễn Thị Thanh Xuân",	"TLH"),
	("DTDD",		"Đào Thị Duy Duyên",		"TLH"),
	("DTQ",			"Đinh Thảo Quyên",			"TLH"),
	("DQC",			"Đinh Quỳnh Châu",			"TLH"),
	("NKA",			"Huỳnh Nhật Tiến",			"TLH"),
	("PMPT",		"Phan Minh Phương Thùy",	"TLH"),
	("KTTT",		"Kiều Thị Thanh Trà",		"TLH"),
	("HTHD",		"Huỳnh Trần Hoài Đức",		"TLH"),
	("VTTV",		"Võ Thị Tường Vy",			"TLH"),
	("NTT",			"Nguyễn Thị Tứ",			"TLH"),
	("GTV",			"Giang Thiên Vũ",			"TLH"),
	("TTTM",		"Trần Thị Thu Mai",			"TLH"),
	("NVH",			"Nguyễn Viết Hưng",			"CNTT"),
	("NDL",			"Nguyễn Duy Long",			"CNTT"),
	("BTQ",			"Bùi Tiến Quan",			"CNTT"),
	("NQV",			"Ngô Quốc Việt",			"CNTT"),
	("LTHH",		"Lương Trần Hy Hiến",		"CNTT"),
	("LTNK",		"Lương Trần Ngọc Khiết",	"CNTT"),
	("NDTH",		"Nguyễn Đỗ Thái Nguyên",	"CNTT"),
	("TTN",			"Trần Thanh Nhã",			"CNTT"),
	("MNG",			"Ma Ngân Giang",			"CNTT"),
	("VTT",			"Văn Thế Thành",			"CNTT"),
	("LDL",			"Lê Đức Long",				"CNTT"),
	("THQT",		"Trần Hữu Quốc Thư",		"CNTT"),
	("TTH",			"Trịnh Huy Hoàng",			"CNTT"),
	("NDH",			"Nguyễn Duy Hàm",			"CNTT"),
	("NTHT",		"Nguyễn Thị Huỳnh Trâm",	"CNTT"),
	("DTT",			"Đoàn Thị Trâm",			"CNTT"),
	("LMT",			"Lê Minh Triết",			"CNTT"),
	("MVPV",		"Mai Vân Phương Vũ",		"CNTT"),
	("TSH",			"Trần Sơn Hải",				"CNTT"),
	("NHBL",		"Nguyễn Hồng Bửu Long",		"CNTT"),
	("TTC",			"Trương Thanh Chí",			"GDTH"),
	("NVK",			"Nguyễn Việt Khoa",			"GDTH"),
	("TTKT",		"Trương Thị Kim Tiền",		"GDTH"),
	("LQN",			"Lê Quỳnh Như",				"GDTH"),
	("DMT",			"Dương Minh Thành",			"GDTH"),
	("TTD",			"Trần Thanh Dư",			"GDTH"),
	("PPA",			"Phạm Phương Anh",			"GDTH"),
	("DNH",			"Đặng Ngọc Hân",			"GDTH"),
	("LPT",			"Lê Phúc Tấn",				"GDTH"),
	("NVT",			"Ngô Văn Thiện",			"GDTH"),
	("NDN",			"Nguyễn Đức Nam",			"GDTH"),
	("CTKN",		"Châu Thị Kim Ngân",		"GDTH"),
	("LQC",			"Lê Quỳnh Chi",				"GDTH"),
	("LTND",		"Lê Tống Ngọc Anh",			"GDTH"),
	("TTTT",		"Trần Thị Thanh Tuyền",		"GDTH"),
	("NLTU",		"Nguyễn Lê Tú Uyên",		"GDTH")
;

INSERT INTO student
	(firstName,	lastName,				facultyID)
VALUES
	("Kha",		"Võ Hoàng",				"CNTT"),
	("Tiên",    "Lưu Thị Cẩm",			"TLH"),
	("Vân",		"Vũ Thị Thuý",			"TLH"),
	("Hân",		"Ngô Gia",				"TLH"),
	("Anh",		"Nguyễn Kim",			"GDCT"),
	("Duy",		"Cao Hoàng",			"GDTH"),
	("Tiên",    "Huỳnh Cẩm ",			"CNTT"),
	("Trân",    "Nguyễn Huyền Trân",	"GDTH"),
	("Anh",		"Trần Thị Minh Anh",	"GDTH"),
	("Linh",    "Nguyễn Văn Linh",		"CNTT"), 
	("Diệp",    "Cao Thị Diệp",			"GDTH"),
	("Dũng",    "Trần Anh",				"GDCT"),
	("Khang",	"Hứa Vĩ",				"CNTT"),
	("Thi",		"Lê Thị Hoài Thi",		"GDCT"),
	("Yến",		"Bùi Lê Chi Yến",		"TLH"),
	("Hiếu",    "Nguyễn Đức Hiếu",		"GDTH")
;

SELECT * FROM course;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- GDQP
	("MILI270101",	"Cơ sở chung",	1,				"GDQP",		"NDT",		4,			"LVS_D103",		1,				4,			"2022-02-15",	"2022-03-15",	"Đường lối quốc phòng và an ninh của Đảng Cộng sản Việt Nam"),
	("MILI270102",	"Cơ sở chung",	1,				"GDQP",		"DVK",		4,			"LVS_D103",		1,				4,			"2022-03-22",	"2022-04-22",	"Đường lối quốc phòng và an ninh của Đảng Cộng sản Việt Nam"),
	("MILI270103",	"Cơ sở chung",	1,				"GDQP",		"NHT",		7,			"LVS_D102",		1,				4,			"2022-03-12",	"2022-04-12",	"Đường lối quốc phòng và an ninh của Đảng Cộng sản Việt Nam"),
	("MILI270201",	"Cơ sở chung",	2,				"GDQP",		"DVK",		3,			"LVS_D103",		1,				4,			"2022-09-16",	"2022-10-21",	"Công tác quốc phòng và an ninh"),
	("MILI270202",	"Cơ sở chung",	2,				"GDQP",		"DVK",		3,			"LVS_D103",		7,				10,			"2022-09-16",	"2022-10-21",	"Công tác quốc phòng và an ninh"),
	("MILI270203",	"Cơ sở chung",	2,				"GDQP",		"BQT",		5,			"LVS_D102",		1,				4,			"2022-09-14",	"2022-10-19",	"Công tác quốc phòng và an ninh"),
	("MILI270204",	"Cơ sở chung",	2,				"GDQP",		"BQT",		5,			"LVS_D102",		7,				10,			"2022-09-14",	"2022-10-19",	"Công tác quốc phòng và an ninh"),
	("MILI270301",	"Cơ sở chung",	1,				"GDQP",		"TVH",		3,			"LLQ_D302",		1,				5,			"2023-02-11",	"2023-03-18",	"Quân sự chung"),
	("MILI270302",	"Cơ sở chung",	1,				"GDQP",		"TVH",		3,			"LLQ_D302",		7,				11,			"2023-02-11",	"2023-03-18",	"Quân sự chung"),
	("MILI270303",	"Cơ sở chung",	1,				"GDQP",		"NVD",		4,			"LLQ_D304",		1,				5,			"2023-02-12",	"2023-03-19",	"Quân sự chung"),
	("MILI270304",	"Cơ sở chung",	1,				"GDQP",		"NVD",		4,			"LLQ_D304",		1,				5,			"2023-03-24",	"2023-05-01",	"Quân sự chung"),
	("MILI270401",	"Cơ sở chung",	4,				"GDQP",		"DVK",		7,			"NT",			1,				6,			"2023-09-02",	"2023-10-07",	"Kỹ thuật chiến đấu và bộ binh"),
	("MILI270402",	"Cơ sở chung",	4,				"GDQP",		"DVK",		7,			"NT",			7,				12,			"2023-09-02",	"2023-10-07",	"Kỹ thuật chiến đấu và bộ binh"),
	("MILI270403",	"Cơ sở chung",	4,				"GDQP",		"BQT",		6,			"NT",			1,				6,			"2023-09-01",	"2023-10-06",	"Kỹ thuật chiến đấu và bộ binh"),
	("MILI270404",	"Cơ sở chung",	4,				"GDQP",		"BQT",		6,			"NT",			7,				12,			"2023-09-01",	"2023-10-06",	"Kỹ thuật chiến đấu và bộ binh")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- NN
	("ENGL240101",	"Cơ sở chung",	4,				"TA",		"THQH",		2,			"LVS_A203",		2,				6,			"2022-02-13",	"2022-04-21",	"Tiếng Anh học phần I"),
	("ENGL240102",	"Cơ sở chung",	4,				"TA",		"THQH",		2,			"LVS_A203",		8,				12,			"2022-02-13",	"2022-04-21",	"Tiếng Anh học phần I"),
	("ENGL240103",	"Cơ sở chung",	4,				"TA",		"NTO",		3,			"LVS_A207",		2,				6,			"2022-02-14",	"2022-04-22",	"Tiếng Anh học phần I"),
	("ENGL240201",	"Cơ sở chung",	3,				"TA",		"NTH",		4,			"LLQ_D310",		1,				5,			"2022-09-19",	"2022-11-23",	"Tiếng Anh học phần II"),
	("ENGL240202",	"Cơ sở chung",	3,				"TA",		"NTH",		3,			"LLQ_D310",		1,				5,			"2022-09-22",	"2022-11-27",	"Tiếng Anh học phần II"),
	("ENGL240203",	"Cơ sở chung",	3,				"TA",		"THQH",		4,			"LLQ_D209",		1,				5,			"2022-09-19",	"2022-11-23",	"Tiếng Anh học phần II"),
	("ENGL240301",	"Cơ sở chung",	3,				"TA",		"PTMH",		7,			"LLQ_D304",		1,				6,			"2023-02-23",	"2023-04-14",	"Tiếng Anh học phần III"),
	("ENGL240302",	"Cơ sở chung",	3,				"TA",		"PTMH",		7,			"LLQ_D304",		7,				12,			"2023-02-23",	"2023-04-14",	"Tiếng Anh học phần III"),
	("FRAN240101",	"Cơ sở chung",	4,				"TP",		"NHMT",		2,			"LVS_A210",		1,				5,			"2022-02-13",	"2022-04-21",	"Tiếng Pháp học phần I"),
	("FRAN240102",	"Cơ sở chung",	4,				"TP",		"NHMT",		2,			"LVS_A209",		7,				11,			"2022-02-13",	"2022-04-21",	"Tiếng Pháp học phần I"),
	("FRAN240201",	"Cơ sở chung",	3,				"TP",		"TLBC",		5,			"LVS_A303",		2,				6,			"2022-09-14",	"2022-11-22",	"Tiếng Pháp học phần II"),
	("FRAN240202",	"Cơ sở chung",	3,				"TP",		"TLBC",		5,			"LVS_A303",		7,				11,			"2022-09-14",	"2022-11-22",	"Tiếng Pháp học phần II"),
	("FRAN240301",	"Cơ sở chung",	3,				"TP",		"VTM",		7,			"LLQ_D110",		1,				6,			"2023-02-23",	"2023-04-14",	"Tiếng Pháp học phần III"),
	("FRAN240302",	"Cơ sở chung",	3,				"TP",		"VTM",		7,			"LLQ_D110",		7,				12,			"2023-02-23",	"2023-04-14",	"Tiếng Pháp học phần III"),
	("FRAN240303",	"Cơ sở chung",	3,				"TP",		"VTM",		6,			"LLQ_D110",		1,				6,			"2023-02-22",	"2023-04-15",	"Tiếng Pháp học phần III"),
	("CHIN240101",	"Cơ sở chung",	4,				"TT",		"DTHH",		4,			"LLQ_D204",		1,				5,			"2022-02-22",	"2022-04-12",	"Tiếng Trung học phần I"),
	("CHIN240102",	"Cơ sở chung",	4,				"TT",		"DTHH",		4,			"LLQ_D204",		7,				11,			"2022-02-22",	"2022-04-12",	"Tiếng Trung học phần I"),
	("CHIN240103",	"Cơ sở chung",	4,				"TT",		"VTH",		5,			"LLQ_D205",		1,				5,			"2022-02-23",	"2022-04-10",	"Tiếng Trung học phần I"),
	("CHIN240201",	"Cơ sở chung",	3,				"TT",		"VTH",		2,			"LLQ_D204",		1,				5,			"2022-09-13",	"2022-11-28",	"Tiếng Trung học phần II"),
	("CHIN240202",	"Cơ sở chung",	3,				"TT",		"PND",		2,			"LLQ_D204",		7,				11,			"2022-09-13",	"2022-11-28",	"Tiếng Trung học phần II"),
	("CHIN240301",	"Cơ sở chung",	3,				"TT",		"NDT",		3,			"LLQ_D204",		1,				5,			"2023-02-28",	"2023-04-18",	"Tiếng Trung học phần III"),
	("CHIN240302",	"Cơ sở chung",	3,				"TT",		"NDT",		3,			"LLQ_D204",		1,				5,			"2023-02-28",	"2023-04-18",	"Tiếng Trung học phần III")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- GDCT
	("POLI190301",	"Cơ sở chung",	2,				"GDCT",		"NNHD",		2,			"ADV_DB204",	1,				6,			"2022-02-13",	"2022-03-22",	"Pháp luật đại cương"),
	("POLI190302",	"Cơ sở chung",	2,				"GDCT",		"NNHD",		2,			"ADV_B204",		7,				12,			"2022-02-13",	"2022-03-22",	"Pháp luật đại cương"),
	("POLI190303",	"Cơ sở chung",	2,				"GDCT",		"NHH",		4,			"ADV_B205",		1,				6,			"2023-02-12",	"2022-03-21",	"Pháp luật đại cương"),
	("POLI190304",	"Cơ sở chung",	2,				"GDCT",		"NHH",		4,			"ADV_B205",		7,				12,			"2023-02-12",	"2022-03-21",	"Pháp luật đại cương"),
	("POLI200101",	"Cơ sở chung",	3,				"GDCT",		"NHBP",		3,			"ADV_B106",		1,				5,			"2022-02-14",	"2022-03-29",	"Triết học Mác-Lênin"),
	("POLI200102",	"Cơ sở chung",	3,				"GDCT",		"NHBP",		3,			"ADV_B106",		7,				11,			"2022-02-14",	"2022-03-29",	"Triết học Mác-Lênin"),
	("POLI200103",	"Cơ sở chung",	3,				"GDCT",		"NTMH",		4,			"ADV_B107",		2,				6,			"2022-02-15",	"2022-03-30",	"Triết học Mác-Lênin"),
	("POLI200104",	"Cơ sở chung",	3,				"GDCT",		"NTMH",		4,			"ADV_B107",		7,				11,			"2022-02-15",	"2022-03-30",	"Triết học Mác-Lênin"),
	("POLI200301",	"Cơ sở chung",	2,				"GDCT",		"NKT",		5,			"ADV_B207",		1,				5,			"2022-03-10",	"2022-04-14",	"Chủ nghĩa xã hội khoa học"),
	("POLI200302",	"Cơ sở chung",	2,				"GDCT",		"NKT",		5,			"ADV_B207",		7,				11,			"2022-03-10",	"2022-04-14",	"Chủ nghĩa xã hội khoa học"),
	("POLI200303",	"Cơ sở chung",	2,				"GDCT",		"LNVA",		6,			"ADV_B206",		1,				5,			"2022-03-11",	"2022-04-15",	"Chủ nghĩa xã hội khoa học"),
	("POLI200201",	"Cơ sở chung",	2,				"GDCT",		"TBP",		4,			"ADV_B214",		1,				5,			"2022-09-20",	"2022-11-26",	"Kinh tế chính trị Mác-Lênin"),
	("POLI200202",	"Cơ sở chung",	2,				"GDCT",		"TBP",		4,			"ADV_B214",		7,				11,			"2022-09-20",	"2022-11-26",	"Kinh tế chính trị Mác-Lênin"),
	("POLI200203",	"Cơ sở chung",	2,				"GDCT",		"NNHD",		3,			"ADV_B215",		2,				6,			"2022-09-19",	"2022-11-25",	"Kinh tế chính trị Mác-Lênin"),
	("POLI200401",	"Cơ sở chung",	2,				"GDCT",		"NBK",		7,			"LLQ_D301",		1,				6,			"2023-02-27",	"2023-03-30",	"Lịch sử Đảng cộng sản Việt Nam"),
	("POLI200402",	"Cơ sở chung",	2,				"GDCT",		"NBK",		7,			"LLQ_D301",		7,				12,			"2023-02-27",	"2023-03-30",	"Lịch sử Đảng cộng sản Việt Nam"),
	("POLI200403",	"Cơ sở chung",	2,				"GDCT",		"TTHN",		6,			"LLQ_D311",		1,				6,			"2023-02-26",	"2023-03-29",	"Lịch sử Đảng cộng sản Việt Nam"),
	("POLI200404",	"Cơ sở chung",	2,				"GDCT",		"TTHN",		6,			"LLQ_D311",		7,				12,			"2023-02-26",	"2023-03-29",	"Lịch sử Đảng cộng sản Việt Nam"),
	("POLI200405",	"Cơ sở chung",	2,				"GDCT",		"TTHN",		5,			"LLQ_D312",		1,				6,			"2023-02-25",	"2023-03-28",	"Lịch sử Đảng cộng sản Việt Nam")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- TLH
	("PSYC100101",	"Cơ sở chung",	2,				"TLH",		"NTTX",		2,			"ADV_A303",		1,				4,			"2022-03-01",	"2022-04-20",	"Tâm lý học đại cương"),
	("PSYC100102",	"Cơ sở chung",	2,				"TLH",		"NTTX",		2,			"ADV_A303",		7,				10,			"2022-03-01",	"2022-04-20",	"Tâm lý học đại cương"),
	("PSYC100103",	"Cơ sở chung",	2,				"TLH",		"DTDD",		2,			"ADV_A304",		1,				4,			"2022-03-01",	"2022-04-20",	"Tâm lý học đại cương"),
	("PSYC100104",	"Cơ sở chung",	2,				"TLH",		"DTDD",		2,			"ADV_A303",		7,				10,			"2022-03-01",	"2022-04-20",	"Tâm lý học đại cương"),
	("PSYC140001",	"Cơ sở chung",	2,				"TLH",		"DTQ",		5,			"ADV_A205",		1,				4,			"2022-09-26",	"2022-11-04",	"Tâm lý học giáo dục"),
	("PSYC140002",	"Cơ sở chung",	2,				"TLH",		"DTQ",		5,			"ADV_A205",		7,				10,			"2022-09-26",	"2022-11-04",	"Tâm lý học giáo dục"),
	("PSYC140003",	"Cơ sở chung",	2,				"TLH",		"DQC",		5,			"ADV_A208",		1,				4,			"2022-09-26",	"2022-11-04",	"Tâm lý học giáo dục"),
	("PSYC140004",	"Cơ sở chung",	2,				"TLH",		"DQC",		5,			"ADV_A208",		7,				10,			"2022-09-26",	"2022-11-04",	"Tâm lý học giáo dục")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- GDTC
	("PHYL240101",	"Cơ sở chung",	1,				"GDTC",		"BNB",		4,			"ADV_SanM",		1,				3,			"2022-02-17",	"2022-03-20",	"Giáo dục thể chất 1 (Thể dục - Điền kinh)"),
	("PHYL240102",	"Cơ sở chung",	1,				"GDTC",		"BNB",		4,			"ADV_SanM",		4,				6,			"2022-02-17",	"2022-03-20",	"Giáo dục thể chất 1 (Thể dục - Điền kinh)"),
	("PHYL240103",	"Cơ sở chung",	1,				"GDTC",		"BNB",		4,			"ADV_SanM",		7,				9,			"2022-02-17",	"2022-03-20",	"Giáo dục thể chất 1 (Thể dục - Điền kinh)"),
	("PHYL240701",	"Cơ sở chung",	1,				"GDTC",		"LVKH",		5,			"ADV_NTD",		1,				3,			"2022-09-18",	"2022-11-04",	"Giáo dục thể chất 2 (Thể dục - Bóng rổ cơ bản)"),
	("PHYL240702",	"Cơ sở chung",	1,				"GDTC",		"LVKH",		5,			"ADV_NTD",		4,				6,			"2022-09-18",	"2022-11-04",	"Giáo dục thể chất 2 (Thể dục - Bóng rổ cơ bản)"),
	("PHYL240201",	"Cơ sở chung",	1,				"GDTC",		"NQH",		3,			"ADV_NTD",		1,				3,			"2022-09-16",	"2022-11-02",	"Giáo dục thể chất 2 (Thể dục - Bóng chuyền cơ bản)"),
	("PHYL240202",	"Cơ sở chung",	1,				"GDTC",		"NQH",		3,			"ADV_NTD",		4,				6,			"2022-09-16",	"2022-11-02",	"Giáo dục thể chất 2 (Thể dục - Bóng chuyền cơ bản)"),
	("PHYL240301",	"Cơ sở chung",	1,				"GDTC",		"PTL",		3,			"NT",			1,				3,			"2022-09-16",	"2022-11-02",	"Giáo dục thể chất 2 (Thể dục - Cầu lông cơ bản)"),
	("PHYL240302",	"Cơ sở chung",	1,				"GDTC",		"PTL",		3,			"NT",			4,				6,			"2022-09-16",	"2022-11-02",	"Giáo dục thể chất 2 (Thể dục - Cầu lông cơ bản)"),
	("PHYL241701",	"Cơ sở chung",	1,				"GDTC",		"LVKH",		7,			"ADV_NTD",		1,				3,			"2023-03-10",	"2023-04-30",	"Giáo dục thể chất 3 (Thể dục - Bóng rổ nâng cao)"),
	("PHYL241702",	"Cơ sở chung",	1,				"GDTC",		"NQH",		7,			"ADV_NTD",		4,				6,			"2023-03-10",	"2023-04-30",	"Giáo dục thể chất 3 (Thể dục - Bóng rổ nâng cao)"),
	("PHYL241201",	"Cơ sở chung",	1,				"GDTC",		"PTL",		6,			"ADV_SanM",		1,				3,			"2023-03-16",	"2023-04-02",	"Giáo dục thể chất 3 (Thể dục - Bóng chuyền nâng cao)"),
	("PHYL241202",	"Cơ sở chung",	1,				"GDTC",		"NQH",		6,			"ADV_SanM",		7,				9,			"2023-03-16",	"2023-04-02",	"Giáo dục thể chất 3 (Thể dục - Bóng chuyền nâng cao)"),
	("PHYL241301",	"Cơ sở chung",	1,				"GDTC",		"LVKH",		3,			"NT",			1,				3,			"2023-03-20",	"2023-04-25",	"Giáo dục thể chất 3 (Thể dục - Cầu lông nâng cao)"),
	("PHYL241302",	"Cơ sở chung",	1,				"GDTC",		"PTL",		3,			"NT",			1,				3,			"2023-03-20",	"2023-04-25",	"Giáo dục thể chất 3 (Thể dục - Cầu lông nâng cao)")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- CNTT
	("COMP101601",	"Cơ sở ngành",	3,				"CNTT",		"NDTH",		3,			"ADV_I202",		1,				5,			"2022-02-26",	"2022-05-15",	"Cấu trúc dữ liệu"),
	("COMP101602",	"Cơ sở ngành",	3,				"CNTT",		"NDTH",		3,			"ADV_I202",		7,				11,			"2022-02-26",	"2022-05-15",	"Cấu trúc dữ liệu"),
	("COMP101701",	"Cơ sở ngành",	3,				"CNTT",		"LTNK",		3,			"ADV_I202",		1,				6,			"2022-02-26",	"2022-05-15",	"Lập trình hướng đối tượng"),
	("COMP101702",	"Cơ sở ngành",	3,				"CNTT",		"LTNK",		3,			"ADV_I202",		7,				12,			"2022-02-26",	"2022-05-15",	"Lập trình hướng đối tượng"),
	("COMP130301",	"Cơ sở ngành",	3,				"CNTT",		"LTHH",		4,			"ADV_I201",		1,				6,			"2022-02-16",	"2022-05-25",	"Phát triển ứng dụng web"),
	("COMP130302",	"Cơ sở ngành",	3,				"CNTT",		"LTHH",		5,			"ADV_I201",		7,				12,			"2022-02-17",	"2022-05-26",	"Phát triển ứng dụng web"),
	("COMP170101",	"Cơ sở ngành",	3,				"CNTT",		"NVH",		2,			"LVS_D104",		1,				6,			"2022-02-16",	"2022-05-25",	"Lý thuyết đồ thị"),
	("COMP170102",	"Cơ sở ngành",	3,				"CNTT",		"NVH",		2,			"LVS_I104",		7,				12,			"2022-02-16",	"2022-05-25",	"Lý thuyết đồ thị"),
	("MATH101001",	"Cơ sở ngành",	2,				"CNTT",		"NTHT",		6,			"ADV_104",		1,				5,			"2022-03-14",	"2022-05-04",	"Toán rời rạc"),
	("MATH101002",	"Cơ sở ngành",	2,				"CNTT",		"NTHT",		6,			"ADV_104",		7,				11,			"2022-03-14",	"2022-05-04",	"Toán rời rạc"),
	("COMP101001",	"Cơ sở ngành",	3,				"CNTT",		"THQT",		7,			"ADV_I102",		1,				5,			"2022-03-02",	"2022-05-30",	"Lập trình cơ bản"),
	("COMP101002",	"Cơ sở ngành",	3,				"CNTT",		"THQT",		7,			"ADV_I102",		7,				11,			"2022-03-02",	"2022-05-30",	"Lập trình cơ bản"),
	("COMP101901",	"Cơ sở ngành",	3,				"CNTT",		"TTN",		2,			"ADV_103",		1,				6,			"2022-09-19",	"2022-11-06",	"Lập trình Windows"),
	("COMP101902",	"Cơ sở ngành",	3,				"CNTT",		"TTN",		2,			"ADV_103",		7,				12,			"2022-09-19",	"2022-11-06",	"Lập trình Windows"),
	("COMP101903",	"Cơ sở ngành",	3,				"CNTT",		"LTHH",		3,			"ADV_103",		1,				6,			"2022-09-20",	"2022-11-07",	"Lập trình Windows")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
        -- CNTT
-- 	("MATH100201",	"Cơ sở ngành",	3,				"CNTT",		"BTQ",		4,			"ADV_B305",		1,				5,			"2022-03-13",	"2022-05-16",	"Giải tích"),
-- 	("MATH100202",	"Cơ sở ngành",	3,				"CNTT",		"BTQ",		4,			"ADV_B305",		7,				11,			"2022-03-13",	"2022-05-16",	"Giải tích"),
-- 	("MATH110801",	"Cơ sở ngành",	3,				"CNTT",		"NDL",		5,			"ADV_B203",		1,				5,			"2022-09-04",	"2022-10-23",	"Đại số tuyến tính"),
-- 	("MATH110802",	"Cơ sở ngành",	3,				"CNTT",		"NDL",		6,			"ADV_B203",		1,				5,			"2022-09-05",	"2022-10-24",	"Đại số tuyến tính"),
-- 	("COMP150101",	"Cơ sở ngành",	3,				"CNTT",		"THH",		3,			"ADV_B305",		1,				5,			"2022-02-25",	"2022-04-02",	"Xác xuất thống kê và ứng dụng"),
-- 	("COMP150102",	"Cơ sở ngành",	3,				"CNTT",		"THH",		3,			"ADV_B305",		7,				11,			"2022-02-25",	"2022-04-02",	"Xác xuất thống kê và ứng dụng"),
	("COMP150103",	"Cơ sở ngành",	3,				"CNTT",		"NTHT",		3,			"ADV_B308",		1,				5,			"2022-02-25",	"2022-04-02",	"Xác xuất thống kê và ứng dụng"),
	("COMP120501",	"Cơ sở ngành",	2,				"CNTT",		"LDL",		2,			"LLQ_D205",		1,				4,			"2022-02-18",	"2022-03-30",	"Phương pháp nghiên cứu khoa học"),	
	("COMP120502",	"Cơ sở ngành",	2,				"CNTT",		"LDL",		2,			"LLQ_D205",		7,				10,			"2022-02-18",	"2022-03-30",	"Phương pháp nghiên cứu khoa học"),
	("COMP106401",	"Chuyên ngành",	3,				"CNTT",		"LTHH",		6,			"ADV_I103",		2,				6,			"2023-09-09",	"2022-10-24",	"Công nghệ NET"),
	("COMP106402",	"Chuyên ngành",	3,				"CNTT",		"LTHH",		5,			"ADV_I103",		1,				5,			"2023-09-08",	"2022-10-23",	"Công nghệ NET"),
	("COMP106403",	"Chuyên ngành",	3,				"CNTT",		"MVPV",		6,			"ADV_C103",		2,				6,			"2023-09-09",	"2022-10-24",	"Công nghệ NET"),
	("COMP130701",	"Chuyên ngành",	3,				"CNTT",		"TSH",		4,			"ADV_I202",		7,				9,			"2023-09-06",	"2023-10-24",	"Kiểm thử phần mềm cơ bản"),
	("COMP130702",	"Chuyên ngành",	3,				"CNTT",		"TSH",		4,			"ADV_I202",		1,				3,			"2023-09-06",	"2023-10-24",	"Kiểm thử phần mềm cơ bản"),
	("COMP131301",	"Chuyên ngành",	3,				"CNTT",		"NHBL",		2,			"ADV_C202",		1,				5,			"2023-02-28",	"2022-04-03",	"Điện toán đám mây"),
	("COMP131302",	"Chuyên ngành",	3,				"CNTT",		"NHBL",		2,			"ADV_C202",		7,				11,			"2023-02-28",	"2022-04-03",	"Điện toán đám mây"),
-- 	("COMP101101",	"Chuyên ngành",	3,				"CNTT",		"NDTN",		7,			"ADV_I102",		1,				5,			"2023-03-02",	"2022-04-23",	"Kiến trúc máy tính và hợp ngữ"),
-- 	("COMP101102",	"Chuyên ngành",	3,				"CNTT",		"NDTN",		7,			"ADV_I102",		7,				11,			"2023-03-02",	"2022-04-23",	"Kiến trúc máy tính và hợp ngữ"),
-- 	("COMP133201",	"Chuyên ngành",	3,				"CNTT",		"TDT",		5,			"ADV_B315",		1,				5,			"2023-09-06",	"2023-11-22",	"Hệ điều hành"),
-- 	("COMP133202",	"Chuyên ngành",	3,				"CNTT",		"TDT",		5,			"ADV_B315",		7,				11,			"2023-09-06",	"2023-11-22",	"Hệ điều hành"),
	("COMP140101",	"Chuyên ngành",	3,				"CNTT",		"NQV",		4,			"ADV_B214",		1,				6,			"2022-09-30",	"2022-11-05",	"Phân tích thiết kế và giải thuật"),
	("COMP140102",	"Chuyên ngành",	3,				"CNTT",		"NQV",		4,			"ADV_B214",		7,				12,			"2022-09-30",	"2022-11-05",	"Phân tích thiết kế và giải thuật"),
	("COMP140103",	"Chuyên ngành",	3,				"CNTT",		"VTT",		3,			"ADV_B215",		1,				6,			"2022-09-29",	"2022-11-04",	"Phân tích thiết kế và giải thuật"),
	("COMP101801",	"Chuyên ngành",	3,				"CNTT",		"DTT",		2,			"ADV_C204",		2,				6,			"2022-09-29",	"2022-11-03",	"Cơ sở dữ liệu"),
	("COMP101802",	"Chuyên ngành",	3,				"CNTT",		"DTT",		2,			"ADV_C204",		8,				12,			"2022-09-29",	"2022-11-03",	"Cơ sở dữ liệu"),
	("COMP101803",	"Chuyên ngành",	3,				"CNTT",		"MNG",		3,			"ADV_C204",		2,				6,			"2022-09-30",	"2022-11-05",	"Cơ sở dữ liệu"),
	("COMP101804",	"Chuyên ngành",	3,				"CNTT",		"LTNK",		3,			"ADV_C204",		8,				12,			"2022-09-30",	"2022-11-04",	"Cơ sở dữ liệu"),
	("COMP102401",	"Chuyên ngành",	3,				"CNTT",		"LTNK",		5,			"ADV_I102",		1,				5,			"2023-09-19",	"2023-10-30",	"Các hệ cơ sở dữ liệu"),
	("COMP102402",	"Chuyên ngành",	3,				"CNTT",		"LTNK",		5,			"ADV_I102",		7,				11,			"2023-09-19",	"2023-10-30",	"Các hệ cơ sở dữ liệu"),
	("COMP102403",	"Chuyên ngành",	3,				"CNTT",		"LMT",		4,			"ADV_I102",		1,				5,			"2023-09-18",	"2023-10-29",	"Các hệ cơ sở dữ liệu"),
	("COMP106001",	"Chuyên ngành",	3,				"CNTT",		"VTT",		6,			"ADV_B218",		1,				3,			"2023-03-02",	"2023-04-12",	"Phân tích thiết kế hướng đối tượng"),
-- 	("COMP106001",	"Chuyên ngành",	3,				"CNTT",		"NVT",		6,			"ADV_B218",		4,				6,			"2023-03-02",	"2023-04-12",	"Phân tích thiết kế hướng đối tượng"),
	("COMP131401",	"Chuyên ngành",	3,				"CNTT",		"LTNK",		7,			"ADV_B315",		1,				3,			"2023-09-22",	"2023-11-05",	"Trí tuệ nhân tạo"),
	("COMP131402",	"Chuyên ngành",	3,				"CNTT",		"LTNK",		7,			"ADV_B315",		4,				6,			"2023-09-22",	"2023-11-05",	"Trí tuệ nhân tạo")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- GDTH
	("PRIM140201",	"Cơ sở ngành",	3,				"GDTH",		"TTC",		4,			"LVS_B101",		1,				4,			"2022-02-15",	"2022-03-15",	"Cơ sở tiếng Việt ở tiểu học 1"),
	("PRIM140202",	"Cơ sở ngành",	3,				"GDTH",		"TTC",		4,			"LVS_B101",		7,				10,			"2022-02-15",	"2022-03-15",	"Cơ sở tiếng Việt ở tiểu học 1"),
	("PRIM171401",	"Cơ sở ngành",	3,				"GDTH",		"LVT",		3,			"ADV_B101",		1,				4,			"2022-09-15",	"2022-11-15",	"Cơ sở tiếng Việt ở tiểu học 2"),
	("PRIM171402",	"Cơ sở ngành",	3,				"GDTH",		"LVT",		3,			"ADV_B101",		7,				10,			"2022-09-15",	"2022-11-15",	"Cơ sở tiếng Việt ở tiểu học 2"),
	("PRIM171403",	"Cơ sở ngành",	3,				"GDTH",		"NVK",		4,			"ADV_B102",		1,				4,			"2022-09-16",	"2022-11-16",	"Cơ sở tiếng Việt ở tiểu học 2"),
	("PRIM171501",	"Cơ sở ngành",	2,				"GDTH",		"LVT",		5,			"ADV_B201",		1,				4,			"2023-02-15",	"2022-03-26",	"Cơ sở tiếng Việt ở tiểu học 3"),
	("PRIM171502",	"Cơ sở ngành",	2,				"GDTH",		"DMT",		5,			"ADV_B201",		7,				10,			"2023-02-15",	"2022-03-26",	"Cơ sở tiếng Việt ở tiểu học 3"),
	("PRIM172001",	"Cơ sở ngành",	4,				"GDTH",		"DNH",		2,			"LVS_103",		2,				6,			"2022-02-20",	"2022-04-29",	"Cơ sở Toán ở tiểu học 1"),
	("PRIM172002",	"Cơ sở ngành",	4,				"GDTH",		"DNH",		2,			"LVS_103",		7,				12,			"2022-02-20",	"2022-04-29",	"Cơ sở Toán ở tiểu học 1"),
	("PRIM172101",	"Cơ sở ngành",	4,				"GDTH",		"TTD",		3,			"LVS_102",		2,				6,			"2022-09-20",	"2022-11-29",	"Cơ sở Toán ở tiểu học 2"),
	("PRIM172102",	"Cơ sở ngành",	4,				"GDTH",		"TTD",		3,			"LVS_102",		2,				6,			"2022-09-20",	"2022-11-29",	"Cơ sở Toán ở tiểu học 2"),
	("PRIM170801",	"Cơ sở ngành",	3,				"GDTH",		"LQN",		5,			"ADV_A305",		4,				6,			"2022-03-14",	"2022-05-03",	"Khoa học về sự sống ở tiểu học"),
	("PRIM170802",	"Cơ sở ngành",	3,				"GDTH",		"LQN",		5,			"ADV_A305",		1,				3,			"2022-03-14",	"2022-05-03",	"Khoa học về sự sống ở tiểu học"),
	("PRIM171001",	"Cơ sở ngành",	3,				"GDTH",		"CTKN",		4,			"ADV_A305",		4,				6,			"2022-03-13",	"2022-05-02",	"Khoa học về xã hội ở tiểu học"),
	("PRIM171002",	"Cơ sở ngành",	3,				"GDTH",		"CTKN",		4,			"ADV_A305",		4,				6,			"2022-03-13",	"2022-05-02",	"Khoa học về xã hội ở tiểu học"),
	("PRIM174301",	"Cơ sở ngành",	2,				"GDTH",		"LTNA",		7,			"ADV_A113",		1,				3,			"2022-02-20",	"2022-04-03",	"Lịch sử giáo dục tiểu học"),
	("PRIM174302",	"Cơ sở ngành",	2,				"GDTH",		"LTNA",		7,			"ADV_A113",		4,				6,			"2022-02-20",	"2022-04-03",	"Lịch sử giáo dục tiểu học"),
	("PRIM170101",	"Chuyên ngành",	3,				"GDTH",		"TTD",		3,			"ADV_B205",		1,				4,			"2022-03-02",	"2022-05-24",	"Cơ sở tâm lí học của hoạt động giáo dục ở tiểu học"),
	("PRIM170102",	"Chuyên ngành",	3,				"GDTH",		"TTD",		3,			"ADV_B205",		7,				10,			"2022-03-02",	"2022-05-24",	"Cơ sở tâm lí học của hoạt động giáo dục ở tiểu học"),
	("PRIM170103",	"Chuyên ngành",	3,				"GDTH",		"TTD",		6,			"ADV_B206",		1,				4,			"2022-03-05",	"2022-05-27",	"Cơ sở tâm lí học của hoạt động giáo dục ở tiểu học"),
	("PRIM170201",	"Chuyên ngành",	4,				"GDTH",		"LNTD",		4,			"ADV_A202",		1,				3,			"2022-09-10",	"2022-11-05",	"Khoa học sư phạm ở tiểu học 1"),
	("PRIM170202",	"Chuyên ngành",	4,				"GDTH",		"LNTD",		4,			"ADV_A202",		4,				6,			"2022-09-10",	"2022-11-05",	"Khoa học sư phạm ở tiểu học 1"),
	("PRIM170301",	"Chuyên ngành",	4,				"GDTH",		"LPT",		6,			"ADV_A202",		1,				3,			"2023-03-10",	"2023-05-25",	"Khoa học sư phạm ở tiểu học 2"),
	("PRIM170302",	"Chuyên ngành",	4,				"GDTH",		"LPT",		6,			"ADV_A202",		4,				6,			"2023-03-10",	"2023-05-25",	"Khoa học sư phạm ở tiểu học 2"),
	("PRIM171801",	"Chuyên ngành",	4,				"GDTH",		"TTKT",		2,			"LVS_B101",		1,				6,			"2022-09-04",	"2022-10-23",	"Lý luận dạy học Tiếng Việt ở tiểu học 1"),
	("PRIM171802",	"Chuyên ngành",	4,				"GDTH",		"TTKT",		2,			"LVS_B101",		7,				12,			"2022-09-04",	"2022-10-23",	"Lý luận dạy học Tiếng Việt ở tiểu học 1"),
	("PRIM171901",	"Chuyên ngành",	4,				"GDTH",		"PPA",		3,			"LVS_B101",		1,				6,			"2023-03-04",	"2023-04-23",	"Lý luận dạy học Tiếng Việt ở tiểu học 2"),
	("PRIM171902",	"Chuyên ngành",	4,				"GDTH",		"PPA",		3,			"LVS_B101",		1,				6,			"2023-03-04",	"2023-04-23",	"Lý luận dạy học Tiếng Việt ở tiểu học 2"),
	("PRIM172201",	"Chuyên ngành",	4,				"GDTH",		"NDN",		5,			"ADV_B215",		1,				5,			"2022-03-14",	"2022-05-04",	"Lý luận dạy học Toán ở tiểu học"),
	("PRIM172202",	"Chuyên ngành",	4,				"GDTH",		"NDN",		5,			"ADV_B215",		7,				11,			"2022-03-14",	"2022-05-04",	"Lý luận dạy học Toán ở tiểu học"),
	("PRIM171101",	"Chuyên ngành",	4,				"GDTH",		"LQC",		6,			"ADV_A301",		1,				5,			"2022-02-16",	"2022-05-25",	"Lý luận dạy học Tự nhiên - Xã hội"),
	("PRIM171102",	"Chuyên ngành",	4,				"GDTH",		"LQC",		6,			"ADV_A301",		7,				11,			"2022-02-16",	"2022-05-25",	"Lý luận dạy học Tự nhiên - Xã hội"),
	("PRIM171103",	"Chuyên ngành",	4,				"GDTH",		"PPA",		7,			"ADV_A305",		1,				5,			"2022-02-17",	"2022-05-26",	"Lý luận dạy học Tự nhiên - Xã hội"),
	("PRIM171201",	"Chuyên ngành",	2,				"GDTH",		"NDN",		4,			"ADV_B213",		2,				6,			"2023-03-10",	"2023-04-30",	"Phương pháp dạy học Đạo đức"),
	("PRIM171202",	"Chuyên ngành",	2,				"GDTH",		"NDN",		4,			"ADV_B213",		7,				12,			"2023-03-10",	"2023-04-30",	"Phương pháp dạy học Đạo đức"),
	("PRIM175001",	"Chuyên ngành",	2,				"GDTH",		"NLTU",		3,			"LLQ_D209",		1,				4,			"2023-03-20",	"2023-04-25",	"Phát triển năng lực đọc cho học sinh tiểu học"),
	("PRIM175002",	"Chuyên ngành",	2,				"GDTH",		"NLTU",		3,			"LLQ_D209",		7,				10,			"2023-03-20",	"2023-04-25",	"Phát triển năng lực đọc cho học sinh tiểu học"),
	("PRIM175003",	"Chuyên ngành",	2,				"GDTH",		"NLTU",		3,			"LLQ_D210",		1,				4,			"2023-09-20",	"2023-11-25",	"Phát triển năng lực đọc cho học sinh tiểu học"),
	("PRIM175101",	"Chuyên ngành",	2,				"GDTH",		"TTTT",		3,			"ADV_B210",		1,				5,			"2023-09-20",	"2023-11-25",	"Phát triển năng lực viết cho học sinh tiểu học"),
	("PRIM175102",	"Chuyên ngành",	2,				"GDTH",		"LQC",		3,			"ADV_B210",		1,				5,			"2023-09-21",	"2023-11-27",	"Phát triển năng lực viết cho học sinh tiểu học"),
	("PRIM175103",	"Chuyên ngành",	2,				"GDTH",		"TTTT",		3,			"ADV_B210",		7,				11,			"2023-09-21",	"2023-11-27",	"Phát triển năng lực viết cho học sinh tiểu học")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- GDCT
	("POLI170001",	"Cơ sở ngành",	2,				"GDCT",		"NTQT",		3,			"ADV_C701",		1,				3,			"2022-02-18",	"2022-03-30",	"Phương pháp nghiên cứu khoa học Giáo dục kinh tế và pháp luật"),
	("POLI170002",	"Cơ sở ngành",	2,				"GDCT",		"NTQT",		3,			"ADV_C701",		4,				6,			"2022-02-18",	"2022-03-30",	"Phương pháp nghiên cứu khoa học Giáo dục kinh tế và pháp luật"),
	("POLI240401",	"Cơ sở ngành",	2,				"GDCT",		"LVT",		2,			"ADV_A104",		1,				4,			"2022-02-25",	"2022-04-02",	"Logic học đại cương"),
	("POLI240402",	"Cơ sở ngành",	2,				"GDCT",		"LVT",		2,			"ADV_A104",		7,				11,			"2022-02-25",	"2022-04-02",	"Logic học đại cương"),
	("POLI130801",	"Cơ sở ngành",	3,				"GDCT",		"PQH",		3,			"ADV_B211",		1,				3,			"2022-03-14",	"2022-05-04",	"Pháp luật Việt Nam đại cương"),
	("POLI130802",	"Cơ sở ngành",	3,				"GDCT",		"PQH",		3,			"ADV_B211",		4,				6,			"2022-03-14",	"2022-05-04",	"Pháp luật Việt Nam đại cương"),
	("POLI130803",	"Cơ sở ngành",	3,				"GDCT",		"PQH",		5,			"ADV_B210",		1,				3,			"2022-03-16",	"2022-05-06",	"Pháp luật Việt Nam đại cương"),
	("POLI141001",	"Cơ sở ngành",	2,				"GDCT",		"PMT",		2,			"ADV_B103",		2,				5,			"2022-02-17",	"2022-03-26",	"Lịch sử Triết học Mác-Lênin"),
	("POLI141002",	"Cơ sở ngành",	2,				"GDCT",		"PMT",		2,			"ADV_B103",		2,				5,			"2022-02-17",	"2022-03-26",	"Lịch sử Triết học Mác-Lênin"),
	("LITR100301",	"Cơ sở ngành",	2,				"GDCT",		"DTTY",		6,			"ADV_C703",		1,				3,			"2022-03-13",	"2022-05-16",	"Cơ sở văn hóa Việt Nam"),
	("LITR100302",	"Cơ sở ngành",	2,				"GDCT",		"DTTY",		6,			"ADV_C703",		4,				6,			"2022-03-13",	"2022-05-16",	"Cơ sở văn hóa Việt Nam"),
	("POLI140801",	"Chuyên ngành",	2,				"GDCT",		"TTHN",		7,			"ADV_B207",		1,				5,			"2022-02-13",	"2022-05-16",	"Đạo đức Hồ Chí Minh"),
	("POLI140802",	"Chuyên ngành",	2,				"GDCT",		"TTHN",		7,			"ADV_B207",		7,				11,			"2022-02-13",	"2022-05-16",	"Đạo đức Hồ Chí Minh"),
	("POLI102101",	"Chuyên ngành",	2,				"GDCT",		"LNVA",		5,			"LVS_A104",		2,				5,			"2022-03-01",	"2022-04-20",	"Hiến pháp và định chế chính trị"),
	("POLI102102",	"Chuyên ngành",	2,				"GDCT",		"LNVA",		5,			"LVS_A104",		7,				10,			"2022-03-01",	"2022-04-20",	"Hiến pháp và định chế chính trị"),
	("POLI141601",	"Chuyên ngành",	3,				"GDCT",		"TBP",		3,			"LVS_D103",		1,				3,			"2022-03-01",	"2022-04-20",	"Chuyên đề Triết học"),
	("POLI141602",	"Chuyên ngành",	3,				"GDCT",		"TBP",		3,			"LVS_D103",		4,				6,			"2022-03-01",	"2022-04-20",	"Chuyên đề Triết học"),
	("POLI141701",	"Chuyên ngành",	3,				"GDCT",		"NKT",		3,			"ADV_B103",		1,				3,			"2022-04-01",	"2022-05-20",	"Chuyên đề Kinh tế chính trị"),
	("POLI141702",	"Chuyên ngành",	3,				"GDCT",		"NKT",		3,			"ADV_B103",		1,				3,			"2022-04-01",	"2022-05-20",	"Chuyên đề Kinh tế chính trị"),
	("POLI104501",	"Chuyên ngành",	2,				"GDCT",		"NTMH",		4,			"ADV_A102",		4,				6,			"2022-09-15",	"2022-10-25",	"Kinh tế phát triển"),
	("POLI104502",	"Chuyên ngành",	2,				"GDCT",		"NTMH",		4,			"ADV_A102",		7,				10,			"2022-09-15",	"2022-10-25",	"Kinh tế phát triển"),
	("POLI104503",	"Chuyên ngành",	2,				"GDCT",		"NTMH",		4,			"ADV_A105",		1,				3,			"2022-09-15",	"2022-10-25",	"Kinh tế phát triển"),
	("POLI144901",	"Chuyên ngành",	2,				"GDCT",		"NHBP",		7,			"ADV_C705",		1,				3,			"2023-02-26",	"2023-03-29",	"Kinh tế quốc tế"),
	("POLI144902",	"Chuyên ngành",	2,				"GDCT",		"NHBP",		7,			"ADV_C705",		4,				6,			"2023-02-26",	"2023-03-29",	"Kinh tế quốc tế"),
	("POLI144903",	"Chuyên ngành",	2,				"GDCT",		"NHBP",		7,			"ADV_C705",		7,				9,			"2023-02-26",	"2023-03-29",	"Kinh tế quốc tế"),
	("POLI130701",	"Chuyên ngành",	2,				"GDCT",		"TTHN",		6,			"LLQ_D208",		1,				4,			"2022-03-13",	"2022-05-02",	"Phương pháp và phong cách Hồ Chí Minh"),
	("POLI130702",	"Chuyên ngành",	2,				"GDCT",		"TTHN",		6,			"LLQ_D208",		1,				4,			"2022-03-13",	"2022-05-02",	"Phương pháp và phong cách Hồ Chí Minh")
;

INSERT INTO course
	(courseID,		courseType,		creditCount,	facultyID,	lecturerID,	weekDay,	classroomID,	startSession,	endSession,	startDate,		endDate,		courseName)
VALUES
		-- TLH
	("PSYC140101",	"Cơ sở ngành",	2,				"TLH",		"DTDD",		3,			"LLQ_D302",		2,				5,			"2022-02-16",	"2022-03-30",	"Nhập môn Tâm lý học"),
	("PSYC140102",	"Cơ sở ngành",	2,				"TLH",		"DTDD",		3,			"LLQ_D302",		7,				10,			"2022-02-16",	"2022-03-30",	"Nhập môn Tâm lý học"),
	("PSYC140103",	"Cơ sở ngành",	2,				"TLH",		"PMPT",		3,			"LLQ_D102",		2,				5,			"2022-02-16",	"2022-03-30",	"Nhập môn Tâm lý học"),
	("PSYC170301",	"Cơ sở ngành",	5,				"TLH",		"PMPT",		4,			"LLQ_D203",		1,				6,			"2022-02-13",	"2022-04-23",	"Tâm lý học căn bản"),
	("PSYC170302",	"Cơ sở ngành",	5,				"TLH",		"HNT",		4,			"LLQ_D303",		1,				6,			"2022-02-13",	"2022-04-23",	"Tâm lý học căn bản"),
	("PSYC176001",	"Cơ sở ngành",	4,				"TLH",		"NTTX",		2,			"ADV_A305",		1,				4,			"2022-03-31",	"2022-05-19",	"Tâm lý học phát triển 1"),
	("PSYC176002",	"Cơ sở ngành",	4,				"TLH",		"NTTX",		2,			"ADV_A305",		7,				10,			"2022-03-31",	"2022-05-19",	"Tâm lý học phát triển 1"),
	("PSYC109801",	"Cơ sở ngành",	3,				"TLH",		"DQC",		3,			"ADV_A305",		1,				4,			"2022-03-30",	"2022-05-18",	"Tâm lý học phát triển 2"),
	("PSYC109802",	"Cơ sở ngành",	3,				"TLH",		"DQC",		3,			"ADV_A305",		7,				11,			"2022-03-30",	"2022-05-18",	"Tâm lý học phát triển 2"),
	("PSYC103501",	"Cơ sở ngành",	3,				"TLH",		"DTQ",		4,			"LLQ_303",		1,				3,			"2022-02-20",	"2022-04-02",	"Tâm lý học giới tính"),
	("PSYC103502",	"Cơ sở ngành",	3,				"TLH",		"DTQ",		4,			"LLQ_303",		4,				6,			"2022-02-20",	"2022-04-02",	"Tâm lý học giới tính"),
	("PSYC103601",	"Cơ sở ngành",	2,				"TLH",		"VTTV",		5,			"ADV_A313",		1,				3,			"2022-04-01",	"2022-05-06",	"Tâm lý học gia đình"),
	("PSYC103602",	"Cơ sở ngành",	2,				"TLH",		"VTT",		5,			"ADV_A310",		1,				3,			"2022-04-01",	"2022-05-06",	"Tâm lý học gia đình"),
	("PSYC176101",	"Cơ sở ngành",	3,				"TLH",		"KTTT",		7,			"LVS_D112",		1,				4,			"2022-02-12",	"2022-03-22",	"Tâm lý học xã hội"),
	("PSYC176102",	"Cơ sở ngành",	3,				"TLH",		"KTTT",		7,			"LVS_D112",		7,				10,			"2022-02-12",	"2022-03-22",	"Tâm lý học xã hội"),
	("PSYC171901",	"Cơ sở ngành",	4,				"TLH",		"HTHD",		6,			"LVS_D107",		1,				5,			"2022-09-04",	"2022-10-23",	"Tâm lý học giao tiếp"),
	("PSYC171902",	"Cơ sở ngành",	4,				"TLH",		"HTHD",		6,			"LVS_D107",		7,				11,			"2022-09-04",	"2022-10-23",	"Tâm lý học giao tiếp"),
	("PSYC121701",	"Cơ sở ngành",	3,				"TLH",		"HNT",		5,			"ADV_B306",		1,				4,			"2022-09-20",	"2022-11-05",	"Tâm lý học dạy học và giáo dục"),
	("PSYC121702",	"Cơ sở ngành",	3,				"TLH",		"HNT",		5,			"ADV_B306",		7,				10,			"2022-09-20",	"2022-11-05",	"Tâm lý học dạy học và giáo dục"),
	("PSYC170501",	"Chuyên ngành",	3,				"TLH",		"NTTX",		4,			"ADV_B202",		1,				5,			"2022-10-28",	"2022-12-02",	"Tham vấn và trị liệu tâm lý cơ bản"),
	("PSYC170502",	"Chuyên ngành",	3,				"TLH",		"NTTX",		4,			"ADV_B202",		7,				11,			"2022-10-28",	"2022-12-02",	"Tham vấn và trị liệu tâm lý cơ bản"),
	("PSYC170701",	"Chuyên ngành",	3,				"TLH",		"VTTV",		6,			"ADV_B302",		1,				5,			"2022-10-18",	"2022-11-29",	"Kỹ năng tham vấn và trị liệu tâm lý"),
	("PSYC170701",	"Chuyên ngành",	3,				"TLH",		"VTTV",		6,			"ADV_B302",		7,				11,			"2022-10-18",	"2022-11-29",	"Kỹ năng tham vấn và trị liệu tâm lý"),
	("PSYC176201",	"Chuyên ngành",	3,				"TLH",		"HTHD",		2,			"LLQ_D110",		1,				4,			"2023-02-23",	"2023-04-03",	"Tâm bệnh học"),
	("PSYC176202",	"Chuyên ngành",	3,				"TLH",		"HTHD",		2,			"LLQ_D110",		7,				10,			"2023-02-23",	"2023-04-03",	"Tâm bệnh học"),
	("PSYC174301",	"Chuyên ngành",	4,				"TLH",		"NTT",		3,			"LLQ_D309",		2,				6,			"2023-03-10",	"2023-05-23",	"Giáo dục kỹ năng sống"),
	("PSYC174302",	"Chuyên ngành",	4,				"TLH",		"NTT",		3,			"LLQ_D309",		7,				11,			"2023-03-10",	"2023-05-23",	"Giáo dục kỹ năng sống"),
	("PSYC103101",	"Chuyên ngành",	2,				"TLH",		"GTV",		6,			"ADV_C605",		1,				5,			"2023-03-30",	"2023-05-19",	"Tâm lý học quản lý"),
	("PSYC103102",	"Chuyên ngành",	2,				"TLH",		"GTV",		6,			"ADV_C605",		7,				11,			"2023-03-30",	"2023-05-19",	"Tâm lý học quản lý"),
	("PSYC103103",	"Chuyên ngành",	2,				"TLH",		"GTV",		5,			"ADV_C605",		1,				5,			"2023-03-29",	"2023-05-18",	"Tâm lý học quản lý"),
	("PSYC171201",	"Chuyên ngành",	4,				"TLH",		"TTTM",		4,			"ADV_B318",		1,				6,			"2023-09-23",	"2023-11-23",	"Tâm lý lâm sàng"),
	("PSYC171202",	"Chuyên ngành",	4,				"TLH",		"TTTM",		4,			"ADV_B318",		7,				12,			"2023-09-23",	"2023-11-23",	"Tâm lý lâm sàng"),
	("PSYC171203",	"Chuyên ngành",	4,				"TLH",		"NTT",		6,			"ADV_B318",		1,				6,			"2023-09-25",	"2023-11-25",	"Tâm lý lâm sàng"),
	("PSYC145201",	"Chuyên ngành",	3,				"TLH",		"NTTX",		5,			"ADV_C710",		1,				5,			"2023-10-03",	"2023-12-13",	"Tham vấn học đường"),
	("PSYC145202",	"Chuyên ngành",	3,				"TLH",		"NTTX",		5,			"ADV_C710",		7,				11,			"2023-10-03",	"2023-12-13",	"Tham vấn học đường"),
	("PSYC176301",	"Chuyên ngành",	3,				"TLH",		"HNT",		6,			"ADV_B210",		1,				5,			"2023-10-12",	"2023-12-13",	"Tâm lý học hành vi lệch chuẩn"),
	("PSYC176302",	"Chuyên ngành",	3,				"TLH",		"HNT",		6,			"ADV_C710",		7,				11,			"2023-10-12",	"2023-12-13",	"Tâm lý học hành vi lệch chuẩn")
;