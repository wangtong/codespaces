#安装bioconda
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
sh Miniforge3-Linux-x86_64 
source ~/.bashrc

#添加软件源
conda config --add channels bioconda 
conda config --add channels conda-forge

#安装软件(bwa，samtools，bcftools软件为例)
#搜索软件
conda search bwa
#安装软件
conda install -y samtools=1.9 bcftools=1.9
#查看已安装软件
conda list
#升级软件
conda update bwa
#移除软件
conda remove bwa

#=========================
#       记录软件版本     #
#=========================
#查看gcc编译器版本
which gcc
gcc --version
#查看 cmake版本

which cmake
cmake --version

#查看python版本
which python
python -V
#查看perl版本
which perl
perl -V
#查看R版本

which R
R –version

#blast软件版本
which blastn
blastn -version

#bwa软件版本，什么参数都不加

which bwa
bwa
#samtools软件本

which samtools
samtools --version
#flye软件版本，可以先--help
which flye
flye --help
flye --version

#=========================
#        安装常用软件    #
#=========================
#利用mamba安装软件
mamba install -y bwa
mamba install -y samtools
mamba install -y bcftools
mamba install -y blast
mamba install -y blat
mamba install -y mummer
mamba install -y mafft
mamba install -y muscle
mamba install -y lastz
mamba install -y sra-tools
mamba install -y seqkit
mamba install -y seqtk
mamba install -y bedtools
mamba install -y bedops
mamba install -y gfatools
mamba install -y circos
mamba install -y entrez-direct
mamba install -y emboss

#安装数据质控软件
mamba install -y fastqc multiqc
mamba install -y trimmomatic
mamba install -y fastp

#安装基因组拼接相关工具
mamba install -y velvet
mamba install -y flye
mamba install -y miniasm
mamba install -y canu
mamba install -y megahit
mamba install -y spades
mamba install -y quast
mamba install -y racon
mamba install -y miniasm
mamba install -y nanopolish

#安装基因功能分析软件
mamba install -y prodigal
mamba install -y glimmer
mamba install -y augustus
mamba install -y trf

apptainer pull ubuntu.sif docker://ubuntu:latest
apptainer build -sf ubuntu ubuntu.sif
apptainer shell -wf ubuntu
