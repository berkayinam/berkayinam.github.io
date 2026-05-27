#!/bin/bash
# Toggle buton fix — LANG_MAP virgül hatası düzeltildi (61 dosya)
# Bu scripti terminalde çalıştır: bash push-fix.sh

cd "$(dirname "$0")"

# Lock dosyalarını temizle
rm -f .git/index.lock .git/HEAD.lock 2>/dev/null

# Commit ve push
git add -A
git commit -m "Fix: LANG_MAP virgül hatası düzeltildi — toggle butonlar tekrar çalışıyor"
git push origin main

echo ""
echo "✅ Push tamamlandı!"
