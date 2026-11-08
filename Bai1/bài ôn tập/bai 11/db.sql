-- Câu lệnh tạo database
-- create database + tên db

-- create database if not exists web_netflix;

-- nguoi_dung
create table if not exists nguoi_dung (
    id int auto_increment primary key,
    ten_dang_nhap varchar(50) not null,
    mat_khau varchar(30) not null,
    email varchar(50) not null,
    so_dien_thoai varchar(10) not null
);
INSERT INTO `nguoi_dung` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES
(2, 'mimeo', '12', 'hhh@gmail.com', '0123456789'),
(3, 'huongne', 'huongxinggai0206', 'huonpi@gmail.com', '02222222'),
(4, 'huongne', 'huongxinggai0206', 'huonpi@gmail.com', '0987654321'),
(5, 'huongne', 'huongxinggai0206', 'huonpi@gmail.com', '0987654321');


-- phim
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);
INSERT INTO `phim` (`id`, `ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES
(1, 'Mai', 123, 2024, 'Tình Cảm ', 7),
(2, 'Bố Già', 124, 2021, 'Gia Đình ', 7),
(3, 'Mắc Biếc', 133, 2019, 'Lãng Mạn', 9),
(4, 'Em Và Trịnh', 136, 2022, 'Tình Cảm ,', 10),
(5, 'Tử CHiến Trên Không', 134, 2025, 'Hành Động', 11);

-- phim_dien_vien
create table if not exists phim_dien_vien (
    id int auto_increment primary key,
    phim_id int not null,
    dien_vien_id int not null
);
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('1','3');
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('2','5');
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('5','2');
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('4','1');
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('1','4');

SELECT * FROM `phim_dien_vien`
JOIN phim p
on p.id = phim_dien_vien.phim_id
JOIN dien_vien dv
on dv.id = phim_dien_vien.dien_vien_id
WHERE p.id = 1
LIMIT 0, 25;




-- phim_the_loai
create table if not exists phim_the_loai (
    id int auto_increment primary key,
    phim_id int not null,
    the_loai_id int not null
);
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('2','1');
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('1','2');
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('4','2');
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('5','3');
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('2','4');

SELECT * FROM `phim_the_loai`
JOIN phim p
on p.id = phim_the_loai.phim_id
JOIN the_loai tl
on tl.id = phim_the_loai.the_loai_id
WHERE p.id = 1



-- dao_dien
create table if not exists dao_dien (
    id int auto_increment primary key,
    ten_dao_dien varchar(50)
);
INSERT INTO `dao_dien` (`id`, `ten_dao_dien`) VALUES
(7, 'Victor Vũ'),
(8, 'Trấn Thành'),
(9, 'Lê Hoàng'),
(10, 'Nguyễn Quang Dũng'),
(11, 'Lê Gia Nhật Linh');




-- dien_vien
create table if not exists dien_vien (
    id int auto_increment primary key,
    ten_dien_vien varchar(50)
);
INSERT INTO `dien_vien` (`id`, `ten_dien_vien`) VALUES
(1, 'Hà Ngọc Anh'),
(2, 'Phương Kiều Chi'),
(3, 'Trần Hà Ngọc'),
(4, 'Ngô Minh Kiều'),
(5, 'Ninh Dương Lan Ngọc');

-- the_loai
create table if not exists the_loai (
    id int auto_increment primary key,
    ten_the_loai varchar(100)
);
INSERT INTO `the_loai` (`id`, `ten_the_loai`) VALUES
(1, 'Kinh Dị'),
(2, 'Tình Cảm'),
(3, 'Hài Hước'),
(4, 'Khoa Học '),
(5, 'Giải Trí');

-- quoc_gia
create table if not exists quoc_gia (
    id int auto_increment primary key,
    ten_quoc_gia varchar(50)
);
INSERT INTO `quoc_gia` (`id`, `ten_quoc_gia`) VALUES
(1, 'Việt Nam'),
(2, 'Thái Lan'),
(3, 'Mỹ'),
(4, 'Nhật Bản'),
(5, 'Hàn Quốc');


