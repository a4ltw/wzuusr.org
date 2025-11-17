#!/bin/bash

# MkDocs 網站部署腳本
# 用於將網站部署到 GitHub Pages

set -e

echo "🚀 開始部署 MkDocs 網站到 GitHub Pages..."
echo ""

# 顏色定義
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 1. 檢查是否在正確的分支
CURRENT_BRANCH=$(git branch --show-current)
echo -e "${BLUE}📍 當前分支: $CURRENT_BRANCH${NC}"

# 2. 確保所有更改已提交
if [[ -n $(git status -s) ]]; then
    echo -e "${YELLOW}⚠️  檢測到未提交的更改，正在提交...${NC}"
    git add .
    git commit -m "Update: 準備部署網站" || echo "沒有需要提交的更改"
fi

# 3. 安裝依賴
echo ""
echo -e "${BLUE}📦 安裝依賴...${NC}"
pip install -q -r requirements.txt

# 4. 構建網站
echo ""
echo -e "${BLUE}🔨 構建網站...${NC}"
mkdocs build --clean --site-dir site

# 5. 創建部署分支
echo ""
echo -e "${BLUE}🌿 準備部署分支...${NC}"

DEPLOY_BRANCH="claude/gh-pages-$(date +%Y%m%d%H%M%S)"
echo "部署分支名稱: $DEPLOY_BRANCH"

# 創建新的孤立分支
git checkout --orphan $DEPLOY_BRANCH

# 清理所有文件
git rm -rf . 2>/dev/null || true

# 恢復必要的根目錄文件
git checkout master -- index.html CNAME 2>/dev/null || true

# 創建 .nojekyll 文件
touch .nojekyll

# 複製構建的網站到 n/ 目錄
mkdir -p n
cp -r site/* n/

# 清理構建目錄
rm -rf site

# 6. 提交部署內容
echo ""
echo -e "${BLUE}💾 提交部署內容...${NC}"
git add -A
git commit -m "Deploy: MkDocs site to /n/ - $(date +'%Y-%m-%d %H:%M:%S')"

# 7. 推送到遠程
echo ""
echo -e "${BLUE}📤 推送到 GitHub...${NC}"
git push -u origin $DEPLOY_BRANCH

# 8. 切回原分支
git checkout $CURRENT_BRANCH

echo ""
echo -e "${GREEN}✅ 部署分支已成功創建並推送！${NC}"
echo ""
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}📋 接下來請完成以下步驟：${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "1. 訪問 GitHub 倉庫分支頁面："
echo "   https://github.com/a4ltw/wzuusr.org/branches"
echo ""
echo "2. 找到分支: $DEPLOY_BRANCH"
echo ""
echo "3. 重命名為: gh-pages"
echo "   (點擊分支旁邊的選項按鈕 ⋮ → Rename branch)"
echo ""
echo "4. 啟用 GitHub Pages："
echo "   訪問: https://github.com/a4ltw/wzuusr.org/settings/pages"
echo "   - Source: 選擇 'gh-pages' 分支"
echo "   - 目錄: 選擇 '/ (root)'"
echo "   - 點擊 'Save'"
echo ""
echo "5. 等待 1-3 分鐘，然後訪問："
echo "   https://www.wzuusr.org/n/"
echo ""
echo -e "${GREEN}🎉 完成後您的網站就會上線了！${NC}"
echo ""
