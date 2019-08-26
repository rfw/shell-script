# swap.sh

Linux 一键添加/删除Swap虚拟内存

###### 说明
* 如果是vps脚本不支持OpenVZ架构。
* 根目录会创建一个 swapfile 文件。

### 教程

#### 1. 下载脚本

```
wget https://raw.githubusercontent.com/rfw/shell-script/master/swap/swap.sh

chmod +x swap.sh
```

#### 2.运行

```
./swap.sh
```

### 其他

#### 查看swap 大小

```
free -m
```


