-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2017 at 05:50 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `type`) VALUES
(1, 'dinhtruong', '123123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `question` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `a` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `b` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `c` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `d` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `question`, `a`, `b`, `c`, `d`, `answer`) VALUES
(1, 'Trong các phần mềm sau, phần mềm nào là phần mềm ứng dụng', 'Windows XP', 'Microsoft Word', 'Linux', 'Unix', 'b'),
(2, 'Trên hệ điều hành Windows, để chuyển đổi cửa sổ chương trình cần làm việc ta:', 'Nháy chọn biểu tượng chương trình tương ứng trên thanh công việc (Taskbar).', 'Nhấn giữ phím Alt và gõ phím Tab cho đến khi chọn được cửa sổ chương trình.', 'Nháy vào một vị trí bất kỳ trên cửa sổ chương trình muốn kích hoạt', 'Các ý trên đều đúng.', 'd'),
(3, 'Tên thư mục trong hệ điều hành Windows cần thoả điều kiện sau:', 'Không quá 255 ký tự; không được trùng tên nếu trong cùng một cấp thư mục (cùng thư mục cha) và không chứa các ký tự đặc biệt (/  “ * ! <> ? : )', 'Tối đa 8 ký tự, không có khoảng trắng và các ký tự đặc biệt (/  “ * ! <>? )', 'Tối đa 255 ký tự, không bắt đầu bằng chữ số, không chứa khoảng trắng.', 'Tối đa 256 ký tự.', 'a'),
(4, 'Muốn khởi động lại hệ điều hành Windows XP ta thực hiện như sau:', 'Vào bảng chọn Start à Turn off Computer à hộp thoại xuất hiện, chọn lệnh Restart.', 'Vào bảng chọn Start à Turn off Computer à hộp thoại xuất hiện, chọn lệnh Stand By.', 'Vào bảng chọn Start à Turn off Computer à hộp thoại xuất hiện, chọn lệnh Turn Off.', 'Vào bảng chọn Start à Turn off Computer à hộp thoại xuất hiện, chọn lệnh Cancle', 'a'),
(5, 'Phần mềm nào dưới đây không phải là phần mềm hệ thống?', 'Microsoft-DOS.', 'Microsoft Windows.', 'Linux', 'Microsoft Excel.', 'd'),
(6, 'Người và máy tính giao tiếp với nhau thông qua', 'hệ điều hành.', 'đĩa cứng', 'chuột', 'bàn phím', 'a'),
(7, ' Trên hệ điều hành Windows, để mở cửa sổ chương trình cần làm việc trên hệ điều hành Windows ta thực hiện như sau:', 'Kéo thả biểu tượng chương trình trên màn hình nền Desktop vào bảng chọn Start.', 'Vào bảng chọn Start à Run à chỉ đường dẫn đến chương trình cần mở à chọn Cancle.', 'Nháy đúp chuột tại biểu tượng của chương trình trên màn hình nền Desktop.', ' Các ý trên đều đúng', 'd'),
(8, 'Hệ điều hành Windows XP là hệ điều hành có:', 'Giao diện đồ hoạ', 'Màn hình động', 'Đa nhiệm', 'Các ý trên đều đúng', 'd'),
(10, 'Thao tác nào sau đây dược dùng để chọn nhiều đối tượng không liên tiếp nhau trong hệ điều hành Windows?', 'Nháy chuột vào từng đối tượng.', 'Nháy phải chuột tại từng đối tượng.', ' Nhấn giữ phím Shift và nháy chuột vào từng đối tượng.', 'Nhấn giữ phím Ctrl và nháy chuột vào từng đối tượng.', 'd'),
(12, 'Cho thanh công cụ bao gồm các nút lệnh được liệt kê theo thứ tự như hình bên, nút lệnh ƒ được dùng để: ', 'Tạo mới thư mục.', 'Tạo mới thư mục.', 'Phục hồi thao thao vừa thực hiện..', 'Sắp xếp tệp, thư mục theo thứ tự tăng dần về kích thước.', 'b'),
(13, 'Trong hệ điều hành Windows, muốn tạo thư mục, ta mở ổ đĩa muốn tạo thư mục mới bên trong nó và', 'nháy File à New à Folder, gõ tên cho thư mục mới và nhấn phím Enter.', 'nhấn tổ hợp phím Ctrl + N, gõ tên cho thư mục mới và nhấn phím Enter.', 'nháy File à New à Short Cut, gõ tên cho thư mục mới và nhấn phím Enter.', 'nhấn phím F2, gõ tên cho thư mục mới tạo và nhấn phím Enter.', 'a'),
(14, 'Trong hệ điều hành Windows, muốn đổi tên cho thư mục đang chọn ta', 'nháy Edit à Move to Folder, gõ tên mới cho thư mục và nhấn phím Enter.', 'nhấn tổ hợp phím Ctrl + R, gõ tên mới cho thư mục và nhấn phím Enter.', 'nháy Edit à Rename, gõ tên mới cho thư mục và nhấn phím Enter.', 'nhấn phím F2, gõ tên mới cho thư mục và nhấn phím Enter.', 'd'),
(15, 'Trong hệ điều hành Windows, muốn sao chép các tệp đang chọn vào bộ nhớ đệm ta', 'nháy Edit à Copy', 'nhấn tổ hợp phím Ctrl + C', 'nháy phải chuột tại vị trí bất kì bên trong vùng chứa các tệp đang chọn, chọn lệnh Copy.', 'Các ý trên đều đúng.', 'd'),
(16, 'Trong hệ điều hành Windows, muốn khôi phục đối tượng đã xóa, ta mở cửa sổ Recycle Bin, chọn đối tượng muốn khôi phục và', 'nháy Edit à Restore.', ' nháy Edit à Delete.', 'nháy File à Restore.', 'nháy File à Delete.', 'c'),
(17, 'Trong hệ điều hành Windows, để xem danh sách các tài liệu (tệp) vừa thao tác gần nhất, ta:', 'Nháy Start à My Documnents', 'Nháy Start à My Recent Documnents', 'Nháy File à Open Near Documents', 'Các ý trên đều sai.', 'b'),
(18, 'Trong hệ điều hành Windows, muốn thay đổi hình nền cho màn hình Desktop, ta nháy phải chuột tại vùng trống trên Desktop và:', 'Chọn Properties à chọn thẻ lệnh DeskTop à chọn hình ảnh làm nền màn hình à Apply à Ok.', 'Chọn Properties à chọn thẻ lệnh Settings à chọn hình ảnh làm nền màn hình à Apply à Ok.', 'Chọn Properties à chọn thẻ lệnh Screen save à chọn hình ảnh làm nền màn hình à Apply à Ok.', 'Tất cả các ý trên đều sai.', 'a'),
(19, 'Trong hệ điều hành Windows, muốn thay đổi hình nền cho màn hình Desktop, ta nháy Start à Control Panel sau đó', 'chọn Display à DeskTop à chọn hình ảnh làm nền màn hình à Apply à Ok.', 'chọn Change desktop background à chọn hình ảnh làm nền màn hình à Apply à Ok.', 'chọn Choose a screen saver à DeskTop à chọn hình ảnh làm nền màn hình à Apply à Ok.', 'Các ý trên đều đúng.', 'a'),
(20, 'Trong hệ điều hành Windows, để tạo đường tắt (biểu tượng-shortcut) cho đối tượng lên màn hình Desktop ta ', 'nháy phải chuột tại đối tượng cần tạo shortcut, chọn Sent to à chọn Desktop (create shortcut).', 'nhấn giữ nút chuột phải tại đối tượng cần tạo shortcut, kéo thả ra ngoài màn hình nền, khi bảng chọn tắt xuất hiện, chọn Create shortcuts here.', 'nháy phải chuột tại vùng trống bất kì trên nền màn hình desktop, chọn New à Shortcut à Browse à chỉ đường dẫn đến đối tượngcần tạo shortcut à Next à đặt tên cho shortcut à Fisnish.', 'Các ý trên đều đúng.', 'b'),
(21, 'Muốn đổi tên cho thư mục/tệp tin trong hệ điều hành Windows, ta chọn thư mục/tệp tin cần đổi tên và thực hiện thao tác nào sau đây?', 'Nháy File à chọn Rename à nhập tên mới à nhấn phím Enter.\r\n', 'Nhấn phím F2 à nhập tên mới à nhấn phím Enter.', 'Nháy phải chuột tại thư mục/tệp tin à nhập tên mới à nhấn phím Enter.', 'Các ý trên đều đúng.', 'd'),
(22, 'Phát biểu nào không đúng trong các phát biểu sau?', 'Trong hệ điều hành Windows, thư mục có thể chứa các thư mục con khác.', 'Trong hệ điều hành Windows, thư mục có thể chứa các tệp và thư mục con khác.', 'Trong hệ điều hành Windows, tệp có thể chứa tệp.', 'Trong hệ điều hành Windows, tệp có thể chứa các tệp và thư mục con khác.', 'c'),
(23, 'Trong hệ điều hành Windows, để xoá các tệp/thư mục đang chọn ta thực hiện như sau:', 'Vào bảng chọn Edit à UnDelete à Yes.', 'Nhấn tổ hợp phím Ctrl + Delete à Yes.', 'Nhấn phím Delete à Yes.', 'Các ý trên đều đúng.', 'c'),
(24, 'Thao tác nào sau đây không tạo được thư mục mới trong hệ điều hành Windows?', 'Nháy phải chuột tại vùng trống bên trong ổ đĩa, thư mục muốn tạo mới thư mục bên trong nó, vào bảng chọn New à Folder à nhập tên cho thư mục mới à nhấn phím Enter.', 'Mở ổ đĩa, thư mục nơi ta muốn tạo mới thư mục bên trong nó, vào bảng chọn File à New à Folder à nhập tên cho thư mục mới ànhấn phím Enter.', 'Mở ổ đĩa, thư mục nơi ta muốn tạo mới thư mục bên trong nó, nháy chuột vào nút lệnh trên thanh công cụ chuẩn, nhập tên cho thư mục mới à nhấn phím Enter.', 'Mở ổ đĩa, thư mục nơi ta muốn tạo mới thư mục bên trong nó, nháy chuột vào nút lệnh trên thanh công cụ chuẩn, nhập tên cho thư mục mới à nhấn phím Enter.', 'c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
