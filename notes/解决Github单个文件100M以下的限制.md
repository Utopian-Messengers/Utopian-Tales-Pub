# 解决Github单个文件100M以下的限制

github对上传的文件大小有限制：

> github 限制在1G以内，单个文件超过50M会警告，超过100M会阻止

最先查到的解决办法是自己修改大小限制，命令是这样的：

```
git config http.postBuffer 524288000 #设置大小为500M
git config -l #查看配置是否修改成功
```

失败了，依然被阻止。

查到的第二种方式是使用git官方提供的LFS（Large File Storage）工具，原理似乎是存一个索引，完整文件存在别的服务器上。

LFS的使用可以参见官方说明：[Git Large File Storage](https://git-lfs.github.com/)

使用的命令顺序基本如下：

```
git lfs install #安装LFS
find ./ -type f -size +102400k #查找超过100M的文件
git lfs track “*.xxx” #根据查找到的文件更改   
```

之后正常add, commit, push就行，不过得把.gitattributes给add进去。我比较喜欢用的方式如下：

```
git add . #添加全部文件
git commit -m “xxx”
git push
```
