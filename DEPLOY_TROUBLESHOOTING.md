# 🔧 完整部署教學 - 圖文詳解

## 問題診斷

當前狀態：
- ✅ 網站已構建完成
- ✅ 部署分支已推送：`claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj`
- ❌ 分支尚未重命名為 `gh-pages`
- ❌ GitHub Pages 尚未啟用

結果：訪問 https://www.wzuusr.org/n/ 還是顯示舊版本或 404

---

## 🎯 解決方案 - 完整步驟

### 步驟 1️⃣：重命名分支（必須先完成）

**1.1 打開瀏覽器，訪問分支列表頁：**
```
https://github.com/a4ltw/wzuusr.org/branches
```

**1.2 找到部署分支：**
在頁面中尋找名為 `claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj` 的分支

**1.3 重命名分支：**
- 在該分支的右側，找到「鉛筆圖標」或「三個點」的按鈕
- 點擊後選擇「Rename branch」（重命名分支）
- 在彈出的輸入框中，將分支名改為：`gh-pages`
- 點擊「Rename branch」按鈕確認

**⚠️ 重要提醒：**
- 分支名必須完全是 `gh-pages`（不能有任何前綴或後綴）
- GitHub Pages 只識別名為 `gh-pages` 的分支

---

### 步驟 2️⃣：啟用 GitHub Pages

**2.1 訪問 GitHub Pages 設置頁：**
```
https://github.com/a4ltw/wzuusr.org/settings/pages
```

**2.2 配置部署設置：**

在「Build and deployment」區域：

1. **Source（來源）**：
   - 選擇：`Deploy from a branch`

2. **Branch（分支）**：
   - 第一個下拉選單：選擇 `gh-pages`
   - 第二個下拉選單：選擇 `/ (root)`

3. **點擊「Save」按鈕**

**2.3 等待部署：**
- 頁面頂部會顯示部署狀態
- 通常需要 1-3 分鐘
- 完成後會顯示綠色勾勾和網址

---

### 步驟 3️⃣：驗證部署

**3.1 等待幾分鐘後，訪問：**
```
https://www.wzuusr.org/n/
```

**3.2 預期結果：**
- ✅ 看到 Material Design 風格的網站
- ✅ 頂部有藍色導航欄
- ✅ 顯示「文藻小螺絲釘 WZU USR 計畫」
- ✅ 左側有搜索框和目錄

**3.3 如果還是顯示舊版本：**
- 清除瀏覽器緩存（Ctrl+Shift+R 或 Cmd+Shift+R）
- 嘗試無痕模式
- 再等待 2-3 分鐘

---

## 🐛 常見問題排除

### 問題 1：找不到分支

**症狀：** 在分支列表頁找不到 `claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj`

**解決方法：**
```bash
# 在本地執行，確認分支已推送
git branch -r | grep gh-pages
```

如果顯示為空，執行：
```bash
git push origin claude/gh-pages-019BaRo8qXiwuHys2PJN57Mj
```

---

### 問題 2：GitHub Pages 選項中沒有 gh-pages 分支

**症狀：** 在 Settings → Pages 中，Branch 下拉選單沒有 `gh-pages` 選項

**原因：** 分支還沒有重命名成功

**解決方法：** 返回步驟 1️⃣，確保分支名稱完全是 `gh-pages`

---

### 問題 3：部署後顯示 404

**症狀：** 訪問 https://www.wzuusr.org/n/ 顯示 404 Not Found

**可能原因 1：** GitHub Pages 還在構建中
- **解決方法：** 等待 3-5 分鐘

**可能原因 2：** /n/ 目錄不存在
- **解決方法：** 檢查 gh-pages 分支是否有 n/ 目錄
- 訪問：https://github.com/a4ltw/wzuusr.org/tree/gh-pages/n

**可能原因 3：** 域名配置問題
- **解決方法：** 確認 CNAME 文件內容是 `www.wzuusr.org`

---

### 問題 4：根目錄重定向失效

**症狀：** 訪問 https://www.wzuusr.org/ 沒有跳轉到 Wix

**解決方法：** 檢查 gh-pages 分支根目錄是否有 `index.html`

---

## 📞 需要進一步協助？

如果按照上述步驟操作後仍有問題，請提供以下信息：

1. 在 Settings → Pages 頁面截圖
2. 訪問 https://www.wzuusr.org/n/ 的截圖或錯誤信息
3. 瀏覽器控制台的錯誤信息（F12 → Console）

---

## ✅ 成功標誌

部署成功後，您應該看到：

**首頁（https://www.wzuusr.org/n/）：**
- 現代化的 Material Design 界面
- 藍色主題色
- 響應式導航欄
- 完整的頁面內容

**根目錄（https://www.wzuusr.org/）：**
- 自動跳轉到 Wix 網站

---

**祝您部署順利！** 🎉
