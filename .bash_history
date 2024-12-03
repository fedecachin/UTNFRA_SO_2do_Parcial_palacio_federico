sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo wipefs -a /dev/sdd1 /dev/sdc1 /dev/sdc2
sudo pvcreate /dev/sdd1 /dev/sdc1 /dev/sdc2
sudo pvs
sudo vgcreate vg_datos /dev/sdd1
sudo vgcreate vg_temp /dev/sdc1 /dev/sdc2
sudo pvs
sudo vgs
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lvs
sudo vgs
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
swapon -s
free -h
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo lsblk -f
sudo ls -l /var/lib/docker/
sudo ls -l /work/
sudo mkdir -p /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
[200~git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
history -a
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo usermod -a -G docker fpalacio
grep docker /etc/group
id
sudo systemctl status docker
sudo ls -l /var/lib/docker/
ls -l /work/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo ls -l /var/lib/docker/
ls -l /work/
sudo blkid /dev/vg_datos/lv_docker
sudo lvdisplay
sudo lvchange -ay /dev/vg_datos/lv_docker
sudo fsck -f /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo fsck /dev/vg_datos/lv_docker
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas / work
sudo mount /dev/mapper/vg_datos-lv_workareas /work
df -h
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab
sudo systemctl restart docker
sudo systemctl status docker
docker --version
ls -ld ~/202406/Docker
mkdir -p ~/202406/Docker
nano ~/202406/Docker/index.html
sudo su - fpalacio
ls -ld ~/202406/Docker
ls ~/202406/Docker/index.html
git clone https://github.com/docker/getting-started ~/docker-repo
ls ~/docker-repo
cd ~/UTN-FRA_SO_Examenes/202406/docker/
ls
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git ~/UTN-FRA_SO_Examenes
nano index.html
[200~nano Dockerfile
nano Dockerfile
ls
mkdir static-html-directory
mv index.html static-html-directory/
nano Dockerfile
docker build -t web1-<Palacio> .
docker build -t web1-palacio .
docker container prune
docker image prune
docker volume prune
df -h
docker build -t web1-palacio .
ls
cat static-html-directory/
git clone https://github.com/fedecachin/UTNFRA_SO_2do_Parcial_palacio_federico.git
cd UTNFRA_SO_2do_Parcial_palacio_federico
cp -r ~/UTN-FRA_SO_Examenes/202406/ ./202406/
cp -r ~/UTN-FRA_SO_Examenes/202406/* ./202406/
ls ./202406/
mkdir -p ./RTA_Examen_$(date +%Y%m%d)
cp -r ~/RTA_Examen_$(date +%Y%m%d)/* ./RTA_Examen_$(date +%Y%m%d)/
history -a
