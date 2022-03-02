#!/bin/sh
echo ""
echo -e "\x1B[4;1;96mAudit Script Output\e[0m"
echo ""
#This script will be used for audit.
echo ""
echo -e "\x1B[1;92mUptime\e[0m"
echo ""
sudo uptime
echo ""
echo -e "\x1B[1;92mLast Reboot\e[0m"
echo ""
sudo who -b
echo ""
echo -e "\x1B[1;92mTime Zone\e[0m"
echo ""
sudo timedatectl | grep -E --color 'GMT|ECT|EET|ART|EAT|MET|NET|PLT|BST|VST|CTT|JST|ACT|AET|SST|NST|MIT|HST|AST|PST|PNT|MST|CST|EST|IET|PRT|CNT|AGT|BET|CAT|'
echo ""
echo -e "\x1B[1;92mLast 10 Installed Packages\e[0m"
echo ""
sudo rpm -qa --qf '%{INSTALLTIME} (%{INSTALLTIME:date}): %{NAME}-%{VERSION}-%{RELEASE}.%{ARCH}\n' | sort -n | tail -n 10
echo ""
echo -e "\x1B[1;92mOS Version\e[0m"
echo ""
sudo cat /etc/os-release | grep -iE --color 'ubuntu|kali|suse|debian|'
echo ""
echo -e "\x1B[1;92mKernal Version\e[0m"
echo ""
sudo uname -a
echo ""
echo -e "\x1B[1;92mCPU Cores / Clock Speed / Architechture\e[0m"
echo ""
sudo lscpu | grep -E --color 'x86_32|'
echo ""
echo -e "\x1B[1;92mDisk - Mounted/Unmounted Volumes\e[0m"
echo ""
sudo lsblk
echo ""
echo -e "\x1B[1;92mIP Inforamtion\e[0m"
echo ""
sudo ip a
echo ""
echo -e "\x1B[1;92mHosts Entry\e[0m"
echo ""
sudo cat /etc/hosts
echo ""
echo -e "\x1B[1;92mHostname\e[0m"
echo ""
sudo cat /etc/hostname
echo ""
echo -e "\x1B[1;92mNetworking Bandwidth\e[0m"
echo ""
sudo yum install dstat -q -y
sudo dstat -nt | head -n 20
echo ""
echo -e "\x1B[1;92mNetwork OS\e[0m"
echo ""
sudo netstat -tulpn
echo ""
echo -e "\x1B[1;92mNetworking Firewall\e[0m"
echo ""
sudo firewall-cmd --list-all
echo ""
echo -e "\x1B[1;92mCPU Utilization\e[0m"
echo ""
sudo iostat
echo ""
echo -e "\x1B[1;92mRAM Utilization\e[0m"
echo ""
sudo free -h
echo ""
echo -e "\x1B[1;92mStorage\e[0m"
echo ""
sudo df -HT
echo ""
echo -e "\x1B[1;92mPassword Info\e[0m"
echo ""
sudo chage -l $USER
echo ""
