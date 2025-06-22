# <h1 align="center">Framework_IS220.M11.HTCL_2<h1>


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="">
  </a>

  <h3 align="center">Coffee & Book</h3>

  <p align="center">
    Website quản lý chuỗi CoffeeBook bán lẻ hàng đầu Việt Nam
    <br />
    <a href="https://github.com/VHNhat/framework_IS220.M11.HTCL_2"><strong>Khám phá »</strong></a>
    <br />
    <br />
    <a href="https://coffee-huybui.vercel.app/">Xem Demo</a>
    ·
    <a href="https://github.com/VHNhat/framework_IS220.M11.HTCL_2/issues">Báo lỗi</a>
    ·
    <a href="https://github.com/VHNhat/framework_IS220.M11.HTCL_2/issues">Các yêu cầu</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Mục lục</summary>
  <ol>
    <li>
      <a href="#muctieu">Mục tiêu đồ án</a>
    </li>
    <li><a href="#framework">Các Framework</a></li>
    <li>
      <a href="#chucnang">Các chức năng</a>
    </li>
    <li><a href="#yeucau">Yêu cầu hệ thống</a></li>
    <li>
      <a href="#caidat">Cài đặt và sử dụng</a>
      <ul><a href="#setup">Setup môi trường</a></ul>
      <ul><a href="#start">Khởi động dự </a></ul>
    </li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->

# <h2 id="chucnang">Tóm tắt chức năng</h2>
- Khách hàng:<br/>
  + Đăng nhập, đăng ký, lấy lại mật khẩu
  + Mua và đặt hàng,sử dụng khuyến mãi
  + Xem thông tin vận đơn
  + Xem thông tin cơ bản của account khách hàng, cập nhật lại profile 
  + Nhận Email cảm ơn
  + Tra cứu cửa hàng , vị trí trên Google Map
  + Đọc tin tức <br/>
- Admin:<br/>
  Thêm sửa xóa các mục sau:
  + Hóa đơn,đơn hàng 
  + Tài khoản (account)
  + Danh sách khách hàng,nhân viên, quản lý
  + Danh sách các cửa hàng
  + Nhà cung cấp
  + Danh sách sản phẩm,tin tức
  + Nhóm quyền
  + Loại sản phẩm
  + Khuyến mãi <br/>
- Doanh số:<br/>
  + Kiểm tra được thông tin theo từng năm,tháng,ngày
  + Xuất thông tin báo cáo theo năm,tháng,ngày<br/>
- Quản lý sẽ được cấp mục sau:
  + Hóa đơn,đơn hàng (<b>chỉ xem và hủy đơn hàng</b>)
  + Danh sách khách hàng (<b>chỉ xem</b>)
  + Danh sách nhân viên(<b>Thêm xóa sửa</b>)
  + Danh sách các cửa hàng(<b>Chỉ xem chính cửa hàng đang được sở hữu</b>)
  + Danh sách sản phẩm,tin tức(<b>thêm xóa sửa</b>)
  + Loại sản phẩm(<b>thêm xóa sửa</b>)
  + Khuyến mãi (<b>thêm xóa sửa</b>)<br/>
- Nhân viên sẽ được cấp mục sau:
  + Hóa đơn,đơn hàng (<b>chỉ xem</b>)
  + Danh sách khách hàng (<b>chỉ xem</b>)
  + Danh sách sản phẩm,tin tức (<b>chỉ xem</b>)
  + Loại sản phẩm (<b>chỉ xem</b>)
  + Khuyến mãi (<b>chỉ xem</b>) <br/>
- Giao hàng sẽ được cấp mục sau:<br/>
  + Hóa đơn,đơn hàng (<b>Xóa , Hoàn tất đơn hàng</b>) <br/>
