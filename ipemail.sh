#!/bin/sh

EMAIL="gokul@dobots.nl"

touch /home/bot/ip.output
ip1=""
read ip1 < /home/bot/ip.output

ip2=$(hostname -I) #(wget -qO- ifconfig.me/ip)

ip1="$(echo "${ip1}" | tr -d '[:space:]')"
ip2="$(echo "${ip2}" | tr -d '[:space:]')"

echo "IP1:"
echo "$ip1"
echo "IP2:"
echo "$ip2"

if [ "$ip1" = "$ip2" ];then
  echo "EXIT"
  exit
else
  echo "$ip2" > /home/bot/ip.output
  echo "$ip2" | mail -s "Hey, Got a new IP" $EMAIL
  echo "Sending"
  exit
fi
