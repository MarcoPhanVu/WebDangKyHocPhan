use `user_course_registration`;

-- ═╣ empty the database ╠═════════════════════════════════════════════════════════════════════════
delimiter $$
create procedure `empty_all_tables` () begin
    set foreign_key_checks = 0;
    truncate table `faculty`;
    truncate table `classroom`;
    truncate table `course`;
    truncate table `lecturer`;
    truncate table `student`;
    truncate table `class`;
    truncate table `registration_results`;
    set foreign_key_checks = 1;
end $$
delimiter ;

call `empty_all_tables`();
drop procedure `empty_all_tables`;

-- ═╣ insert new data ╠════════════════════════════════════════════════════════════════════════════
insert into `faculty`
    (`name`)
values
    ("Công nghệ thông tin"),
    ("Địa lý"),
    ("Giáo dục chính trị"),
    ("Giáo dục đặc biệt"),
    ("Giáo dục Mầm non"),
    ("Giáo dục Quốc phòng"),
    ("Giáo dục Tiểu học"),
    ("Giáo dục Thể chất"),
    ("Hóa học"),
    ("Khoa học Giáo dục"),
    ("Lịch sử"),
    ("Ngữ Văn"),
    ("Sinh học"),
    ("Tâm lý học"),
    ("Toán - Tin học"),
    ("tiếng Anh"),
    ("tiếng Hàn quốc"),
    ("tiếng Nga"),
    ("tiếng Nhật"),
    ("tiếng Pháp"),
    ("tiếng Trung"),
    ("Vật lý")
;

insert into `classroom`
    (`branch`, `building`, `floor`,`room`)
values
-- building A
    -- floor 2
    ("ADV",     "A",        2,      1),     ("ADV",     "A",        2,      2),     ("ADV",     "A",        2,      3),     ("ADV",     "A",        2,      4),     ("ADV",     "A",        2,      5),
    ("ADV",     "A",        2,      6),     ("ADV",     "A",        2,      7),     ("ADV",     "A",        2,      8),     ("ADV",     "A",        2,      9),     ("ADV",     "A",        2,      10),
    -- floor 3
    ("ADV",     "A",        3,      1),     ("ADV",     "A",        3,      2),     ("ADV",     "A",        3,      3),     ("ADV",     "A",        3,      4),     ("ADV",     "A",        3,      5),
    ("ADV",     "A",        3,      6),     ("ADV",     "A",        3,      7),     ("ADV",     "A",        3,      8),     ("ADV",     "A",        3,      9),     ("ADV",     "A",        3,      10),
    -- floor 4
    ("ADV",     "A",        4,      1),     ("ADV",     "A",        4,      2),     ("ADV",     "A",        4,      3),     ("ADV",     "A",        4,      4),     ("ADV",     "A",        4,      5),
    ("ADV",     "A",        4,      6),     ("ADV",     "A",        4,      7),     ("ADV",     "A",        4,      8),     ("ADV",     "A",        4,      9),     ("ADV",     "A",        4,      10),
    -- floor 5
    ("ADV",     "A",        5,      1),     ("ADV",     "A",        5,      2),     ("ADV",     "A",        5,      3),     ("ADV",     "A",        5,      4),     ("ADV",     "A",        5,      5),
    ("ADV",     "A",        5,      6),     ("ADV",     "A",        5,      7),     ("ADV",     "A",        5,      8),     ("ADV",     "A",        5,      9),     ("ADV",     "A",        5,      10),

-- building B
    -- floor 1
    ("ADV",     "B",        1,      1),     ("ADV",     "B",        1,      2),     ("ADV",     "B",        1,      3),     ("ADV",     "B",        1,      4),     ("ADV",     "B",        1,      5),
    ("ADV",     "B",        1,      6),     ("ADV",     "B",        1,      7),     ("ADV",     "B",        1,      8),     ("ADV",     "B",        1,      9),     ("ADV",     "B",        1,      10),
    ("ADV",     "B",        1,      11),    ("ADV",     "B",        1,      12),    ("ADV",     "B",        1,      13),    ("ADV",     "B",        1,      14),    ("ADV",     "B",        1,      15),
    ("ADV",     "B",        1,      16),    ("ADV",     "B",        1,      17),    ("ADV",     "B",        1,      18),    ("ADV",     "B",        1,      19),    ("ADV",     "B",        1,      20),
    -- floor 2
    ("ADV",     "B",        2,      1),     ("ADV",     "B",        2,      2),     ("ADV",     "B",        2,      3),     ("ADV",     "B",        2,      4),     ("ADV",     "B",        2,      5),
    ("ADV",     "B",        2,      6),     ("ADV",     "B",        2,      7),     ("ADV",     "B",        2,      8),     ("ADV",     "B",        2,      9),     ("ADV",     "B",        2,      10),
    ("ADV",     "B",        2,      11),    ("ADV",     "B",        2,      12),    ("ADV",     "B",        2,      13),    ("ADV",     "B",        2,      14),    ("ADV",     "B",        2,      15),
    ("ADV",     "B",        2,      16),    ("ADV",     "B",        2,      17),    ("ADV",     "B",        2,      18),    ("ADV",     "B",        2,      19),    ("ADV",     "B",        2,      20),
    -- floor 3
    ("ADV",     "B",        3,      1),     ("ADV",     "B",        3,      2),     ("ADV",     "B",        3,      3),     ("ADV",     "B",        3,      4),     ("ADV",     "B",        3,      5),
    ("ADV",     "B",        3,      6),     ("ADV",     "B",        3,      7),     ("ADV",     "B",        3,      8),     ("ADV",     "B",        3,      9),     ("ADV",     "B",        3,      10),
    ("ADV",     "B",        3,      11),    ("ADV",     "B",        3,      12),    ("ADV",     "B",        3,      13),    ("ADV",     "B",        3,      14),    ("ADV",     "B",        3,      15),
    ("ADV",     "B",        3,      16),    ("ADV",     "B",        3,      17),    ("ADV",     "B",        3,      18),    ("ADV",     "B",        3,      19),    ("ADV",     "B",        3,      20),

-- building C
    -- floor 2
    ("ADV",     "C",        2,      1),     ("ADV",     "C",        2,      2),     ("ADV",     "C",        2,      3),     ("ADV",     "C",        2,      4),     ("ADV",     "C",        2,      5),
    ("ADV",     "C",        2,      6),     ("ADV",     "C",        2,      7),     ("ADV",     "C",        2,      8),     ("ADV",     "C",        2,      9),     ("ADV",     "C",        2,      10),

-- building I
    -- floor 1
    ("ADV",     "I",        1,      1),     ("ADV",     "I",        1,      2),     ("ADV",     "I",        1,      3),     ("ADV",     "I",        1,      4),     ("ADV",     "I",        1,      5),
    -- floor 2
    ("ADV",     "I",        2,      1),     ("ADV",     "I",        2,      2),     ("ADV",     "I",        2,      3),     ("ADV",     "I",        2,      4),     ("ADV",     "I",        2,      5),

-- exercise yard
    ("ADV",     "NTD",      null,   null),  ("ADV",     "SanM",      null,   null)
;

insert into `course`
    (`type`,    `number_of_credits`,    `faculty_id`,   `name`)
