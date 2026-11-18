# ASCII Christmas Tree 3D & Split-Screen Reel Generator

Hiệu ứng cây thông Noel 3D bằng ký tự ASCII kèm nhạc nền tổng hợp (80s synth-pop *"Last Christmas"* hoặc nhạc Giáng sinh truyền thống) và trình xuất video dọc 9:16 chia đôi màn hình.

## Cách chạy nhanh (Chỉ 1 lệnh duy nhất)

### Trên Windows:
Tải dự án về, giải nén, mở Terminal (PowerShell hoặc CMD) tại thư mục dự án và chạy:
```powershell
.\run.bat
```
*(Hoặc nhấp đúp chuột trực tiếp vào file `run.bat`. Script sẽ tự động kiểm tra Python, tự cài đặt nếu máy chưa có, tạo môi trường ảo, tải thư viện và chạy chương trình).*

### Trên macOS / Linux:
```bash
chmod +x run.sh && ./run.sh
```

## Các tùy chọn mở rộng
* **Xuất video MP4 dọc 9:16 (chia đôi màn hình code + cây thông):**
  ```powershell
  .\run.bat --export
  ```
* **Đổi sang nhạc Giáng sinh truyền thống:**
  ```powershell
  .\run.bat --theme traditional
  ```
* **Chèn file nhạc MP3 riêng:**
  ```powershell
  .\run.bat --audio path\to\music.mp3 --audio-start 18.0
  ```

## Phím điều khiển trong cửa sổ hiệu ứng
* `Space`: Tạm dừng / Tiếp tục
* `R`: Chạy lại từ đầu
* `Left` / `Right`: Tua lùi / tới 1 giây
* `S`: Lưu ảnh chụp màn hình vào thư mục `output/`
* `Esc` / `Q`: Thoát
