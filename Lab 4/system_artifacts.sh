#!/bin/bash

print_kernel_info() {
    echo "Kernel Name: $(uname -s)"
    echo "Kernel Version: $(uname -r)"
}

print_architecture() {
    echo "System Architecture: $(uname -m)"
}

print_logged_in_users() {
    echo "Logged-in Users:"
    who -u
}

check_efi() {
    if [ -d /sys/firmware/efi ]; then
        echo "EFI is enabled."
    else
        echo "EFI is not enabled."
    fi
}

list_block_devices() {
    echo "Connected Block Devices:"
    lsblk -o NAME,SIZE,TYPE,MOUNTPOINT
}

list_first_boot_device() {
    echo "First Boot Device:"
    boot_order=$(efibootmgr | grep -i bootorder | cut -d ' ' -f 2-)
    first_boot=$(echo "$boot_order" | cut -d ',' -f 1)
    efibootmgr | grep -i "$first_boot"
}

# Main script execution
print_kernel_info
print_architecture
print_logged_in_users
check_efi
list_block_devices
list_first_boot_device
