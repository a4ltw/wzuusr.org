# 網站導航結構說明

## ✅ 已完成多層下拉選單整合

所有頁面已成功整合進導航結構中，實現了多層下拉選單。

---

## 📋 完整導航結構

### 🏠 首頁
- `index.md` - 網站首頁

### 👥 計畫團隊（下拉選單）
- 團隊總覽 - `team/index.md`
- 計畫緣起 - `team/origin.md`
- 合作夥伴 - `team/partners.md`
- 主持團隊 - `team/host-team.md`
- 1132教師社群 - `team/faculty.md`

### ⚙️ 執行架構
- `framework.md` - 組織架構

### 📚 數位教材（下拉選單）
- 總覽 - `materials/index.md`
- 動畫/繪本 - `materials/animation.md`
- 英文教材 - `materials/english.md`
- 華文教材 - `materials/chinese.md`

### 🎯 活動紀錄（下拉選單）
- 活動總覽 - `activities/index.md`
- 2025蚵寮AI永續探索營 - `activities/2025-oyster-ai.md`
- 2025攝影展《遊SEA時光》 - `activities/2025-photo-exhibition.md`
- 2025義大醫院移工健檢口譯 - `activities/2025-hospital-interpretation.md`
- 2025期末慶賀 - `activities/2025-celebration.md`

### 🏆 得獎資訊
- `awards.md` - 獎項與榮譽

### 📍 實踐場域
- `fields.md` - 服務場域介紹

### 📰 媒體報導（下拉選單）
- 報導總覽 - `news/index.md`
- USR EXPO (英文) - `news/usr-expo-en.md`
- USR EXPO (中文) - `news/usr-expo-zh.md`

### 📝 報名資訊
- `enroll/index.md` - 報名方式與課程資訊

---

## 🎨 導航效果

### 桌面版
- 頂部水平導航欄
- 滑鼠懸停顯示下拉選單
- 二級選單縮排顯示

### 手機版
- 漢堡選單
- 點擊展開子選單
- 清晰的層級結構

---

## 📂 文件組織結構

```
docs/n/
├── index.md                          # 首頁
├── framework.md                      # 執行架構
├── awards.md                         # 得獎資訊
├── fields.md                         # 實踐場域
│
├── team/                            # 計畫團隊目錄
│   ├── index.md                     # 團隊總覽
│   ├── origin.md                    # 計畫緣起
│   ├── partners.md                  # 合作夥伴
│   ├── host-team.md                 # 主持團隊
│   └── faculty.md                   # 1132教師社群
│
├── materials/                       # 數位教材目錄
│   ├── index.md                     # 教材總覽
│   ├── animation.md                 # 動畫/繪本
│   ├── english.md                   # 英文教材
│   └── chinese.md                   # 華文教材
│
├── activities/                      # 活動紀錄目錄
│   ├── index.md                     # 活動總覽
│   ├── 2025-oyster-ai.md           # 蚵寮AI永續探索營
│   ├── 2025-photo-exhibition.md    # 攝影展
│   ├── 2025-hospital-interpretation.md  # 醫院口譯
│   └── 2025-celebration.md         # 期末慶賀
│
├── news/                            # 媒體報導目錄
│   ├── index.md                     # 報導總覽
│   ├── usr-expo-en.md              # USR EXPO 英文
│   └── usr-expo-zh.md              # USR EXPO 中文
│
├── enroll/                          # 報名資訊目錄
│   └── index.md                     # 報名頁面
│
└── assets/                          # 資源文件
    ├── images/                      # 圖片
    ├── stylesheets/                 # CSS
    └── javascripts/                 # JavaScript
```

---

## 🔄 更新內容的方式

### 編輯現有頁面

直接編輯對應的 Markdown 文件即可，例如：

```bash
# 編輯計畫緣起
vim docs/n/team/origin.md

# 編輯某個活動
vim docs/n/activities/2025-oyster-ai.md
```

### 新增活動

1. 在 `docs/n/activities/` 創建新的 `.md` 文件
2. 在 `mkdocs.yml` 的 `nav` 部分添加導航項目

**範例：**

```yaml
  - 活動紀錄:
    - 活動總覽: activities/index.md
    - 2025蚵寮AI永續探索營: activities/2025-oyster-ai.md
    - 2026新活動: activities/2026-new-activity.md  # 新增這一行
```

### 新增媒體報導

同樣的方式：

1. 在 `docs/n/news/` 創建新文件
2. 在 `mkdocs.yml` 添加導航

---

## 📝 Markdown 頁面範本

創建新頁面時，可以使用以下範本：

```markdown
# 頁面標題

## 英文標題（如需要）

---

## 第一個段落標題

內容...

### 子標題

內容...

---

## 第二個段落標題

內容...

---

*頁面底部標語或備註*
```

---

## 🎯 內容建議

### 已創建的框架內容

所有新頁面都已包含：
- ✅ 完整的結構框架
- ✅ 相關的內容大綱
- ✅ 中英文對照標題
- ✅ 豐富的段落組織

### 需要補充的內容

您可以根據實際情況補充：
- 具體的活動照片
- 詳細的數據統計
- 真實的參與者回饋
- 相關的影片連結
- 更新的時間資訊

---

## 🚀 部署說明

所有更改已提交到 Git，下次部署時會自動生成新的導航結構。

**要部署新版本：**

1. 確保所有更改已提交
2. 按照之前的部署步驟操作
3. 新的多層選單會自動出現

---

## ✨ 特色功能

### Material 主題優勢

- ✅ 自動生成目錄
- ✅ 響應式設計
- ✅ 搜索功能（支援中英文）
- ✅ 深淺色模式切換
- ✅ 社交媒體集成
- ✅ 麵包屑導航
- ✅ 頁面編輯按鈕

### 導航功能

- ✅ 多層下拉選單
- ✅ 自動展開/收合
- ✅ 當前頁面高亮
- ✅ 頁腳前後頁導航

---

## 🆘 常見問題

### Q: 如何修改選單名稱？

A: 編輯 `mkdocs.yml` 文件中的 `nav` 部分：

```yaml
  - 計畫團隊:              # 這是選單名稱
    - 團隊總覽: team/index.md
```

### Q: 如何調整選單順序？

A: 在 `mkdocs.yml` 中調整 `nav` 項目的順序即可。

### Q: 如何隱藏某個頁面？

A: 從 `mkdocs.yml` 的 `nav` 中移除該項目（文件仍會存在，只是不在導航中顯示）。

---

**導航結構已完成！可以開始填充內容了。** 🎉
