# Gunakan image dasar Python
FROM python:3.11-slim

# Set working dir
WORKDIR /app

# Salin dependency file dan install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin source code
COPY app/ ./app

# Expose port (hanya dokumentasi)
EXPOSE 5000

# Jalankan aplikasi
CMD ["python", "app/app.py"]
