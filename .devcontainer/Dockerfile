FROM ubuntu:jammy

RUN apt update 

RUN apt install -y git vim tree htop lftp tmux

RUN echo 'export PS1="\[\e[31;1m\]\u\[\e[0m\] \[\e[32;1m\]\t \[\e[0m\]\[\e[34;1m\]\w\[\e[0m\]\n\[\e[31;1m\]$ \[\e[0m\]"' >>/root/.bashrc 

RUN apt install -y bwa samtools bcftools ncbi-blast+

RUN apt install -y fastqc sra-toolkit

