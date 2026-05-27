#!/bin/bash
# Push scripti — lock temizle + push at
# Bu scripti terminalde çalıştır: bash push-fix.sh

cd "$(dirname "$0")"

# Lock dosyalarını temizle
rm -f .git/index.lock .git/HEAD.lock 2>/dev/null

# Push (commit zaten hazır)
git push origin main

echo ""
echo "✅ Push tamamlandı!"
