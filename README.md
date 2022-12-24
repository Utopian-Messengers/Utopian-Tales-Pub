# Utopian-Tales

## 概述

精灵传说 - 精灵吟游诗人传唱的失落歌谣，关于那段尘封的历史，那个奇迹的时代，以及那幅空想的愿景。

## 说明

### 关于学习资料的来源

* 来自网络
* 来自[ZLIB](https://zh.zlibrary.org/) - 电子书
* 来自[中马库](https://www.marxists.org/chinese/) - 电子书
* 来自Bilibili和爱发电 - 视频

### 关于解压密码和文件密码

159753 - 如果需要

### 如何上传学习资料

通过Github：

如果文件大小不超过100M，可以直接点击页面右上角的`Add file > Upload files`按钮在线上传文件。

通过Git：

```shell
# 前置条件
git lfs install # 安装LFS

# 进行本地更改
# ...

# 提交更改到远程
find ./ -type f -size +102400k # 查找超过100M的文件
git lfs track "*.xxx" # 通过LFS追踪这些文件
git add . && git commit -m "更新参考资料" && git push
```
