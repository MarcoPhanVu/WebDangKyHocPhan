use user_course_registration;

delete from faculty;
delete from course;
delete from classroom;
delete from lecturer;
delete from student;
delete from class;
delete from registration_results;

insert into faculty
    (name)
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

insert into lecturer
    (name,                              faculty_id)
values
    ("Cao Quan",                        1),      ("Giêng Ngụy Dung Diễm Mẫn",        1),      ("Vương Ngọc Trúc",                 1),      ("Mã Thiện Bá",                     1),      ("Viên Ý Thương",                   1),
    ("Lương Lưu Ngọc Uyên",             1),      ("Phùng Thiên Ngọc",                1),      ("Phùng Mạnh",                      1),      ("Lương Dương Khoa Sang",           1),      ("Tống Lưu Hân Trinh San",          1),
    ("Lục Ngân",                        2),      ("Phó Hoàng Minh Ngà Quyên",        2),      ("Hồ Lôi Yến Trâm",                 2),      ("Lục Cảnh Mỹ Ánh",                 2),      ("Lã Cao Tường Tuyên",              2),     
    ("Trịnh Hồ Hiếu Thành",             2),      ("Lạc Hồng Bích",                   2),      ("Hoàng Cơ Giang Hương Vân",        2),      ("Đàm Trương Diễm Thúy Mẫn",        2),      ("Vương Ngô Tiến Lộc Nhật",         2),     
    ("Đường Ly",                        3),      ("Cảnh Phùng Khả Khánh Loan",       3),      ("Lê Uy Pháp",                      3),      ("Hồ Mạnh",                         3),      ("Đinh Quách Phượng Uyên Trinh",    3),     
    ("Lâm Trịnh Trọng Sang Vĩ",         3),      ("Cao Dương Pháp",                  3),      ("Cơ Đặng Đan Phi",                 3),      ("Giêng Tô Hoa Thủy Oanh",          3),      ("Trương Đỗ Mỹ Oanh",               3),     
    ("Tô Linh Quân",                    4),      ("Hoàng Trâm",                      4),      ("Lã Đường Tố Diệu",                4),      ("Hồ Đặng Minh Hạnh",               4),      ("Lã Lôi Vinh Khôi",                4),     
    ("Tống Nhật Chiến",                 4),      ("Trương Lâm Ngọc",                 4),      ("Trần Dương Vĩ Công",              4),      ("Cảnh Thắm Ân",                    4),      ("Dương Đinh Quốc Tường",           4),     
    ("Lâm Nguyễn Anh Nguyên",           5),      ("Ngụy Võ Tuyết Dương Ánh",         5),      ("Phùng Toàn Tùng",                 5),      ("Ngụy Lộc Quảng",                  5),      ("Lục Bùi Anh Đan",                 5),     
    ("Lâm Giêng Ấn Tuyên",              5),      ("Dương Nhung Phối",                5),      ("Hồ Phó Bá Duy Kiên",              5),      ("Bùi Tô Phong Thanh",              5),      ("Mai Diệp Kỳ Hữu",                 5),     
    ("Đường Đặng Nguyệt Trân",          6),      ("Cảnh Nam",                        6),      ("Lã Bích Dung",                    6),      ("Phan Vương Lâm Gia",              6),      ("Hồ Khoa Bách",                    6),
    ("Lâm Đức",                         6),      ("Lã Kim Tín",                      6),      ("Phan Tô Huy Toàn",                6),      ("Lã Trường Triết",                 6),      ("Cảnh Nguyễn Hưng Danh",           6),     
    ("Cao Khoa",                        7),      ("Nguyễn Hậu Hưng",                 7),      ("Lý Khải",                         7),      ("Mã Phó Như Mẫn Hạnh",             7),      ("Mai Mã Xuân Mẫn Xuân",            7),     
    ("Quách Hằng",                      7),      ("Trương Nguyễn Di Hân",            7),      ("Huỳnh Lạc Dũng Pháp Phú",         7),      ("Lương Nhung",                     7),      ("Hứa Tùng",                        7),
    ("Ngô Đinh Luân Thắng",             8),      ("Trương Vũ Tấn Nguyên Hậu",        8),      ("Giêng Kỳ Xuân",                   8),      ("Mã Nguyệt Trang",                 8),      ("Ngô Nhã An",                      8),     
    ("Viên Phụng Ly",                   8),      ("Diệp Phó Quyên Đan Hân",          8),      ("Trần Loan Châm",                  8),      ("Đặng Lý Hiển Toàn",               8),      ("Lạc Đặng Hân Quyên",              8),     
    ("Ngụy Lạc Nhàn Hoa",               9),      ("Mã Quách Chấn Lam",               9),      ("Tống Lã Uy Pháp",                 9),      ("Lê Khanh Đăng",                   9),      ("Ngô Trần Thuận Kỳ Trường",        9),     
    ("Ngô Thảo",                        9),      ("Nguyễn Thơ",                      9),      ("Đặng Lê Thuận Toàn",              9),      ("Phó Ý Tuyền",                     9),      ("Vương Lôi Vân Hồng Thùy",         9),     
    ("Lạc Vương Đạt",                   10),     ("Lôi Lưu Việt Dũng",               10),     ("Hoàng Công Phước",                10),     ("Cơ Trần Tú Khôi",                 10),     ("Lý Đặng Thục Nhung",              10),    
    ("Đàm Trương Thúy Trang",           10),     ("Quách Lưu Cao Hùng Quang",        10),     ("Viên Quách Sang Thuận",           10),     ("Mã Hoa Bích",                     10),     ("Đường Quyên",                     10),
    ("Cảnh Trần Giang Thi",             11),     ("Lưu Hứa Nhật Thịnh",              11),     ("Đàm Ngọc Uy",                     11),     ("Phan Vũ Mai Bình",                11),     ("Phó Trường",                      11),    
    ("Trần Vũ Hiển Tín",                11),     ("Quách Hạ Hà",                     11),     ("Lạc Vũ Khải Đan Đan",             11),     ("Dương Phó Bách Thắng",            11),     ("Kiều Bách",                       11),    
    ("Lạc Hậu",                         12),     ("Lương Lộc",                       12),     ("Võ Lưu Tâm Khuê",                 12),     ("Phan Như",                        12),     ("Ngụy Võ Châm Nhiên",              12),
    ("Tống Đinh Phối Thy Bích",         12),     ("Mã Dương Luân Nhân",              12),     ("Đặng Trinh",                      12),     ("Giêng Phạm Trường Quan Tường",    12),     ("Giêng Ngô Nga Nghi",              12),    
    ("Cơ Diệp Hằng Loan Hạnh",          13),     ("Phùng Anh Ý",                     13),     ("Khương Phùng Huy Nghĩa Hiệp",     13),     ("Bùi Lương Diệu Dương",            13),     ("Đỗ Triết",                        13),    
    ("Dương Tín",                       13),     ("Phùng Mẫn Sang",                  13),     ("Viên Mã Quyên Kiều",              13),     ("Giêng Lưu Khôi Dĩ",               13),     ("Đàm Thơ",                         13),    
    ("Hoàng Diễm",                      14),     ("Hứa Bích Tường",                  14),     ("Lưu Châm Dung",                   14),     ("Trần Đỗ Vĩ Cao Tín",              14),     ("Lôi Cát Nga",                     14),    
    ("Cao Long Phương",                 14),     ("Huỳnh Lâm Cát Uyên Nhàn",         14),     ("Đàm Phương",                      14),     ("Giêng Dương Ly Thùy Vân",         14),     ("Trương Thy",                      14),    
    ("Viên Đạt Tuyên",                  15),     ("Viên Nhân",                       15),     ("Trần Tố Gia",                     15),     ("Phạm Phan Thơ Thảo",              15),     ("Phan Phan Bá Đức Hiếu",           15),    
    ("Hứa Vương Loan Hân",              15),     ("Hứa Nhật Hoàng",                  15),     ("Tô Phước",                        15),     ("Đường Bá",                        15),     ("Phùng Trí",                       15),
    ("Lôi Mã Vương Thiện Vương",        16),     ("Trương Ngọc Lộc",                 16),     ("Cung Lâm Phối Châm Thục",         16),     ("Cảnh Nhung",                      16),     ("Hồ Cơ Nhàn Thư Mẫn",              16),    
    ("Ngụy Ngô Nguyên Thái Công",       16),     ("Đàm Loan Thục",                   16),     ("Cung Lâm Trà Ánh",                16),     ("Cơ Hứa Quỳnh Ý",                  16),     ("Giêng Bảo",                       16),    
    ("Hồ Trí Hưng",                     17),     ("Huỳnh Doanh",                     17),     ("Viên Phương Thanh",               17),     ("Cơ Phương",                       17),     ("Khương Trung",                    17),    
    ("Cơ Phó Tú Bích",                  17),     ("Đàm Đinh Vân Tâm",                17),     ("Giêng An",                        17),     ("Lý Thủy Tú",                      17),     ("Vương Bùi Thắm Hà",               17),
    ("Trịnh Dũng",                      18),     ("Lạc Mã Hoa Hoa Linh",             18),     ("Quách Chí Kiên",                  18),     ("Tống Lạc Tiên Ly Khuê",           18),     ("Đỗ Bình",                         18),    
    ("Đinh Hứa Phối Trân",              18),     ("Mai Huỳnh Đào Phụng Minh",        18),     ("Lục Quách Minh Ấn",               18),     ("Giêng Ánh Vy",                    18),     ("Cung Đông Toàn",                  18),    
    ("Bùi Lạc Cát Tường",               19),     ("Lục Minh",                        19),     ("Cảnh Hải Thục",                   19),     ("Bùi Lê Hân Nhiên",                19),     ("Tống Lưu Thế Bá Mẫn",             19),    
    ("Cơ Nhã Thùy",                     19),     ("Hồ Đinh Xuân Thy",                19),     ("Viên Xuân Danh",                  19),     ("Trần Hồ Ngân Dung",               19),     ("Cơ Võ Khoa Dũng Khoa",            19),
    ("Phùng Hạ",                        20),     ("Phùng Vũ My Thi Trà",             20),     ("Đặng Vương Kim Phúc Sơn",         20),     ("Trương Bách",                     20),     ("Phùng Đan",                       20),    
    ("Mã Liên",                         20),     ("Trịnh Vương Thành Lam Anh",       20),     ("Hồ Đình",                         20),     ("Mai Nga Thiên",                   20),     ("Quách Mã Gia Hiệp Khánh",         20),    
    ("Cơ Trần Hạ Diễm Thy",             21),     ("Kiều Ngụy Bảo Phi Công",          21),     ("Kiều Đại Tùng",                   21),     ("Đỗ Khả",                          21),     ("Phó Hải Hương",                   21),
    ("Nguyễn Lục Phong Đình",           21),     ("Trịnh Hoa",                       21),     ("Lâm Minh",                        21),     ("Ngô Đàm Thúy Hạnh",               21),     ("Hồ Nhựt",                         21),    
    ("Phó Thế Mẫn",                     22),     ("Lạc Thanh Vương",                 22),     ("Đỗ Phùng Nhi Xuân Ly",            22),     ("Lôi Thủy",                        22),     ("Cơ Chấn",                         22),
    ("Lương Đường Hạ Quyên Nhàn",       22),     ("Cao Mẫn",                         22),     ("Đỗ Nhàn Châu",                    22),     ("Lưu Cơ Hòa Đức Luân",             22),     ("Cơ Đàm Hiếu Tường",               22)
