# 網站重製計畫

本計畫旨在將現有的 Wix 網站 (https://usrdocument2018.wixsite.com/official) 遷移至一個由 Markdown 驅動的現代化靜態網站。我們將使用 [MkDocs](https://www.mkdocs.org/) 搭配 [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) 主題來完成此任務。

**選擇此方案的優點：**
- **易於維護**：所有內容都是純文字的 Markdown 檔案，方便編輯與管理。
- **版本控制**：可使用 Git 完整追蹤每一次的內容變更。
- **高效能**：靜態網頁載入速度極快，提供更好的使用者體驗。
- **部署簡單**：可輕鬆部署在 GitHub Pages 或任何靜態網站託管服務上。

---

## 第一階段：環境設定與專案初始化

1.  **安裝必要工具**：
    - 確認您的電腦已安裝 Python 與 pip (Python 的套件管理器)。
    - 開啟終端機，安裝 MkDocs 與 Material for MkDocs 主題：
      ```bash
      pip install mkdocs mkdocs-material
      ```

2.  **建立新專案**：
    - 在您想要放置專案的目錄下，執行以下指令來建立一個新的 MkDocs 專案：
      ```bash
      mkdocs new wzuusr-mkdocs
      ```
    - 進入新建立的專案目錄：
      ```bash
      cd wzuusr-mkdocs
      ```
    - 此時，您會看到以下結構：
      ```
      .
      ├── docs/
      │   └── index.md
      └── mkdocs.yml
      ```

## 第二階段：內容遷移

這是整個計畫的核心部分。我們需要將 Wix 網站上的內容，逐一轉換成 Markdown 格式的檔案。

1.  **規劃檔案結構**：
    - 根據原網站的導覽列，我們將在 `docs` 資料夾內建立對應的 `.md` 檔案與子資料夾。
    - 建立一個 `docs/assets` 資料夾來存放圖片、PDF 等靜態資源。

    建議的 `docs` 目錄結構如下：
    ```
    docs/
    ├── index.md                # 首頁 (Home)
    ├── team.md                 # 計畫團隊 (Project team)
    ├── framework.md            # 執行架構 (Framework)
    ├── materials/              # 數位教材 (Digital Instructional Materials)
    │   ├── index.md
    │   ├── animation.md
    │   ├── english.md
    │   └── chinese.md
    ├── activities.md           # 活動紀錄 (Activity Records)
    ├── awards.md               # 得獎資訊 (Award)
    ├── fields.md               # 實踐場域 (Practice field)
    ├── news.md                 # 媒體報導 (News Report)
    └── assets/                 # 靜態資源 (圖片、文件等)
        └── images/
    ```

2.  **轉換頁面內容**：
    - **文字**：手動將每個頁面的文字內容複製到對應的 `.md` 檔案中，並使用 Markdown 語法進行格式化 (例如 `#` 代表標題, `*` 代表清單)。
    - **圖片**：將原網站上的圖片下載下來，存放到 `docs/assets/images/` 目錄中，然後在 Markdown 檔案中使用 `![圖片說明](./assets/images/圖片檔名.png)` 的語法來插入圖片。
    - **連結**：將原有的站內連結更新為指向新的 `.md` 檔案相對路徑。

## 第三階段：網站設定與預覽

1.  **編輯設定檔**：
    - 開啟 `mkdocs.yml` 檔案，這是整個網站的設定核心。
    - 根據以下範本進行修改，設定網站標題、作者、主題及導覽列。

    **`mkdocs.yml` 範本：**
    ```yaml
    site_name: 文藻小螺絲釘 WUTH USR 計畫
    site_author: WZU TH USR Team
    site_description: 以科技傳遞溫暖，用愛心永續關懷。

    theme:
      name: material
      language: zh # 設定語言為繁體中文
      palette:
        primary: blue
        accent: light-blue
      features:
        - navigation.tabs
        - navigation.top
        - search.suggest
        - search.highlight

    nav:
      - '首頁': 'index.md'
      - '計畫團隊': 'team.md'
      - '執行架構': 'framework.md'
      - '數位教材':
        - '總覽': 'materials/index.md'
        - '動畫/繪本': 'materials/animation.md'
        - '英文教材': 'materials/english.md'
        - '華文教材': 'materials/chinese.md'
      - '活動紀錄': 'activities.md'
      - '得獎資訊': 'awards.md'
      - '實踐場域': 'fields.md'
      - '媒體報導': 'news.md'
    ```

2.  **本機預覽**：
    - 在專案根目錄下執行指令：
      ```bash
      mkdocs serve
      ```
    - 開啟瀏覽器，進入 `http://127.0.0.1:8000` 即可看到網站的即時預覽。當您修改任何 `.md` 檔案或 `mkdocs.yml` 時，網頁會自動重新整理。

## 第四階段：建置與部署

1.  **建置靜態網站**：
    - 當您對網站內容與外觀感到滿意後，執行以下指令來產生最終的靜態 HTML 檔案：
      ```bash
      mkdocs build
      ```
    - 所有網站檔案將會被建立在 `site` 資料夾中。

2.  **部署網站**：
    - **推薦方案：GitHub Pages**
        1.  在 GitHub 上建立一個新的 repository。
        2.  將整個專案（包含 `mkdocs.yml`、`docs/` 等）推送到該 repository。
        3.  使用 `mkdocs gh-deploy` 指令可以自動幫您建置並推送到 `gh-pages` 分支，完成部署。
    - **其他方案**：
        - 您也可以將 `site` 資料夾中的所有內容上傳到任何支援靜態網站的託管服務，例如 Netlify, Vercel, 或您自己的伺服器。


