# lunbingchen.github.io

Lunbing Chen 的 GitHub Pages 个人网站部署仓库。

## Files

- `index.html`：网站页面、样式和公开文字。
- `assets/Lunbing_Chen_CV.pdf`：部署用 CV 副本。
- `figures/`：部署用项目图片/PDF 副本及网站专用头像；研究素材与根目录 `_shared_assets/projects/` 保持同名。
- `sync_assets.sh`：从项目根目录的权威素材源同步所有部署副本。

GitHub Pages 无法访问本仓库外的 `../../_shared_assets` 或 `../CV/.latex-build`，所以部署副本必须保留在本仓库中。除 `figures/CV.jpg` 等网站专用资源外，不应直接编辑 `assets/` 或 `figures/` 中的研究素材。

## Update workflow

1. 在项目根目录 `_shared_assets/` 更新研究素材。
2. 在 `CV/CV/` 更新并编译 CV，确认 `CV/CV/.latex-build/main.pdf` 存在。
3. 在本目录运行 `./sync_assets.sh`。
4. 本地检查 `index.html`，然后提交并推送本仓库。