values
    -- Công nghệ thông tin
    (2,         3,                      1,              "Bảo mật và an ninh mạng"),
    (2,         3,                      1,              "Bảo mật cơ sở dữ liệu"),
    (2,         3,                      1,              "Các giải thuật tính toán đại số"),
    (2,         3,                      1,              "Các hệ cơ sở dữ liệu"),
    (2,         3,                      1,              "Các hệ cơ sở tri thức"),
    (2,         3,                      1,              "Các phương pháp học thống kê"),
    (1,         3,                      1,              "Cấu trúc dữ liệu"),
    (2,         3,                      1,              "Chuyên đề Oracle"),
    (2,         3,                      1,              "Chuẩn đoán và quản lý sự cố mạng (CISCO 3)"),
    (2,         3,                      1,              "Cơ sở dữ liệu"),
    (2,         3,                      1,              "Công nghệ .NET"),
    (2,         3,                      1,              "Công nghệ Java"),
    (2,         3,                      1,              "Công nghệ Web"),
    (2,         3,                      1,              "Công nghệ JEE"),
    (2,         3,                      1,              "Công nghệ chuỗi khối và ứng dụng"),
    (2,         3,                      1,              "Công nghệ phần mềm nâng cao"),
    (2,         3,                      1,              "Công nghệ mạng không dây"),
    (2,         3,                      1,              "Cơ sở dữ liệu nâng cao"),
    (2,         3,                      1,              "Điện toán đám mây"),
    (2,         3,                      1,              "Định tuyến mạng nâng cao (CISCO 2)"),
    (2,         3,                      1,              "Đồ họa máy tính"),
    (2,         3,                      1,              "Đồ họa máy tính nâng"),
    (2,         3,                      1,              "Hệ điều hành"),
    (2,         3,                      1,              "Hệ thống nhúng và ứng dụng"),
    (2,         3,                      1,              "Hệ thống mã nguồn mở"),
    (2,         3,                      1,              "Hệ thống quản trị doanh nghiệp"),
    (2,         3,                      1,              "Hệ tư vấn thông tin"),
    (2,         3,                      1,              "Học máy"),
    (2,         3,                      1,              "Học máy nâng cao"),
    (2,         3,                      1,              "Internet vạn vật"),
    (2,         3,                      1,              "Khai thác dữ liệu và ứng dụng"),
    (2,         3,                      1,              "Khai thác dữ liệu văn bản"),
    (2,         3,                      1,              "Kiểm thử phần mềm cơ bản"),
    (2,         3,                      1,              "Kiểm thử phần mềm nâng cao"),
    (2,         3,                      1,              "Kiến trúc máy tính và hợp ngữ"),
    (1,         3,                      1,              "Lập trình cơ bản"),
    (1,         3,                      1,              "Lập trình hướng đối tượng"),
    (2,         3,                      1,              "Lập trình tiến hóa và giải thuật di truyền"),
    (2,         3,                      1,              "Lập trình mạng"),
    (1,         3,                      1,              "Lập trình nâng cao"),
    (1,         3,                      1,              "Lập trình Windows"),
    (2,         3,                      1,              "Lắp ráp, cài đặt và bảo trì máy tính"),
    (2,         3,                      1,              "Logic mờ và ứng dụng"),
    (1,         3,                      1,              "Lý thuyết đồ thị"),
    (2,         3,                      1,              "Lý thuyết mã hóa và mật mã"),
    (2,         3,                      1,              "Nhập môn công nghệ phần mềm"),
    (2,         3,                      1,              "Nhập môn chữ ký số"),
    (2,         3,                      1,              "Nhập môn DevOps"),
    (2,         3,                      1,              "Nhập môn mạng máy tính"),
    (2,         3,                      1,              "Nghi thức giao tiếp mạng (CISCO 1)"),
    (2,         3,                      1,              "Phân tích ảnh y khoa"),
    (2,         3,                      1,              "Phân tích dữ liệu"),
    (2,         3,                      1,              "Phân tích thiết kế và giải thuật"),
    (2,         3,                      1,              "Phân tích thiết kế hướng đối tượng"),
    (2,         3,                      1,              "Phân tích thiết kế hệ thống thông tin"),
    (2,         3,                      1,              "Phát triển ứng dụng trên thiết bị di động"),
    (2,         3,                      1,              "Phát triển ứng dụng trên thiết bị di động nâng cao"),
    (2,         3,                      1,              "Phát triển ứng dụng trò chơi"),
    (1,         3,                      1,              "Phát triển ứng dụng web"),
    (2,         3,                      1,              "Quản lý dự án Công nghệ Thông tin"),
    (2,         3,                      1,              "Quản trị cơ bản với Windows Server"),
    (2,         3,                      1,              "Quản trị mạng với Linux"),
    (2,         3,                      1,              "Quản trị dịch vụ mạng với Windows Server"),
    (1,         3,                      1,              "Quy hoạch tuyến tính và ứng dụng"),
    (2,         3,                      1,              "Quy Trình Phát Triển Phần Mềm Agile"),
    (2,         3,                      1,              "Thiết kế và quản lý mạng LAN"),
    (2,         3,                      1,              "Thị giác máy tính và ứng dụng"),
    (2,         3,                      1,              "Thương mại điện tử"),
    (2,         3,                      1,              "Trí tuệ nhân tạo"),
    (2,         3,                      1,              "Xây dựng chính sách an toàn Thông tin"),
    (2,         3,                      1,              "Xây dựng dự án Công nghệ Thông tin"),
    (2,         3,                      1,              "Xử lý ảnh số"),
    (2,         3,                      1,              "Xử lý ngôn ngữ tự nhiên"),
    -- Địa lý
    -- Giáo dục chính trị
    (0,         2,                      3,              "Chủ nghĩa xã hội khoa học"),
    (0,         2,                      3,              "Kinh tế chính trị Mác-Lênin"),
    (0,         2,                      3,              "Lịch sử Đảng cộng sản Việt Nam"),
    (0,         2,                      3,              "Pháp luật đại cương"),
    (0,         3,                      3,              "Triết học Mác-Lênin"),
    -- Giáo dục đặc biệt
    -- Giáo dục Mầm non
    -- Giáo dục Quốc phòng
    (0,         2,                      6,              "Công tác quốc phòng và an ninh"),
    (0,         1,                      6,              "Đường lối quốc phòng và an ninh của Đảng Cộng sản Việt Nam"),
    (0,         4,                      6,              "Kỹ thuật chiến đấu và bộ binh"),
    (0,         2,                      6,              "Quân sự chung"),
    -- Giáo dục Tiểu học
    -- Giáo dục Thể chất
    (0,         1,                      8,              "Giáo dục thể chất 1 (Thể dục - Điền kinh)"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Aerobic cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Bơi lội cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Bóng chuyền cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Bóng đá cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Bóng rổ cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Cầu lông cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Đá cầu cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Khiêu vũ thể thao cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 2 - Teakwondo cơ bản"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Aerobic nâng cao"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Bơi lội nâng cao"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Bóng chuyền nâng cao"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Bóng đá nâng cao"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Bóng rổ nâng cao"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Cầu lông nâng cao"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Đá cầu nâng cao"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Khiêu vũ thể thao nâng cao"),
    (0,         1,                      8,              "Giáo dục thể chất 3 - Teakwondo nâng cao"),
    -- Hóa học
    -- Khoa học Giáo dục
    -- Lịch sử
    -- Ngữ Văn
    -- Sinh học
    -- Tâm lý học
    -- Toán - Tin học
    (1,         3,                      15,             "Đại số giao hoán"),
    (1,         3,                      15,             "Đại số tuyến tính"),
    (1,         3,                      15,             "Giải tích 1"),
    (1,         2,                      15,             "Toán rời rạc"),
    (1,         3,                      15,             "Xác suất thống kê và ứng dụng"),
    -- tiếng Anh
    (0,         4,                      16,             "Tiếng Anh học phần I"),
	(0,         3,                      16,             "Tiếng Anh học phần II"),
	(0,         3,                      16,             "Tiếng Anh học phần III")
    -- tiếng Hàn quốc
    -- tiếng Nga
    -- tiếng Nhật
    -- tiếng Pháp
    -- tiếng Trung
    -- Vật lý
;

insert into `lecturer`
    (`name`,                            `faculty_id`)
values
    ("Cao Quan",                        1),     ("Giêng Ngụy Dung Diễm Mẫn",        1),     ("Vương Ngọc Trúc",                 1),     ("Mã Thiện Bá",                     1),     ("Viên Ý Thương",                   1),
    ("Lương Lưu Ngọc Uyên",             1),     ("Phùng Thiên Ngọc",                1),     ("Phùng Mạnh",                      1),     ("Lương Dương Khoa Sang",           1),     ("Tống Lưu Hân Trinh San",          1),
    ("Lục Ngân",                        2),     ("Phó Hoàng Minh Ngà Quyên",        2),     ("Hồ Lôi Yến Trâm",                 2),     ("Lục Cảnh Mỹ Ánh",                 2),     ("Lã Cao Tường Tuyên",              2),
    ("Trịnh Hồ Hiếu Thành",             2),     ("Lạc Hồng Bích",                   2),     ("Hoàng Cơ Giang Hương Vân",        2),     ("Đàm Trương Diễm Thúy Mẫn",        2),     ("Vương Ngô Tiến Lộc Nhật",         2),
    ("Đường Ly",                        3),     ("Cảnh Phùng Khả Khánh Loan",       3),     ("Lê Uy Pháp",                      3),     ("Hồ Mạnh",                         3),     ("Đinh Quách Phượng Uyên Trinh",    3),
    ("Lâm Trịnh Trọng Sang Vĩ",         3),     ("Cao Dương Pháp",                  3),     ("Cơ Đặng Đan Phi",                 3),     ("Giêng Tô Hoa Thủy Oanh",          3),     ("Trương Đỗ Mỹ Oanh",               3),
    ("Tô Linh Quân",                    4),     ("Hoàng Trâm",                      4),     ("Lã Đường Tố Diệu",                4),     ("Hồ Đặng Minh Hạnh",               4),     ("Lã Lôi Vinh Khôi",                4),
    ("Tống Nhật Chiến",                 4),     ("Trương Lâm Ngọc",                 4),     ("Trần Dương Vĩ Công",              4),     ("Cảnh Thắm Ân",                    4),     ("Dương Đinh Quốc Tường",           4),
    ("Lâm Nguyễn Anh Nguyên",           5),     ("Ngụy Võ Tuyết Dương Ánh",         5),     ("Phùng Toàn Tùng",                 5),     ("Ngụy Lộc Quảng",                  5),     ("Lục Bùi Anh Đan",                 5),
    ("Lâm Giêng Ấn Tuyên",              5),     ("Dương Nhung Phối",                5),     ("Hồ Phó Bá Duy Kiên",              5),     ("Bùi Tô Phong Thanh",              5),     ("Mai Diệp Kỳ Hữu",                 5),
    ("Đường Đặng Nguyệt Trân",          6),     ("Cảnh Nam",                        6),     ("Lã Bích Dung",                    6),     ("Phan Vương Lâm Gia",              6),     ("Hồ Khoa Bách",                    6),
    ("Lâm Đức",                         6),     ("Lã Kim Tín",                      6),     ("Phan Tô Huy Toàn",                6),     ("Lã Trường Triết",                 6),     ("Cảnh Nguyễn Hưng Danh",           6),
    ("Cao Khoa",                        7),     ("Nguyễn Hậu Hưng",                 7),     ("Lý Khải",                         7),     ("Mã Phó Như Mẫn Hạnh",             7),     ("Mai Mã Xuân Mẫn Xuân",            7),
    ("Quách Hằng",                      7),     ("Trương Nguyễn Di Hân",            7),     ("Huỳnh Lạc Dũng Pháp Phú",         7),     ("Lương Nhung",                     7),     ("Hứa Tùng",                        7),
    ("Ngô Đinh Luân Thắng",             8),     ("Trương Vũ Tấn Nguyên Hậu",        8),     ("Giêng Kỳ Xuân",                   8),     ("Mã Nguyệt Trang",                 8),     ("Ngô Nhã An",                      8),
    ("Viên Phụng Ly",                   8),     ("Diệp Phó Quyên Đan Hân",          8),     ("Trần Loan Châm",                  8),     ("Đặng Lý Hiển Toàn",               8),     ("Lạc Đặng Hân Quyên",              8),
    ("Ngụy Lạc Nhàn Hoa",               9),     ("Mã Quách Chấn Lam",               9),     ("Tống Lã Uy Pháp",                 9),     ("Lê Khanh Đăng",                   9),     ("Ngô Trần Thuận Kỳ Trường",        9),
    ("Ngô Thảo",                        9),     ("Nguyễn Thơ",                      9),     ("Đặng Lê Thuận Toàn",              9),     ("Phó Ý Tuyền",                     9),     ("Vương Lôi Vân Hồng Thùy",         9),
    ("Lạc Vương Đạt",                   10),    ("Lôi Lưu Việt Dũng",               10),    ("Hoàng Công Phước",                10),    ("Cơ Trần Tú Khôi",                 10),    ("Lý Đặng Thục Nhung",              10),
    ("Đàm Trương Thúy Trang",           10),    ("Quách Lưu Cao Hùng Quang",        10),    ("Viên Quách Sang Thuận",           10),    ("Mã Hoa Bích",                     10),    ("Đường Quyên",                     10),
    ("Cảnh Trần Giang Thi",             11),    ("Lưu Hứa Nhật Thịnh",              11),    ("Đàm Ngọc Uy",                     11),    ("Phan Vũ Mai Bình",                11),    ("Phó Trường",                      11),
    ("Trần Vũ Hiển Tín",                11),    ("Quách Hạ Hà",                     11),    ("Lạc Vũ Khải Đan Đan",             11),    ("Dương Phó Bách Thắng",            11),    ("Kiều Bách",                       11),
    ("Lạc Hậu",                         12),    ("Lương Lộc",                       12),    ("Võ Lưu Tâm Khuê",                 12),    ("Phan Như",                        12),    ("Ngụy Võ Châm Nhiên",              12),
    ("Tống Đinh Phối Thy Bích",         12),    ("Mã Dương Luân Nhân",              12),    ("Đặng Trinh",                      12),    ("Giêng Phạm Trường Quan Tường",    12),    ("Giêng Ngô Nga Nghi",              12),
    ("Cơ Diệp Hằng Loan Hạnh",          13),    ("Phùng Anh Ý",                     13),    ("Khương Phùng Huy Nghĩa Hiệp",     13),    ("Bùi Lương Diệu Dương",            13),    ("Đỗ Triết",                        13),
    ("Dương Tín",                       13),    ("Phùng Mẫn Sang",                  13),    ("Viên Mã Quyên Kiều",              13),    ("Giêng Lưu Khôi Dĩ",               13),    ("Đàm Thơ",                         13),
    ("Hoàng Diễm",                      14),    ("Hứa Bích Tường",                  14),    ("Lưu Châm Dung",                   14),    ("Trần Đỗ Vĩ Cao Tín",              14),    ("Lôi Cát Nga",                     14),
    ("Cao Long Phương",                 14),    ("Huỳnh Lâm Cát Uyên Nhàn",         14),    ("Đàm Phương",                      14),    ("Giêng Dương Ly Thùy Vân",         14),    ("Trương Thy",                      14),
    ("Viên Đạt Tuyên",                  15),    ("Viên Nhân",                       15),    ("Trần Tố Gia",                     15),    ("Phạm Phan Thơ Thảo",              15),    ("Phan Phan Bá Đức Hiếu",           15),
    ("Hứa Vương Loan Hân",              15),    ("Hứa Nhật Hoàng",                  15),    ("Tô Phước",                        15),    ("Đường Bá",                        15),    ("Phùng Trí",                       15),
    ("Lôi Mã Vương Thiện Vương",        16),    ("Trương Ngọc Lộc",                 16),    ("Cung Lâm Phối Châm Thục",         16),    ("Cảnh Nhung",                      16),    ("Hồ Cơ Nhàn Thư Mẫn",              16),
    ("Ngụy Ngô Nguyên Thái Công",       16),    ("Đàm Loan Thục",                   16),    ("Cung Lâm Trà Ánh",                16),    ("Cơ Hứa Quỳnh Ý",                  16),    ("Giêng Bảo",                       16),
    ("Hồ Trí Hưng",                     17),    ("Huỳnh Doanh",                     17),    ("Viên Phương Thanh",               17),    ("Cơ Phương",                       17),    ("Khương Trung",                    17),
    ("Cơ Phó Tú Bích",                  17),    ("Đàm Đinh Vân Tâm",                17),    ("Giêng An",                        17),    ("Lý Thủy Tú",                      17),    ("Vương Bùi Thắm Hà",               17),
    ("Trịnh Dũng",                      18),    ("Lạc Mã Hoa Hoa Linh",             18),    ("Quách Chí Kiên",                  18),    ("Tống Lạc Tiên Ly Khuê",           18),    ("Đỗ Bình",                         18),
    ("Đinh Hứa Phối Trân",              18),    ("Mai Huỳnh Đào Phụng Minh",        18),    ("Lục Quách Minh Ấn",               18),    ("Giêng Ánh Vy",                    18),    ("Cung Đông Toàn",                  18),
    ("Bùi Lạc Cát Tường",               19),    ("Lục Minh",                        19),    ("Cảnh Hải Thục",                   19),    ("Bùi Lê Hân Nhiên",                19),    ("Tống Lưu Thế Bá Mẫn",             19),
    ("Cơ Nhã Thùy",                     19),    ("Hồ Đinh Xuân Thy",                19),    ("Viên Xuân Danh",                  19),    ("Trần Hồ Ngân Dung",               19),    ("Cơ Võ Khoa Dũng Khoa",            19),
    ("Phùng Hạ",                        20),    ("Phùng Vũ My Thi Trà",             20),    ("Đặng Vương Kim Phúc Sơn",         20),    ("Trương Bách",                     20),    ("Phùng Đan",                       20),
    ("Mã Liên",                         20),    ("Trịnh Vương Thành Lam Anh",       20),    ("Hồ Đình",                         20),    ("Mai Nga Thiên",                   20),    ("Quách Mã Gia Hiệp Khánh",         20),
    ("Cơ Trần Hạ Diễm Thy",             21),    ("Kiều Ngụy Bảo Phi Công",          21),    ("Kiều Đại Tùng",                   21),    ("Đỗ Khả",                          21),    ("Phó Hải Hương",                   21),
    ("Nguyễn Lục Phong Đình",           21),    ("Trịnh Hoa",                       21),    ("Lâm Minh",                        21),    ("Ngô Đàm Thúy Hạnh",               21),    ("Hồ Nhựt",                         21),
    ("Phó Thế Mẫn",                     22),    ("Lạc Thanh Vương",                 22),    ("Đỗ Phùng Nhi Xuân Ly",            22),    ("Lôi Thủy",                        22),    ("Cơ Chấn",                         22),
    ("Lương Đường Hạ Quyên Nhàn",       22),    ("Cao Mẫn",                         22),    ("Đỗ Nhàn Châu",                    22),    ("Lưu Cơ Hòa Đức Luân",             22),    ("Cơ Đàm Hiếu Tường",               22)
;

insert into `student`
    (`firstname`,   `lastname`,             `faculty_id`)
values
    ("Vĩ",      "Lạc ",                     1),     ("Kiệt",    "Vũ Linh",                  1),     ("Phát",    "Đường Khải",               1),     ("Vượng",   "Mã Linh",                  1),     ("Ân",      "Tô Ý",                     1),
    ("Lam",     "Lưu ",                     1),     ("Tố",      "Phan Khả",                 1),     ("Khiêm",   "Đinh Lý Tùng",             1),     ("Huyền",   "Hoàng Nhiên",              1),     ("Điền",    "Cảnh Đàm Danh",            1),
    ("Kỳ",      "Lâm Phó Hồng",             1),     ("Cường",   "Hồ Đặng Lộc Cao",          1),     ("Huy",     "Vương ",                   1),     ("Hà",      "Hứa ",                     1),     ("Thảo",    "Phó ",                     1),
    ("Thi",     "Cơ Phạm Trúc",             1),     ("Yến",     "Trịnh Thơ",                1),     ("Nghi",    "Ngô Lê Hà",                1),     ("Hương",   "Lôi Khương Oanh Hồng",     1),     ("Thông",   "Võ Xuân",                  1),
    ("Trường",  "Đàm Hoàng Trung Đại",      2),     ("Dung",    "Cao Phan Nga Đan",         2),     ("Giang",   "Đặng Kiều Trân Thắm",      2),     ("Ly",      "Lã ",                      2),     ("Phúc",    "Trần ",                    2),
    ("Quảng",   "Ngụy Đình",                2),     ("Quốc",    "Lưu Võ Cao Khiêm",         2),     ("Hạnh",    "Đỗ Viên Hiền",             2),     ("Đoan",    "Huỳnh ",                   2),     ("Nhã",     "Viên Lôi Liên",            2),
    ("Khiêm",   "Trương Trần Minh",         2),     ("Thủy",    "Vũ ",                      2),     ("Nhật",    "Dương ",                   2),     ("Lan",     "Hoàng Tống Linh Phụng",    2),     ("Tâm",     "Tô Kiều Ân",               2),
    ("Vũ",      "Bùi Tân",                  2),     ("Ly",      "Đàm ",                     2),     ("Hoàng",   "Cơ ",                      2),     ("Lợi",     "Diệp ",                    2),     ("Điền",    "Ngô ",                     2),
    ("Trinh",   "Hoàng ",                   3),     ("Hậu",     "Ngụy Lưu Đăng Đại",        3),     ("Trúc",    "Cảnh Hương",               3),     ("Kim",     "Lục Trương Doanh",         3),     ("Ngà",     "Ngụy Duyên",               3),
    ("Kỳ",      "Tống ",                    3),     ("Hùng",    "Cảnh Tô Vĩ Xuân",          3),     ("Khải",    "Đường Hồ Trí",             3),     ("Thái",    "Khương Phan Dương Huy",    3),     ("Pháp",    "Bùi Lâm Hải",              3),
    ("Xuân",    "Viên Ngụy Oanh",           3),     ("Yến",     "Viên San",                 3),     ("Đoan",    "Huỳnh Hiền",               3),     ("Thiên",   "Lâm ",                     3),     ("Phương",  "Trịnh Ngà",                3),
    ("Linh",    "Vương Diệp Thảo Bích",     3),     ("Đạt",     "Lôi Lam",                  3),     ("Linh",    "Võ Giêng Thiên",           3),     ("Khánh",   "Lạc ",                     3),     ("Nhung",   "Phan ",                    3),
    ("Dĩ",      "Lạc Lưu Trí Minh",         4),     ("Duyên",   "Lã Dương Mai",             4),     ("Quân",    "Đường Cảnh Bảo",           4),     ("Triết",   "Võ Mã Khánh Triết",        4),     ("Tài",     "Vũ Cung Hải Quan",         4),
    ("Nhi",     "Mai ",                     4),     ("Hội",     "Nguyễn Ngụy Duy",          4),     ("Kỳ",      "Phùng Phạm Quỳnh",         4),     ("Tú",      "Cao ",                     4),     ("Hiền",    "Mã ",                      4),
    ("My",      "Đường ",                   4),     ("Ân",      "Kiều Phan Tùng Khôi",      4),     ("Hải",     "Hứa Tố",                   4),     ("Đan",     "Vũ Tống Khánh",            4),     ("An",      "Phạm Vũ My Thắm",          4),
    ("Hà",      "Tống Mai",                 4),     ("Chí",     "Viên ",                    4),     ("Sang",    "Cao ",                     4),     ("Toàn",    "Phùng ",                   4),     ("Khải",    "Hồ Lã Triệu",              4),
    ("Ngọc",    "Phó ",                     5),     ("Thiên",   "Vũ Trần Nguyệt Ý",         5),     ("Phát",    "Cung Mã Đăng Bá",          5),     ("Thảo",    "Kiều Bùi Tố",              5),     ("Phụng",   "Hứa Đặng Nhiên Hạ",        5),
    ("Vân",     "Giêng ",                   5),     ("Phương",  "Khương Diệp",              5),     ("Thành",   "Khương Trịnh Ân",          5),     ("Thuận",   "Lý Lê Khoa",               5),     ("Tín",     "Trịnh Hồ Hội Văn",         5),
    ("Điền",    "Lý Khang",                 5),     ("Linh",    "Kiều Ngô Quảng",           5),     ("Dung",    "Đỗ Loan",                  5),     ("An",      "Giêng Quang",              5),     ("Loan",    "Khương ",                  5),
    ("Khánh",   "Đỗ Phó Vĩ",                5),     ("Tân",     "Mai Đỗ Khanh",             5),     ("Trúc",    "Ngô Lý Khả",               5),     ("Thái",    "Ngô Chí",                  5),     ("Kỳ",      "Cảnh Hồ Mi Quỳnh",         5),
    ("Nga",     "Viên Tống Thư Diễm",       6),     ("Uyên",    "Hồ ",                      6),     ("Hoàng",   "Mã Lã Hiển Kiệt",          6),     ("Châm",    "Phan Dương Bảo",           6),     ("Khang",   "Viên Ngô Nhân",            6),
    ("Yến",     "Lương Phùng Như",          6),     ("Chi",     "Hồ Hứa Hiền",              6),     ("Hữu",     "Giêng Cảnh Khôi",          6),     ("Quyên",   "Phan Lý Hiền",             6),     ("Thiên",   "Lý ",                      6),
    ("Khoa",    "Tô Thông",                 6),     ("Nhật",    "Mai ",                     6),     ("Kiến",    "Diệp ",                    6),     ("Trúc",    "Quách Phan Hoa Trà",       6),     ("Bá",      "Quách ",                   6),
    ("Tuyết",   "Hoàng Ngụy Xuân",          6),     ("Ngọc",    "Phan ",                    6),     ("Tuyết",   "Đàm Tâm",                  6),     ("Hương",   "Đàm Bùi My Thư",           6),     ("Đào",     "Mã Lê Thi",                6),
    ("Tiên",    "Lạc ",                     7),     ("Tân",     "Giêng Đinh Kiệt Triết",    7),     ("Tiên",    "Đặng ",                    7),     ("Vĩ",      "Quách Cung Đình Tuyên",    7),     ("Đan",     "Mã ",                      7),
    ("Đình",    "Đỗ Lục Việt Quốc",         7),     ("Đình",    "Cung Cung Đạt Hưng",       7),     ("Quang",   "Phó Lý Vũ Trung",          7),     ("Ân",      "Bùi Lã Đan Vương",         7),     ("Quỳnh",   "Cảnh Nguyễn Hồng",         7),
    ("Nguyên",  "Lôi ",                     7),     ("Oanh",    "Dương Cảnh Quỳnh Phụng",   7),     ("Thy",     "Tô Mỹ",                    7),     ("Diệp",    "Đường ",                   7),     ("Tường",   "Mai Yến",                  7),
    ("Di",      "Nguyễn ",                  7),     ("Tú",      "Ngụy Tiến",                7),     ("Nhung",   "Cung ",                    7),     ("Thơ",     "Ngô Giêng Doanh",          7),     ("Cường",   "Vũ ",                      7),
    ("Hạ",      "Giêng Kiều",               8),     ("Nhân",    "Bùi Dương Đạt",            8),     ("Thuận",   "Hoàng Vũ Dĩ",              8),     ("Tân",     "Đàm Võ Dĩ Lợi",            8),     ("Đan",     "Hứa Lan",                  8),
    ("Ngọc",    "Mai Lưu Tường",            8),     ("Thanh",   "Vũ Linh",                  8),     ("Dung",    "Phó Bình",                 8),     ("Nguyên",  "Mã ",                      8),     ("Châm",    "Cung Huỳnh Thương Oanh",   8),
    ("San",     "Hoàng Mai Trân Nhàn",      8),     ("Loan",    "Phó Trinh",                8),     ("Tường",   "Trịnh ",                   8),     ("Anh",     "Giêng ",                   8),     ("Diệu",    "Mã Trương Thúy",           8),
    ("Hồng",    "Phan Nhã",                 8),     ("Hữu",     "Hoàng Huỳnh Cường Tuấn",   8),     ("Minh",    "Lạc Khang",                8),     ("Đình",    "Diệp Ngô Minh",            8),     ("Ý",       "Võ ",                      8),
    ("Lam",     "Mã ",                      9),     ("Hoàng",   "Lục Tống Tuyên",           9),     ("Lan",     "Phùng Mi",                 9),     ("Lan",     "Khương Khương Chi Tuyền",  9),     ("Nguyên",  "Tô Nhân",                  9),
    ("Mẫn",     "Vũ Vương Nhựt",            9),     ("Giang",   "Trần Hoa",                 9),     ("Huy",     "Cao Khương Bách Tú",       9),     ("Long",    "Khương Cung Đạt Nam",      9),     ("Tấn",     "Viên Tùng",                9),
    ("Tấn",     "Trịnh Khiêm",              9),     ("Nhựt",    "Trịnh Đặng Tín",           9),     ("Đại",     "Ngô ",                     9),     ("Nhân",    "Nguyễn ",                  9),     ("Đăng",    "Đàm Lã Tú",                9),
    ("Thục",    "Lê ",                      9),     ("Bích",    "Mai Cảnh Mỹ Vân",          9),     ("Phương",  "Lâm ",                     9),     ("Uyên",    "Dương Phan Khánh",         9),     ("Trinh",   "Phó Cao My Diệp",          9),
    ("Danh",    "Kiều Viên Khiêm Lợi",      10),    ("Bình",    "Tống Hoàng Anh",           10),    ("Khiêm",   "Đỗ Trường",                10),    ("Thiên",   "Trương Tâm",               10),    ("Thắm",    "Trương Phương",            10),
    ("Gia",     "Cao An",                   10),    ("Thảo",    "Bùi Dương Trúc Nguyệt",    10),    ("Sang",    "Quách ",                   10),    ("Hiền",    "Phùng ",                   10),    ("Doanh",   "Vương Kỳ",                 10),
    ("Hải",     "Vũ Lâm Khang",             10),    ("Diễm",    "Quách ",                   10),    ("Hữu",     "Lâm Hoàng",                10),    ("Lan",     "Giêng Trần Khả Huyền",     10),    ("Kỳ",      "Ngô ",                     10),
    ("Điền",    "Cung Vũ",                  10),    ("Tài",     "Hoàng ",                   10),    ("Nghi",    "Trịnh Khương Tuyết",       10),    ("Kiều",    "Mai Phó Phụng Thy",        10),    ("Mẫn",     "Cao Uyên",                 10),
    ("Bình",    "Diệp Hiền",                11),    ("Trí",     "Vũ Tô Thiện",              11),    ("Nhung",   "Trương Hoàng Diễm",        11),    ("Khải",    "Phùng Kiều Đức Tâm",       11),    ("Thắm",    "Quách ",                   11),
    ("Sơn",     "Lục Tín",                  11),    ("Trà",     "Huỳnh Vy",                 11),    ("Nam",     "Ngô ",                     11),    ("Khánh",   "Huỳnh Nga",                11),    ("Tuyền",   "Tô ",                      11),
    ("Vương",   "Trịnh Ngụy Châu Ân",       11),    ("Nhân",    "Vương ",                   11),    ("Công",    "Nguyễn ",                  11),    ("Quang",   "Lâm Trần Việt",            11),    ("Mạnh",    "Đinh Cao",                 11),
    ("Tín",     "Nguyễn ",                  11),    ("Cường",   "Đặng Lâm Hòa Triệu",       11),    ("Nhã",     "Ngụy Diệp",                11),    ("Ngọc",    "Dương Bích",               11),    ("Khánh",   "Ngụy Phùng Thanh",         11),
    ("Kim",     "Cơ Ngụy Nhã",              12),    ("Ái",      "Lưu Diệp Nhàn",            12),    ("Trúc",    "Cơ Thanh",                 12),    ("Quỳnh",   "Hứa ",                     12),    ("Ý",       "Ngô ",                     12),
    ("Đình",    "Đàm Đường Khanh",          12),    ("Ly",      "Huỳnh Bảo",                12),    ("Đào",     "Lưu Hoa",                  12),    ("Hiếu",    "Cao Pháp",                 12),    ("Bảo",     "Lý Lạc Tấn",               12),
    ("Ngọc",    "Lê Đoan",                  12),    ("Quan",    "Đàm ",                     12),    ("Kỳ",      "Lục Cơ Thủy",              12),    ("Tú",      "Ngụy Hồ Hiền",             12),    ("Ngà",     "Dương ",                   12),
    ("Trung",   "Dương Ngô Toàn",           12),    ("Kiên",    "Lưu ",                     12),    ("Dĩ",      "Hồ ",                      12),    ("Thuận",   "Cơ ",                      12),    ("Phụng",   "Bùi Diễm",                 12),
    ("Lợi",     "Đinh Thiện",               13),    ("Kiến",    "Hứa Lương Quảng Kiến",     13),    ("Hồng",    "Lưu Phạm Phượng",          13),    ("Thục",    "Trịnh ",                   13),    ("Vĩ",      "Quách Lâm Tài",            13),
    ("Anh",     "Ngụy ",                    13),    ("Sang",    "Giêng Lam",                13),    ("Đan",     "Phó Bùi Mẫn Vy",           13),    ("Nghĩa",   "Vương ",                   13),    ("Lam",     "Đàm Cơ Ý Hà",              13),
    ("Huy",     "Đường Hòa",                13),    ("Vĩ",      "Nguyễn Phó Luân Vinh",     13),    ("Bình",    "Đỗ Bùi Nga Thi",           13),    ("Xuân",    "Nguyễn Cung Đào",          13),    ("Dĩ",      "Ngô Tống Bá Trọng",        13),
    ("Đoan",    "Lâm ",                     13),    ("Ấn",      "Khương Lưu Chí Xuân",      13),    ("Tú",      "Kiều Lý Triệu Gia",        13),    ("Đoan",    "Cung Diệp Trúc Thục",      13),    ("Đoan",    "Tô ",                      13),
    ("Mi",      "Hứa Phượng",               14),    ("Ánh",     "Hứa Phùng Nhung",          14),    ("Kim",     "Lưu Tô Hiếu",              14),    ("Diễm",    "Viên Thương",              14),    ("Hội",     "Cung Tiến",                14),
    ("Tùng",    "Đinh Cung Nhân",           14),    ("Phương",  "Đặng Đinh Thái Khải",      14),    ("Bách",    "Trương ",                  14),    ("Kỳ",      "Giêng Viên Oanh",          14),    ("Trân",    "Phạm Lục Anh Trâm",        14),
    ("Phát",    "Giêng Đỗ Công Chấn",       14),    ("Diệp",    "Đàm Khoa",                 14),    ("Bích",    "Cao ",                     14),    ("Vinh",    "Đinh Cơ Ân",               14),    ("Lâm",     "Mai Pháp",                 14),
    ("Nam",     "Đường Đường Khanh Tú",     14),    ("Khoa",    "Cảnh ",                    14),    ("Hưng",    "Tô An",                    14),    ("Đức",     "Trần Khương Ấn Cường",     14),    ("Triệu",   "Cao Trần Thiên Vĩ",        14),
    ("Tấn",     "Đỗ Lê Thiện Cường",        15),    ("Huy",     "Quách Vương Sang Tín",     15),    ("Châu",    "Vũ Ngụy Ngọc Tín",         15),    ("Nhân",    "Giêng ",                   15),    ("Vân",     "Trần Hà",                  15),
    ("Đông",    "Đỗ ",                      15),    ("Huy",     "Vương Thái",               15),    ("Bảo",     "Kiều ",                    15),    ("Diệp",    "Cao Thương",               15),    ("Thiện",   "Lục ",                     15),
    ("Tân",     "Mã ",                      15),    ("Hiếu",    "Huỳnh ",                   15),    ("Phối",    "Lã Tiên",                  15),    ("Kiến",    "Dương Huỳnh Tân Chấn",     15),    ("Nhàn",    "Hoàng ",                   15),
    ("Tín",     "Lâm Khương Quan",          15),    ("Tín",     "Phan ",                    15),    ("Ấn",      "Vương ",                   15),    ("Mi",      "Viên Cao Trang Kỳ",        15),    ("Kim",     "Khương ",                  15),
    ("Ân",      "Ngô ",                     16),    ("Dũng",    "Vương Lục Dương",          16),    ("Hạ",      "Mã Trang",                 16),    ("Mỹ",      "Võ Hương",                 16),    ("Hưng",    "Diệp Giêng Danh Đông",     16),
    ("Dĩ",      "Đinh Lý Tuyên Hiếu",       16),    ("Trọng",   "Đường Đường Minh",         16),    ("Thy",     "Trương Vũ Mi Uyên",        16),    ("Sơn",     "Đỗ Phùng Thành",           16),    ("Hạ",      "Vũ Mỹ",                    16),
    ("Bá",      "Khương Phạm Trung",        16),    ("Thi",     "Đường Phó Kim",            16),    ("Ánh",     "Ngụy Trịnh Diệp My",       16),    ("Hải",     "Vương Cung Tâm",           16),    ("Đan",     "Bùi Lý Khả Trúc",          16),
    ("Anh",     "Tô Đàm Trinh",             16),    ("Tâm",     "Quách Tiên",               16),    ("Duy",     "Lạc Giêng Quan Thắng",     16),    ("Kỳ",      "Lôi Tống Hiển Kiên",       16),    ("Tài",     "Đặng ",                    16),
    ("Khoa",    "Trịnh Kiệt",               17),    ("Khả",     "Tống Đinh Ngân Phối",      17),    ("Khiêm",   "Lê ",                      17),    ("Đăng",    "Ngô Mã Thiên",             17),    ("Thịnh",   "Lý ",                      17),
    ("Quyên",   "Lâm Hoàng Hân",            17),    ("Quốc",    "Trịnh Tô Quang",           17),    ("Tuyết",   "Dương Khương Mai",         17),    ("Trúc",    "Vương ",                   17),    ("Ngọc",    "Lê Đường Thanh Thùy",      17),
    ("Khải",    "Trịnh Khiêm",              17),    ("Tố",      "Vương Vũ Diễm",            17),    ("Ái",      "Mã Vương Ánh Hồng",        17),    ("Thúy",    "Lưu ",                     17),    ("Chấn",    "Giêng Đinh Hội Kiên",      17),
    ("Khuê",    "Cung Quách Trúc",          17),    ("Hồng",    "Hứa Diệp",                 17),    ("Ngân",    "Ngụy Phan Dương",          17),    ("Quang",   "Vũ ",                      17),    ("Hậu",     "Đường Huỳnh Pháp",         17),
    ("Vân",     "Đường Lê Thư Ái",          18),    ("Khả",     "Đàm Trần Quyên Quyên",     18),    ("Thy",     "Ngô Võ Uyên",              18),    ("Nhật",    "Khương ",                  18),    ("Phú",     "Cung Bùi Vĩ",              18),
    ("An",      "Kiều Thảo",                18),    ("Kim",     "Nguyễn Trịnh Nga Hà",      18),    ("Khánh",   "Cung Phạm Lan Kiều",       18),    ("Tài",     "Đường ",                   18),    ("Quyên",   "Cung Hồ Ý",                18),
    ("Hiển",    "Hứa ",                     18),    ("Toàn",    "Cung Cường",               18),    ("Loan",    "Ngô Mai Dung Thy",         18),    ("Gia",     "Bùi Bùi Trà Châu",         18),    ("Trinh",   "Cơ Cung Đoan An",          18),
    ("Huy",     "Lã ",                      18),    ("Đình",    "Đàm Trương Cao Khoa",      18),    ("Thư",     "Lục ",                     18),    ("Diệp",    "Lôi Thảo",                 18),    ("Phượng",  "Lý Vương Ánh Tiên",        18),
    ("Nguyệt",  "Hứa Quách Ngọc",           19),    ("Ngọc",    "Lôi ",                     19),    ("Ngọc",    "Trịnh Phan Thy",           19),    ("Tuyền",   "Nguyễn Thúy",              19),    ("Trâm",    "Lê Mai Trang",             19),
    ("Chi",     "Trịnh Đinh Anh",           19),    ("Thi",     "Nguyễn Mẫn",               19),    ("Pháp",    "Kiều ",                    19),    ("Phát",    "Lục Cảnh Phong",           19),    ("Toàn",    "Phó Võ Trọng Phúc",        19),
    ("Thục",    "Phó Đinh Quyên",           19),    ("Trang",   "Hồ Phó Hoa Nhiên",         19),    ("Hậu",     "Đỗ Diệp Nhân Hậu",         19),    ("Phụng",   "Lê Phùng Trà",             19),    ("Bá",      "Phạm Trần Khiêm",          19),
    ("Doanh",   "Lôi Tường",                19),    ("Thông",   "Phó Trịnh Đức Kỳ",         19),    ("Thúy",    "Ngụy Châm",                19),    ("Nhàn",    "Đinh ",                    19),    ("Nguyệt",  "Võ Đàm Mi",                19),
    ("Kiều",    "Kiều Cung Cát Tiên",       20),    ("Diệu",    "Lưu ",                     20),    ("Nhã",     "Lương Minh",               20),    ("Khuê",    "Võ Hoa",                   20),    ("Tiên",    "Lý ",                      20),
    ("Duy",     "Cung ",                    20),    ("Tâm",     "Phó Cảnh Uyên Uyên",       20),    ("Minh",    "Vương ",                   20),    ("Huyền",   "Viên Lý An Châu",          20),    ("Uy",      "Trịnh Tuấn",               20),
    ("Hiển",    "Hồ Đường Sơn",             20),    ("Phong",   "Đặng Hòa",                 20),    ("Kỳ",      "Bùi An",                   20),    ("Hiếu",    "Lưu Lâm Đại",              20),    ("Nhàn",    "Lưu ",                     20),
    ("Tú",      "Quách Kim",                20),    ("Vy",      "Tống ",                    20),    ("Hậu",     "Phó Đông",                 20),    ("Kỳ",      "Bùi Gia",                  20),    ("Trường",  "Tô Đình",                  20),
    ("Tuyết",   "Nguyễn Kiều Thục Linh",    21),    ("Mỹ",      "Đàm Lôi Dung",             21),    ("Ngà",     "Bùi Xuân",                 21),    ("Kiên",    "Diệp Lâm Dĩ",              21),    ("Phong",   "Phó Tống Gia Khải",        21),
    ("Hưng",    "Lạc Trần Khanh Lợi",       21),    ("Luân",    "Bùi Lê Thanh",             21),    ("Mẫn",     "Cung Phan Thùy Bích",      21),    ("Hậu",     "Dương Ngô Dương",          21),    ("Thắm",    "Ngô ",                     21),
    ("Đại",     "Lương ",                   21),    ("Chí",     "Ngụy Khải",                21),    ("Thái",    "Đỗ ",                      21),    ("Dung",    "Giêng Vương Loan",         21),    ("Đức",     "Lôi Cao Khiêm Thiện",      21),
    ("Minh",    "Tống Quách Khôi Quan",     21),    ("Ánh",     "Viên ",                    21),    ("Khang",   "Mã ",                      21),    ("Chi",     "Lương Mã Yến Vân",         21),    ("Quảng",   "Lôi ",                     21),
    ("Toàn",    "Hồ Lưu Sơn Mạnh",          22),    ("Nghĩa",   "Vương Lạc Đông Triết",     22),    ("Liên",    "Dương Diệu",               22),    ("Kỳ",      "Đường Cung Phượng Thục",   22),    ("Vượng",   "Cung Nam",                 22),
    ("Minh",    "Lương Cao Tuyền",          22),    ("Thành",   "Diệp Cường",               22),    ("Triệu",   "Phan Mạnh",                22),    ("Khanh",   "Lương Chấn",               22),    ("Thắm",    "Đường Viên Ngọc",          22),
    ("Đan",     "Lã Kiều",                  22),    ("Chi",     "Viên Nhi",                 22),    ("Cao",     "Đặng ",                    22),    ("Huyền",   "Tống Cảnh Loan Hà",        22),    ("Ánh",     "Hồ ",                      22),
    ("Ngân",    "Giêng Hải",                22),    ("Diệp",    "Khương ",                  22),    ("Thanh",   "Ngô ",                     22),    ("Trí",     "Mai ",                     22),    ("Trung",   "Mai ",                     22)
;

insert into `class`
    (`start_session`,   `end_session`,  `start_date`,   `end_date`,     `lecturer_id`,  `course_id`,    `classroom_id`)
values
-- Công nghệ thông tin
    (1,                 5,              "2022-02-26",   "2022-05-15",   8,              7,              117),
    (7,                 11,             "2022-02-26",   "2022-05-15",   5,              7,              117),
    (1,                 6,              "2022-02-26",   "2022-05-15",   9,              37,             117),
    (7,                 12,             "2022-02-26",   "2022-05-15",   7,              37,             117),
    (1,                 6,              "2022-02-16",   "2022-05-25",   7,              59,             116),
    (7,                 12,             "2022-02-17",   "2022-05-26",   3,              59,             116),
    (1,                 6,              "2022-02-16",   "2022-05-25",   5,              44,             118),
    (7,                 12,             "2022-02-16",   "2022-05-25",   3,              44,             118),
    (1,                 5,              "2022-03-02",   "2022-05-30",   2,              36,             112),
    (7,                 11,             "2022-03-02",   "2022-05-30",   8,              36,             112),
    (1,                 6,              "2022-09-19",   "2022-11-06",   5,              41,             113),
    (7,                 12,             "2022-09-19",   "2022-11-06",   5,              41,             113),
    (1,                 6,              "2022-09-20",   "2022-11-07",   5,              41,             113),
    (1,                 5,              "2022-03-14",   "2022-05-04",   5,              105,            44),
    (7,                 11,             "2022-03-14",   "2022-05-04",   8,              105,            44),
    (1,                 5,              "2022-03-13",   "2022-05-16",   10,             104,            85),
    (7,                 11,             "2022-03-13",   "2022-05-16",   8,              104,            85),
    (1,                 5,              "2022-09-04",   "2022-10-23",   9,              103,            63),
    (1,                 5,              "2022-09-05",   "2022-10-24",   8,              103,            63),
    (1,                 5,              "2022-02-25",   "2022-04-02",   1,              106,            85),
    (7,                 11,             "2022-02-25",   "2022-04-02",   10,             106,            85),
    (1,                 5,              "2022-02-25",   "2022-04-02",   2,              106,            88),
    (2,                 6,              "2023-09-09",   "2022-10-24",   2,              11,             113),
    (1,                 5,              "2023-09-08",   "2022-10-23",   3,              11,             113),
    (7,                 9,              "2023-09-06",   "2023-10-24",   1,              33,             117),
    (1,                 3,              "2023-09-06",   "2023-10-24",   3,              33,             117),
    (1,                 5,              "2023-02-28",   "2022-04-03",   3,              19,             102),
    (7,                 11,             "2023-02-28",   "2022-04-03",   8,              19,             102),
    (1,                 5,              "2023-03-02",   "2022-04-23",   3,              35,             112),
    (7,                 11,             "2023-03-02",   "2022-04-23",   1,              35,             112),
    (1,                 5,              "2023-09-06",   "2023-11-22",   3,              23,             95),
    (7,                 11,             "2023-09-06",   "2023-11-22",   3,              23,             95),
    (1,                 6,              "2022-09-30",   "2022-11-05",   5,              53,             74),
    (7,                 12,             "2022-09-30",   "2022-11-05",   1,              53,             74),
    (1,                 6,              "2022-09-29",   "2022-11-04",   9,              53,             75),
    (2,                 6,              "2022-09-29",   "2022-11-03",   10,             10,             104),
    (8,                 12,             "2022-09-29",   "2022-11-03",   7,              10,             104),
    (2,                 6,              "2022-09-30",   "2022-11-05",   4,              10,             104),
    (8,                 12,             "2022-09-30",   "2022-11-04",   5,              10,             104),
    (1,                 5,              "2023-09-19",   "2023-10-30",   3,              4,              112),
    (7,                 11,             "2023-09-19",   "2023-10-30",   7,              4,              112),
    (1,                 5,              "2023-09-18",   "2023-10-29",   5,              4,              112),
    (1,                 3,              "2023-03-02",   "2023-04-12",   9,              54,             78),
    (4,                 6,              "2023-03-02",   "2023-04-12",   3,              54,             78),
    (1,                 3,              "2023-09-22",   "2023-11-05",   10,             69,             95),
    (4,                 6,              "2023-09-22",   "2023-11-05",   5,              69,             95),
-- Giáo dục chính trị
    (1,                 6,              "2022-02-13",   "2022-03-22",   29,             77,             64),
    (7,                 12,             "2022-02-13",   "2022-03-22",   28,             77,             64),
    (1,                 6,              "2023-02-12",   "2022-03-21",   25,             77,             65),
    (7,                 12,             "2023-02-12",   "2022-03-21",   21,             77,             65),
    (1,                 5,              "2022-02-14",   "2022-03-29",   21,             78,             46),
    (7,                 11,             "2022-02-14",   "2022-03-29",   25,             78,             46),
    (2,                 6,              "2022-02-15",   "2022-03-30",   21,             78,             47),
    (7,                 11,             "2022-02-15",   "2022-03-30",   26,             78,             47),
    (1,                 5,              "2022-03-10",   "2022-04-14",   27,             74,             67),
    (7,                 11,             "2022-03-10",   "2022-04-14",   22,             74,             67),
    (1,                 5,              "2022-03-11",   "2022-04-15",   21,             74,             66),
    (1,                 5,              "2022-09-20",   "2022-11-26",   28,             75,             74),
    (7,                 11,             "2022-09-20",   "2022-11-26",   27,             75,             74),
    (2,                 6,              "2022-09-19",   "2022-11-25",   25,             75,             75),
    (1,                 6,              "2023-02-27",   "2023-03-30",   26,             76,             13),
    (7,                 12,             "2023-02-27",   "2023-03-30",   21,             76,             13),
    (1,                 6,              "2023-02-26",   "2023-03-29",   22,             76,             14),
    (7,                 12,             "2023-02-26",   "2023-03-29",   28,             76,             14),
    (1,                 6,              "2023-02-25",   "2023-03-28",   21,             76,             15),
-- giáo dục quốc phòng
    (1,                 4,              "2022-02-15",   "2022-03-15",   56,             80,             1),
    (1,                 4,              "2022-03-22",   "2022-04-22",   54,             80,             1),
    (1,                 4,              "2022-03-12",   "2022-04-12",   58,             80,             2),
    (1,                 4,              "2022-09-16",   "2022-10-21",   55,             79,             5),
    (7,                 10,             "2022-09-16",   "2022-10-21",   55,             79,             5),
    (1,                 4,              "2022-09-14",   "2022-10-19",   54,             79,             6),
    (7,                 10,             "2022-09-14",   "2022-10-19",   59,             79,             6),
    (1,                 5,              "2023-02-11",   "2023-03-18",   60,             82,             7),
    (7,                 11,             "2023-02-11",   "2023-03-18",   58,             82,             7),
    (1,                 5,              "2023-02-12",   "2023-03-19",   55,             82,             8),
    (1,                 5,              "2023-03-24",   "2023-05-01",   58,             82,             8),
    (1,                 6,              "2023-09-02",   "2023-10-07",   57,             81,             3),
    (7,                 12,             "2023-09-02",   "2023-10-07",   60,             81,             3),
    (1,                 6,              "2023-09-01",   "2023-10-06",   54,             81,             4),
    (7,                 12,             "2023-09-01",   "2023-10-06",   59,             81,             4),
-- Giáo dục Thể chất
    (1,                 3,              "2022-02-17",   "2022-03-20",   72,             83,             122),
    (4,                 6,              "2022-02-17",   "2022-03-20",   78,             83,             122),
    (7,                 9,              "2022-02-17",   "2022-03-20",   72,             83,             122),
    (1,                 3,              "2022-09-18",   "2022-11-04",   76,             88,             121),
    (4,                 6,              "2022-09-18",   "2022-11-04",   75,             88,             121),
    (1,                 3,              "2022-09-16",   "2022-11-02",   74,             86,             121),
    (4,                 6,              "2022-09-16",   "2022-11-02",   80,             86,             121),
    (1,                 3,              "2022-09-16",   "2022-11-02",   76,             89,             121),
    (4,                 6,              "2022-09-16",   "2022-11-02",   78,             89,             121),
    (1,                 3,              "2023-03-10",   "2023-04-30",   72,             97,             121),
    (4,                 6,              "2023-03-10",   "2023-04-30",   73,             97,             121),
    (1,                 3,              "2023-03-16",   "2023-04-02",   76,             95,             122),
    (7,                 9,              "2023-03-16",   "2023-04-02",   75,             95,             122),
    (1,                 3,              "2023-03-20",   "2023-04-25",   80,             98,             121),
    (1,                 3,              "2023-03-20",   "2023-04-25",   72,             98,             121),
-- tiếng Anh
    (2,                 6,              "2022-02-13",   "2022-04-21",   151,            107,            10),
    (8,                 12,             "2022-02-13",   "2022-04-21",   151,            107,            10),
    (2,                 6,              "2022-02-14",   "2022-04-22",   152,            107,            10),
    (1,                 5,              "2022-09-19",   "2022-11-23",   158,            108,            11),
    (1,                 5,              "2022-09-22",   "2022-11-27",   152,            108,            11),
    (1,                 5,              "2022-09-19",   "2022-11-23",   159,            108,            11),
    (1,                 6,              "2023-02-23",   "2023-04-14",   152,            109,            12),
    (7,                 12,             "2023-02-23",   "2023-04-14",   152,            109,            12)
;

insert into `registration_results`
    (`timestamp`,   `student_id`,   `class_id`)
values
    ("2023-12-23",  1,      101),   ("2023-12-23",  1,  93),    ("2023-12-23",  1,  79),    ("2023-12-23",  1,  5),     ("2023-12-23",  1,  9), 
    ("2023-12-23",  2,      57),    ("2023-12-23",  2,  89),    ("2023-12-23",  2,  45),    ("2023-12-23",  2,  98),    ("2023-12-23",  2,  23),
    ("2023-12-23",  3,      1),     ("2023-12-23",  3,  4),     ("2023-12-23",  3,  77),    ("2023-12-23",  3,  83),    ("2023-12-23",  3,  52),
    ("2023-12-23",  4,      69),    ("2023-12-23",  4,  18),    ("2023-12-23",  4,  1),     ("2023-12-23",  4,  61),    ("2023-12-23",  4,  73),
    ("2023-12-23",  5,      61),    ("2023-12-23",  5,  33),    ("2023-12-23",  5,  22),    ("2023-12-23",  5,  85),    ("2023-12-23",  5,  97),
    ("2023-12-23",  6,      49),    ("2023-12-23",  6,  68),    ("2023-12-23",  6,  49),    ("2023-12-23",  6,  26),    ("2023-12-23",  6,  85),
    ("2023-12-23",  7,      78),    ("2023-12-23",  7,  32),    ("2023-12-23",  7,  25),    ("2023-12-23",  7,  69),    ("2023-12-23",  7,  50),
    ("2023-12-23",  8,      22),    ("2023-12-23",  8,  13),    ("2023-12-23",  8,  48),    ("2023-12-23",  8,  87),    ("2023-12-23",  8,  32),
    ("2023-12-23",  9,      94),    ("2023-12-23",  9,  24),    ("2023-12-23",  9,  82),    ("2023-12-23",  9,  34),    ("2023-12-23",  9,  94),
    ("2023-12-23",  10,     90),    ("2023-12-23",  10, 13),    ("2023-12-23",  10, 61),    ("2023-12-23",  10, 36),    ("2023-12-23",  10, 67),
    ("2023-12-23",  11,     38),    ("2023-12-23",  11, 87),    ("2023-12-23",  11, 85),    ("2023-12-23",  11, 36),    ("2023-12-23",  11, 97),
    ("2023-12-23",  12,     19),    ("2023-12-23",  12, 1),     ("2023-12-23",  12, 2),     ("2023-12-23",  12, 87),    ("2023-12-23",  12, 63),
    ("2023-12-23",  13,     52),    ("2023-12-23",  13, 4),     ("2023-12-23",  13, 99),    ("2023-12-23",  13, 55),    ("2023-12-23",  13, 100),
    ("2023-12-23",  14,     50),    ("2023-12-23",  14, 10),    ("2023-12-23",  14, 2),     ("2023-12-23",  14, 52),    ("2023-12-23",  14, 51),
    ("2023-12-23",  15,     76),    ("2023-12-23",  15, 6),     ("2023-12-23",  15, 9),     ("2023-12-23",  15, 55),    ("2023-12-23",  15, 73),
    ("2023-12-23",  16,     91),    ("2023-12-23",  16, 103),   ("2023-12-23",  16, 41),    ("2023-12-23",  16, 88),    ("2023-12-23",  16, 29),
    ("2023-12-23",  17,     6),     ("2023-12-23",  17, 40),    ("2023-12-23",  17, 7),     ("2023-12-23",  17, 73),    ("2023-12-23",  17, 67),
    ("2023-12-23",  18,     81),    ("2023-12-23",  18, 83),    ("2023-12-23",  18, 54),    ("2023-12-23",  18, 37),    ("2023-12-23",  18, 72),
    ("2023-12-23",  19,     60),    ("2023-12-23",  19, 27),    ("2023-12-23",  19, 64),    ("2023-12-23",  19, 93),    ("2023-12-23",  19, 98),
    ("2023-12-23",  20,     77),    ("2023-12-23",  20, 31),    ("2023-12-23",  20, 78),    ("2023-12-23",  20, 31),    ("2023-12-23",  20, 73),
    ("2023-12-23",  21,     30),    ("2023-12-23",  21, 20),    ("2023-12-23",  21, 57),    ("2023-12-23",  21, 32),    ("2023-12-23",  21, 63),
    ("2023-12-23",  22,     76),    ("2023-12-23",  22, 19),    ("2023-12-23",  22, 28),    ("2023-12-23",  22, 96),    ("2023-12-23",  22, 39)
;