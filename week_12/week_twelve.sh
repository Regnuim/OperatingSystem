#!/bin/bash

check_success() {
    if [ $? -ne 0 ];then
        echo "an error ocurred, Exiting..."
        exit 1
    fi
}

install_package() {
    echo "checking for $1..."
    if ! dpkg -l | grep -q "$1"; then
        echo "installing $1..."
        sudo apt-get install -y $1
        check_success
    else
        echo "$1 is alreday installed"
    fi
}

echo "welcome to the config management learning script!"
sleep2

echo "updating package list..."
sudo apt-get update
check_success

install_package apache2

echo "enabling and starting apache..."
sudo systemctl enable apache2
sudo systemctl start apache2
check_success

echo "creating a sample web page..."
echo "<html><body><h1>Hello from $(hostname)</h1></body></html>" | sudo tee /var/www/html/index.html
check_success

echo "configuration complete. Visit http://$(hostname -I | awk '{print $1}') in your browser."