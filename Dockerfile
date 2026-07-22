# استخدام نسخة رسمية وخفيفة من Alpine تحتوي على نواة Xray
FROM teddysun/xray:latest

# تحديد دليل العمل داخل الحاوية
WORKDIR /etc/xray

# نسخ ملف الإعدادات من المجلد المحلي إلى داخل الحاوية
COPY config.json /etc/xray/config.json

# فتح المنفذ المحلي 10808 (الذي سيتصل به متصفحك أو جهازك)
EXPOSE 10808

# الأمر المسؤول عن تشغيل النفق فور تشغيل الحاوية
CMD ["xray", "-config", "/etc/xray/config.json"]
