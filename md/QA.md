# 常见问题

你可一定要先安装texlive，可参考[START.md](START.md)


mac、linux、windows三系统全部测试通过，linux缺一个字体，看 [常见问题](md/QA.md)，其他出现什么问题，也看下面的 [常见问题](md/QA.md)

- 参考文献多位中文作者

  一般情况下是这样处理的

  ```tex
  [1] Partl H, Hyna I, 兰朵儿, et al. 一份不太简短的 latex2ε 介绍 [J]. 测试期刊, 2016, 360(6403):444--446.
  ```

  这里的 `et al.` 看起来，不太对，对于中文应该是 `等.`

  已经适配，可以这样处理

  ```bib
  @Article{partl2021,
    author = {Partl, Hubert and Hyna, Irene  and 兰朵儿 and Schlegl, Elisabeth},
    title  = {一个中文等测试},
    year   = {2021},
    language = {中文},
    journal = {测试期刊},
    volume={3},
    number={6},
    pages={10--20},
  }
  ```

  > 注意，其中加了一条

  ```tex
  language = {中文},
  ```

  感谢 [versemonger](https://gitee.com/versemonger)的代码提供


- “摘要”前面的标题也想手动换行

  有时候化学式大小写也有问题
  
  这个。。。你可以自己来，改模板对应的位置就行，不要自动英文大写了，自己敲

  打开你用的模板[LZUThesis.cls](/LZUThesis.cls)（或你在用[LZUThesis-PgD&PhD.cls](/LZUThesis-PgD&PhD.cls)）

  ```tex

  % 中文摘要，找到下面一行
  \zihao{3}\bfseries\heiti \noindent\@title\the\titlextra
  % 修改\@title\the\titlextra  这一部分替换成你自己想要的标题

  %英文摘要，找到下面一行
  \zihao{3} \bfseries \noindent \expandafter\MakeUppercase\expandafter{\the\entitle\the\entitletra}

  % \expandafter\MakeUppercase\expandafter{\the\entitle\the\entitletra}  这一部分替换成你自己想要的标题

  ```


- 英文字体略有不同（花体太花）

  V2.1.3以及以后的版本，为了让英文字体完全与Times New Roman字体相同，使用了mathptmx和fontspec包，但是这么做会导致花体，mathcal和mathscr完全相同（正常mathcal会花的轻一些）。

  在windows上，引用mathptmx包，正文、公式中的英文就会变成新罗马（Times New Roman）字体，但是mac系统上，没有任何效果，还是默认的罗马字体（和Times New Roman很相似，QR两个单词区分明显，之前的字体整体偏细），所以我在2.1.3以及之后的模板中加入了以下两个命令：

  ```tex
  \RequirePackage{mathptmx} %加入这条命令会导致花体，mathcal和mathscr完全相同，正常mathcal会花的轻一些。
  \RequirePackage{fontspec} %这一条在windows可有可无，效果相同，但是mac上必须。
  ```

- 封面“兰州大学教务处”几个字跑到了第二页，或者不在最下面（偏上）

  你的题目太长了，你可以改一下模板

  模板中搜索“兰州大学教务处”，在它上面有一行类似如下：可以调整40（或者100）这个数字

  ```tex
  \vspace{40pt}
  %或者
  \vspace{100pt}
  ```

- 编译出来的没有**参考文献**或**目录**，或者直接失败：

  - 请卸载CTEX、MIKTex，使用texlive2020

  - 不要用texstudio，用vscode，如果你实在喜欢前者，自己百度怎么 `bibtex`

  - 不要用pdflatex那个！需要四步走xelatex - bibtex - xelatex - xelatex，具体什么意思，百度吧；


- 正文第一章，编号却是第二章？

  请把绪论作为第一章，大多数老师不认第0章！！！

  ```tex
  %生成目录
  \tableofcontents
  %文章主体
  \mainmatter

  \Intro{
      这里是绪论

      \section{二级标题}
      绪论其实也可以有二级标题
  }

  % =======正文从第一章开始，需要把章节的编号归0
  \setcounter{chapter}{0}

  \chapter{latex部分用法简介}
  ```

- linux环境下编译失败

  > 因为linux上默认没有Arial字体

  - 方法一：可以自己网上找一下，下载安装，注意名字（不是文件名，而是安装以后的字体名）要完全对上
  - 方法二：可以搜索在[LZUThesis.cls](LZUThesis.cls)文件中搜索`\fontspec{Arial}`，将这一个命令删除，这个字母不用这个字体了（有点不符合论文对英摘要的要求）。

- 编译的和预期有差别，你把缓存的文件清理一下，重新四步走进行编译

  - 缓存的文件：比如你的文件名是paper.tex，那就删除以paper开头的所有文件，当然，paper.tex不要删除！！！！

  - 理论上是这么做的，但是你删错了不关我的事。。。

  - 我用的vscode点一下就删除了，好吧最多点两下，删错了，如果之前用了git的话，可以恢复

- 表格居中、换页、换行、图片并列排等，怎么用

  你仔细看[template.pdf](template.pdf)和[template.tex](template.tex)吧，里面都有

- 使参考文献右上标

  把引用的命令`\cite{..}`更改为`\upcite{..}`即可。

- 其他的

  > 百度错误的提示，基本上都能找到原因

  - 以后再补充，如果是bugs，可以在issues里提交bugs，请**勿**直接QQ联系我！

  - 我已经多次多人测试通过，如果你在[paper.zip](paper.zip)什么都没写，就直接编译失败的肯定是你自己的原因！！

  - 不要用CTex、MIKTex！不要用CTex、MIKTex！不要用CTex、MIKTex！不要用CTex、MIKTex！认准 `texlive`
  - 不要用texwork、texstudio、texmaker等，认准 `vscode`，[点我：编译器选择](#%e7%bc%96%e8%af%91%e5%99%a8%e9%80%89%e6%8b%a9)

  如：

  - 没有安装或者没有成功安装texlive2020（mac是mactex），请查看：使用方法

  - vscode等编译器配置有问题，没有采用四步走，请查看：[四步走编译](#1%e7%bc%96%e8%af%91%e5%87%ba%e6%9d%a5%e7%9a%84%e6%b2%a1%e6%9c%89%e5%8f%82%e8%80%83%e6%96%87%e7%8c%ae%e6%88%96%e7%9b%ae%e5%bd%95%e6%88%96%e8%80%85%e7%9b%b4%e6%8e%a5%e5%a4%b1%e8%b4%a5)

  - 不怎么懂模板，还非要乱改
  - ……

- 目录有页码，但是要求中不需要

  其实，不要什么事情都来找模板的问题，你可以自己改的，目录去掉页码可以在tex文件里改

  ```tex
  %生成目录
  \tableofcontents
  % 去掉页码
  \thispagestyle{empty}
  ```
