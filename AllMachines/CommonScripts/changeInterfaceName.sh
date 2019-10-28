sudo ip link set $1 down
sudo ip link set $1 name $2
sudo ip link set $2 up
sudo ip link set eth0 down