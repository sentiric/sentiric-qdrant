# Kullandığınız ghcr.io/sentiric/sentiric-qdrant imajının temel aldığı 
# orijinal Qdrant imajını baz alıyoruz. Bu versiyonu kendi imajınıza göre güncelleyin.
FROM qdrant/qdrant:latest

# Root kullanıcıya geçip curl'ü yüklüyoruz.
# Zaten varsayılan olarak root'tayız ama garanti olsun diye ekliyoruz.
USER root
RUN apt-get update && apt-get install -y curl --no-install-recommends && rm -rf /var/lib/apt/lists/*