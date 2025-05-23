# Sử dụng image NGINX chính thức
FROM nginx:alpine

# Xóa cấu hình mặc định (nếu muốn)
RUN rm -rf /usr/share/nginx/html/*

# Copy file HTML, JS vào thư mục gốc của NGINX
COPY . /usr/share/nginx/html

# Expose cổng 80 để truy cập
EXPOSE 80

# NGINX sẽ tự động chạy theo mặc định
