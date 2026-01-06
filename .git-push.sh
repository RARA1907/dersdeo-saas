#!/bin/bash

# DERSDEO SaaS - Otomatik Git Push Script
# Kullanım: ./git-push.sh "commit mesajı"

# Renkler
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}🚀 DERSDEO SaaS - Git Push Başlatılıyor...${NC}"

# Commit mesajı kontrolü
if [ -z "$1" ]; then
    echo -e "${YELLOW}⚠️  Commit mesajı girilmedi. Varsayılan mesaj kullanılıyor.${NC}"
    COMMIT_MSG="Update: $(date '+%Y-%m-%d %H:%M:%S')"
else
    COMMIT_MSG="$1"
fi

# Git işlemleri
echo -e "${GREEN}📦 Dosyalar ekleniyor...${NC}"
git add .

echo -e "${GREEN}💾 Commit yapılıyor: $COMMIT_MSG${NC}"
git commit -m "$COMMIT_MSG"

echo -e "${GREEN}☁️  GitHub'a push ediliyor...${NC}"
git push origin main

echo -e "${GREEN}✅ Tamamlandı! GitHub'da güncellendi.${NC}"
echo -e "${GREEN}🔗 Repo: https://github.com/RARA1907/dersdeo-saas${NC}"
