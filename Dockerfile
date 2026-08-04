# استخدام nginx كسيرفر خفيف لتقديم ملفات HTML الثابتة
FROM nginx:alpine

# نسخ كل ملفات الموقع (index.html والصور والـ CSS إلخ) إلى مجلد nginx الافتراضي
COPY . /usr/share/nginx/html

# فتح البورت 80 (البورت الافتراضي لـ nginx)
EXPOSE 80

# nginx يشتغل تلقائياً، ما يحتاج أمر إضافي
