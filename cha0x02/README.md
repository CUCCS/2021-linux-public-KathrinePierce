# 实验目的

- 通过学习vimtutor熟悉vim的使用
  
# 主要任务

1. 下载配置asciinema软件
2. 完成vimtutor学习并全程录制
3. 完成vimtutor后的自查清单

# 实验过程

## 下载配置asciinema

- 在asciinema注册一个账号
- 并根据网站教程本地安装配置好asciinema
- 完成asciinema本地账号和在线账号的关联：使用命令`asciinema auth`，并复制网址到浏览器中完成asciinema本地账号和在线账号的关联

## vimtutor学习过程录像

### Lesson 1

- Lesson 1.1:MOVING THE CURSOR

- Lesson 1.2:EXITING VIM

- Lesson 1.3:TEXT EDITING - DELETION

- Lesson 1.4: TEXT EDITING - INSERTION

- Lesson 1.5: TEXT EDITING - APPENDING

- Lesson 1.6: EDITING A FILE
[![Screen record-Lesson 1](https://asciinema.org/a/IkoURb8YBxViMwzx22mPHkOWG.svg)](https://asciinema.org/a/IkoURb8YBxViMwzx22mPHkOWG)
### Lesson 2

- Lesson 2.1: DELETION COMMANDS

- Lesson 2.2: MORE DELETION COMMANDS

- Lesson 2.3: ON OPERATORS AND MOTIONS

- Lesson 2.4: USING A COUNT FOR A MOTION

- Lesson 2.5: USING A COUNT TO DELETE MORE

- Lesson 2.6: OPERATING ON LINES

- Lesson 2.7: THE UNDO COMMAND

[![Screen record-Lesson 2 ](https://asciinema.org/a/wfw3dGTJoYVbqY2or1eocjS6k.svg)](https://asciinema.org/a/wfw3dGTJoYVbqY2or1eocjS6k)

### Lesson 3

- Lesson 3.1: THE PUT COMMAND

- Lesson 3.2: THE REPLACE COMMAND

- Lesson 3.3: THE CHANGE OPERATOR

- Lesson 3.4: MORE CHANGES USING c

[![Screen record-Lesson 3](https://asciinema.org/a/Xg8EcvqkCwvLpESB4RTyOigD9.svg)](https://asciinema.org/a/Xg8EcvqkCwvLpESB4RTyOigD9)

### Lesson 4

- Lesson 4.1: CURSOR LOCATION AND FILE STATUS

- Lesson 4.2: THE SEARCH COMMAND

- Lesson 4.3: MATCHING PARENTHESES SEARCH

- Lesson 4.4: THE SUBSTITUTE COMMAND

[![Screen record-Lesson 4](https://asciinema.org/a/5AD2vwyGjXArgU33SHmZ3zItQ.svg)](https://asciinema.org/a/5AD2vwyGjXArgU33SHmZ3zItQ)

### Lesson 5

- Lesson 5.1: HOW TO EXECUTE AN EXTERNAL COMMAND

- Lesson 5.2: MORE ON WRITING FILES

- Lesson 5.3: SELECTING TEXT TO WRITE

- Lesson 5.4: RETRIEVING AND MERGING FILES

[![Screen record Lesson-5](https://asciinema.org/a/b8uY7EJW9dETyjTHwGktbrRs8.svg)](https://asciinema.org/a/b8uY7EJW9dETyjTHwGktbrRs8)

### Lesson 6

- Lesson 6.1: THE OPEN COMMAND

- Lesson 6.2: THE APPEND COMMAND

- Lesson 6.3: ANOTHER WAY TO REPLACE

- Lesson 6.4: COPY AND PASTE TEXT

- Lesson 6.5: SET OPTION

[![Screen record Lesson-6](https://asciinema.org/a/W7ZE2sSMg7kvFCpismM4UARJQ.svg)](https://asciinema.org/a/W7ZE2sSMg7kvFCpismM4UARJQ)

### Lesson 7

- Lesson 7.1: GETTING HELP

- Lesson 7.2: CREATE A STARTUP SCRIPT

- Lesson 7.3: COMPLETION

[![asciicast](https://asciinema.org/a/RdG3HkWZtTzRVzxEJSdXTqrTA.svg)](https://asciinema.org/a/RdG3HkWZtTzRVzxEJSdXTqrTA)

## 自查清单

- **你了解vim有哪几种工作模式？**
    - Command-Mode
    - Insert-Mode
    - Visual-Mode
    - Normal-Mode
    - Select-Mode
    - Ex-Mode
    - Command-line Mode
- **Normal模式下，从当前行开始，一次向下移动光标10行的操作方法？如何快速移动到文件开始行和结束行？如何快速跳转到文件中的第N行？**
    - 一次向下移动光标10行：``10j``
    - 快速移动到文件开始行：``gg``or``1G`` ，移动到结束行结束行：``G``
    - 快速跳转到文件第N行：``Ngg``or``NG``
- **Normal模式下，如何删除单个字符、单个单词、从当前光标位置一直删除到行尾、单行、当前行开始向下数N行？**
    - 删除单个字符：``x``or``dl``
    - 删除单个单词：``dw``or``de``or``daw``or``db``
    - 从当前光标位置一直删除到行尾：``d$``or``D``
    - 删除单行：``dd``
    - 删除当前行开始向下数N行：``Ndd``
- **如何在vim中快速插入N个空行？如何在vim中快速输入80个-？**
    - 插入N个空行：
      - 前插空行：``No``
      - 后插空行：``NO``
    - 快速输入80个-： ``80i/a-``
- **如何撤销最近一次编辑操作？如何重做最近一次被撤销的操作？**
    - 撤销最近一次编辑操作：``u``
    - 重做最近一次被撤销的操作：``Ctrl+r``
- **vim中如何实现剪切粘贴单个字符？单个单词？单行？如何实现相似的复制粘贴操作呢？**
  - ``v`` 选中操作 
  - ``d`` 剪切操作
  - ``y`` 复制操作
  - ``p`` 粘贴操作
  - ``^`` 选中当前行，光标位置到行首(或者使用键盘的HOME键)
  - ``$`` 选中当前行，光标位置到行尾(或者使用键盘的END键)
  - 相似的复制粘贴操作：``+y``向其他应用程序中粘贴
- **为了编辑一段文本你能想到哪几种操作方式（按键序列）？**
  - ``A``行尾插入
  - ``a``光标后插入
  - ``dd``、``dw``、``D``or``d$``删除光标所在行/单词/光标到行末
  -  ``G``移动光标至尾部，``gg``移动光标至首部
  - ``I``行首输入
  - ``i``进入INSERT模式
  - ``O``在光标定位行上方新建一行并进入插入模式，``o``键在光标下方新建一行并进入插入模式
  - ``p``粘贴
  - ``r``替换
  - ``U``行复原，``u``撤销，``Ctrl+r``撤销撤销的操作
  - ``v``选中
  - ``y``复制
  - ``x``删除字符

- **查看当前正在编辑的文件名的方法？查看当前光标所在行的行号的方法？**
  - 查看文件名:``:f/:e``
  - 查看行号:``Ctrl+g``
- **在文件中进行关键词搜索你会哪些方法？如何设置忽略大小写的情况下进行匹配搜索？如何将匹配的搜索结果进行高亮显示？如何对匹配到的关键词进行批量替换？**
    - 关键词搜索：``/``or``?``
    - 设置忽略大小写的情况下进行匹配搜索：``:set ic``
    - 将匹配的搜索结果进行高亮显示：``:set hls``
    - 对匹配到的关键词进行批量替换：``% s/XXX/YYY/g``
- **在文件中最近编辑过的位置来回快速跳转的方法？**
    - 向前跳转``Ctrl+O``
    - 向后跳转``Ctrl+I``
- **如何把光标定位到各种括号的匹配项？例如：找到(, [, or {对应匹配的),], or }**
    - 光标放在(,[,{处，输入``%``
- **在不退出vim的情况下执行一个外部程序的方法？**
    - ``:!<command>``
- **如何使用vim的内置帮助系统来查询一个内置默认快捷键的使用方法？如何在两个不同的分屏窗口中移动光标？**
    - 查询一个内置默认快捷键的使用方法：``:help <shortcut>``
    - 在两个不同的分屏窗口中移动光标：``(Ctrl+W)+W``

# 参考链接

[Vimtutor 中文版教程](https://blog.csdn.net/jack_wang128801/article/details/89607966)
[vimtutor教程(双语版)](https://blog.csdn.net/zhaoyu106/article/details/72896216)
[Vim实用技巧——Vim分屏技巧总结](https://blog.csdn.net/wcy23580/article/details/81387188)


