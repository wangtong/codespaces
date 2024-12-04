git clone https://github.com/eddelbuettel/r2u.git
cd r2u/inst/scripts
bash add_cranapt_noble.sh

apt install -y gdebi-core
wget https://download2.rstudio.org/server/jammy/amd64/rstudio-server-2024.09.1-394-amd64.deb
gdebi rstudio-server-2024.09.1-394-amd64.deb

apt search ^r-cran | grep "r-cran" | awk -F "/" '{print "apt install -y " $1}' >r.sh
apt search ^r-bioc | grep "r-bioc" | awk -F "/" '{print "apt install -y " $1}' >>r.sh
