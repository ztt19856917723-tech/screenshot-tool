# Mac 截图自动复制工具

> 截图后一条命令，直接粘贴到任何应用

## 一键安装

在终端运行以下命令：

```bash
curl -fsSL https://raw.githubusercontent.com/ztt19856917723-tech/screenshot-tool/main/install.sh | bash
```

安装完成后，**重新打开终端**即可使用。

## 使用方法

**第一步：** 用 Mac 自带截图快捷键截图
- `Cmd + Shift + 3` 截全屏
- `Cmd + Shift + 4` 截选定区域
- `Cmd + Shift + 5` 打开截图工具栏

**第二步：** 在终端输入
```bash
copyss
```

**第三步：** 在任意应用按 `Cmd + V` 粘贴截图

## 系统要求

- macOS 10.10 或更高版本
- 无需安装任何额外依赖

## 卸载

```bash
rm -rf ~/.screenshot-tool
```

然后编辑 `~/.zshrc`，删除含 `alias copyss=` 的那一行。
