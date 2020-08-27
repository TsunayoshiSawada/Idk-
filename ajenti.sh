
#Ajenti
sudo apt-get update && sudo apt-get install nginx fail2ban -y && wget http://repo.ajenti.org/debian/key -O- | sudo apt-key add -
sudo apt install nano


echo "deb http://repo.ajenti.org/ng/debian main main ubuntu" >> sudo /etc/apt/sources.list && cd sudo /etc/apt/ && nano sources.list


# setup shit and speed test. 
sudo apt-get update && apt-get install ajenti -y && sudo service ajenti restart && sudo apt-get update && sudo apt-get install python-pip -y && sudo pip install --upgrade pip && sudo pip install speedtest-cli && sudo systemctl enable nginx && sudo systemctl enable ajenti && sudo systemctl status nginx && sudo systemctl status ajenti && sudo systemctl restart ajenti && sudo systemctl restart nginx && speedtest-cli
