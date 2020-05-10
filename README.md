<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [兰州大学本科生2020（学士学位）LaTeX模板](#%E5%85%B0%E5%B7%9E%E5%A4%A7%E5%AD%A6%E6%9C%AC%E7%A7%91%E7%94%9F2020%E5%AD%A6%E5%A3%AB%E5%AD%A6%E4%BD%8Dlatex%E6%A8%A1%E6%9D%BF)
  - [一、使用方法](#%E4%B8%80%E4%BD%BF%E7%94%A8%E6%96%B9%E6%B3%95)
    - [现状0：以前用的这个模板，现在需要升级](#%E7%8E%B0%E7%8A%B60%E4%BB%A5%E5%89%8D%E7%94%A8%E7%9A%84%E8%BF%99%E4%B8%AA%E6%A8%A1%E6%9D%BF%E7%8E%B0%E5%9C%A8%E9%9C%80%E8%A6%81%E5%8D%87%E7%BA%A7)
    - [现状1：论文直接用这个模板开始写](#%E7%8E%B0%E7%8A%B61%E8%AE%BA%E6%96%87%E7%9B%B4%E6%8E%A5%E7%94%A8%E8%BF%99%E4%B8%AA%E6%A8%A1%E6%9D%BF%E5%BC%80%E5%A7%8B%E5%86%99)
    - [现状2：以前用的LZUThesis2017](#%E7%8E%B0%E7%8A%B62%E4%BB%A5%E5%89%8D%E7%94%A8%E7%9A%84lzuthesis2017)
      - [这个项目与LZUThesis2017主要区别](#%E8%BF%99%E4%B8%AA%E9%A1%B9%E7%9B%AE%E4%B8%8Elzuthesis2017%E4%B8%BB%E8%A6%81%E5%8C%BA%E5%88%AB)
      - [你需要做什么](#%E4%BD%A0%E9%9C%80%E8%A6%81%E5%81%9A%E4%BB%80%E4%B9%88)
  - [二、常见问题](#%E4%BA%8C%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98)
    - [1、编译出来的没有**参考文献**或**目录**，或者直接失败：](#1%E7%BC%96%E8%AF%91%E5%87%BA%E6%9D%A5%E7%9A%84%E6%B2%A1%E6%9C%89%E5%8F%82%E8%80%83%E6%96%87%E7%8C%AE%E6%88%96%E7%9B%AE%E5%BD%95%E6%88%96%E8%80%85%E7%9B%B4%E6%8E%A5%E5%A4%B1%E8%B4%A5)
    - [2、正文第一章，编号却是第二章？](#2%E6%AD%A3%E6%96%87%E7%AC%AC%E4%B8%80%E7%AB%A0%E7%BC%96%E5%8F%B7%E5%8D%B4%E6%98%AF%E7%AC%AC%E4%BA%8C%E7%AB%A0)
    - [3、linux环境下编译失败](#3linux%E7%8E%AF%E5%A2%83%E4%B8%8B%E7%BC%96%E8%AF%91%E5%A4%B1%E8%B4%A5)
    - [4、为什么中文加粗命令`\textbf{}`或者`\bfseries`都没反应？](#4%E4%B8%BA%E4%BB%80%E4%B9%88%E4%B8%AD%E6%96%87%E5%8A%A0%E7%B2%97%E5%91%BD%E4%BB%A4%5Ctextbf%E6%88%96%E8%80%85%5Cbfseries%E9%83%BD%E6%B2%A1%E5%8F%8D%E5%BA%94)
    - [5、编译的和预期有差别，你把缓存的文件清理一下，重新四步走进行编译](#5%E7%BC%96%E8%AF%91%E7%9A%84%E5%92%8C%E9%A2%84%E6%9C%9F%E6%9C%89%E5%B7%AE%E5%88%AB%E4%BD%A0%E6%8A%8A%E7%BC%93%E5%AD%98%E7%9A%84%E6%96%87%E4%BB%B6%E6%B8%85%E7%90%86%E4%B8%80%E4%B8%8B%E9%87%8D%E6%96%B0%E5%9B%9B%E6%AD%A5%E8%B5%B0%E8%BF%9B%E8%A1%8C%E7%BC%96%E8%AF%91)
    - [6、表格居中、换行、图片并列排等，怎么用](#6%E8%A1%A8%E6%A0%BC%E5%B1%85%E4%B8%AD%E6%8D%A2%E8%A1%8C%E5%9B%BE%E7%89%87%E5%B9%B6%E5%88%97%E6%8E%92%E7%AD%89%E6%80%8E%E4%B9%88%E7%94%A8)
    - [7、其他的](#7%E5%85%B6%E4%BB%96%E7%9A%84)
  - [三、更新日志](#%E4%B8%89%E6%9B%B4%E6%96%B0%E6%97%A5%E5%BF%97)
    - [2020.5.10](#2020510)
    - [2020.4.13](#2020413)
    - [2020.4.10](#2020410)
    - [2020.4.7](#202047)
    - [2020.4.4](#202044)
  - [四、其他](#%E5%9B%9B%E5%85%B6%E4%BB%96)
    - [学校的要求有哪些变化](#%E5%AD%A6%E6%A0%A1%E7%9A%84%E8%A6%81%E6%B1%82%E6%9C%89%E5%93%AA%E4%BA%9B%E5%8F%98%E5%8C%96)
    - [项目主要文件](#%E9%A1%B9%E7%9B%AE%E4%B8%BB%E8%A6%81%E6%96%87%E4%BB%B6)
    - [编译器选择](#%E7%BC%96%E8%AF%91%E5%99%A8%E9%80%89%E6%8B%A9)
    - [高级操作](#%E9%AB%98%E7%BA%A7%E6%93%8D%E4%BD%9C)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# 兰州大学本科生2020（学士学位）LaTeX模板

根据[这个项目](https://github.com/suchot/LZUThesis2017)进行修改的，mac、linux、windows三系统全部测试通过，linux缺一个字体，看[常见问题：linux环境下编译失败](#3%e3%80%81linux%e7%8e%af%e5%a2%83%e4%b8%8b%e7%bc%96%e8%af%91%e5%a4%b1%e8%b4%a5)，其他出现什么问题，也看下面的[常见问题](#%e4%b8%89%e5%b8%b8%e8%a7%81%e9%97%ae%e9%a2%98)

> 另：template.pdf和template.tex两个文件可以用来学习latex，写了点东西

我强烈建议你用git管理毕业论文，每天写完以后就提交到gitee（速度比github快无数倍）上！！！不然不小心删除了或者中病毒了什么的，哭都没地方哭去

## 一、使用方法

据说这个网站：[overleaf](https://cn.overleaf.com/)挺好用（我没用，不喜欢在线版的），可以直接直接上传这个模板，在线使用。如果你就这一次用LaTex，以后都不需要了，可以试一下，但是如果你还上研究生要发文章，还是按照下面的本地安装一下吧

### 现状0：以前用的这个模板，现在需要升级

请下载[lzubib.bst](bib/lzubib.bst)和[LZUThesis.cls](/LZUThesis.cls)，替换你论文项目中原有的这两个文件。

### 现状1：论文直接用这个模板开始写

**前3步详细请见[template.pdf](template.pdf)**

1. 安装texlive2020

2. 测试安装是否成功

3. 配置编译器，可见[编译器选择](#%e7%bc%96%e8%af%91%e5%99%a8%e9%80%89%e6%8b%a9)

4. texlive安装好并且把编译器配置完成后，只要把[paper.zip](paper.zip)下载然后解压就可以了，所有的都在那单独有一份，直接在那里面的`paper.tex`里写论文

### 现状2：以前用的[LZUThesis2017](https://github.com/suchot/LZUThesis2017)

#### 这个项目与[LZUThesis2017](https://github.com/suchot/LZUThesis2017)主要区别

- lzubib.bst移动到了bib里面，并且修改了参考文献的一些问题
- 打包的里面LZUthesis.cls名字修改了
- LZU.cfg被合并到LZUthesis.cls里面了
- 适配了2020兰大毕业论文要求，并修改了他遗留下了的诸多问题！！！！！
- 文件名我看着不舒服，改成LZUThesis了，T大写

#### 你需要做什么

如果你配置好了LaTex的书写环境，先下载解压 [paper.zip](paper.zip)

模板已经适配2020，但是如果你已经写了文章，直接复制你的.tex到解压以后的文件夹里，需要你自己调整下面的：

1. 模板名字
    > 如果以前的.tex文件复制过来，必须要把前面一行名字改掉，以前是

    ```tex
    \documentclass{LZUthesis}
    % 或
    \documentclass{LZUthesisonline}
    ```

    > 注意，我的这里面 *Thesis*第一个字母大写了，不大写我看着不舒服，敲代码的人应该明白

    ```tex
    \documentclass{LZUThesis}
    ```

2. 成绩页在责任书之后，以前在前面，需要你自己移动，位置如

    ```tex
    \maketitle

    %======%
    %诚信说明页
    %授权说明书
    %======%
    \makestatement

    %=====%
    %论文（设计）成绩
    %=====%

    \supervisorcomment{导师评价你人很好}
    \recommendedgrade{80}

    \supervisorsignature{
        \raisebox{-10pt}{
            \includegraphics[width=60pt]{signature.pdf}
        }
    }

    \committeecomment{优秀}
    \finalgrade{100}
    \Grade

    % 注意成绩页在这个命令前面

    \frontmatter
    ```

3. 英文摘要请放在中文摘要前面！

4. 正文最前面有绪论（引言），模板中已经给了相关命令`\Intro`

    ```tex
    \tableofcontents
    %文章主体
    \mainmatter

    \Intro{
        这里是绪论，也可以说是引言，在LZUThesis2020.clc里面改
    }

    \chapter{latex部分用法简介}
    ```

## 二、常见问题

你可一定要先安装texlive2020，可参考[现状1：论文直接用这个模板开始写](#%e7%8e%b0%e7%8a%b61%e8%ae%ba%e6%96%87%e7%9b%b4%e6%8e%a5%e7%94%a8%e8%bf%99%e4%b8%aa%e6%a8%a1%e6%9d%bf%e5%bc%80%e5%a7%8b%e5%86%99)
    
### 1、编译出来的没有**参考文献**或**目录**，或者直接失败：

不要用pdflatex那个！需要四步走xelatex - bibtex - xelatex - xelatex，具体什么意思，百度吧；

### 2、正文第一章，编号却是第二章？

> 那是因为绪论当做了第一章，你可以在正文前面重新计数

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

### 3、linux环境下编译失败

> 因为linux上默认没有Arial字体

- 方法一：可以自己网上找一下，下载安装，注意名字（不是文件名，而是安装以后的字体名）要完全对上
- 方法二：可以搜索在[LZUThesis.cls](LZUThesis.cls)文件中搜索`\fontspec{Arial}`，将这一个命令删除，这个字母不用这个字体了（有点不符合论文对英摘要的要求）。

### 4、为什么中文加粗命令`\textbf{}`或者`\bfseries`都没反应？

   不仅你没反应，你有没有发现“关键字”等需要宋体加粗的我用的都是黑体？你可以根据你自己的字体修改，但是对于latex中，中文加粗，大家的普遍做法都是改成黑体

   详情查看[高级操作](#%e9%ab%98%e7%ba%a7%e6%93%8d%e4%bd%9c)

### 5、编译的和预期有差别，你把缓存的文件清理一下，重新四步走进行编译

缓存的文件：比如你的文件名是paper.tex，那就删除以paper开头的所有文件，当然，paper.tex不要删除！！！！

理论上是这么做的，但是你删错了不关我的事。。。

我用的sublime或者vscode点一下就删除了，好吧最多点两下，删错了，如果之前用了git的话，可以恢复

### 6、表格居中、换行、图片并列排等，怎么用

你仔细看[template.pdf](template.pdf)和[template.tex](template.tex)吧，里面都有

### 7、其他的

> 百度错误的提示，基本上都能找到原因

以后再补充，如果是bugs，可以在issues里提交bugs，请**勿**直接QQ联系我！

我已经多次多人测试通过，如果你在[paper.zip](paper.zip)什么都没写，就直接编译失败的肯定是你自己的原因！！

如：

- 没有安装或者没有成功安装texlive2020（mac是mactex），请查看：[使用方法](#%e4%b8%80%e4%bd%bf%e7%94%a8%e6%96%b9%e6%b3%95)

- vscode等编译器配置有问题，没有采用四步走，请查看：[四步走编译](#1%e7%bc%96%e8%af%91%e5%87%ba%e6%9d%a5%e7%9a%84%e6%b2%a1%e6%9c%89%e5%8f%82%e8%80%83%e6%96%87%e7%8c%ae%e6%88%96%e7%9b%ae%e5%bd%95%e6%88%96%e8%80%85%e7%9b%b4%e6%8e%a5%e5%a4%b1%e8%b4%a5)

- 不怎么懂模板，还非要乱改
- ……


-----

## 三、更新日志

### 2020.5.10

1. 修复参考文献的历史遗留问题
2. 完善文档

### 2020.4.13

1. 对于宋体加粗使用了黑体，黑体加粗没有效果，做了作了说明：请看[高级操作](#%e9%ab%98%e7%ba%a7%e6%93%8d%e4%bd%9c)
2. 测试了texlive2020，适配完美
   > 2020里面可以识别`a.b.png`这样文件名的图片了，以前要写成`{a.b.}.png`，但是现在这样反而会报错
3. 修复英文摘要标题的字体问题
4. [后续计划](#%e5%90%8e%e7%bb%ad%e8%ae%a1%e5%88%92)：你们也可以提交问题修复的，开源项目一起贡献，为学弟学妹做些事。

### 2020.4.10

1. 说明：上个版本的介绍中绪论写错位置了，应在正文最前面
2. 去除雅黑字体，windows、linux、macos三合一，注意使用的时候最前面修改一下，别打我，这个以后绝对不改了

    ```tex
    % 现在应该是
    \documentclass{LZUThesis}

    % 之前是
    \documentclass{LZUThesis-mac}
    % 或
    \documentclass{LZUThesis-windows}
    ```

3. 优化封面和成绩评语界面，与word版更相似
4. 参考文献中可以由url、doi（mendeley生成的参考文献会携带），这样编译出来的pdf，点击参考文献可以直接跳转到原文界面
5. 新增 `textcomp`包，可以输入 `\textcelsius`，会变成摄氏度
6. 删除一些过时的内容，减少编译警告
7. 修改兰大logo为透明图，防止黑边
8. 以前那个库的历史遗留问题（错的地方太多了……）
   - 目录中一级标题加粗
   - 图表序号中间用点连接，序号与文字空一个字符
   - 中英文摘要字体大小、行间距等问题
   - 修复一些字号、字体设置不正确的问题

### 2020.4.7

mac版与windows分开打包，增加说明文件

### 2020.4.4 

适配了兰州大学2020最新的毕业论文（草拟稿）要求，最近还会修改

1. 页眉：单条线、页脚：页码居中
2. 封面、包括logo、和一些细节
3. 成绩表各种加黑问题，并且放在了前面
4. 添加了图片并排的一些库，里面提供了**常用的示例**
5. 针对mac电脑进行了测试和适配，修复了部分警告问题，合并一些文件，修复部分不符合论文要求的地方

------

## 四、其他


### 学校的要求有哪些变化

- 责任书有变化，模板中已经修改
- 正文页眉单线，模板中已经修改
- 封面有变化，模板中已经修改
- 成绩页提到了前面
- 英文摘要在中文摘要前面！并且摘要字体变成了2号（以前3号，我想不明白为啥要变成2号，太大了！标题都换行了，尤其是英文标题）
- 增加绪论
- 图表、目录等严格要求

### 项目主要文件

本项目精简了文件，只有LZUThesis.clc和bib、figure文件夹是必须的

1. bib文件夹里，database.bib是用来放你的参考文献的，

2. figure文件夹是一个图和导师签名

3. LZUThesis.clc这是模板配置文件，lzubib.bst是参考文献配置文件，小白请千万不要更改；

4. template.tex是用来写论文的，这个文件名字可以修改


--------

### 编译器选择

1. 不喜欢texStudio或者texmaker，用vscode吧，配置很简单，习惯sublime text3的也行

    [windows系统 vscode用法](https://zhuanlan.zhihu.com/p/38178015)

    [mac系统 vscode用法](https://www.jianshu.com/p/c09b3409317f)

    [linux系统 vscode用法](https://www.jianshu.com/p/c09b3409317f)

-------

### 高级操作

一般人，不要按照下面的操作！！！你会把模板改坏的，最后改到编译错误让你自己崩溃（改到你仰望我的LaTex水平😂，好吧，其实我也是一天学会的，不过本科阶段你们好好学习时我就折腾过……）。。。

1. 如果你觉得封面上“本科生毕业论文（设计）”和“毕业论文（设计）成绩表”这几个字的字体与学校的范例不一样（我现在用的是黑体）你可以修改LZUThesis.cls文件，把它设置成雅黑字体。windows电脑上应该是有yahei这个命令，可以直接用；linux和mac需要你自己安装字体，然后自己新建一个这样的命令。

    ```tex
    %windows系统不需要这个操作，只有linux与mac需要先百度去安装字体，再自定义如下命令

    \setCJKfamilyfont{yahei}{MicrosoftYaHei}
    \newcommand{\yahei}{\CJKfamily{yahei}}
    ```

    然后把现在设置在那几个字前面的`\heiti`改成`\yahei`

    >MicrosoftYaHei为你的字体在你电脑上上显示的名字，比如苹果电脑上：打开字体册应用，找到你自己安装的雅黑字体的PostScript名称

2. 成绩页等加粗字体有问题，并不是宋体加粗而是黑体！

    中文在xelatex中，windows并不支持加粗命令`\textbf{}`或者`\bfseries`，为了方便和适配更多的系统，[大家一般都换成了黑体](https://www.zhihu.com/question/58456658)，我测试过打开全局伪加粗，windows并没有效果（mac和linux不打开就有效果），你要是很严谨（强迫症），可以自己安装加粗字体，自定义命令实现加粗（mac和linux用户，可以直接使用加粗的命令，会自动伪加粗，效果也不错，我就是这么用的），需要改的地方如下

    在最新版的LZUThesis.cls文件中搜索：`应该是加粗`，可以找到应该改的地方，把这里的黑体设置，改成旁边注释括号里的要求

    示例如下：

    ```tex
    原本是

    \begin{center}
        {\heiti\zihao{3}{诚信责任书}} % “诚信责任书”这几个字，应该是加粗（宋体加粗）
    \end{center}

    mac或linux可以改成伪加粗

    \begin{center}
        {\songti\bfseries\zihao{3}{诚信责任书}} % “诚信责任书”这几个字，应该是加粗（宋体加粗）
    \end{center}

    windows需要改成：

    %先百度安装字体，再在最前面合适的地方自定义加粗字体，比如你安装的字体名是：宋粗体
    \setCJKfamilyfont{csong}{宋粗体}
    \newcommand{\csong}{\CJKfamily{csong}}

    %然后修改需要修改的地方
    \begin{center}
        {\csong\zihao{3}{诚信责任书}} % “诚信责任书”这几个字，应该是加粗（宋体加粗）
    \end{center}
    ```

以上两个问题我在模板中没有修改的原因：

> 一个模板，对于大多数人来说，拿来就可以用（兼容性好、体验也可以）才是最重要的
，而一些细节问题，是为那些有能力（或者说爱折腾，不是贬义词）的人留下的，所以我对于遗留的问题在cls文件里，都做了注释说明

3. 如果你曾经修改过参考文献格式lzubib.bst文件，请到bib文件夹中覆盖或修改

