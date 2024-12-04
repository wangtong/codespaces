FROM ubuntu:jammy

LABEL version="1.0" maintainer="docker user <tongyuangene@163.com>"

EXPOSE 22

RUN useradd wangtong -d /home/wangtong -m -s /bin/bash

RUN echo "wangtong:ABC123456" | chpasswd


RUN apt update 

RUN apt install -y git vim tree screen htop cmake lftp lrzsz parallel tmux

RUN echo 'export PS1="\[\e[31;1m\]\u\[\e[0m\] \[\e[32;1m\]\t \[\e[0m\]\[\e[34;1m\]\w\[\e[0m\]\n\[\e[31;1m\]$ \[\e[0m\]"' >>/root/.bashrc 

RUN apt install -y bwa samtools bcftools ncbi-blast+

RUN apt install -y fastqc flye sra-toolkit

