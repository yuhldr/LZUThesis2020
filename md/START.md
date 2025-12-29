# 从 0 配置

> 注意！！最后一次编译前，请返回 [项目这里](https://github.com/yuhldr/LZUThesis2020/releases)，**更新** 到最新的模板，一般只需要更新 `*.cls` 文件即可，详细变化请查看 [更新说明](CHANGELOG.md)

所以平时不要轻易修改`*.cls`文件，有问题来 [issue](https://github.com/yuhldr/LZUThesis2020/issues/new/choose) 反馈、或提交 [PR](https://github.com/yuhldr/LZUThesis2020/pulls)

## 方法一

> 如果你就这一次用 LaTex，以后都不需要了，可以试一下，但是如果你还上研究生要发文章，还是按照 [方法二](#方法二) 本地安装一下吧

1. 打开 [overleaf](https://cn.overleaf.com/) 网站
2. [点我](https://github.com/yuhldr/LZUThesis2020/releases/tag/%E8%87%AA%E5%8A%A8%E6%89%93%E5%8C%85) 下载压缩包、然后在 [overleaf](https://cn.overleaf.com/) 这个网站上传

   依次点击：`创建新项目 - 上传项目`（直接上传刚才下载的压缩包即可）

3. 修改编译方式

   左上角 `菜单` 里把 `设置-编译器` 里的 `pdfLatex` 改成 `xelatex`！！

## 方法二

> 数据在本地，自由度更高、安全性更高

用 `LaTex` 需要安装什么，需要安装 `texlive`，外加一个 `IDE`（比如 `texstudio` 或 `vscode`）

1. 安装 `texlive`

2. 测试安装是否成功

3. 配置编辑器，可见[编辑器选择](#编辑器选择)，不要使用 `TexLive` 自带的 `texwork`！！请使用`texstudio` 或 `vscode`！！

---

### texlive 安装

已经出2025了，可以用兰大的镜像下载应该在用校园网时快一些，额，你还是用清华的镜像吧，我刚才找了一下，兰大镜像这会儿竟然挂了。。。

下载地址： 点下面的字跳转浏览器下载了，方便吧

- [TexLive 最新版 Windows 版](https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/Images/texlive.iso)
- [TexLive 最新版 Mac 版（mactex）](http://tug.org/cgi-bin/mactex-download/MacTeX.pkg)

具体怎么安装百度吧，很多图文教程

安装提示

- 不要解压，`iso`文件直接挂载
- 有些电脑安装极慢，甚至一个多小时。。。

### 测试是否安装成功

`终端` （windows10 指的是 `powershell`）输入 `latex`，如果可以看到

```bash
This is pdfTeX, Version 3.141592653-2.6-1.40.24 (TeX Live 2022) (preloaded format=latex)
 restricted \write18 enabled.
**
```

说明成功

### texlive 安装过程的一些错误处理
1. 报错大致如下（可能有些许差异）  
```
open(>C:\Users|x(00d5)x{00c5)3é\AppData\LocalTemp\7v1OwfO5rB(hguYDKBg5H/a2ping.windows.r65891.tar.xz) failed: No such file or directory at F:/texlive2024/tlpkg/TeXLive/TLUtils.pm line 1525,<STDIN>line 220.
```  
这样的错误一般由中中文路径导致（表现为安装一分钟就停了，然后日志最后是上面的内容或有些许差异，而安装texlive的正常时长应该以小时为单位）  
进一步确定错误：打开cmd（不要以管理员），如果看到的是：`C:\Users\一段中文,也就是你的用户名>`那么恭喜，请看下方解决部分  

解决：  
方法一：  
在环境变量中，将TEMP和TMP的值改为一个不含中文的路径  
使用此方法时，注意使用一个不需要管理员权限就可以访问的目录，否则之后的编辑器都要以管理员运行（很麻烦。。。）  
方法二：  
貌似有更改中文用户名为英文的方法，自行百度  
方法二：  
重装吧孩子。。。。。下辈子记得用户名用英文  

### 编辑器选择

推荐用 [texstudio](https://texstudio.sourceforge.net/) 吧，最简单，设置需要修改两个地方

改为 xelatex | 改为 biber
-|-
![alt text](images/texstudio.png) | ![alt text](images/texstudio2.png)

---

也可以用 vscode，以下为配置

1. 安装 vscode：
   去官网安装：[Vscode](https://code.visualstudio.com/)

2. 安装插件：

   在 vscode 左边侧栏插件处输入 latex，安装以下插件

   `LaTex Workshop` 最近好像有个假的，选那个作者是 `James Yu` 的

3. 配置 vscode：

   打开 json 配置，快捷键 `ctrl shift P`，输入 `user setting json`，如图选择第一个
   ![打开json配置](images/setting-p.png)

   将下面的内容复制到设置区：

   ```json
    "latex-workshop.latex.tools": [
        {
            // 编译工具和命令
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "%DOCFILE%"
            ]
        },
        {
            "name": "biber",
            "command": "biber",
            "args": [
                "%DOCFILE%"
            ]
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "xe->biber->xe->xe",
            "tools": [
                "xelatex",
                "biber",
                "xelatex",
                "xelatex"
            ]
        },
        {
            "name": "xelatex",
            "tools": [
                "xelatex"
            ]
        },
    ],
    "latex-workshop.latex.clean.fileTypes": [
        "*.xdv",
        "*.aux",
        "*.thm",
        "*.bbl",
        "*.blg",
        "*.idx",
        "*.ind",
        "*.lof",
        "*.lot",
        "*.out",
        "*.toc",
        "*.acn",
        "*.acr",
        "*.alg",
        "*.glg",
        "*.glo",
        "*.gls",
        "*.ist",
        "*.fls",
        "*.log",
        "*.fdb_latexmk",
        "*.run.xml",
        "*.snm",
        "*.nav",
        "*-blx.bib",
        "*.synctex.gz",
        "*.bcf",
        "*.xml",
        "*.synctex",
        "*.nlo",
        "*.nls",
        "*.bak",
        "*.ilg",
        "*.ent-x",
        "*.tmp",
        "*.ltx",
        "*.los",
        "*.lol",
        "*.loc",
        "*.listing",
        "*.gz",
        "*.synctex(busy)",
        "*.vrb"
    ],
   ```

   > 如果有红色曲线，说明你配置得有问题，一般是逗号、大括号什么的有问题

   注意：你要粘贴的地方，下面有一个右大括号 `}` ，前面有一个英文逗号`,` 或者 `{`;

   整个文件类似如下：

   ![Alt text](images/setting-json.png)

4. 配置成功以后的界面：

   - 注意配置以后要打开 `vscode`，再点开一个 `.tex` 文件，左侧才会出现 `Tex` 选项，类似如图（我的配置比较多，你们的应该就两个）

     ![Alt text](images/setting-ui-latex.png)

   - 点 `xe->bib->xe->xe` 就可以编译，平时只是修改文档，没有引入参考文献和图表公式的引用，只需要 ctrl 和 s（mac：command 和 s）快捷键就可以编译。

   - 打开 tex 文件，点右上角这个类似 “窗户搜索” 的按钮，可以一边 `tex` 一边 `pdf`
     ![Alt text](images/latex-pre.png)

   - 鼠标光标在 `.tex` 文件里，快捷键`ctrl-J`，右边 pdf 会指出当前位置
   - 鼠标左键双击 `pdf` 会显示对应左边 `.tex` 哪里

> 一个模板，对于大多数人来说，拿来就可以用（兼容性好、体验也可以）才是最重要的
> ，而一些细节问题，是为那些有能力（或者说爱折腾，不是贬义词）的人留下的，所以我对于遗留的问题在 cls 文件里，都做了注释说明


更多问题看 [QA](QA.md)
