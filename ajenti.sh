#! /bin/bash
# run using the command below 
# source <(curl -s https://github.com/TsunayoshiSawada/Idk-/blob/master/ajenti.sh)
lsb_release -a
if [[ $(lsb_release -rs) == "16.04" ]]; then # replace 8.04 by the number of release you want

      echo "Compatible version"
      apt-get update 
      apt-get install nginx fail2ban -y 
      wget http://repo.ajenti.org/debian/key -O- | apt-key add - 
      echo "deb http://repo.ajenti.org/ng/debian main main ubuntu" >> /etc/apt/sources.list 
      apt-get update 
      apt-get install ajenti -y 
      service ajenti restart 
      apt install python pip -y 
      pip install --upgrade pip pip install speedtest-cli 
      speedtest-cli
      sudo add-apt-repository ppa:certbot/certbot 
      sudo apt-get update 
      sudo apt-get install python-certbot-nginx -y 
      sudo systemctl enable nginx 
      sudo systemctl enable ajenti 
      sudo systemctl status nginx 
      sudo systemctl status ajenti 
      sudo systemctl restart ajenti 
      sudo systemctl restart nginx
else
      echo "Non-compatible ubuntu version"
fi
