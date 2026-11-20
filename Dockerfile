# 1. 选用轻量级官方 Python 基础镜像，减小体积
FROM python:3.11-slim

# 2. 设置容器内的工作目录
WORKDIR /app

# 3. 先单独复制依赖文件并安装（利用 Docker 缓存机制，以后只改代码时不用重装依赖）
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. 再复制业务代码
COPY app.py .

# 5. 声明容器暴露的端口
EXPOSE 5000

# 6. 容器启动时执行的命令
CMD ["python", "app.py"]
