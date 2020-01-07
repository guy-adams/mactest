```
docker build -t guyadams99/mactest:latest .

docker run --rm -e MACADDRESS=02:01:01:01:01:01 --cap-add NET_ADMIN guyadams99/mactest:latest
```


should produce

```
MACADDRESS is defined and set to 02:01:01:01:01:01 so overriding
ifconfig before:
        ether 02:42:ac:11:00:03  txqueuelen 0  (Ethernet)
Current MAC:   02:42:ac:11:00:03 (unknown)
Permanent MAC: 00:00:00:00:00:00 (Xerox Corporation)
New MAC:       02:01:01:01:01:01 (unknown)
ifconfig after:
        ether 02:01:01:01:01:01  txqueuelen 0  (Ethernet)
```
