# 文藻小螺絲釘 WZU USR 計畫網站

以科技傳遞溫暖，用愛心永續關懷 | Tech warms, love sustains, worldwide connection.

---

## 📌 網站架構

本倉庫包含兩個網站：

- **主網站** (`/`): https://www.wzuusr.org/
  - 重定向到原有的 Wix 網站
  - 由 `index.html` 控制

- **新網站** (`/n/`): https://www.wzuusr.org/n/
  - 基於 MkDocs Material 構建
  - **透過修改 Markdown 文件即可更新內容**
  - 自動部署到 GitHub Pages

---

## 🚀 快速開始

### 更新網站內容（最簡單的方式）

只需要三個步驟：

1. **編輯 Markdown 文件**
   - 進入 `docs/n/` 目錄
   - 找到要修改的 `.md` 文件
   - 使用任何文字編輯器修改內容

2. **提交更改**
   ```bash
   git add docs/n/
   git commit -m "更新網站內容"
   git push
   ```

3. **等待自動部署**
   - GitHub Actions 會自動構建並部署網站
   - 大約 2-3 分鐘後，訪問 https://www.wzuusr.org/n/ 查看更新

---

## 📁 目錄結構

```
wzuusr.org/
├── docs/n/                          # 網站內容目錄
│   ├── index.md                    # 首頁
│   ├── team.md                     # 計畫團隊
│   ├── framework.md                # 執行架構
│   ├── activities.md               # 活動紀錄
│   ├── awards.md                   # 得獎資訊
│   ├── fields.md                   # 實踐場域
│   ├── news.md                     # 媒體報導
│   ├── materials/                  # 數位教材
│   │   ├── index.md
│   │   ├── animation.md
│   │   ├── english.md
│   │   └── chinese.md
│   ├── enroll/                     # 報名資訊
│   │   └── index.md
│   └── assets/                     # 資源文件
│       ├── images/                 # 圖片
│       ├── stylesheets/            # CSS 樣式
│       │   └── extra.css
│       └── javascripts/            # JavaScript
│           └── extra.js
├── mkdocs.yml                      # MkDocs 配置文件
├── requirements.txt                # Python 依賴
├── .github/workflows/              # GitHub Actions 自動部署
│   └── deploy.yml
├── index.html                      # 根目錄重定向頁面（不要修改）
├── CNAME                           # 域名配置（不要修改）
└── README.md                       # 本文件
```

---

## ✏️ 如何編輯內容

### 1. 編輯現有頁面

找到對應的 Markdown 文件並編輯：

**範例：更新首頁內容**

```bash
# 編輯首頁
vim docs/n/index.md

# 或使用其他編輯器
nano docs/n/index.md
code docs/n/index.md  # VS Code
```

### 2. 添加圖片

將圖片放入 `docs/n/assets/images/` 目錄，然後在 Markdown 中引用：

```markdown
![圖片描述](assets/images/your-image.jpg)
```

### 3. 添加新頁面

1. 在 `docs/n/` 目錄下創建新的 `.md` 文件
2. 在 `mkdocs.yml` 的 `nav` 部分添加導航項目

**範例：添加「聯絡我們」頁面**

```bash
# 創建新文件
touch docs/n/contact.md

# 編輯內容
vim docs/n/contact.md
```

然後在 `mkdocs.yml` 中添加：

```yaml
nav:
  - 首頁: index.md
  - 計畫團隊: team.md
  # ... 其他頁面
  - 聯絡我們: contact.md  # 新增這一行
```

### 4. Markdown 語法參考

```markdown
# 一級標題
## 二級標題
### 三級標題

**粗體文字**
*斜體文字*

- 無序列表項目 1
- 無序列表項目 2

1. 有序列表項目 1
2. 有序列表項目 2

[連結文字](https://example.com)

![圖片](assets/images/image.jpg)

> 引用文字

`代碼`

\`\`\`python
# 代碼塊
print("Hello, World!")
\`\`\`
```

---

## 🎨 自定義樣式

### 修改顏色主題

編輯 `mkdocs.yml`:

```yaml
theme:
  palette:
    - scheme: default
      primary: blue      # 修改主色調
      accent: light-blue  # 修改強調色
```

可用顏色：red, pink, purple, deep purple, indigo, blue, light blue, cyan, teal, green, light green, lime, yellow, amber, orange, deep orange

### 添加自定義 CSS

編輯 `docs/n/assets/stylesheets/extra.css`:

```css
/* 自定義樣式 */
.my-custom-class {
  color: #1976d2;
  font-size: 1.2rem;
}
```

然後在 Markdown 中使用：

```markdown
<div class="my-custom-class">
  這段文字會使用自定義樣式
</div>
```

---

## 🔧 本地測試

在提交更改前，可以在本地預覽網站：

### 1. 安裝依賴

```bash
# 使用 pip
pip install -r requirements.txt

# 或使用虛擬環境（推薦）
python -m venv venv
source venv/bin/activate  # Linux/Mac
# venv\Scripts\activate   # Windows
pip install -r requirements.txt
```

