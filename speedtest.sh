apt install -y speedtest-cli
apt install -y sra-toolkit
apt install -y lftp
apt install -y awscli
mamba install -y blast
prefetch SRR8482586 -p
prefetch SRR8494912 -p
prefetch SRR8494939 -p

git clone https://github.com/vincentarelbundock/Rdatasets

wget https://downloads.pacbcloud.com/public/dataset/2021-11-Microbial-96plex/demultiplexed-reads/m64004_210929_143746.bc2001.bam
wget https://downloads.pacbcloud.com/public/dataset/2021-11-Microbial-96plex/demultiplexed-reads/m64004_210929_143746.bc2096.bam

apptainer pull docker://google/deepvariant


ftp://ftp-trace.ncbi.nih.gov/1000genomes/ftp/technical/reference/human_g1k_v37.fasta.gz
#NCBI hs37d5 deocy版本
ftp://ftp-trace.ncbi.nih.gov/1000genomes/ftp/technical/reference/phase2_reference_assembly_sequence/hs37d5.fa.gz
#NCBI hg38
ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/405/GCA_000001405.15_GRCh38/seqs_for_alignment_pipelines.ucsc_ids/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.gz

#2 USSC
#UCSC hg19
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/bigZips/hg19.fa.gz
#UCSC hg38
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg38/bigZips/hg38.fa.gz

#3 EnsEMBL
#EnsEMBL primary
http://ftp.ensembl.org/pub/current_fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
#EnsEMBL toplevel
http://ftp.ensembl.org/pub/current_fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna_sm.toplevel.fa.gz

#4 千人基因组项目与NCBI一致
#1000 genome   https://www.internationalgenome.org/data
#ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/
ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/human_g1k_v37.fasta.gz
#decoy版本，带EBV病毒
http://www.cureffi.org/2013/02/01/the-decoy-genome/
#ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/phase2_reference_assembly_sequence/
ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/phase2_reference_assembly_sequence/hs37d5.fa.gz

#5 gatk
lftp ftp://gsapubftp-anonymous@ftp.broadinstitute.org/bundle/
ftp> ls
ftp> cd buldle
#mget或者mirrors进行下载
mirror hg38

aws s3 cp --no-sign-request s3://giab/data/AshkenazimTrio/HG002_NA24385_son/UCSC_Ultralong_OxfordNanopore_Promethion/ ./

aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039510/SRR1039510 SRR1039510.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039512/SRR1039512 SRR1039512.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039513/SRR1039513 SRR1039513.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039515/SRR1039515 SRR1039515.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039518/SRR1039518 SRR1039518.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039520/SRR1039520 SRR1039520.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039522/SRR1039522 SRR1039522.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039523/SRR1039523 SRR1039523.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039508/SRR1039508 SRR1039508.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039509/SRR1039509 SRR1039509.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039511/SRR1039511 SRR1039511.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039514/SRR1039514 SRR1039514.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039516/SRR1039516 SRR1039516.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039517/SRR1039517 SRR1039517.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039519/SRR1039519 SRR1039519.sra
aws s3 cp --no-sign-request s3://sra-pub-run-odp/sra/SRR1039521/SRR1039521 SRR1039521.sra


#1 NCBI hs37-1kg  与千人基因组计划一致
ftp://ftp-trace.ncbi.nih.gov/1000genomes/ftp/technical/reference/human_g1k_v37.fasta.gz
#2 EnsEMBL primary
http://ftp.ensembl.org/pub/current_fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
