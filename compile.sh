# 西南大学本科毕业论文 LaTeX 模板
# 使用 XeLaTeX 编译
# 编译流程：xelatex → biber → xelatex → xelatex

# 第一次编译
xelatex -synctex=1 -interaction=nonstopmode main.tex

# 生成参考文献
biber main

# 第二次编译（更新引用和目录）
xelatex -synctex=1 -interaction=nonstopmode main.tex

# 第三次编译（确保交叉引用正确）
xelatex -synctex=1 -interaction=nonstopmode main.tex

# 清理临时文件
rm -f *.aux *.bbl *.blg *.log *.out *.toc *.synctex.gz *.bcf *.run.xml

echo "编译完成！输出文件：main.pdf"

# 说明：
# 如果只需要快速预览（不更新参考文献和目录），运行：
#   xelatex main.tex
#
# 如果需要完整编译（含参考文献和目录），运行本脚本。
#
# 常见问题：
# 1. 如果报 "font not found"，检查 fonts/ 目录下的字体文件是否存在
# 2. 如果参考文献不显示，确认已安装 biber：
#    tlmgr install biber
# 3. 化学式请使用 mhchem 或 chemformula 宏包