- Bảng thống kê doanh thu sẽ được tự động cập nhật khi người dùng chọn ngày và xuất thông tin thành file excel đúng như người dùng thấy trên bảng kết quả. <br/>
- Khi admin muốn chuyển quản lý sang một cửa hàng khác thì tự động quản lý ở cửa hàng cũ sẽ không tồn tại quản lý. <br/>
- Tạo account tương ứng cho quản lý sẽ chỉ được lựa chọn các nhân viên chưa có tài khoản và tự động phân quyền theo các role đã được định sẵn. <br/>

# <h2 id="bonus">Chức năng Bonus</h2>
 + Sử dụng kho lưu trữ firebase để tải và lưu hình ảnh.
 + Emailjs để gửi mail đến khách hàng
 + Xuất Excel 
 + Xác thực, phân quyền tài khoản và HashPassword
 + Ứng dụng Facebook developers (Messenger) liên kết với fanpage của CoffeeBook

# <h2 id="yeucau">Yêu cầu hệ thống:</>
- NodeJS 14.18.1
- ASP.NET: .Net 5.0

# <h2 id="caidat">Cài đặt và sử dụng</h2>
## <h3 id="setup">Setup môi trường</h3>
1. Tải và cài đặt NodeJs 14.18.1. Link tải [NodeJS](https://nodejs.org/dist/v14.18.1/node-v14.18.1-x64.msi)
+ Vào cmd gõ 
 ```sh
   npm install yarn -g
   ```
2. Tải mySQL:
- Cách tải bằng docker:

Bước 1: Tải và cài docker desktop
- Link tải: [Docker](https://docs.docker.com/desktop/windows/install/)

Bước 2: Tải MySql trên docker:
- Chạy lệnh Run as administrator Powershell -> gõ lệnh:
```sh
   docker run --name MySQLDB -e MYSQL_ROOT_PASSWORD=1234 -p 3306:3306 -d mysql
   ```
- Sau khi docker đã tải mySQL thì bấm nút run để khởi động mySQL

3. Tải mySQL Workbench - Công cụ làm việc với CSDL mySQL
- Link tải: [mySQL Workbench](https://www.mysql.com/products/workbench/)

4. Tải và cài đặt Visual Studio 2017 trở lên

## <h3 id="start">Khởi động dự án</h3>
### Backend 
- Bước 1: Mở file "CoffeeBook.sln" để khởi động dự án
- Bước 2: migration database 
+ Cách làm: Tools -> Nuget Package Manager -> Package Manager Console.
+ Gõ câu lệnh: 
```sh
   update-database
   ```
- Bước 3: Kiểm tra trong CSDL xem đã có database "CoffeeBook" chưa?
- Bước 4: Nếu đã xong bước migration database, tiếp theo ta chỉ cần run project.

### Frontend
1. Trang Admin (dành cho Admin, Manager, Staff sử dụng)
- Bước 1: tải node-module vào các thư mục "Admin" để chạy React
+ Cách tải: Trỏ đường dẫn vào folder Admin gõ cmd:
  ```sh
   yarn
   ```
- Bước 2: Sau khi đã tải xong node-module, để khởi động trang admin gõ cmd tại đường dẫn tại folder Admin: 
  ```sh
   yarn start
   ```
- Bước 3: Nếu nó thông báo trùng port, muốn chạy trên port khác hay không? Thì nhấn "y" và enter.
- Bước 4: Chờ chương trình sẽ mở ra trang web của dự án.

2. Trang Main (dành cho các customer mua, đặt hàng)
- Bước 1: tải node-module vào các thư mục "Main" để chạy React
+ Cách tải: trỏ đường dẫn vào folder Main gõ cmd:
  ```sh
   yarn
   ```
- Bước 2: Sau khi đã tải xong node-module, để khởi động trang admin gõ cmd tại đường dẫn tại folder Main:
  ```sh
   yarn start
   ```
- Bước 3: Nếu nó thông báo trùng port, muốn chạy trên port khác hay không? Thì nhấn "y" và enter.
- Bước 4: Chờ chương trình sẽ mở ra trang web của dự án.


