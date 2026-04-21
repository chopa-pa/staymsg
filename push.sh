#!/bin/bash
cd "$(dirname "$0")"

echo "📦 변경사항 확인 중..."
git add index.html sw.js manifest.json icon-192.png icon-512.png StayMsg_릴리즈노트.txt

MSG="${1:-업데이트}"
git commit -m "$MSG"

echo "🚀 GitHub에 업로드 중..."
git push origin main

echo "✅ 완료! https://github.com/chopa-pa/staymsg"
