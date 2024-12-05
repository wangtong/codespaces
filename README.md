本文主要介绍如何应用github codespaces来快速构建一个生物信息分析的环境。可以使用其下载生物软件，下载生物数据，使用docker，apptainer等。最后将数据传回自己的服务器内。

### 配置devcontainer
```
{
    "name": "Dev Container Python",
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu-22.04",
    "customizations": {
        "vscode": {
            "settings": {
                "editor.tabSize": 2,
                "files.trimTrailingWhitespace": true,
                "workbench.colorTheme": "Aura Dark",
                "workbench.iconTheme": "material-icon-theme",
               
            },
            "extensions": [
                "ms-python.python",
                "ms-python.vscode-pylance",
            ]
        }
    },
    "remoteUser": "root",
    "postCreateCommand": "uname -a"
}
```

### Dockerfile设置

#### 1、修改devcontainer.json
```
{
   "name": "Ubuntu",
   "build": { "dockerfile": "Dockerfile" },
}
```


#### 2、修改Dockerfile
```
FROM ubuntu:jammy
RUN apt update 
RUN apt install -y git vim tree htop lftp tmux
RUN echo 'export PS1="\[\e[31;1m\]\u\[\e[0m\] \[\e[32;1m\]\t \[\e[0m\]\[\e[34;1m\]\w\[\e[0m\]\n\[\e[31;1m\]$ \[\e[0m\]"' >>/root/.bashrc 
RUN apt install -y bwa samtools bcftools ncbi-blast+
```

### 切换管理员账号
```
#切换root
su -
#修改命令行
cp .bashrc /root/.bashrc
#刷新设置
source ~/.bashrc
```

### apt安装软件
```
apt install -y git 
apt install -y tree 
apt install -y htop 
apt install -y tmux 
apt install -y bwa
apt install -y samtools
apt install -y bcftools
apt install -y fastqc
apt install -y fastp
apt install -y spades
apt install -y prodigal
apt install -y awscli
apt install -y sra-toolkit
apt install -y speedtest-cli
```
### 网络测速
安装完speedtest-cli可以直接用于网络测速
```
speedtest
```


### 安装bioconda
```
#下载bioconda
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
#安装
sh Miniforge3-Linux-x86_64 -b
#初始化
~/miniforge3/bin/mamba init bash
#更新设置
source ~/.bashrc
#添加软件源
conda config --add channels bioconda

#安装软件
mamba install -y flye
```
### apptainer
```
add-apt-repository -y ppa:apptainer/ppa
apt update
apt install -y apptainer
apptainer pull docker://google/deepvariant
```
### 打包docker
```
docker pull google/deepvariant
docker images 
docker save -o 7d046533d9e9.tar docker.io/google/deepvariant:latest
pigz 7d046533d9e9.tar 
```

### aws数据下载
```
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039510/SRR1039510 SRR1039510.sra
```
### 下载数据
```
prefetch SRR8482586 -p
prefetch SRR8494912 -p
prefetch SRR8494939 -p
```
### 传输文件
使用scp，sftp或者rsync等工具传到国内服务器上。
```
rsync -avP --rsh='ssh' 7d046533d9e9.tar.gz  abc123@xxx.xxx.xx.xx:~/
```
