#!/bin/bash

if [[ "${MACADDRESS}" ]]; then
  echo MACADDRESS is defined and set to $MACADDRESS so overriding
  echo ifconfig before:
  ifconfig | grep ether
  macchanger --mac=$MACADDRESS eth0
  echo ifconfig after:
  ifconfig | grep ether
fi