;

insert into student
    (firstname,	lastname,				    faculty_id)
values
    ("Vĩ",      "Lạc ",                     1),      ("Kiệt",    "Vũ Linh",                  1),      ("Phát",    "Đường Khải",               1),      ("Vượng",   "Mã Linh",                  1),      ("Ân",      "Tô Ý",                     1),
    ("Lam",     "Lưu ",                     1),      ("Tố",      "Phan Khả",                 1),      ("Khiêm",   "Đinh Lý Tùng",             1),      ("Huyền",   "Hoàng Nhiên",              1),      ("Điền",    "Cảnh Đàm Danh",            1),     
    ("Kỳ",      "Lâm Phó Hồng",             1),      ("Cường",   "Hồ Đặng Lộc Cao",          1),      ("Huy",     "Vương ",                   1),      ("Hà",      "Hứa ",                     1),      ("Thảo",    "Phó ",                     1),     
    ("Thi",     "Cơ Phạm Trúc",             1),      ("Yến",     "Trịnh Thơ",                1),      ("Nghi",    "Ngô Lê Hà",                1),      ("Hương",   "Lôi Khương Oanh Hồng",     1),      ("Thông",   "Võ Xuân",                  1),     
    ("Trường",  "Đàm Hoàng Trung Đại",      2),      ("Dung",    "Cao Phan Nga Đan",         2),      ("Giang",   "Đặng Kiều Trân Thắm",      2),      ("Ly",      "Lã ",                      2),      ("Phúc",    "Trần ",                    2),
    ("Quảng",   "Ngụy Đình",                2),      ("Quốc",    "Lưu Võ Cao Khiêm",         2),      ("Hạnh",    "Đỗ Viên Hiền",             2),      ("Đoan",    "Huỳnh ",                   2),      ("Nhã",     "Viên Lôi Liên",            2),     
    ("Khiêm",   "Trương Trần Minh",         2),      ("Thủy",    "Vũ ",                      2),      ("Nhật",    "Dương ",                   2),      ("Lan",     "Hoàng Tống Linh Phụng",    2),      ("Tâm",     "Tô Kiều Ân",               2),
    ("Vũ",      "Bùi Tân",                  2),      ("Ly",      "Đàm ",                     2),      ("Hoàng",   "Cơ ",                      2),      ("Lợi",     "Diệp ",                    2),      ("Điền",    "Ngô ",                     2),     
    ("Trinh",   "Hoàng ",                   3),      ("Hậu",     "Ngụy Lưu Đăng Đại",        3),      ("Trúc",    "Cảnh Hương",               3),      ("Kim",     "Lục Trương Doanh",         3),      ("Ngà",     "Ngụy Duyên",               3),     
    ("Kỳ",      "Tống ",                    3),      ("Hùng",    "Cảnh Tô Vĩ Xuân",          3),      ("Khải",    "Đường Hồ Trí",             3),      ("Thái",    "Khương Phan Dương Huy",    3),      ("Pháp",    "Bùi Lâm Hải",              3),     
    ("Xuân",    "Viên Ngụy Oanh",           3),      ("Yến",     "Viên San",                 3),      ("Đoan",    "Huỳnh Hiền",               3),      ("Thiên",   "Lâm ",                     3),      ("Phương",  "Trịnh Ngà",                3),
    ("Linh",    "Vương Diệp Thảo Bích",     3),      ("Đạt",     "Lôi Lam",                  3),      ("Linh",    "Võ Giêng Thiên",           3),      ("Khánh",   "Lạc ",                     3),      ("Nhung",   "Phan ",                    3),     
    ("Dĩ",      "Lạc Lưu Trí Minh",         4),      ("Duyên",   "Lã Dương Mai",             4),      ("Quân",    "Đường Cảnh Bảo",           4),      ("Triết",   "Võ Mã Khánh Triết",        4),      ("Tài",     "Vũ Cung Hải Quan",         4),     
    ("Nhi",     "Mai ",                     4),      ("Hội",     "Nguyễn Ngụy Duy",          4),      ("Kỳ",      "Phùng Phạm Quỳnh",         4),      ("Tú",      "Cao ",                     4),      ("Hiền",    "Mã ",                      4),
    ("My",      "Đường ",                   4),      ("Ân",      "Kiều Phan Tùng Khôi",      4),      ("Hải",     "Hứa Tố",                   4),      ("Đan",     "Vũ Tống Khánh",            4),      ("An",      "Phạm Vũ My Thắm",          4),     
    ("Hà",      "Tống Mai",                 4),      ("Chí",     "Viên ",                    4),      ("Sang",    "Cao ",                     4),      ("Toàn",    "Phùng ",                   4),      ("Khải",    "Hồ Lã Triệu",              4),     
    ("Ngọc",    "Phó ",                     5),      ("Thiên",   "Vũ Trần Nguyệt Ý",         5),      ("Phát",    "Cung Mã Đăng Bá",          5),      ("Thảo",    "Kiều Bùi Tố",              5),      ("Phụng",   "Hứa Đặng Nhiên Hạ",        5),
    ("Vân",     "Giêng ",                   5),      ("Phương",  "Khương Diệp",              5),      ("Thành",   "Khương Trịnh Ân",          5),      ("Thuận",   "Lý Lê Khoa",               5),      ("Tín",     "Trịnh Hồ Hội Văn",         5),     
    ("Điền",    "Lý Khang",                 5),      ("Linh",    "Kiều Ngô Quảng",           5),      ("Dung",    "Đỗ Loan",                  5),      ("An",      "Giêng Quang",              5),      ("Loan",    "Khương ",                  5),     
    ("Khánh",   "Đỗ Phó Vĩ",                5),      ("Tân",     "Mai Đỗ Khanh",             5),      ("Trúc",    "Ngô Lý Khả",               5),      ("Thái",    "Ngô Chí",                  5),      ("Kỳ",      "Cảnh Hồ Mi Quỳnh",         5),
    ("Nga",     "Viên Tống Thư Diễm",       6),      ("Uyên",    "Hồ ",                      6),      ("Hoàng",   "Mã Lã Hiển Kiệt",          6),      ("Châm",    "Phan Dương Bảo",           6),      ("Khang",   "Viên Ngô Nhân",            6),     
    ("Yến",     "Lương Phùng Như",          6),      ("Chi",     "Hồ Hứa Hiền",              6),      ("Hữu",     "Giêng Cảnh Khôi",          6),      ("Quyên",   "Phan Lý Hiền",             6),      ("Thiên",   "Lý ",                      6),     
    ("Khoa",    "Tô Thông",                 6),      ("Nhật",    "Mai ",                     6),      ("Kiến",    "Diệp ",                    6),      ("Trúc",    "Quách Phan Hoa Trà",       6),      ("Bá",      "Quách ",                   6),
    ("Tuyết",   "Hoàng Ngụy Xuân",          6),      ("Ngọc",    "Phan ",                    6),      ("Tuyết",   "Đàm Tâm",                  6),      ("Hương",   "Đàm Bùi My Thư",           6),      ("Đào",     "Mã Lê Thi",                6),     
    ("Tiên",    "Lạc ",                     7),      ("Tân",     "Giêng Đinh Kiệt Triết",    7),      ("Tiên",    "Đặng ",                    7),      ("Vĩ",      "Quách Cung Đình Tuyên",    7),      ("Đan",     "Mã ",                      7),     
    ("Đình",    "Đỗ Lục Việt Quốc",         7),      ("Đình",    "Cung Cung Đạt Hưng",       7),      ("Quang",   "Phó Lý Vũ Trung",          7),      ("Ân",      "Bùi Lã Đan Vương",         7),      ("Quỳnh",   "Cảnh Nguyễn Hồng",         7),
    ("Nguyên",  "Lôi ",                     7),      ("Oanh",    "Dương Cảnh Quỳnh Phụng",   7),      ("Thy",     "Tô Mỹ",                    7),      ("Diệp",    "Đường ",                   7),      ("Tường",   "Mai Yến",                  7),     
    ("Di",      "Nguyễn ",                  7),      ("Tú",      "Ngụy Tiến",                7),      ("Nhung",   "Cung ",                    7),      ("Thơ",     "Ngô Giêng Doanh",          7),      ("Cường",   "Vũ ",                      7),     
    ("Hạ",      "Giêng Kiều",               8),      ("Nhân",    "Bùi Dương Đạt",            8),      ("Thuận",   "Hoàng Vũ Dĩ",              8),      ("Tân",     "Đàm Võ Dĩ Lợi",            8),      ("Đan",     "Hứa Lan",                  8),
    ("Ngọc",    "Mai Lưu Tường",            8),      ("Thanh",   "Vũ Linh",                  8),      ("Dung",    "Phó Bình",                 8),      ("Nguyên",  "Mã ",                      8),      ("Châm",    "Cung Huỳnh Thương Oanh",   8),     
    ("San",     "Hoàng Mai Trân Nhàn",      8),      ("Loan",    "Phó Trinh",                8),      ("Tường",   "Trịnh ",                   8),      ("Anh",     "Giêng ",                   8),      ("Diệu",    "Mã Trương Thúy",           8),     
    ("Hồng",    "Phan Nhã",                 8),      ("Hữu",     "Hoàng Huỳnh Cường Tuấn",   8),      ("Minh",    "Lạc Khang",                8),      ("Đình",    "Diệp Ngô Minh",            8),      ("Ý",       "Võ ",                      8),
    ("Lam",     "Mã ",                      9),      ("Hoàng",   "Lục Tống Tuyên",           9),      ("Lan",     "Phùng Mi",                 9),      ("Lan",     "Khương Khương Chi Tuyền",  9),      ("Nguyên",  "Tô Nhân",                  9),     
    ("Mẫn",     "Vũ Vương Nhựt",            9),      ("Giang",   "Trần Hoa",                 9),      ("Huy",     "Cao Khương Bách Tú",       9),      ("Long",    "Khương Cung Đạt Nam",      9),      ("Tấn",     "Viên Tùng",                9),     
    ("Tấn",     "Trịnh Khiêm",              9),      ("Nhựt",    "Trịnh Đặng Tín",           9),      ("Đại",     "Ngô ",                     9),      ("Nhân",    "Nguyễn ",                  9),      ("Đăng",    "Đàm Lã Tú",                9),
    ("Thục",    "Lê ",                      9),      ("Bích",    "Mai Cảnh Mỹ Vân",          9),      ("Phương",  "Lâm ",                     9),      ("Uyên",    "Dương Phan Khánh",         9),      ("Trinh",   "Phó Cao My Diệp",          9),     
    ("Danh",    "Kiều Viên Khiêm Lợi",      10),     ("Bình",    "Tống Hoàng Anh",           10),     ("Khiêm",   "Đỗ Trường",                10),     ("Thiên",   "Trương Tâm",               10),     ("Thắm",    "Trương Phương",            10),    
    ("Gia",     "Cao An",                   10),     ("Thảo",    "Bùi Dương Trúc Nguyệt",    10),     ("Sang",    "Quách ",                   10),     ("Hiền",    "Phùng ",                   10),     ("Doanh",   "Vương Kỳ",                 10),    
    ("Hải",     "Vũ Lâm Khang",             10),     ("Diễm",    "Quách ",                   10),     ("Hữu",     "Lâm Hoàng",                10),     ("Lan",     "Giêng Trần Khả Huyền",     10),     ("Kỳ",      "Ngô ",                     10),
    ("Điền",    "Cung Vũ",                  10),     ("Tài",     "Hoàng ",                   10),     ("Nghi",    "Trịnh Khương Tuyết",       10),     ("Kiều",    "Mai Phó Phụng Thy",        10),     ("Mẫn",     "Cao Uyên",                 10),
    ("Bình",    "Diệp Hiền",                11),     ("Trí",     "Vũ Tô Thiện",              11),     ("Nhung",   "Trương Hoàng Diễm",        11),     ("Khải",    "Phùng Kiều Đức Tâm",       11),     ("Thắm",    "Quách ",                   11),    
    ("Sơn",     "Lục Tín",                  11),     ("Trà",     "Huỳnh Vy",                 11),     ("Nam",     "Ngô ",                     11),     ("Khánh",   "Huỳnh Nga",                11),     ("Tuyền",   "Tô ",                      11),
    ("Vương",   "Trịnh Ngụy Châu Ân",       11),     ("Nhân",    "Vương ",                   11),     ("Công",    "Nguyễn ",                  11),     ("Quang",   "Lâm Trần Việt",            11),     ("Mạnh",    "Đinh Cao",                 11),    
    ("Tín",     "Nguyễn ",                  11),     ("Cường",   "Đặng Lâm Hòa Triệu",       11),     ("Nhã",     "Ngụy Diệp",                11),     ("Ngọc",    "Dương Bích",               11),     ("Khánh",   "Ngụy Phùng Thanh",         11),
    ("Kim",     "Cơ Ngụy Nhã",              12),     ("Ái",      "Lưu Diệp Nhàn",            12),     ("Trúc",    "Cơ Thanh",                 12),     ("Quỳnh",   "Hứa ",                     12),     ("Ý",       "Ngô ",                     12),    
    ("Đình",    "Đàm Đường Khanh",          12),     ("Ly",      "Huỳnh Bảo",                12),     ("Đào",     "Lưu Hoa",                  12),     ("Hiếu",    "Cao Pháp",                 12),     ("Bảo",     "Lý Lạc Tấn",               12),
    ("Ngọc",    "Lê Đoan",                  12),     ("Quan",    "Đàm ",                     12),     ("Kỳ",      "Lục Cơ Thủy",              12),     ("Tú",      "Ngụy Hồ Hiền",             12),     ("Ngà",     "Dương ",                   12),    
    ("Trung",   "Dương Ngô Toàn",           12),     ("Kiên",    "Lưu ",                     12),     ("Dĩ",      "Hồ ",                      12),     ("Thuận",   "Cơ ",                      12),     ("Phụng",   "Bùi Diễm",                 12),
    ("Lợi",     "Đinh Thiện",               13),     ("Kiến",    "Hứa Lương Quảng Kiến",     13),     ("Hồng",    "Lưu Phạm Phượng",          13),     ("Thục",    "Trịnh ",                   13),     ("Vĩ",      "Quách Lâm Tài",            13),    
    ("Anh",     "Ngụy ",                    13),     ("Sang",    "Giêng Lam",                13),     ("Đan",     "Phó Bùi Mẫn Vy",           13),     ("Nghĩa",   "Vương ",                   13),     ("Lam",     "Đàm Cơ Ý Hà",              13),    
    ("Huy",     "Đường Hòa",                13),     ("Vĩ",      "Nguyễn Phó Luân Vinh",     13),     ("Bình",    "Đỗ Bùi Nga Thi",           13),     ("Xuân",    "Nguyễn Cung Đào",          13),     ("Dĩ",      "Ngô Tống Bá Trọng",        13),
    ("Đoan",    "Lâm ",                     13),     ("Ấn",      "Khương Lưu Chí Xuân",      13),     ("Tú",      "Kiều Lý Triệu Gia",        13),     ("Đoan",    "Cung Diệp Trúc Thục",      13),     ("Đoan",    "Tô ",                      13),    
    ("Mi",      "Hứa Phượng",               14),     ("Ánh",     "Hứa Phùng Nhung",          14),     ("Kim",     "Lưu Tô Hiếu",              14),     ("Diễm",    "Viên Thương",              14),     ("Hội",     "Cung Tiến",                14),
    ("Tùng",    "Đinh Cung Nhân",           14),     ("Phương",  "Đặng Đinh Thái Khải",      14),     ("Bách",    "Trương ",                  14),     ("Kỳ",      "Giêng Viên Oanh",          14),     ("Trân",    "Phạm Lục Anh Trâm",        14),    
    ("Phát",    "Giêng Đỗ Công Chấn",       14),     ("Diệp",    "Đàm Khoa",                 14),     ("Bích",    "Cao ",                     14),     ("Vinh",    "Đinh Cơ Ân",               14),     ("Lâm",     "Mai Pháp",                 14),
    ("Nam",     "Đường Đường Khanh Tú",     14),     ("Khoa",    "Cảnh ",                    14),     ("Hưng",    "Tô An",                    14),     ("Đức",     "Trần Khương Ấn Cường",     14),     ("Triệu",   "Cao Trần Thiên Vĩ",        14),    
    ("Tấn",     "Đỗ Lê Thiện Cường",        15),     ("Huy",     "Quách Vương Sang Tín",     15),     ("Châu",    "Vũ Ngụy Ngọc Tín",         15),     ("Nhân",    "Giêng ",                   15),     ("Vân",     "Trần Hà",                  15),
    ("Đông",    "Đỗ ",                      15),     ("Huy",     "Vương Thái",               15),     ("Bảo",     "Kiều ",                    15),     ("Diệp",    "Cao Thương",               15),     ("Thiện",   "Lục ",                     15),    
    ("Tân",     "Mã ",                      15),     ("Hiếu",    "Huỳnh ",                   15),     ("Phối",    "Lã Tiên",                  15),     ("Kiến",    "Dương Huỳnh Tân Chấn",     15),     ("Nhàn",    "Hoàng ",                   15),
    ("Tín",     "Lâm Khương Quan",          15),     ("Tín",     "Phan ",                    15),     ("Ấn",      "Vương ",                   15),     ("Mi",      "Viên Cao Trang Kỳ",        15),     ("Kim",     "Khương ",                  15),    
    ("Ân",      "Ngô ",                     16),     ("Dũng",    "Vương Lục Dương",          16),     ("Hạ",      "Mã Trang",                 16),     ("Mỹ",      "Võ Hương",                 16),     ("Hưng",    "Diệp Giêng Danh Đông",     16),
    ("Dĩ",      "Đinh Lý Tuyên Hiếu",       16),     ("Trọng",   "Đường Đường Minh",         16),     ("Thy",     "Trương Vũ Mi Uyên",        16),     ("Sơn",     "Đỗ Phùng Thành",           16),     ("Hạ",      "Vũ Mỹ",                    16),    
    ("Bá",      "Khương Phạm Trung",        16),     ("Thi",     "Đường Phó Kim",            16),     ("Ánh",     "Ngụy Trịnh Diệp My",       16),     ("Hải",     "Vương Cung Tâm",           16),     ("Đan",     "Bùi Lý Khả Trúc",          16),
    ("Anh",     "Tô Đàm Trinh",             16),     ("Tâm",     "Quách Tiên",               16),     ("Duy",     "Lạc Giêng Quan Thắng",     16),     ("Kỳ",      "Lôi Tống Hiển Kiên",       16),     ("Tài",     "Đặng ",                    16),    
    ("Khoa",    "Trịnh Kiệt",               17),     ("Khả",     "Tống Đinh Ngân Phối",      17),     ("Khiêm",   "Lê ",                      17),     ("Đăng",    "Ngô Mã Thiên",             17),     ("Thịnh",   "Lý ",                      17),
    ("Quyên",   "Lâm Hoàng Hân",            17),     ("Quốc",    "Trịnh Tô Quang",           17),     ("Tuyết",   "Dương Khương Mai",         17),     ("Trúc",    "Vương ",                   17),     ("Ngọc",    "Lê Đường Thanh Thùy",      17),    
    ("Khải",    "Trịnh Khiêm",              17),     ("Tố",      "Vương Vũ Diễm",            17),     ("Ái",      "Mã Vương Ánh Hồng",        17),     ("Thúy",    "Lưu ",                     17),     ("Chấn",    "Giêng Đinh Hội Kiên",      17),
    ("Khuê",    "Cung Quách Trúc",          17),     ("Hồng",    "Hứa Diệp",                 17),     ("Ngân",    "Ngụy Phan Dương",          17),     ("Quang",   "Vũ ",                      17),     ("Hậu",     "Đường Huỳnh Pháp",         17),    
    ("Vân",     "Đường Lê Thư Ái",          18),     ("Khả",     "Đàm Trần Quyên Quyên",     18),     ("Thy",     "Ngô Võ Uyên",              18),     ("Nhật",    "Khương ",                  18),     ("Phú",     "Cung Bùi Vĩ",              18),
    ("An",      "Kiều Thảo",                18),     ("Kim",     "Nguyễn Trịnh Nga Hà",      18),     ("Khánh",   "Cung Phạm Lan Kiều",       18),     ("Tài",     "Đường ",                   18),     ("Quyên",   "Cung Hồ Ý",                18),    
    ("Hiển",    "Hứa ",                     18),     ("Toàn",    "Cung Cường",               18),     ("Loan",    "Ngô Mai Dung Thy",         18),     ("Gia",     "Bùi Bùi Trà Châu",         18),     ("Trinh",   "Cơ Cung Đoan An",          18),
    ("Huy",     "Lã ",                      18),     ("Đình",    "Đàm Trương Cao Khoa",      18),     ("Thư",     "Lục ",                     18),     ("Diệp",    "Lôi Thảo",                 18),     ("Phượng",  "Lý Vương Ánh Tiên",        18),    
    ("Nguyệt",  "Hứa Quách Ngọc",           19),     ("Ngọc",    "Lôi ",                     19),     ("Ngọc",    "Trịnh Phan Thy",           19),     ("Tuyền",   "Nguyễn Thúy",              19),     ("Trâm",    "Lê Mai Trang",             19),
    ("Chi",     "Trịnh Đinh Anh",           19),     ("Thi",     "Nguyễn Mẫn",               19),     ("Pháp",    "Kiều ",                    19),     ("Phát",    "Lục Cảnh Phong",           19),     ("Toàn",    "Phó Võ Trọng Phúc",        19),    
    ("Thục",    "Phó Đinh Quyên",           19),     ("Trang",   "Hồ Phó Hoa Nhiên",         19),     ("Hậu",     "Đỗ Diệp Nhân Hậu",         19),     ("Phụng",   "Lê Phùng Trà",             19),     ("Bá",      "Phạm Trần Khiêm",          19),
    ("Doanh",   "Lôi Tường",                19),     ("Thông",   "Phó Trịnh Đức Kỳ",         19),     ("Thúy",    "Ngụy Châm",                19),     ("Nhàn",    "Đinh ",                    19),     ("Nguyệt",  "Võ Đàm Mi",                19),    
    ("Kiều",    "Kiều Cung Cát Tiên",       20),     ("Diệu",    "Lưu ",                     20),     ("Nhã",     "Lương Minh",               20),     ("Khuê",    "Võ Hoa",                   20),     ("Tiên",    "Lý ",                      20),
    ("Duy",     "Cung ",                    20),     ("Tâm",     "Phó Cảnh Uyên Uyên",       20),     ("Minh",    "Vương ",                   20),     ("Huyền",   "Viên Lý An Châu",          20),     ("Uy",      "Trịnh Tuấn",               20),    
    ("Hiển",    "Hồ Đường Sơn",             20),     ("Phong",   "Đặng Hòa",                 20),     ("Kỳ",      "Bùi An",                   20),     ("Hiếu",    "Lưu Lâm Đại",              20),     ("Nhàn",    "Lưu ",                     20),
    ("Tú",      "Quách Kim",                20),     ("Vy",      "Tống ",                    20),     ("Hậu",     "Phó Đông",                 20),     ("Kỳ",      "Bùi Gia",                  20),     ("Trường",  "Tô Đình",                  20),    
    ("Tuyết",   "Nguyễn Kiều Thục Linh",    21),     ("Mỹ",      "Đàm Lôi Dung",             21),     ("Ngà",     "Bùi Xuân",                 21),     ("Kiên",    "Diệp Lâm Dĩ",              21),     ("Phong",   "Phó Tống Gia Khải",        21),    
    ("Hưng",    "Lạc Trần Khanh Lợi",       21),     ("Luân",    "Bùi Lê Thanh",             21),     ("Mẫn",     "Cung Phan Thùy Bích",      21),     ("Hậu",     "Dương Ngô Dương",          21),     ("Thắm",    "Ngô ",                     21),
    ("Đại",     "Lương ",                   21),     ("Chí",     "Ngụy Khải",                21),     ("Thái",    "Đỗ ",                      21),     ("Dung",    "Giêng Vương Loan",         21),     ("Đức",     "Lôi Cao Khiêm Thiện",      21),    
    ("Minh",    "Tống Quách Khôi Quan",     21),     ("Ánh",     "Viên ",                    21),     ("Khang",   "Mã ",                      21),     ("Chi",     "Lương Mã Yến Vân",         21),     ("Quảng",   "Lôi ",                     21),    
    ("Toàn",    "Hồ Lưu Sơn Mạnh",          22),     ("Nghĩa",   "Vương Lạc Đông Triết",     22),     ("Liên",    "Dương Diệu",               22),     ("Kỳ",      "Đường Cung Phượng Thục",   22),     ("Vượng",   "Cung Nam",                 22),
    ("Minh",    "Lương Cao Tuyền",          22),     ("Thành",   "Diệp Cường",               22),     ("Triệu",   "Phan Mạnh",                22),     ("Khanh",   "Lương Chấn",               22),     ("Thắm",    "Đường Viên Ngọc",          22),
    ("Đan",     "Lã Kiều",                  22),     ("Chi",     "Viên Nhi",                 22),     ("Cao",     "Đặng ",                    22),     ("Huyền",   "Tống Cảnh Loan Hà",        22),     ("Ánh",     "Hồ ",                      22),    
    ("Ngân",    "Giêng Hải",                22),     ("Diệp",    "Khương ",                  22),     ("Thanh",   "Ngô ",                     22),     ("Trí",     "Mai ",                     22),     ("Trung",   "Mai ",                     22)
;

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