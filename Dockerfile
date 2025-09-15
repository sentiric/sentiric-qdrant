# Kullandığınız ghcr.io/sentiric/sentiric-qdrant imajının temel aldığı 
# orijinal Qdrant imajını baz alıyoruz. Bu versiyonu kendi imajınıza göre güncelleyin.
FROM qdrant/qdrant:latest

# Root kullanıcıya geçip curl'ü yüklüyoruz ve sonra orijinal kullanıcıya dönüyoruz.
USER root
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Orijinal Dockerfile'da kullanıcı ID'si 0 değilse 'qdrant' kullanıcısı oluşturuluyor.
# Biz de o kullanıcıya geri dönelim. Eğer orijinal imajınız root ile çalışıyorsa
# bu satırı silebilirsiniz.
USER qdrant