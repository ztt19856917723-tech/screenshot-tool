# Mac 截图自动复制工具

简单易用的 Mac 截图辅助工具，截图后一键复制到剪贴板。

## 🚀 快速安装

### 方法1：一键安装（推荐）

在终端运行以下命令：

```bash
curl -sL https://raw.githubusercontent.com/your-repo/install.sh | bash
```

### 方法2：手动安装

1. **下载工具包**
   - 下载 `screenshot-tool.zip` 并解压

2. **运行安装脚本**
   ```bash
   cd screenshot-tool
   ./install.sh
   ```

3. **重新打开终端**，然后就可以使用了！

## 📖 使用方法

1. 使用 Mac 系统截图（`Cmd+Shift+3/4/5`）
2. 在终端输入 `copyss`
3. 直接粘贴（`Cmd+V`）到任何应用

## 📦 分发到其他 Mac

### 选项1：通过文件分享

将整个文件夹压缩后发送给其他人：

```bash
# 在当前目录创建压缩包
zip -r screenshot-tool.zip copy_latest_screenshot.sh install.sh README_INSTALL.md
```

对方收到后：
1. 解压文件
2. 运行 `./install.sh`
3. 重启终端即可使用

### 选项2：通过 GitHub

1. 创建一个 GitHub 仓库
2. 上传这些文件
3. 其他人只需运行：
   ```bash
   git clone https://github.com/你的用户名/screenshot-tool.git
   cd screenshot-tool
   ./install.sh
   ```

## ⚙️ 系统要求

- macOS 10.10 或更高版本
- 已安装 Python 3（可选，方案2不需要）

## 🔧 卸载

```bash
# 删除安装文件
rm -rf ~/.screenshot-tool

# 从配置文件中删除别名（编辑 ~/.zshrc 或 ~/.bash_profile）
# 删除包含 "alias copyss=" 的行
```

## 📝 文件说明

- `copy_latest_screenshot.sh` - 主程序脚本
- `install.sh` - 自动安装脚本
- `README_INSTALL.md` - 使用说明（本文件）

## ❓ 常见问题

**Q: 提示找不到截图文件？**
A: 确保截图保存在桌面，文件名以 "Screenshot" 或 "截屏" 开头。

**Q: 在其他 Mac 上无法使用？**
A: 运行 `./install.sh` 重新安装，然后重启终端。

**Q: 想改变截图保存位置？**
A: 编辑 `copy_latest_screenshot.sh`，修改第4行的路径。

## 💡 提示

- 可以在"系统设置 → 键盘 → 快捷键"中自定义截图快捷键
- 如果经常使用，建议将终端加入 Dock 栏
