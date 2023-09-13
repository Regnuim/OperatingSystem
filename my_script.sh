#!/bin/bash


#   unbuntu cmd

# change ownership
# chown

# disk usage
# df

# download
# wget

# word count
# wc

# show ping
# ping

# package management
# sudo apt install
# sudo apt update && sudo apt upgrade#!/bin/bash

# Listing Files
echo "Listing Files:"
ls -l

# Copying Files
echo "Copying Files:"
touch test.txt
cp test.txt destination.txt

# Viewing System Processes
echo "Displaying top 5 lines of system processes:"
top -n 1 | head -n 5

# Disk Usage
echo "Showing Disk Usage:"
df -h

# Ping for Network Connectivity (only 2 packets for demonstration)
echo "Ping google.com:"
ping -c 2 google.com

# Create a sample text file for grep and wc
echo "This is a search_term in a file." > file.txt

# Searching within Files
echo "Searching within file.txt for 'search_term':"
grep "search_term" file.txt

# Word Count
echo "Word Count for file.txt:"
wc file.txt

# Updating package list (commented to prevent actual system change)
# echo "Updating package list:"
# sudo apt update

# Upgrading packages (commented to prevent actual system change)
# echo "Upgrading packages:"
# sudo apt upgrade

# handling files and folders in depth

# Create an empty file
touch file.txt

# Create a new folder
mkdir folder

# Navigate into the new folder
cd folder

# Display the current working directory
pwd

# Navigate back to the parent directory
cd ..

# Copy the file into the new folder
cp file.txt folder/

# Rename the file
mv folder/file.txt folder/renamedfile.txt

# Delete the file
rm folder/renamedfile.txt

# List the contents of newfolder
ls folder

# Remove the empty directory
rmdir folder

# Create a file with permissions to change
touch myfile.txt

# Change file permissions
chmod 755 myfile.txt

# Change file ownership (commented to prevent actual system change)
# sudo chown newowner:newgroup myfile.txt

# Cleanup
rm myfile.txt


# Cleanup
rm test.txt destination.txt file.txt








#   script cmd


# touch script.sh
# #!/bin/bash
# chmod +x my_script.sh make an exec
# ./file to exec
# bash −x my_script.sh

# to download dataset
# wget https://example.com/dataset.zip
# unzip dataset.zip

# rename file
# for file in ∗.jpg; do
#     mv”$file” ”prefix -$file”
# done

# CSV to JSON
# csvtojson input.csv > output.json

# python3 run_model.py

# check gpu usage currently
# nvidia −smi

# run multiple experiment
# for seed in { 1..5 } ; do
# python3 experiment.py −−seed $seed
# done

# schedule task with cron
# Add this line to your crontab
# 0 ∗ ∗ ∗ ∗ /path/to/your/script.sh

# data send it to remote server
# scp data.txt username@remote:/path/to/destination

# delete file
# rm -rf

# end to end ml pipeline
# # Data Collection
# wget https://example.com/dataset.zip
# unzip dataset.zip
# # Preprocessing
# python3 preprocess.py
# # Training
# python3 train.py
# # E v al u a t i o n
# python3 evaluate.py




# Create an empty file
touch file.txt
echo "Created an empty file newfile.txt"

# Create a new folder
mkdir folder
echo "Created a new folder newfolder"

echo "### Navigating Filesystem ###"

# Navigate into the new folder
cd folder
echo "Navigated into newfolder"

# Display the current working directory
pwd
echo "Displayed the current working directory"

# Navigate back to the parent directory
cd ..
echo "Navigated back to the parent directory"

echo "### File Operations ###"

# List files with additional information
ls -l
echo "Listed files with additional information"

# Copy the file into the new folder
cp file.txt folder/
echo "Copied newfile.txt to newfolder/"

# Rename the file
mv folder/file.txt folder/renamedfile.txt
echo "Renamed newfile.txt to renamedfile.txt"

# Delete the file
rm folder/renamedfile.txt
echo "Deleted renamedfile.txt"

echo "### Folder Operations ###"

# List the contents of newfolder
ls folder
echo "Listed the contents of newfolder"

# Remove the empty directory
rmdir folder
echo "Removed the empty folder newfolder"

echo "### File and Folder Permissions ###"

# Create a file with permissions to change
touch myfile.txt
echo "Created a file myfile.txt"

# Change file permissions
chmod 755 myfile.txt
echo "Changed permissions of myfile.txt to 755"

# Change file ownership (commented to prevent actual system change)
# sudo chown newowner:newgroup myfile.txt
# echo "Changed ownership of myfile.txt"

echo "### System Monitoring ###"

# Display top 5 lines of system processes (commented for brevity)
# top -n 1 | head -n 5
# echo "Displayed top 5 lines of system processes"

# Display disk usage
df -h
echo "Displayed disk usage"

echo "### Networking ###"

# Check network connectivity (only 2 packets for demonstration)
ping -c 2 google.com
echo "Checked network connectivity with google.com"

# Download a file from the internet (commented to prevent actual download)
# wget https://example.com/file.zip
# echo "Downloaded file.zip from example.com"

echo "### Text Processing ###"

# Create a sample text file for grep and wc
echo "This is a search_term in a file." > file.txt
echo "Created a sample text file for grep and wc"

# Search within file.txt
grep "search_term" file.txt
echo "Searched for 'search_term' within file.txt"

# Count lines, words, and characters in file.txt
wc file.txt
echo "Counted lines, words, and characters in file.txt"

echo "### Package Management ###"

# Update package list (commented to prevent actual system change)
# sudo apt update
# echo "Updated the package list"

# Upgrade packages (commented to prevent actual system change)
# sudo apt upgrade
# echo "Upgraded packages"

# Cleanup
rm myfile.txt file.txt
echo "Cleaned up created files"