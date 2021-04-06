# 实验三 动手实战Systemd
## 一、实验环境
- win10
- Ubuntu 20.04
## 二、实验目的
熟悉Systemd使用
## 三、主要任务
- 本地安装配置好asciinema完成asciinema本地账号和在线账号的关联
- 上传本人亲自操作实验全程录像
- 编写markdown格式纯文本文件
- 完成第三章自查清单
## 四、实验过程
### （一)、学习Systemd入门教程：命令篇
#### 第三章 系统管理
- 3.1 systemctl
- 3.2 systemd-analyze
- 3.3 hostnamectl
- 3.4 localectl
- 3.5 timedatectl
- 3.6 loginctl
[![asciicast](https://asciinema.org/a/MBHVeWCK5DXWhLToz8hA6cYIY.svg)](https://asciinema.org/a/MBHVeWCK5DXWhLToz8hA6cYIY)
[![asciicast](https://asciinema.org/a/DEz2ET99ugbyFb9j1d5CUkHah.svg)](https://asciinema.org/a/DEz2ET99ugbyFb9j1d5CUkHah)
#### 第四章 Unit
- 4.1 含义
- 4.2 Unit 的状态
- 4.3 Unit 管理
- 4.4 依赖关系
[![asciicast](https://asciinema.org/a/kSZIpFRS37mizOL5M4j29X47v.svg)](https://asciinema.org/a/kSZIpFRS37mizOL5M4j29X47v)
#### 第五章 Unit 的配置文件
- 5.1 概述
- 5.2 配置文件的状态
- 5.3 配置文件的格式
- 5.4 配置文件的区块
[![asciicast](https://asciinema.org/a/fE1I9wGS1sab2FMzkiKyYrzOP.svg)](https://asciinema.org/a/fE1I9wGS1sab2FMzkiKyYrzOP)
#### 第六章 Target
[![asciicast](https://asciinema.org/a/ikgZpDg4byGX86lGQhgi7xbSQ.svg)](https://asciinema.org/a/ikgZpDg4byGX86lGQhgi7xbSQ)
#### 第七章 日志管理
[![asciicast](https://asciinema.org/a/ByoZtdkD2j7H6BICfuf9fAcmN.svg)](https://asciinema.org/a/ByoZtdkD2j7H6BICfuf9fAcmN)
### (二)、学习Systemd入门教程：实战篇
#### 基本任务
- 开机启动
- 启动服务
- 停止服务
- 读懂配置文件
- [Unit] 区块：启动顺序与依赖关系。
- [Service] 区块：启动行为
- Target 的配置文件
- 修改配置文件后重启
[![asciicast](https://asciinema.org/a/qeEBKmYpNOos20eR2rMQsuS7V.svg)](https://asciinema.org/a/qeEBKmYpNOos20eR2rMQsuS7V)
### 五、完成第三章自查清单
- 如何添加一个用户并使其具备sudo执行程序的权限?
`adduser <username> <username> ALL=(ALL) ALL`
- **如何将一个用户添加到一个用户组？**
`usermod -a -G <groupname> <username>`
- 如何查看当前系统的分区表和文件系统详细信息？
`sudo fdisk -l`
- 如何实现开机自动挂载Virtualbox的共享目录分区？
`mount -t vboxsf sharing /mnt/share`(切换到root用户执行)
- 基于LVM（逻辑分卷管理）的分区如何实现动态扩容和缩减容量？
`lvextend -L +<容量> <目录>`  扩容
`lvreduce -L -<容量> <目录>`  减容
- 如何通过systemd设置实现在网络连通时运行一个指定脚本，在网络断开时运行另一个脚本？
`ExecStartPost=<路径1> post1`
`ExecStopPost=<路径2> post2`
`sudo systemctl daemon-reload`
`sudo systemctl restart httpd.service`
- 如何通过systemd设置实现一个脚本在任何情况下被杀死之后会立即重新启动？实现杀不死？
`Restart=always`
`sudo systemctl daemon-reload`

## 六、实验中遇到的问题
**问题**：
apache2安装问题
出现如下报错
Sub-process /usr/bin/dpkg returned an error code (1)
**解决办法**：
1、查看报错内容及日志文件、/etc/apt/sources.list以及相关子目录 /etc/apt/sources.list.d 下所有 apt 镜像配置相关配置文件的完整的内容并回忆最近做过的重要配置变更
发现是因为修改了/user/bin下systemd的重要配置文件
2、用虚拟机的「快照」还原功能恢复到正常工作的状态

## 七、参考文献

- [System入门教程：命令篇](http://www.ruanyifeng.com/blog/2016/03/systemd-tutorial-commands.html)
- [Systemd 入门教程：实战篇](http://www.ruanyifeng.com/blog/2016/03/systemd-tutorial-part-two.html)