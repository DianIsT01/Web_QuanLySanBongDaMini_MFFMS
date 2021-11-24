

<h1 align="center">
  Website Hệ thống quản lý sân bóng đá mini - Fullstack
</h1>
<p align="center" style="font-size: 1.2rem;">Ứng dụng quản lý sân banh mini (Mini Football Field Management System)</p>
<p align="center">
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License" /></a>
</p>

## Giới thiệu
* **MFFMS** (Mini Football Field Management System) là hệ thống quản lý sân bóng đá mini trên nền tảng web application. MFFMS hỗ trợ tin học hóa các chức năng nghiệp vụ cơ bản mà một sân bóng đá mini cần phải có.
* Repository có 2 phần bao gồm Front-end (React JS) và Back-end (C#)

## Demo UI

* Trang Login 
![image](https://user-images.githubusercontent.com/75024999/143257912-89f2e0e8-dc71-4be7-b13d-1b8a183fb213.png)

* Giao diện chính dành cho ADMIN
![image](https://user-images.githubusercontent.com/75024999/140855058-f8610bfa-406f-4592-8e10-513f714edc17.png) 

* Trang quản lý khách hàng
![image](https://user-images.githubusercontent.com/75024999/140855216-4970b82d-a85c-42b1-b54d-4db755f58891.png) 

* Xem chi tiết sân bóng
![image](https://user-images.githubusercontent.com/75024999/140855446-c554aa7f-7481-463c-8c99-71e37cccacec.png)

* Trang thống kê các thông tin về nhân viên
![image](https://user-images.githubusercontent.com/75024999/140855314-ef252c6b-af8f-4308-907d-625379dbc278.png) 

* Chức năng xuất báo cáo ra file EXCEL và PDF
![image](https://user-images.githubusercontent.com/75024999/140855579-d8bc0a08-7dba-4686-99e1-ed41e75f4cd5.png)
![image](https://user-images.githubusercontent.com/75024999/140855782-15c8e135-b50d-4f8f-ad36-055df5960e05.png)
![image](https://user-images.githubusercontent.com/75024999/140855883-45e6fbc3-eaca-4ab0-89bb-f41a22d59411.png)






## Các phân hệ chính
* Quản lý khách hàng
* Quản lý nhân viên
* Quản lý sân bóng
* Quản lý nhà cung cấp
* Quản lý đơn nhập hàng
* Quản lý tài sản thiết bị
* Quản lý phiếu đặt sân
* Quản lý dịch vụ
* Quản lý hóa đơn dịch vụ
* Quản lý người dùng
* Quản lý cài đặt
  
## Chức năng
* Tra cứu và tìm kiếm thông tin
* Thêm, xóa, sửa, xem thông tin chi tiết
* Xem số liệu thống kê theo khoảng thời gian cố định và tùy chọn
* Xem biểu đồ thống kê theo khoảng thời gian cố định và tùy chọn
* Xuất dữ liệu (danh sách, chi tiết, số liệu thống kê, biểu đồ) ra định dạng `*.xlsx` và `*.pdf`

## Chức năng dự kiến phát triển trong tương lai
* Nhập xuất dữ liệu từ file `*.json`
* Cho phép kết nối với hệ thống tiếp nhận lịch đặt sân từ phía khách hàng

## Thông tin cấu hình
|           | Ngôn ngữ lập trình    | Framework    | Môi trường phát triển                       |
|-----------|-----------------------|--------------|---------------------------------------------|
| Front End | HTML, CSS, JavaScript | ReactJS      | NodeJS 15.9.0<br>Microsoft Visual Code 1.62 |
| Back End  | C#                    | ASP.NET Core | ASP.NET Core 2.2<br>C# 6.0                  |

## Hướng dẫn các bước cài đặt và khởi chạy dự án
#### Về phía Front End
* Tải và cài đặt [NodeJS](https://nodejs.org/en/).
* Trong command line, thực thi dòng lệnh sau:
```bash
> npm install -g yarn
```
* Clone repository Web_QuanLySanBongDaMini_MFFMS về máy thông qua dòng lệnh sau:
```bash
> git clone https://github.com/vangiaurecca/Web_QuanLySanBongDaMini_MFFMS.git
```
* Chạy command line trong thư mục vừa được clone về, thực thi dòng lệnh sau:
```bash
> npm install --legacy-peer-deps
```
* Sau khi quá trình cài đặt hoàn tất, tiếp tục thực thi dòng lệnh sau:
```bash
> npm start
```
* Sau khi quá trình biên dịch hoàn tất, truy cập vào địa chỉ `http://localhost:3000`.

#### Về phía Back End
* Cài đặt [ASP.NET Core](https://dotnet.microsoft.com/download/dotnet-core/2.2), phiên bản 2.2.
* Cài đặt hệ quản trị CSDL MySQL trên máy tính với [XAMPP](https://www.apachefriends.org/download.html) 
> Các bước setup:
* 1. Kích hoạt chạy XAMPP
* 2. Mở project bằng Visual Studio Code, sau đó chọn New Terminal và thực thi các dòng lệnh sau. Chú ý đặt thư mục Backend là thư mục làm việc
```bash
> dotnet ef migrations add InitialCreate
> dotnet ef database update
```
* 3. Sau đó thực hiện gõ lệnh bên dưới và nhấn Enter
```bash
> dotnet build
```
* 4. Cuối cùng ta thực hiện lệnh
```bash
> dotnet run
```
* Sau khi quá trình hoàn tất, truy cập vào địa chỉ `http://localhost:5000`để  vào trang Swagger



## Thư viện
####  Front End
* [React](https://www.npmjs.com/package/react)
* [React DOM](https://www.npmjs.com/package/react-dom)
* [React Router DOM](https://www.npmjs.com/package/react-router-dom)
* [Redux](https://www.npmjs.com/package/redux)
* [React Redux](https://www.npmjs.com/package/react-redux)
* [React Countup](https://www.npmjs.com/package/react-countup)
* [React Date Range](https://www.npmjs.com/package/react-date-range)
* [React Time Picker](https://www.npmjs.com/package/react-time-picker)
* [React Select](https://www.npmjs.com/package/react-select)
* [RC Slider](https://www.npmjs.com/package/rc-slider)
* [React Notifications](https://www.npmjs.com/package/react-notifications)
* [Axios](https://www.npmjs.com/package/axios)
* [React ChartJS 2](https://www.npmjs.com/package/react-chartjs-2)
* [Clone Deep](https://www.npmjs.com/package/clone-deep)
* [Debounce](https://www.npmjs.com/package/debounce)
* [ExcelJS](https://www.npmjs.com/package/exceljs)
* [Export from JSON](https://www.npmjs.com/package/export-from-json)
* [File Saver](https://www.npmjs.com/package/file-saver)
* [Moment](https://www.npmjs.com/package/moment)

####  Back End
* [AutoMapper](https://www.nuget.org/packages/AutoMapper.Extensions.Microsoft.DependencyInjection/)
* [MySql.Data.EntityFrameworkCore](https://www.nuget.org/packages/MySql.Data.EntityFrameworkCore)
* [Swashbuckle.AspNetCore](https://www.nuget.org/packages/swashbuckle.aspnetcore/)

## Giấy phép
* [MIT](https://github.com/vangiaurecca/Web_QuanLySanBongDaMini_MFFMS/blob/master/LICENSE)