### 2. 啟動本地服務器

```bash
mkdocs serve
```

### 3. 查看預覽

在瀏覽器中訪問：http://127.0.0.1:8000

服務器會自動檢測文件更改並重新加載頁面。

### 4. 構建靜態網站

```bash
mkdocs build
```

構建後的網站會在 `site/` 目錄中。

---

## 🚀 部署流程

### 自動部署（推薦）

1. 編輯 `docs/n/` 下的 Markdown 文件
2. 提交並推送到 `main` 或 `master` 分支：

```bash
git add .
git commit -m "更新網站內容"
git push origin main
```

3. GitHub Actions 會自動：
   - 安裝依賴
   - 構建網站
   - 部署到 GitHub Pages 的 `/n/` 路徑
   - 大約 2-3 分鐘完成

### 手動觸發部署

在 GitHub 倉庫頁面：

1. 點擊 "Actions" 標籤
2. 選擇 "部署 MkDocs 網站到 GitHub Pages /n/"
3. 點擊 "Run workflow"

---

## 📝 常見任務

### 更新首頁橫幅內容

編輯 `docs/n/index.md`，修改開頭的內容：

```markdown
## 文藻小螺絲釘 WZU USR 計畫

Wenzao USR: Tech with Heart

Tech warms, love sustains, worldwide connection.
```

### 添加活動記錄

編輯 `docs/n/activities.md`，按照現有格式添加新活動：

```markdown
### 2025 新活動名稱

活動日期：2025-XX-XX

活動內容描述...

![活動照片](assets/images/activity-photo.jpg)
```

### 更新得獎資訊

編輯 `docs/n/awards.md`。

### 添加教材

在 `docs/n/materials/` 目錄下編輯對應文件。

---

## 🔍 故障排除

### 網站沒有更新

1. 檢查 GitHub Actions 狀態：
   - 前往 GitHub 倉庫 → Actions
   - 查看最新的工作流運行狀態

2. 清除瀏覽器緩存：
   - 按 Ctrl+Shift+R (Windows/Linux)
   - 按 Cmd+Shift+R (Mac)

3. 等待幾分鐘：
   - GitHub Pages 可能需要幾分鐘才能更新

### 構建失敗

查看 Actions 日誌中的錯誤信息：

- **Markdown 語法錯誤**：檢查文件格式
- **圖片路徑錯誤**：確保圖片存在於正確位置
- **YAML 配置錯誤**：檢查 `mkdocs.yml` 格式

### 圖片無法顯示

1. 確保圖片在 `docs/n/assets/images/` 目錄中
2. 檢查 Markdown 中的圖片路徑：
   ```markdown
   ![描述](assets/images/your-image.jpg)
   ```
3. 確保圖片文件名沒有空格或特殊字符

---

## 📚 進階功能

### 使用 Admonitions（提示框）

```markdown
!!! note "提示"
    這是一個提示框

!!! warning "警告"
    這是一個警告框

!!! tip "小技巧"
    這是一個小技巧
```

### 使用 Tabs（標籤頁）

```markdown
=== "Tab 1"
    內容 1

=== "Tab 2"
    內容 2
```

### 使用表格

```markdown
| 標題 1 | 標題 2 | 標題 3 |
|-------|-------|-------|
| 內容 1 | 內容 2 | 內容 3 |
| 內容 4 | 內容 5 | 內容 6 |
```

### 嵌入 YouTube 影片

```markdown
<iframe width="560" height="315"
  src="https://www.youtube.com/embed/VIDEO_ID"
  frameborder="0" allowfullscreen>
</iframe>
```

---

## 🤝 貢獻指南

1. Fork 本倉庫
2. 創建功能分支：`git checkout -b feature/amazing-feature`
3. 提交更改：`git commit -m '添加某個很棒的功能'`
4. 推送分支：`git push origin feature/amazing-feature`
5. 提交 Pull Request

---

## 📞 技術支援

- **文檔問題**：查看 [MkDocs Material 文檔](https://squidfunk.github.io/mkdocs-material/)
- **GitHub Issues**：在本倉庫提交 Issue
- **社交媒體**：通過 Facebook/Instagram 聯繫團隊

---

## 📄 授權

Copyright © 2024 文藻外語大學 USR 計畫

---

## 🎯 快速參考

### 常用命令

```bash
# 本地預覽
mkdocs serve

# 構建網站
mkdocs build

# 提交更改
git add .
git commit -m "更新內容"
git push

# 查看狀態
git status

# 拉取最新更改
git pull
```

### 重要文件

- `docs/n/index.md` - 首頁
- `mkdocs.yml` - 網站配置
- `docs/n/assets/stylesheets/extra.css` - 自定義樣式
- `.github/workflows/deploy.yml` - 自動部署配置

### 有用的連結

- [MkDocs 官方文檔](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [Markdown 語法指南](https://www.markdownguide.org/)
- [GitHub Pages 文檔](https://docs.github.com/en/pages)

---

**祝您使用愉快！**

如有任何問題，歡迎隨時聯繫我們。
