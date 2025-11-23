#!/bin/bash

echo "正在停止 frps 服务..."
systemctl stop frps
systemctl disable frps

echo "正在删除系统服务文件..."
rm -f /etc/systemd/system/frps.service
systemctl daemon-reload

echo "正在删除 frp 文件目录..."
rm -rf /frp

echo "正在清理残留..."
rm -f /tmp/frp.tar.gz

echo "=== frp 服务端已完全卸载 ==="
