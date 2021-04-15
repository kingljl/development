# Install zsh
```
curl 安装
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

wget 安装
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
# Replace zshrc file
```
cp -R Documents/zshrc ~/.zshrc
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
