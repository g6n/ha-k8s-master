Simple config for HA masters

Added configs are examples only and should be used with your own values.

Is meant to be run on docker, and not kubernetes.

Has to be run with two specialties,
docker  needs to be run in host network mode,
and the image needs to be run with a name.
For the master this is haproxy01
for the slave it doesnt matter.

your startup line will look like something as:

docker run -d -h haproxy01 --net=host g6nuk/ha-k8s-master:latest
and for the secondary
docker run -d -h haproxy02 --net=host g6nuk/ha-k8s-master:latest

if you need different names, you will have to modify the startup.sh
to select the correct hostname for the master.

Currently the script only supports a two node haproxy cluster.
