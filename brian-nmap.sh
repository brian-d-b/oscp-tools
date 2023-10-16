# This script takes 2 parameters. IP and ports.

# Echo the IP and ports
echo "IP: $1"
echo "Ports: $2"


# Check if the user entered 2 parameters
if [ $# -ne 2 ]; then
    echo "Usage: $0 <IP> <ports>"
    exit 1
fi

# Run the nmap command, with the typical parameters
nmap -sC -sV -A -O -p $2 $1
