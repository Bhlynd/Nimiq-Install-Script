#!/bin/bash
################################################################################
# Author:  Bhlynd
# Program: Reconfigure Nimiq on Ubuntu
################################################################################
output() {
    printf "\E[0;33;40m"
    echo $1
    printf "\E[0m"
}

displayErr() {
    echo
    echo $1;
    echo
    exit 1;
}

    output " "
    output "Make sure you double check before hitting enter! Only one shot at these!"
    output "You will find examples in the brackets."
    output " "
    read -e -p "Enter the pool URL: " -i "pool.bhlynd.nz:8444" POOL
    read -e -p "Enter the miner CPU threads: " -i $(getconf _NPROCESSORS_ONLN) THREADS
    read -e -p "Enter your wallet address: " WALLET
    read -e -p "Enter device name: " EXTRADATA
    read -e -p "Enter statistics interval in seconds: " -i "10000" STATISTICS
    
    output " "
    output "Building launch script."
    output " "
    sleep 3

    echo '#!/bin/bash
    UV_THREADPOOL_SIZE='"${THREADS}"' ./miner --dumb --pool='"${POOL}"' --miner='"${THREADS}"' --wallet-address="'"${WALLET}"'" --extra-data="'"${EXTRADATA}"'" --statistics='"${STATISTICS}"'' > start
    chmod u+x start

    output " "
    output "You can start the miner by typing ./start"
    output "If you need to change any settings, you can do so by editing the start file."
    output ""
    output "OR"
    output ""
    output "Run the below command to automate the process of editing the start file."
    output "bash -c "'"$(curl -o - https://raw.githubusercontent.com/Bhlynd/Nimiq-Install-Script/master/nimiq-client-reconfigure.sh)"'""
    output " "
    sleep 3
