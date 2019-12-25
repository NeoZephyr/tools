## git
### 安装
```sh
sudo wget <get-url>

# 安装依赖
sudo yum -y install zlib-devel openssl-devel cpio expat-devel gettext-devel curl-devel perl-ExtUtils-CBuilder perl-ExtUtils-MakeMaker
# 解压安装 git
sudo tar -zxvf git.tar.gz
cd git/
sudo make prefix=/usr/local/git all
sudo make prefix=/usr/local/git install
```

### 配置
```sh
git config --global user.name "pain"
git config --global user.email "pain@163.com"

git config --global core.autocrlf false
git config --global core.quotepath off
git config --global gui.encoding utf-8

# 显示当前的 git 配置
git config --list --global

ssh-keygen -t rsa -C "pain@163.com"

ssh-add ~/.ssh/id_rsa

# 若上面的命令执行出错
eval `ssh-agent`

# 添加公钥
id_rsa.pub
```

```sh
# 出现 permission denied 问题
git remote set-url origin git@github.com:NeoZephyr/go-learning.git
```

```sh
# 简介方式
git log --oneline
# 查看最近 4 次
git log -n4 --oneline

git branch -v

# 查看所有分支的提交
git log --all --graph

git diff HEAD HEAD~
git diff HEAD HEAD~2
```
```sh
# 对任何一次 commit message 更改
# 对要更改 commit message 的 commit 选择 reword 命令
git rebase -i <parent commit id>
```
```sh
# 对要合并到目标 commit 的 commit 选择 squash 命令
git rebase -i <parent commit id>
```

```sh
# 回退到指定 commit，慎用
git reset --hard <commit id>
```

```sh
git stash
git stash list

git stash pop
```

```sh
git remote add github <github url>
git remote remote -v
```

```sh
# 禁止该操作
git push -f
```

搜索
```
xx in:readme
```

```sh
# 工作区与暂存区区别
git diff

# 暂存区与 HEAD 区别
git diff --cached

# 取消暂存
git reset HEAD
git reset HEAD -- index.html

# 取消工作区
git checkout -- index.html
```

### 代码流程
```
pull: remote => workspace
fetch/clone: remote => repo
push: repo => remote
checkout: repo => workspace
commit: stage => repo
add: workspace => stage
```

### 常用操作
#### 暂存
```sh
# 当前目录下的所有内容
git add -A .
git add -A src/

# 递归暂存当前目录下的所有文件
git add -u .
```

#### 删除
```sh
# 停止追踪文件，但该文件会保留在工作区
git rm --cached a.txt
```

#### 查看改动
```sh
# 显示暂存区和工作区差异
git diff readme.txt

# 显示暂存区和上一个commit的差异
git diff --staged [file]
git diff --cached [file]

# 显示某次提交的元数据和内容变化
git show [commit]
# 显示某次提交的某个文件的内容
git show [commit]:[filename]
```

#### 日志
```sh
# 显示简要的增改行数统计
git log --stat
# 显示每次提交的内容差异
git log -p

# 查看每一次操作记录
git reflog
```

#### 回退
```sh
# 重置暂存区的指定文件，工作区不变
git reset [file]

# 回退到上一次提交，保存工作区的修改
git reset HEAD^
# 重置暂存区，工作区不变
git reset [commit]

# 恢复某个提交的指定文件到暂存区和工作区
git checkout [commit] [file]
```

#### 分支
```sh
# 列出所有本地分支
git branch
# 列出所有远程分支
git branch -r
# 列出所有本地分支和远程分支
git branch -a

# 建立分支
git branch <branchname>
# 创建分支并进行切换
git checkout -b <branchname>
# 切换到上一个分支
git checkout -

# 合并分支
git merge <branch_name>
# 选择一个commit，合并进当前分支
git cherry-pick [commit]
```

#### 代码推送与拉取
```
# 第一次推送
git push -u origin <branch_name>
# 推送远程分支
git push origin <local_branch_name>:<remote_branch_name>

# 删除分支
git branch -d <branchname>
# 删除远程分支
git push origin --delete <branchname>

# 拉取变动
git fetch
git pull origin <branchname>
```

#### 标签
```sh
git tag v1.0
git push origin v1.0:v1.0
git show v1.0
```

### ignore
```
*.log
build/
node_modules/
.idea/
my_notes.md
```
