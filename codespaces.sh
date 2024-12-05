# 配置devcontainer

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



#1、修改devcontainer.json

{
   "name": "Ubuntu",
   "build": { "dockerfile": "Dockerfile" },
}



# 2、修改Dockerfile

FROM ubuntu:jammy
RUN apt update 
RUN apt install -y git vim tree htop lftp tmux
RUN echo 'export PS1="\[\e[31;1m\]\u\[\e[0m\] \[\e[32;1m\]\t \[\e[0m\]\[\e[34;1m\]\w\[\e[0m\]\n\[\e[31;1m\]$ \[\e[0m\]"' >>/root/.bashrc 
RUN apt install -y bwa samtools bcftools ncbi-blast+


# 切换管理员账号

#切换root
su -
#修改命令行
cp .bashrc /root/.bashrc
#刷新设置
source ~/.bashrc


# apt安装软件
apt update
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
apt install -y software-properties-common

# 网络测速
speedtest

# 安装bioconda

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


# 打包conda环境
mamba create -n genome
mamba install -n genome -y velvet
mamba install -n genome -y flye
mamba install -n genome -y miniasm
mamba install -n genome -y canu
mamba install -n genome -y megahit
mamba install -n genome -y spades

#安装软件
mamba install -y conda-pack
#打包环境conda pack或者conda-pack都可以
conda pack -n genome -o genome.tar.gz


# apptainer
add-apt-repository -y ppa:apptainer/ppa
apt update
apt install -y apptainer
apptainer pull docker://google/deepvariant

# 打包docker
apt install -y podman*
docker pull ubuntu
docker images
docker save -o b1d9df8ab815.tar docker.io/ubuntu:latest
pigz b1d9df8ab815.tar


# aws数据下载
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039510/SRR1039510 SRR1039510.sra

# 下载数据
prefetch SRR8482586 -p
prefetch SRR8494912 -p
prefetch SRR8494939 -p

# 传输文件
sftp abc123@xxx.xxx.xx.xx:~/
scp -r file abc123@xxx.xxx.xx.xx:~/
rsync -avP --rsh='ssh' file  abc123@xxx.xxx.xx.xx:~/

