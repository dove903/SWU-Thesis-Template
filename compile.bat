@echo off
REM ============================================
REM 西南大学本科毕业论文 LaTeX 编译脚本
REM 用法：双击运行，或在命令行中执行 compile
REM 编译流程：xelatex → biber → xelatex → xelatex
REM ============================================

echo ========================================
echo 西南大学本科毕业论文 LaTeX 编译
echo ========================================

echo [1/4] 第一次 XeLaTeX 编译...
xelatex -synctex=1 -interaction=nonstopmode main.tex
if %errorlevel% neq 0 (
    echo [错误] XeLaTeX 编译失败，请检查错误信息
    pause
    exit /b 1
)

echo [2/4] Biber 参考文献编译...
biber main
if %errorlevel% neq 0 (
    echo [警告] Biber 编译有问题，继续...
)

echo [3/4] 第二次 XeLaTeX 编译...
xelatex -synctex=1 -interaction=nonstopmode main.tex

echo [4/4] 第三次 XeLaTeX 编译...
xelatex -synctex=1 -interaction=nonstopmode main.tex

echo.
echo ========================================
echo 编译完成！输出文件：main.pdf
echo ========================================

REM 清理临时文件
del *.aux *.bbl *.blg *.log *.out *.toc *.synctex.gz *.bcf *.run.xml 2>nul
echo 临时文件已清理。

pause
