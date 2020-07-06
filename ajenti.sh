#Ajenti
sudo apt-get update && sudo apt-get install nginx fail2ban -y && wget http://repo.ajenti.org/debian/key -O- | sudo apt-key add -



echo "deb http://repo.ajenti.org/ng/debian main main ubuntu" >> sudo /etc/apt/sources.list 
# setup shit and speed test. 

sudo service ajenti restart && sudo apt install python pip -y && sudo pip install --upgrade pip && sudo pip install speedtest-cli && sudo add-apt-repository ppa:certbot/certbot && sudo systemctl enable nginx && sudo systemctl enable ajenti && sudo systemctl status nginx && sudo systemctl status ajenti && sudo systemctl restart ajenti && sudo systemctl restart nginx && speedtest-cli
