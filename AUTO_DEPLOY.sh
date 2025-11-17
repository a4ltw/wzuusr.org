#!/bin/bash
# 自動部署腳本 - 嘗試直接部署到 gh-pages

set -e

echo "🚀 嘗試自動部署到 gh-pages..."

# 檢查並創建 gh-pages 分支
git fetch origin claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj:gh-pages 2>/dev/null || {
    echo "⚠️  無法自動創建 gh-pages 分支"
    echo "請按照 DEPLOY_TROUBLESHOOTING.md 中的步驟手動操作"
    exit 1
}

# 嘗試推送
git push origin gh-pages 2>&1 && {
    echo "✅ 成功部署到 gh-pages！"
    echo "請訪問: https://github.com/a4ltw/wzuusr.org/settings/pages"
    echo "確認 GitHub Pages 已啟用"
} || {
    echo "❌ 推送失敗（權限限制）"
    echo ""
    echo "請手動完成以下步驟："
    echo "1. 訪問: https://github.com/a4ltw/wzuusr.org/branches"
    echo "2. 將 claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj 重命名為 gh-pages"
    echo "3. 訪問: https://github.com/a4ltw/wzuusr.org/settings/pages"
    echo "4. 啟用 GitHub Pages (選擇 gh-pages 分支)"
}
