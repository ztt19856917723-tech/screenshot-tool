#!/bin/bash
# 将最新的截图复制到剪贴板

# 查找桌面最新的截图文件
LATEST_SCREENSHOT=$(ls -t ~/Desktop/Screenshot*.png ~/Desktop/截屏*.png 2>/dev/null | head -1)

if [ -z "$LATEST_SCREENSHOT" ]; then
    echo "✗ 在桌面没有找到截图文件"
    exit 1
fi

# 显示文件名
echo "找到截图: $(basename "$LATEST_SCREENSHOT")"

# 复制到剪贴板
osascript -e "set the clipboard to (read (POSIX file \"$LATEST_SCREENSHOT\") as JPEG picture)"

if [ $? -eq 0 ]; then
    echo "✓ 已复制到剪贴板，可以直接粘贴"
else
    echo "✗ 复制失败"
    exit 1
fi
