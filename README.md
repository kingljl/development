# Install zsh
```
curl 安装
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

wget 安装
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
# Replace zshrc file
```
cp -R Your Path/zshrc ~/.zshrc
```
# Install Plutins
## 1、https://github.com/junegunn/fzf   brew install fzf  
```
使用：
  1、ctrl + r，搜索历史
  2、ctrl + t 搜索当前文件下内容
```
## 2、brew install fd
```
使用：fd | head
```
## 3、brew install pet  || brew install knqyf263/pet/pet
```
使用：命令片段管理器，可以指定标签显示一个片段命令
连接：https://linux.cn/article-9600-1.html
```
## 4、brew install tldr
```
使用：tldr tar 显示tar的使用方式
```
## 5、 brew install tig
```
使用： tig 显示git相关信息
连接：https://juejin.cn/post/6844903606215245831
```
## 6、 brew install tokei
```
使用：tokei 显示统计
```
# Vimium 插件
```
使用连接：https://www.zhihu.com/question/23483616   https://www.jianshu.com/p/5b627a24f7aa
j: 向下细微滚动窗口。 k：向上细微滚动窗口。（默认的<c-e><c-y>

表示Ctrl+e，按住ctrl再按e，<c-y>同理。在此感谢[Gnat]   http://jianshu.io/users/faa44ac9e895/latest_articles   的提醒

J:(Shift+j的意思，以下大写全部表示加Shift) 下一个标签页。

K：上一个标签页。

h：向左细微滚动窗口。l：向右细微滚动窗口。

zH：一直移动到左部。zL:一直移动到右部。

u：向上移动半个屏幕（相当于PageUp）。d：向下滚动半个屏幕。（相当于PageDown）

gg：跳转到页面的顶部。G：跳转到页面的底部。r：重新载入该页。（相当于F5刷新页面）

x：关闭当前页面 。  X：恢复刚刚关闭的页面。

o：相当于Chrome中的地址栏，可以匹配历史记录、收藏夹并在当前窗口打开，或者直接打开一个网址或者搜索一个关键字。

O：在新窗口中打开，非常非常方便！

shift+/：打开Vimium帮助，设置。

上面的可以短时间掌握并运用到实际操作中，以下部分因为用的不多，先留着备用。

gs：查看页面源代码。

yy：拷贝当前页面的URL到剪贴板。

yf：拷贝某一个URL到剪贴板（实际上是相当于输入了f，然后出现很多编码的URL，选择某个之后，相当于拷贝了某个，因为一个页面中可能有很多超链接）

gu：跳转到父页面（比如http://www.douban.com/group/vim/  ，输入后跳转到父页面即http://www.douban.com/group/  ， 所以不同于H的快捷键是回到上个历史页面）

i：输入模式（如果发现命令不起作用，可能是进入输入模式了，此时按Esc回到命令模式）

gi：将光标定位到输入框，如果有多个可以按Tab键切换

f：在当前的页面打开一个新的链接。

F：在新的页面打开一个新的链接。

<a-f>:在当前页面打开多个链接（没感觉使用到了多个标签，不过表示的是输入af）

b：在当前页打开一个书签。（输入部分网址会自动进行搜索）B：在新的标签页打开一个书签。

gf：循环到当前页面的下一个框层。

```
