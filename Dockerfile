# Sử dụng hình ảnh Ubuntu làm cơ sở
FROM ubuntu:latest

# Cài đặt Python 3.8 và các gói cần thiết
RUN apt-get update && apt-get install -y \
    python3.8 \
    python3-pip \
    python3-venv \
    && apt-get clean

# Thiết lập thư mục làm việc
WORKDIR /Odoo-Training


# Sao chép nội dung của thư mục Odoo-Training vào container
COPY Odoo-Training /Odoo-Training

# Giữ container chạy liên tục
CMD ["tail", "-f", "/dev/null"]