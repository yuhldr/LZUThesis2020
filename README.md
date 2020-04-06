# 兰州大学本科生（学士学位）LaTeX模板

> 根据[这个项目](https://github.com/suchot/LZUThesis2017)进行修改的

> 只要把paper.zip下载然后解压就可以了，所有的都在那单独有一份，直接在那里面写论文，出现什么问题，看下面的常见问题。

> 注意：
> - windows系统：paper-windows.zip，
> - linux或者mac系统：paper-mac(linux).zip

> 另外：template.pdf和template.tex两个文件可以用来学习latex，写了点东西

> 有问题可以联系我：肯定是兰大的，你登录i兰大易班，然后点 我的 - 关于我们 - 找到我们，直接内测群吧，不想在这放个人信息


## 1. 主要文件

本项目精简了文件，只有LZUThesis.clc和bib、figure文件夹是必须的


1. bib文件夹里，database.bib是用来放你的参考文献的，

2. figure文件夹是一个图和导师签名

2. LZUThesis.clc这是模板配置文件，lzubib.bst是参考文献配置文件，小白请千万不要更改；

3. template.tex是用来写论文的，这个文件名字可以修改

-------------

## 2. 常见问题

0. **你可一定要先安装texlive，我用的2019版**
   
   > mac上我用的mactex，按照上面[mac系统 vscode用法](https://www.jianshu.com/p/c09b3409317f)这个教程就可以

1. **mac上或者linux上报错了**
   
    > 请一定要安装font那个文件夹里面的字体

    > 请一定要用paper-mac(linux).zip那个压缩包，mac已经测试过了
    
2. 编译出来的没有参考文献：
    
    > 需要四步走xelatex - bibtex - xelatex - xelatex，具体什么意思，百度吧

3. 其他的以后再补充

--------

## 3. 编译器选择

1. 不喜欢texStudio或者texmaker，用vscode吧，配置很简单，习惯sublime text3的也行

    [windows系统 vscode用法](https://zhuanlan.zhihu.com/p/38178015)

    [mac系统 vscode用法](https://www.jianshu.com/p/c09b3409317f)

    [linux系统 vscode用法](https://www.jianshu.com/p/c09b3409317f)

-------
## 4. 更新日志


### 2020.4.7

mac版与windows分开打包，增加说明文件

### 2020.4.4 

适配了兰州大学2020最新的毕业论文（草拟稿）要求，最近还会修改

1. 页眉：单条线、页脚：页码居中
2. 封面、包括logo、和一些细节
3. 成绩表各种加黑问题，并且放在了前面
4. 添加了图片并排的一些库，里面提供了**常用的示例**
5. 针对mac电脑进行了测试和适配，修复了部分警告问题，合并一些文件，修复部分不符合论文要求的地方
