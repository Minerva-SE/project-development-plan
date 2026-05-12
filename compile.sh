#!/bin/bash
# 简单的 LaTeX 编译脚本
# 用法: ./compile.sh [main.tex]

set -e

TEXFILE=${1:-main.tex}
BASENAME=$(basename "$TEXFILE" .tex)


# 第一次编译
xelatex -interaction=nonstopmode "$TEXFILE"
# 处理参考文献（如果有）
if grep -q "\\bibliography{" "$TEXFILE"; then
    bibtex "$BASENAME"
    xelatex -interaction=nonstopmode "$TEXFILE"
fi
# 再编译一次确保引用更新
xelatex -interaction=nonstopmode "$TEXFILE"

echo "编译完成: ${BASENAME}.pdf"

# 清理中间产物
rm -f ${BASENAME}.{aux,log,out,toc,bbl,blg,nav,snm,lof,lot} *.synctex.gz
echo "已清理中间产物。"
