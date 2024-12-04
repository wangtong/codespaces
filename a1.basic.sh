systemctl disable cloud-init-local cloud-init cloud-config cloud-final
systemctl stop cloud-init-local cloud-init cloud-config cloud-finadl
apt install -y xfsprogs quota
apt install -y openssh-server
apt install -y net-tools
apt install -y plocate
apt install -y neofetch
apt install -y libcurl4-gnutls-dev
apt install -y libcurl4-openssl-dev
apt install -y gdebi
apt install -y zlib*
apt install -y libclang-dev libssl-dev libcurl4-openssl-dev
apt install -y libpcre2-dev libblas-dev liblapack-dev libpng-dev
apt install -y libargtable2-0
systemctl set-default multi-user.target
apt install -y git vim tree screen htop cmake lftp lrzsz tmux curl
apt purge -y needrestart
add-apt-repository -y ppa:apptainer/ppa
apt update
apt install -y apptainer
add-apt-repository --remove ppa:apptainer/ppa
apt install -y podman*
