-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 21, 2021 lúc 08:05 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `music_server`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `AL_ID` int(11) NOT NULL,
  `AR_ID` int(11) NOT NULL,
  `AL_NAME` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `AL_IMG` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`AL_ID`, `AR_ID`, `AL_NAME`, `AL_IMG`) VALUES
(1, 6, 'Tuyển Tập Sơn Tùng', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `artist`
--

CREATE TABLE `artist` (
  `AR_ID` int(11) NOT NULL,
  `AR_NAME` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `AR_STORY` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `AR_IMG` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `artist`
--

INSERT INTO `artist` (`AR_ID`, `AR_NAME`, `AR_STORY`, `AR_IMG`) VALUES
(1, 'Unknown', 'Unknown', NULL),
(2, 'Sơn Tùng M-TP', 'M-TP tên thật là Nguyễn Thanh Tùng. Cậu thanh niên sinh năm 1994 ở Thái Bình sớm bị hip hop hớp hồn giống như bao bạn bè đồng trang lứa. Và với niềm đam mê này, M-TP quyết tâm khăn gói tới Hà Nội học hỏi thêm về hip hop. Sau khi tốt nghiệp cấp 3, anh chàng dự định sẽ đầu quân làm học viên tại Học viện M4Me để rèn dũa khả năng ca hát, sáng tác... trước khi chính thức theo đuổi con đường âm nhạc.\r\n\r\nNgoài đam mê ca hát, M-TP còn có khả năng sáng tác, chơi piano và nhảy cực đỉnh. Với thế mạnh này, anh chàng không ngừng cố gắng học tập các bậc đàn anh đàn chị và đã có trong tay một hành trang khá khủng những sáng tác của riêng mình.\r\n\r\nSự nghiệp âm nhạc:\r\n\r\nTháng 8/2011: M-TP phát hành ca khúc Cơn Mưa Ngang Qua lên mạng, ngay lập tức nó trở thành một ca khúc hot lúc bấy giờ khi mà chỉ sau hai tháng, đã có hơn 1.7 triệu lượt nghe - con số mà những ca sĩ kỳ cựu như Đàm Vĩnh Hưng, Hồ Ngọc Hà... cũng phải mơ ước.\r\n\r\nNăm 2012, với tổng điểm 25,5đ, M-TP trở thành thủ khoa Nhạc viện TP.HCM. Cậu chia sẻ rằng chia sẻ cảm xúc: Mặc dù khá tự tin sau khi kết thúc buổi thi nhưng mình vẫn không khỏi ngạc nhiên và hạnh phúc khi biết được kết quả thi. Đây thực sự là một món quà vô cùng ý nghĩa để bù đắp cho những nỗ lực của mình trong suốt thời gian ôn luyện vừa qua\r\n\r\nĐể lại nhiều ấn tượng trong lòng khán giả khi M-TP trình diễn thành công ca khúc Cơn Mưa Ngang Qua tại Bài Hát Yêu Thích tháng 10/2012 và tiếp tục nhận giải thưởng hát hát yêu thích của tháng trong chương trình là động lực rất lớn cho M-TP tiếp tục phấn đấu trong con đường âm nhạc chuyên nghiệp. Sau Bài Hát Yêu Thích, M-TP còn được mời tham gia biểu diễn trong đêm công bố kết quả Top 9 Vietnam Idol 2012.\r\n\r\nTại Zing Mp3, Cơn Mưa Ngang Qua như là cú hít đầu tiên của cậu ca sĩ trẻ M-TP bước vào làng nhạc trẻ. Tính đến tháng 11/2014, ca khúc đạt được 64,278,735 lượt nghe.\r\n\r\nNăm 2013, anh đầu quân về công ty Văn Production JSC của nhạc sĩ Huy Tuấn và chính thức đổi nghệ danh thành Sơn Tùng M-TP để hoạt động âm nhạc chuyên nghiệp. Vào giữa năm, Sơn Tùng phát hành 2 đĩa đơn Đừng Về Trễ và Em Của Ngày Hôm Qua trong đó Đừng Về Trễ đoạt giải Bài hát yêu thích\r\n\r\nVới Em Của Ngày Hôm Qua, ca khúc này đã trở thành một bài hit lớn trong sự nghiệp của Sơn Tùng M-TP khi ca khúc này liên tiếp chiếm giữ vị trí số 1 tại bảng xếp hạng của Zing Mp3 ở cả hai hạng mục là Bài hát và Video clip. 08/09/2014, MV Em Của Ngày Hôm Qua chính thức đạt hơn 40 triệu lượt xem trên Youtube trong vòng 9 tháng. Đây là một con số kỷ lục đối với MV nhạc Việt tình cho thời điểm bấy giờ. Dù gặp phải rất nhiều ý kiến xung quanh việc đạo nhạc nhưng không thể phủ nhận sức nóng của những ca khúc mà Sơn Tùng biểu diễn kể từ Nắng Ấm Xa Dần, Cơn Mưa Ngang Qua\r\n\r\nVào đầu năm 2014, anh hợp tác với Phương Thanh, Quang Dũng, Vy Oanh, Ngô Kiến Huy, Ông Cao Thắng, Đông Nhi, Hồ Trung Dũng, Phương Vy và Đinh Hương, tất cả cùng nhau có mặt trong ca khúc mang tên Sống Như Những Đóa Hoa và cũng được phát hành làm đĩa đơn.\r\n\r\nCùng trong năm 2014, Sơn Tùng M-TP đảm nhận vai nam chính trong bộ phim nhựa Chàng Trai Năm Ấy của đạo diễn Quang Huy. Việc anh hóa thân vào ca sĩ Wanbi Tuấn Anh trên màn ảnh rộng đã thu hút được rất nhiều sự quan tâm từ truyền thông và người hâm mộ.\r\n\r\nNgày 23/10/2014, ca khúc trích trong bộ phim Chàng Trai Năm Ấy do Sơn Tùng M-TP sáng tác và thể hiện mang tên Chắc Ai Đó Sẽ Về ra mắt đầu tiên tại Zing Mp3, từ hiện tượng Em Của Ngày Hôm Qua ca khúc này lập tức trở thành bài hit khác của Sơn Tùng, chỉ trong vòng 24 giờ ra mắt Chắc Ai Đó Sẽ Về đã đạt được gần 5 triệu lượt nghe.\r\n\r\nTuy nhiên, cũng như Em Của Ngày Hôm Qua khi ra mắt, ca khúc này dính ngay nghi án đạo nhạc từ một ca khúc khác của Hàn Quốc mang tên Because I Miss You do trưởng nhóm CN Blue, Jung Yong Hwa trình bày, ca khúc này trích trong bộ truyền hình tại Hàn Quốc mang tên Heartstrings. Vấn đề đạo nhạc của ca khúc Chắc Ai Đó Sẽ Về đã trở thành đề tài tranh luận gay gắt trên các phương tiện truyền thông, nhiều nhạc sĩ tên tuổi đã vào cuộc để mổ xẻ, phân tích chuyên môn về hai ca khúc này. Ca khúc Chắc Ai Đó Sẽ Về và bộ phim Chàng Trai Năm Ấy trở thành tâm điểm của giới truyền thông trong suốt thời gian đấy.\r\n\r\nSau khi nhận được đơn giải trình từ đạo diễn Nguyễn Quang Huy, Cục Bản quyền đã đề nghị Hội Âm nhạc họp để đánh giá ca khúc này có đạo nhạc hay không. Hội Âm nhạc gồm các nhạc sĩ tên tuổi như Phó Đức Phương, Trương Ngọc Ninh, Võ Thiện Thanh, Đỗ Bảo… đã có cuộc họp kín vào sáng 10/11/2014 và tất cả đều tán đồng ý kiến ca khúc Chắc Ai Đó Sẽ Về là sản phẩm đạo nhạc. Ý kiến trong cuộc họp này được cấu thành văn bản và gửi đến Cục Bản quyền để đề nghị xử lý. Nhạc sĩ Phó Đức Phương bình luận, Sơn Tùng M-TP đã đạo nhạc một cách tinh vi. Còn nhạc sĩ Trương Ngọc Ninh cho biết, ca khúc của Sơn Tùng giống bản gốc tới 80%.\r\n\r\nVới kết quả trên, vô hình chung đã ảnh hưởng đến tiến độ ra mắt của bộ phim Chàng Trai Năm Ấy, dự kiến ra rạp vào ngày 14/11/2014. Đạo diễn của bộ phim là Nguyễn Quang Huy quyết định dời ngày công chiếu vì những vấn đề liên quan đến ca khúc Chắc Ai Đó Sẽ Về.\r\n\r\nTrong thời cùng gian trên, Sơn Tùng M-TP nhiều lần bị tố tự hủy show diễn, đền hợp đồng biểu diễn.. Cho đến việc lùm xùm hợp đồng với công ty quản lý của mình, cụ thể là Văn Production JSC. Tất cả những sự việc không hay trên ít nhiều đã ảnh hưởng đến sự nghiệp của Sơn Tùng M-TP khi tài năng và sức trẻ đang ở trong giai đoạn bắt đầu phát triển.Đầu năm 2015, Sơn Tùng M-TP tham gia chương trình thực tế The Remix - Hòa âm Ánh sáng. Qua từng đêm thi, anh khẳng định được tài năng và thực lực của bản thân với các tiết mục đầu tư nghiêm túc, những màn trình diễn độc đáo, cùng khả năng sáng tác cực ổn với các ca khúc như Thái Bình mồ hôi rơi, Khuôn mặt đáng thương, Cơn mưa ngang qua...[9]\r\n\r\nTháng 7 năm 2015, kỷ niệm sinh nhật lần thứ 21 của mình, Sơn Tùng M-TP đã tổ chức một mini-show kết hợp buổi fan-meeting đầu tiên trong sự nghiệp mang tên “M-TP and Friends”. Chỉ trong vòng 2 tuần sau khi mở bán, 8.000 vé đã được bán hết.Ngày 24 tháng 1 năm 2016, Sơn Tùng M-TP tung ra MV Một năm mới bình an.2017: Rời khỏi WePro, thành lập M-TP Entertainment. Lạc trôi và Nơi này có anhNgày 22 tháng 8 năm 2017 , Sơn Tùng kết hợp với SlimV ra bản remix mới của Remember Me\r\n\r\nNgày 8 tháng 9 năm 2017 , Sơn Tùng ra mắt Music Video 360 Lạc Trôi do TRIPLE D Remix\r\n\r\nNgày 30 tháng 9 năm 2017, Sơn Tùng ra mắt tự truyện Chạm tới giấc mơ, bán được 10000 bản trong 2 ngày.', NULL),
(3, 'Noo Phước Thịnh', 'Tên đầy đủ của Noo Phước Thịnh là Nguyễn Phước Thịnh. Anh giải thích rằng do anh sinh cận ngày Noel nên ba mẹ anh lấy luôn chữ Noel làm tên gọi ở nhà. Tuy nhiên, chữ Noel hơi khó đọc đối với một số người lớn tuổi trong nhà, nên mọi người chuyển sang gọi Nô. Rồi ba mẹ anh lại thấy chữ Nô mang tính phủ định quá, nên quyết định thêm một chữ O nữa thành Noo.\r\n\r\nBằng khả năng của mình, với chất giọng lạ theo hướng nam trầm, cách trình diễn nhiều cảm xúc trong các bài hát trẻ trung, dễ nghe, ấm, anh đã gây ngạc nhiên cho khán giả và chỉ trong vòng hơn 6 tháng kể từ khi bước chân vào làng âm nhạc, cái tên Noo Phước Thịnh đã dần khẳng định được dấu ấn trong lòng các khán giả trẻ. và được coi là ca sĩ trẻ có triển vọng và thành công sớm.\r\nCác album đã phát hành:\r\n1. Album Ba chấm\r\n2. Single Đổi thay\r\n3. Single Nỗi nhớ đầy vơi\r\n4. Album lạc bước trong đêm phát hành ngày 21/11/2011\r\n5. Mini album EM phát hành ngày 22/11/2012\r\n\r\nNăm 2013, Noo ra mắt MV Chờ ngày mưa tan cùng với rapper Tonny Việt. Trong đó, phân nửa MV được quay tại Hàn Quốc. Bài hát cũng nhanh chóng trở thành hit, thống trị các bảng xếp hạng thời điểm đó. Tháng 9, anh ra mắt single Đừng nhìn lại theo hơi hướng nhạc Dance, đánh dấu sự thay đổi về phong cách âm nhạc của Noo.\r\n\r\nNăm 2014, Noo được làm đại sứ du lịch Nhật Bản. Và liên tiếp trong 3 năm, anh phát hành 3 sản phẩm Mãi mãi bên nhau (2014) quay ở Ōsaka, Really Love You (2015) ở Kanazawa và Như phút ban đầu (2016) ở Kyushu.\r\n\r\nTháng 8 năm 2015, Noo Phước Thịnh ra mắt phim ca nhạc Chuyện tình Maldives hợp tác cùng Thủy Tiên được quay tại Maldives.\r\n\r\nNăm 2016, Noo Phước Thịnh tham gia The Remix (Hòa âm ánh sáng) mùa 2 và trở thành quán quân. Cũng trong năm đó, anh làm huấn luyện viên cho Giọng hát Việt nhí (mùa 4).\r\nNăm 2017, Noo tiếp tục làm huấn luyện viên cho Giọng hát Việt (mùa 4). Tháng 9 năm 2017, Noo cho ra mắt ca khúc Chạm Khẽ Tim Anh Một Chút Thôi', NULL),
(6, 'Đạt G', NULL, NULL),
(7, 'Du Uyên', NULL, NULL),
(8, 'Only C', NULL, NULL),
(9, 'Karik', NULL, NULL),
(10, 'Soobin Hoàng Sơn', NULL, NULL),
(11, 'Hứa Kim Tuyển', NULL, NULL),
(12, 'Hoàng Duyên', NULL, NULL),
(13, 'Hoàng Dũng', NULL, NULL),
(14, 'Jack - 197', NULL, NULL),
(15, 'Mỹ Tâm', NULL, NULL),
(16, 'Hương Tràm', NULL, NULL),
(17, 'Chillies', NULL, 'Suni Hạ Linh'),
(18, 'Rhymastic', NULL, NULL),
(19, 'Suni Hạ Linh', NULL, NULL),
(20, 'Vũ', NULL, NULL),
(21, 'Lou Hoàng', NULL, NULL),
(22, 'Akon', NULL, NULL),
(23, 'Alan Walker', NULL, NULL),
(24, 'McFly', NULL, NULL),
(25, 'Whitney Houston', NULL, NULL),
(26, 'Nelly', NULL, NULL),
(27, 'O-Town', NULL, NULL),
(28, 'Blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `artist_song`
--

CREATE TABLE `artist_song` (
  `AR_ID` int(11) NOT NULL,
  `SO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `artist_song`
--

INSERT INTO `artist_song` (`AR_ID`, `SO_ID`) VALUES
(6, 10),
(7, 10),
(8, 11),
(9, 11),
(10, 12),
(2, 13),
(13, 14),
(15, 15),
(16, 16),
(19, 17),
(17, 17),
(18, 17),
(20, 18),
(17, 19),
(21, 20),
(8, 20),
(1, 20),
(22, 21),
(1, 21),
(1, 21),
(23, 22),
(1, 22),
(1, 22),
(24, 23),
(1, 23),
(1, 23),
(25, 24),
(1, 24),
(1, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collection`
--

CREATE TABLE `collection` (
  `PL_ID` int(11) NOT NULL,
  `SO_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `collection`
--

INSERT INTO `collection` (`PL_ID`, `SO_ID`) VALUES
(1, 16),
(1, 15),
(1, 14),
(1, 13),
(1, 12),
(1, 11),
(2, 19),
(2, 18),
(2, 17),
(2, 16),
(2, 15),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(4, 11),
(4, 12),
(4, 15),
(4, 17),
(4, 18),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(7, 10),
(7, 12),
(7, 13),
(7, 14),
(7, 15),
(7, 16),
(8, 16),
(8, 17),
(8, 18),
(8, 19),
(8, 20),
(9, 15),
(9, 16),
(9, 17),
(9, 18),
(9, 19),
(9, 20),
(10, 15),
(10, 16),
(10, 17),
(11, 17),
(11, 18),
(12, 10),
(12, 11),
(12, 12),
(12, 13),
(12, 14),
(12, 15),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(14, 16),
(14, 17),
(14, 18),
(15, 10),
(15, 11),
(15, 12),
(15, 13),
(15, 14),
(15, 15),
(15, 16),
(15, 17),
(15, 18),
(15, 19),
(15, 20),
(15, 21),
(16, 15),
(16, 16),
(16, 17),
(16, 18),
(17, 11),
(17, 12),
(17, 13),
(17, 14),
(17, 15),
(17, 16),
(17, 17),
(17, 18),
(18, 12),
(18, 13),
(18, 14),
(18, 15),
(18, 21),
(18, 22),
(18, 23),
(18, 24),
(19, 10),
(19, 11),
(19, 12),
(19, 13),
(19, 14),
(19, 15),
(19, 16),
(19, 17),
(19, 18),
(21, 12),
(21, 13),
(21, 14),
(21, 15),
(21, 16),
(22, 12),
(22, 13),
(22, 14),
(22, 15),
(22, 16),
(22, 17),
(22, 18),
(23, 10),
(23, 11),
(23, 12),
(23, 13),
(23, 14),
(23, 15),
(23, 16),
(23, 17),
(24, 14),
(24, 15),
(24, 16),
(24, 17),
(24, 18),
(25, 18),
(25, 19),
(25, 20),
(25, 21),
(25, 22),
(26, 11),
(26, 12),
(26, 13),
(26, 14),
(26, 15),
(26, 16),
(26, 17),
(26, 18),
(27, 14),
(27, 15),
(27, 16),
(27, 17),
(27, 18),
(27, 22),
(27, 23),
(27, 24),
(28, 10),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genre`
--

CREATE TABLE `genre` (
  `GE_ID` int(11) NOT NULL,
  `GE_NAME` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `genre`
--

INSERT INTO `genre` (`GE_ID`, `GE_NAME`) VALUES
(1, 'Trữ Tình'),
(2, 'EDM'),
(3, 'Remix'),
(4, 'Hip-hop'),
(5, 'R&B'),
(6, 'Piano'),
(7, 'Ballad'),
(8, 'Rock');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `like_album`
--

CREATE TABLE `like_album` (
  `AL_ID` int(11) NOT NULL,
  `US_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `like_album`
--

INSERT INTO `like_album` (`AL_ID`, `US_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `like_playlist`
--

CREATE TABLE `like_playlist` (
  `PL_ID` int(11) NOT NULL,
  `US_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `like_playlist`
--

INSERT INTO `like_playlist` (`PL_ID`, `US_ID`) VALUES
(14, 1),
(15, 1),
(16, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `like_song`
--

CREATE TABLE `like_song` (
  `SO_ID` int(11) NOT NULL,
  `US_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `like_song`
--

INSERT INTO `like_song` (`SO_ID`, `US_ID`) VALUES
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `PL_ID` int(11) NOT NULL,
  `US_ID` int(11) DEFAULT 0 COMMENT '0: Quản trị tạo\r\nKhác 0 nếu là user có id',
  `PL_NAME` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `PL_DES` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `PL_TYPE` int(11) DEFAULT NULL COMMENT '1: Chủ đề hot\r\n2: top 100\r\n3: Thư thả bên quán quen',
  `PL_IMG` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'Ảnh Hình Vuông',
  `PL_IMG2` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'Ảnh Chữ Nhật'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`PL_ID`, `US_ID`, `PL_NAME`, `PL_DES`, `PL_TYPE`, `PL_IMG`, `PL_IMG2`) VALUES
(12, 1, 'Good Morning', 'Đừng đợi đến cuối ngày mới tiếc nuối những việc mình chưa làm hôm nay, hãy cùng khởi động ngày mới cùng Topic \"Good Morning\" để tiếp thêm năng lượng, động lực và niềm cảm hứng cho mọi việc!', 1, 'nZEBwVVQrPVSPHxqhMSyXrUNHCQW3ctujEOGzVvg.jpg', 'wlBpP7lfFH5cwq4S9wZ3h8mRO5517dbREmGHzfzj.jpg'),
(13, 1, 'Hot US-UK', 'Các Ca Khúc Gây US-UK Hay Nhất', 1, 'klI7KQxzEJARuf2UVfL2pACBjZVSsF4h5XNGxVj7.jpg', '8vUJB3RRBeeSrX569mil2lGi0UWTmWMak9qVbpWw.jpg'),
(14, 1, 'Chào Buổi Tối', 'Không Gian Tuyệt Đẹp', 1, 'T5fCgRXGpyX39g679j2sNuPdLdUckH5qO6ftI9cX.jpg', 'tkZQc1tcQe72DhKuyl3hXQlauji52NwTtEZbEQqG.jpg'),
(15, 1, 'Top 100 Nhạc Trẻ', '100 Bài Nhạc Trẻ Hay Nhất', 2, 'ykR85vtbYv8qJzneXdo9DE93BpxbclwvdAvx44sH.jpg', 'oQRXc78wopcMlCwu5Ub7ADd1l7BJXLaMF2b616Ic.jpg'),
(16, 1, 'Top 100 C-POP', '100 Bài Nhạc Trung Quốc Hay Nhất', 2, 'o8PgNEdEovjgDAbH3NH9AJOGsGsRF6ji5ADGBxtq.jpg', 'etiwxzCR9D2nLozMdejAQl9HJwvlRjTSsSpeXCau.jpg'),
(17, 0, 'Âu Mỹ', '100 Bài Âu Mỹ Hay Nhất', 1, '5pxg8ukccKQ0xbHMjKReC6cVKj4Um55v2zwR4ws7.jpg', '24yFuqNnh0wjb1U38LarUybmdRwonK8H6tYy7QJr.jpg'),
(18, 0, 'Remix Việt', '100 Bài Remix Việt Hay Nhất', 2, 'TtZK60UXob3MHOL4jELiJWlN9SjK5cRWDvAJmnei.jpg', 'yKWha9V8sLaDOQ5ya25CYII4onbVdhNQny7lWMZV.jpg'),
(19, 0, 'US-UK EDM Remix', 'Các Bản Nhạc Remix Cực Sôi Động', 2, 'zWiMSleYLST1WIeRqpLDV1pizSSNhQDmC643ylP2.jpg', 'Ve1YBA9TkgdYYL2g6bcgCeD3Kvgu1ZmQSFr7AFhM.jpg'),
(21, 0, 'K-POP Remix', 'Các Bản Nhạc K-POP Remix Hay Nhất', 1, 'n4EwT6Ysrbg3HahLjoL0yppgDM5OocmUwX65AbNt.jpg', 'xXxzlxkoAi3BNqUwAIliOhDM054bGpfDcQ8xVN8P.jpg'),
(22, 0, 'US-UK Dance Rewind', 'Các Bản Nhạc US-UK Hay Nhất', 2, 'ghIyEj00ldr9lVJWLOmkz6eXKvg6jraqnh8sHyUq.jpg', '4wTlndB5DcX1duHaog2kMhVQQaqoPaata6SnmWlq.jpg'),
(23, 0, 'Du Lịch', 'Nhạc Đi Du Lịch', 3, 'TkaVUkToIq9Hgxihupn2mKSeNQtxNvvGTkxEHGS1.jpg', 'wjl5qzyfZ0JTh6eGdfgGbMTO780KNOvATQlwDob4.jpg'),
(24, 0, 'Ngủ Ngon', 'Nhạc Giúp Ngủ Ngon Giấc', 3, 'HVFivJE9a6kQD36165kluyp1wkYZDaCWUSKDJRvB.jpg', 'dL9TlFHe6SNRdkpbfWCXUBnMW6FjiZIbKzuyS07V.jpg'),
(25, 0, 'Workout', 'Luyện Tập Cho Ngày Dài Đầy Năng Lượng', 3, 'uLqhUNzqEoaLEek07XWBknFY6OafrvPICIjEpRpb.jpg', 'fhnQcFpXPxTA4ccZwKWQvGnT0n5OIFlXSiTpjV6f.jpg'),
(26, 0, 'Tiệc Tùng', 'Cùng Hội Bạn Quẩy Tưng Bừng', 3, 'm8brWioH41cFyYMInhljhbHfdgXtFaVC42pb4sMQ.jpg', '8bEUKrXuVrm7gSr9dikUK7uqZrbS29l65CxzW1DM.jpg'),
(27, 0, 'Spa - Yoga', 'Nhạc Giúp Luyện Tập Thư Thái', 3, 'lyG2BWYlJAioRW0ceHvBSOySUWxWGQTHQ9Z0D3NN.jpg', 'GmmEw3EEHU4mrq1zkt0LoFhozp8esjDWuMx5FzFa.jpg'),
(28, 0, 'Tình Yêu', 'Các Tình Khúc Cho Tình Yêu Thêm Mặn Nồng', 3, '7RBQzOiMkxr1B917ETqw24r7kEyeUG1Jz2gFSVQ4.jpg', 'lxLDTl3uGEzPKxTiTPml9ritX45ZmwPFQqdN29eC.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

CREATE TABLE `song` (
  `SO_ID` int(11) NOT NULL,
  `GE_ID` int(11) NOT NULL,
  `AL_ID` int(11) DEFAULT NULL,
  `SO_NAME` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SO_SRC` varchar(500) COLLATE utf8_vietnamese_ci NOT NULL,
  `SO_IMG` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`SO_ID`, `GE_ID`, `AL_ID`, `SO_NAME`, `SO_SRC`, `SO_IMG`) VALUES
(10, 7, NULL, 'Bánh Mì Không', 'ocqvZPKwZ6YpgixGr5qFcnD9c3Q3Eb6edsnkm2CS.mp3', 's15WNAE36hh8LGaTAa2tvjck9jHtjAvl5U8viPiP.jpg'),
(11, 7, NULL, 'Có Lẽ Anh Chưa Từng', 'Iz9P2BXyINKQhf69rDQ431tPYaBhwBgG5x1PvV3z.mp3', '2qxf7AEFMwr8HoB6IiNjKGiOFi07a116ZclPnsXj.jpg'),
(12, 1, NULL, 'Phía Sau Một Cô Gái', 'OEZUNIplRtspq4ay3NJjOZqS8jPtPa90Fl2aGusp.mp3', 'Lis8sszX4leNbF8LMupeKp1XZPPsaSHaObN6ChPa.jpg'),
(13, 7, NULL, 'Muộn Rồi Mà Sao Còn', 'D1CGF3ER72IWdm3O7ktEL5kokdp5ykVcBVLCPXaE.mp3', 'K2tCqeLwregsY9upGxHa85XdQlzmrgr1wkg6BGUc.jpg'),
(14, 7, NULL, 'Nàng Thơ', 'tqBTz7p4RE474gBDUlmgy1jnKwCKMXetbacQB0sS.mp3', '1uZzeuy610kg7xU9MPYSKkBijeJTmUPg1VUhZpIi.jpg'),
(15, 7, NULL, 'Đúng Cũng Thành Sai', '02knS2hu8hCqD8I6Up0KAUJsXlPzhACXE15NegTV.mp3', 'JfSBGMtsAJtlceasTvRViKfVBVuuw3msPsQlra7Z.jpg'),
(16, 7, NULL, 'Cho Em Gần Anh Thêm Chút Nữa', 'sxG39NiqNaP5IJjeqFSrGDJw3SA8R8lgJTc9dWbK.mp3', 'FpZX7JkMIeiaUVZ3Me2tEyk2n6oRlGnXVMoaoiVZ.jpg'),
(17, 1, NULL, 'Cứ Chill Thôi', '1PdfxekL0mm4jPc4wUrCM1rNOjd0mqj7jrJJIoah.mp3', 'rqpg6RhApuW8oK6TXLQD57BQIwpnk5HOfYldN0SQ.jpg'),
(18, 7, NULL, 'Lạ Lùng', 'DhfGuJpTXRAmFNH5IRmhaOoxpRj14smVEjxcDXdO.mp3', 'l3AwVnmgqp1qPRc1lUUViTZ8iFPXZiX33hguIGGY.jpg'),
(19, 1, NULL, 'Và Thế Là Hết', 'Gjuq4bwJajmjX7vHqlecWtjzJ5w83FNTTgxTn7Az.mp3', '1LGvSXtjsMa1ugnWu75S98bvgDUvU7azKhv5rsSI.jpg'),
(20, 1, NULL, 'Là Bạn Không Thể Yêu', 'PXaZTSAeqQf1i1ugguv83o5W6mJrbkTI4ntRTuRl.mp3', '7N0vcy5KfZ2abMgv201vGjUOevWLmGJkHoiz4n7r.jpg'),
(21, 4, NULL, 'I Can\'t Wait', 'Vmbv7HIWQCnoITFedZACofrj130TVciCrE5lrty7.mp3', 'oRxL3S4rirAM0JlkjjFiWlBGlfMq2qwViMmukuCB.jpg'),
(22, 1, NULL, 'Faded', 'ozL4nAVKMGWGfYu4CMs3CRjGJr9X1CJlIQmxmGag.mp3', 'kxde1TXkLeqUY6szRmhdAZZ1UULHWYA3w0Zpkadm.jpg'),
(23, 1, NULL, 'All About You', 'xvbb7iG5Px8PpSFXTzobYNW8T69XrFZADfITGzkt.mp3', 'eFIv6M1clH1yiDvrg7Xu9p27rws9kPE9MtsCzj6Q.jpg'),
(24, 1, NULL, 'All At Once', 'ExJ39qQ7BQwb4Nls33sgwGCJn3XhLnfgmAbXjQ3D.mp3', 't3SGBngZeHGBoTuGgnmtjZr8HJsvLL0UQZCGUA5A.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `US_ID` int(11) NOT NULL,
  `US_NAME` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `US_EMAIL` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `US_PASS` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `US_TYPE` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`US_ID`, `US_NAME`, `US_EMAIL`, `US_PASS`, `US_TYPE`) VALUES
(1, 'Chu Minh Tân', 'cmt@gmail.com', '$2y$10$A0BWa9pDixkz/EL/ja3CHe5XgkT7rHP1W7PxjfzVYAfwLmvV3ZAqC', 1),
(2, 'Chu Minh Tân', 'cmt1@gmail.com', '$2y$10$2.MzQcf4g10FqCjcPLKrGO/ozE6XTqrwrh29N6KIs2GmIYiGztkOa', 1),
(3, 'Chu Minh Tân', 'cmt2@gmail.com', '$2y$10$b1a1MfqqJwwP5epgOOohh.dQdRvr5AxgXi1HadQyhyG2VMUnuTMle', 1),
(4, 'Chu Minh Tân', 'cmt3@gmail.com', '$2y$10$GiCJ5W.fRvPzjGvwSMsRh.4HQ2Zgoyl8iWcEsArdh7fye8tSPDA6u', 1),
(5, 'Nguyen Minh Tan', 'cmt123456@gmail.com', '$2y$10$yVg9b6qaaTpv1eS.HiLEu.HQAF7HJebIQbIoDRbVurHmKGZPc3kJK', 1),
(6, 'Nguyen Minh Tan', 'cmt1234567@gmail.com', '$2y$10$j2vU0RC1QrUF2jxBOddJ5uoVGp8NYbiGVyVUaAlK6flMGBXbmvc1K', 1),
(7, 'Nguyen Van A', 'nguyenvana@gmail.com', '$2y$10$rBpRsqiYnsirl47ZYfvoluOlnEIPPG4MYra561LKKHg/Kcy55sXp6', 1),
(8, 'nguyenvana', 'nguyen@gmail.com', '$2y$10$.EITH81oPe12jdHyT7taL.XF88moeNf/Fmbx7fddBiJfje41Y0jmK', 1),
(9, 'adfasdfadsf', 'alibaba@gmail.com', '$2y$10$fvzG92nJIjn2NkzIK72fYuxb77YeYA7xLTQB4c60Z.r7ZV8gD03gK', 1),
(10, 'hello1', 'hello2@gmail.com', '$2y$10$xBIMLSW5ZUBY/H7jzXidyOJL67k6GCuVt/VYyHIZpZucUJp0fHjNO', 1),
(11, 'nguyenvanb', 'nguyenvanb@gmail.com', '$2y$10$edfexZkSGbJ7gccxsVtXzeNCe2LK7csByXy7T/Sst7hyV9gkY3.w2', 1),
(12, 'nguyenc', 'nguyenc@gmail.com', '$2y$10$Y2xUzivGUsG07JtQziznPudYaGi23zRKWOloOHnPhfV67q57X2emS', 1),
(13, 'Trường Chinh', 'truongchinh@gmail.com', '$2y$10$pGow3egS1Gs94vvOyaBGa.V5OJ81flONQ0jSKnpY//T2mnOy7DMGa', 1),
(14, 'new user', 'newuser@gmail.com', '$2y$10$ZHnIVDGnmAYlh25kCUwXo.TDDIemI3.GMH9cfK22mumGvhvYKM/6G', 1),
(15, 'User 5', 'newuser5@gmail.com', '$2y$10$Y1EwFlbE6cHgcArH1TFOTuQzXjZxvO8Ko2.89S2uFi2Wyu7C1HWdi', 1),
(16, 'new user 6', 'newuser6@gmail.com', '$2y$10$TV/pRXcQHCgbj0lpOD9.qeuZrlNdPeMFXzWdq12etlrPzjfdhKOI6', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`AL_ID`);

--
-- Chỉ mục cho bảng `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`AR_ID`);

--
-- Chỉ mục cho bảng `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`GE_ID`);

--
-- Chỉ mục cho bảng `like_album`
--
ALTER TABLE `like_album`
  ADD PRIMARY KEY (`AL_ID`,`US_ID`);

--
-- Chỉ mục cho bảng `like_playlist`
--
ALTER TABLE `like_playlist`
  ADD PRIMARY KEY (`PL_ID`,`US_ID`);

--
-- Chỉ mục cho bảng `like_song`
--
ALTER TABLE `like_song`
  ADD PRIMARY KEY (`SO_ID`,`US_ID`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`PL_ID`);

--
-- Chỉ mục cho bảng `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`SO_ID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`US_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `AL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `artist`
--
ALTER TABLE `artist`
  MODIFY `AR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `genre`
--
ALTER TABLE `genre`
  MODIFY `GE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `playlist`
--
ALTER TABLE `playlist`
  MODIFY `PL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `song`
--
ALTER TABLE `song`
  MODIFY `SO_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `US_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;