# GitHub Pages 部署指南

## 🎉 網站已成功構建！

您的 MkDocs 網站已經構建完成並推送到分支：`claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj`

## 📋 接下來需要完成的步驟

### 方案 A：手動設置 gh-pages 分支（推薦，最快）

1. **在 GitHub 網頁上進行以下操作：**

   訪問：https://github.com/a4ltw/wzuusr.org/branches

2. **重命名部署分支為 gh-pages：**
   - 找到分支 `claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj`
   - 點擊旁邊的選項按鈕（三個點）
   - 選擇 "Rename branch"
   - 將分支名稱改為 `gh-pages`
   - 點擊 "Rename branch" 確認

3. **啟用 GitHub Pages：**
   - 前往：https://github.com/a4ltw/wzuusr.org/settings/pages
   - 在 "Source" 下拉選單中選擇 `gh-pages` 分支
   - 目錄選擇 `/ (root)`
   - 點擊 "Save"

4. **等待部署完成：**
   - GitHub 會自動部署您的網站
   - 通常需要 1-3 分鐘
   - 您可以在 Settings → Pages 頁面查看部署狀態

---

### 方案 B：使用命令行（如果您有推送 gh-pages 的權限）

```bash
# 獲取部署分支
git fetch origin claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj:gh-pages

# 推送到 gh-pages
git push origin gh-pages

# 刪除臨時分支（可選）
git push origin --delete claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj
```

然後前往 GitHub Settings → Pages 啟用 GitHub Pages。

---

## 🌐 部署後的網站網址

完成上述步驟後，您的網站將可通過以下網址訪問：

- **主網站（Wix 重定向）**: https://www.wzuusr.org/
- **新網站（MkDocs）**: https://www.wzuusr.org/n/

---

## 🔄 未來如何更新網站

完成初次部署後，未來更新網站非常簡單：

### 方法 1：自動部署（推薦）

1. 編輯 `docs/n/` 下的 Markdown 文件
2. 提交並推送到 `master` 分支：
   ```bash
   git add docs/n/
   git commit -m "更新網站內容"
   git push origin master
   ```
3. GitHub Actions 會自動構建並部署到 `/n/`

**注意**：由於您的倉庫設置了推送限制（只能推送到 `claude/` 開頭的分支），您可能需要：
- 在 GitHub 網頁上直接編輯文件
- 或者調整倉庫的推送權限設置
- 或者通過 Pull Request 的方式合併更改

### 方法 2：手動部署

如果自動部署不可用，您可以重複本次的手動部署流程。

---

## 📂 網站目錄結構

部署後的目錄結構：

```
gh-pages 分支
├── .nojekyll              # 禁用 Jekyll 處理
├── CNAME                  # 域名配置（www.wzuusr.org）
├── index.html            # 根目錄重定向到 Wix
└── n/                    # MkDocs 網站
    ├── index.html        # 網站首頁
    ├── assets/           # CSS、JS、圖片
    ├── activities/       # 活動紀錄頁面
    ├── awards/           # 得獎資訊頁面
    ├── team/             # 團隊介紹頁面
    ├── materials/        # 教材頁面
    └── ...               # 其他頁面
```

---

## ✅ 驗證部署

部署完成後，請訪問以下網址驗證：

1. **根目錄測試**：https://www.wzuusr.org/
   - 應該會重定向到 Wix 網站

2. **新網站測試**：https://www.wzuusr.org/n/
   - 應該顯示 MkDocs 首頁
   - 檢查導航欄是否正常
   - 測試搜索功能
   - 檢查各個頁面連結

---

## 🐛 故障排除

### 問題：404 錯誤

**解決方案**：
- 確認 GitHub Pages 已啟用
- 確認選擇的是 `gh-pages` 分支
- 等待幾分鐘讓 GitHub 完成部署

### 問題：根目錄沒有重定向到 Wix

**解決方案**：
- 檢查 gh-pages 分支的根目錄是否有 `index.html`
- 確認 `index.html` 包含重定向代碼

### 問題：/n/ 路徑顯示空白或錯誤

**解決方案**：
- 檢查 gh-pages 分支是否有 `n/` 目錄
- 檢查 `n/` 目錄下是否有 `index.html`
- 清除瀏覽器緩存並重新訪問

---

## 📞 需要幫助？

如果遇到任何問題，請檢查：

1. GitHub Actions 日誌（未來自動部署時）
2. GitHub Pages 設置頁面的部署狀態
3. 瀏覽器控制台的錯誤信息

---

**完成部署後請刪除本文件，或保留作為參考。**
