#!/usr/bin/env bash


echo "Please select from the following options:"

echo -e "1) list all VMs\n2) start specific VM\n3) shutdown VM\n4) force stop VM\n5) autostart VM at boot\n6) exit" 

read -p "Select Option: "  options

while [[ $options -ne 6 ]];
do
    if [[ $options -eq 1 ]]
    then
        virsh list --all
    elif [[ $options -eq 2 ]]
    then
        read -p "Please enter VM's name" vm_machine
        virsh start "$vm_machine"
    elif [[ $options -eq 3 ]]
    then
        read -p "Please enter VM's name" vm_machine
        virsh shutdown "$vm_machine"
    elif [[ $options -eq 4 ]]
    then
        read -p "Please enter VM's name" vm_machine
        virsh destroy "$vm_machine"
    elif [[ $options -eq 5 ]]
    then
        read -p "Please enter VM's name" vm_machine
        virsh autostart "$vm_machine"
    else
        echo "Please select a valid option..."
    fi
    echo "Please select from the following options:"

    echo -e "1) list all VMs\n2) start specific VM\n3) shutdown VM\n4) force stop VM\n5) autostart VM at boot\n6) exit" 

    read -p "Select Option: " options


done

echo "Exiting..."
