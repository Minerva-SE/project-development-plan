
你可能需要一些依赖：



# 常用中文字体
你可能需要一些依赖（以 Ubuntu/Debian 为例）：

```bash
# 推荐一键安装所有常用包（体积较大）
sudo apt install texlive-full

# 或者只安装必要的中文支持和字体
sudo apt install texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-xetex texlive-lang-chinese fonts-arphic-ukai fonts-arphic-uming fonts-noto-cjk
```

如果你使用的是 Arch Linux：
```bash
sudo pacman -S texlive-most wqy-zenhei wqy-microhei noto-fonts-cjk
```

如需其它系统支持，请参考 TeX Live 官方文档。

字体为 MACOS字体，因此使用了其他字体：

```bash
sudo apt install fonts-noto-cjk
```

编译：

```bash
bash ./compile.sh
```

生成对应 `main.pdf`