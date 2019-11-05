sudo firewall-cmd --get-active-zones > /vagrant_data/5-task-RL/firewall-zones-lb.txt
sudo firewall-cmd --list-all-zones > /vagrant_data/5-task-RL/firewall-list-zones-lb.txt
sudo iptables -L > /vagrant_data/5-task-RL/iptable-lb.txt
sudo firewall-cmd --direct --get-all-rules > /vagrant_data/5-task-RL/rules-lb.txt
