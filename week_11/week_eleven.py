#Example 1: List all storage devices on Ubuntu
import subprocess

def list_storage_devices():
  command = "lsblk"
  result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
  print(result.stdout)

list_storage_devices()


# example 2: check available disk space on a specific storage device
import subprocess

def check_disk_space(device):
    command = f"df -h {device}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    print(result.stdout)

check_disk_space("/dev/sda1")

# example 3: Mount a storage device
import subprocess

def mount_device(device, mount_point):
  command = f"sudo mount {device} {mount_point}"
  result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
  print(result.stdout)

mount_device("/dev/sdb1", "/mnt/mydisk")

# example 4: Format storage device (WARNING: data loss can occur)
import subprocess

def format_device(device, filesystem_type):
  command = f"sudo mkfs.{filesystem_type} {device}"
  result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
  print(result.stdout)

format_device("/dev/sdc1", "ext4")

# example 5: Unmount a storage device
import subprocess

def Unmount_device(mount_point):
  command = f"sudo unmount {mount_point}"
  result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
  print(result.stdout)

Unmount_device("/mnt/mydisk4")

# example 6: List mounted storage devices
def list_mounted_devices():
# run the 'mount' command with grep to list mounted storage devices and store the result
    command = "mount | grep 'dev/sd'"
    result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)
    
# example 7: check disk usage of directory
def check_directory_disk_storage(directory):
    # run the 'du' command to check disk usage of a directory and store the result
    command = "du -sh {directory}"
    result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)

# example 8: create a new directory
def create_directory(directory):
    # run the 'mkdir' command to create a new directory and store the result
    command = "mkdir {directory}"
    result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)

# example 9: create a new directory
def remove_directory(directory):
    # run the 'rm' command to remove a directory {use with caution, irreversible and store the result}
    command = "sudo rm -r {directory}"
    result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)

# example 10: get storage device information
def get_device_info(device):
    # run the 'udevadm' command to get information about a device and store the result
    command = "udevadm info -q property -n {device}"
    result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
    # Print the output of the command
    print(result.stdout)

# Main test part (Usage of the functions)
if __name__ == "__main__":
    #Test each function with appropriate parameters
    list_storage_devices()
    check_disk_space("/dev/sda1")
    mount_device("/dev/sdb1", "/mnt/mydisk")
    # Be cautious with the following line, as it erases data on the device
    # format_device("/dev/sdc1", "ext4")
    Unmount_device("/mnt/mydisk")
    list_mounted_devices()
    check_directory_disk_storage("/home/user/documents")
    create_directory("/tmp/new_directory")
    # Be cautious with the following line, as it's an irreversible deletion
    # remove_directory("/tmp/new_directory")
    get_device_info("/dev/sda1")