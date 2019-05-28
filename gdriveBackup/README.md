# gdriveBackup.sh

定时将文件备份到Google Drive, 适用于Centos


### 教程

#### 1. 下载gdrive脚本

```
wget -O /usr/bin/gdrive "https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download"

chmod +x /usr/bin/gdrive
```
gdrive github: https://github.com/gdrive-org/gdrive


#### 2.授权

```
gdrive about
```
gdrive程序会自动将你的token保存在用户目录下的.gdrive目录中，所以如果不需要了记得把这个文件删掉。

#### 3.下载备份脚本

```
wget https://raw.githubusercontent.com/rfw/shell-script/master/gdriveBackup/gdriveBackup.sh

chmod +x gdriveBackup.sh
```

#### 4.创建定时任务

```
crontab -e
```
然后输入
```
0 2 * * * /xxxx/.sh
```
xxxx替换为脚本目录。
每日2点备份。

#### 5.重启crontab

```
service crond restart //centos 6

systemctl restart crond  //centos 7
```