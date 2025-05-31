# Obsidian Plugin Docker Dev Environment

這是一個使用 Docker 建立的 Obsidian 第三方外掛開發環境。適合開發者快速進入 Obsidian plugin 的 TypeScript 開發流程。

## 📦 功能特色

- Node.js + npm 環境
- 預先安裝 TypeScript 與 Rollup
- 自動掛載本機 `plugins/` 資料夾，可同時管理多個 plugin 專案

## 📁 資料結構

```
obsidian-plugin-dev-docker/
├── Dockerfile
├── docker-compose.yml
├── plugins/
│   ├── obsidian-testApi-plugin/
│   └── obsidian-openAgp-plugin/
└── README.md
```

## 🚀 使用方式

```bash
# 啟動容器(第一次啟動會建構 image)
docker-compose up -d

# 進入容器內操作
docker exec -it obsidian-plugin-dev sh

# 在容器內切換到你的 plugin 專案目錄
cd obsidian-testApi-plugin
npm install
npm run dev
```

## ✅ 建議 plugin 專案初始指令

如果你要初始化一個 plugin 專案：

```bash
npm init -y
npm install --save-dev typescript rollup @rollup/plugin-node-resolve @rollup/plugin-commonjs
```

## 📎 備註

- 所有 plugin 專案請放在 `plugins/` 資料夾下
- 容器使用非 root 的 `node` 使用者
- 預設不執行 build，可依需求調整 `command`
- 本範本不包含 Obsidian app 本體