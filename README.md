# 西南大学本科毕业论文（设计）LaTeX 模板

基于《西南大学本科毕业论文（设计）规范》制作的 XeLaTeX 模板。

## 特性

- 封面（校徽 + 单位代码 + 信息表）
- 独创声明与版权使用授权书
- 目录（罗马页码，三级标题，两端对齐）
- 中英文摘要
- 正文（宋体小四，1.5 倍行距，首行缩进）
- 三线表（表头在上，中英文双标题）
- 公式（居中，编号右对齐）
- 参考文献（著者-出版年制，GB/T 7714-2015）
- 致谢 / 附录

## 编译

Windows 双击 `compile.bat`，或命令行：

```bash
xelatex main && biber main && xelatex main && xelatex main
```

要求：TeX Live 2025+（XeLaTeX + Biber）。

## 使用

1. 打开 `main.tex`
2. 修改顶部个人信息（标题、学院、专业、学号、姓名、导师、日期）
3. 在各章节区域写入正文
4. 参考文献写入 `reference.bib`
5. 编译

## 文件结构

```
├── main.tex          # 主文件
├── swuthesis.cls     # 文档类
├── reference.bib     # 参考文献
├── compile.bat       # 编译脚本
├── compile.sh        # 编译脚本（Git Bash）
├── swu_emblem.jpeg   # 校徽
├── SWULogo.png       # 校名
├── gbt7714-2005.bst  # 参考文献样式
└── fonts/            # 字体文件
```

## 许可

MIT
