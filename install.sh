#!/bin/bash
# Mac 截图工具安装脚本

echo "========================================="
echo "Mac 截图自动复制工具 - 安装程序"
echo "========================================="
echo ""

# 检查是否是 macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "✗ 错误: 此工具仅支持 macOS 系统"
    exit 1
fi

# 获取安装目录
INSTALL_DIR="$HOME/.screenshot-tool"

echo "1. 创建安装目录..."
mkdir -p "$INSTALL_DIR"
echo "   ✓ 目录: $INSTALL_DIR"
echo ""

# 复制脚本文件
echo "2. 安装脚本文件..."
cp copy_latest_screenshot.sh "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/copy_latest_screenshot.sh"
echo "   ✓ 完成"
echo ""

# 检查 Python
echo "3. 检查 Python 环境..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version)
    echo "   ✓ $PYTHON_VERSION"
else
    echo "   ⚠ 未检测到 Python3"
    echo "   提示: 可以通过 Homebrew 安装: brew install python3"
fi
echo ""

# 设置别名
echo "4. 配置快捷命令..."

# 检测使用的 shell
if [[ "$SHELL" == *"zsh"* ]]; then
    SHELL_RC="$HOME/.zshrc"
elif [[ "$SHELL" == *"bash"* ]]; then
    SHELL_RC="$HOME/.bash_profile"
else
    SHELL_RC="$HOME/.zshrc"
fi

# 检查别名是否已存在
if grep -q "alias copyss=" "$SHELL_RC" 2>/dev/null; then
    echo "   ⚠ 快捷命令已存在，跳过..."
else
    cat >> "$SHELL_RC" << EOF

# Mac 截图工具 - 复制最新截图到剪贴板
alias copyss='$INSTALL_DIR/copy_latest_screenshot.sh'
EOF
    echo "   ✓ 已添加到 $SHELL_RC"
fi
echo ""

echo "========================================="
echo "✓ 安装完成！"
echo "========================================="
echo ""
echo "使用方法："
echo "1. 用 Mac 截图 (Cmd+Shift+3/4/5)"
echo "2. 在终端输入: copyss"
echo "3. 直接粘贴 (Cmd+V)"
echo ""
echo "提示: 请重新打开终端，或运行以下命令使配置生效："
echo "  source $SHELL_RC"
echo ""
