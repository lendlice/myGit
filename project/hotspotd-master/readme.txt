installation
sudo apt-get install hostapd
sudo python setup.py install

start and stop AP service
sudo hotspotd start
sudo hotspotd stop

installed routine
/usr/local/bin/hotspotd

package routine
/usr/local/lib/phthon2.7/dist-packages/hotspotd

default configuration
SSID: hostname
password:'1234567890'
IP: current format is 192.168.(10 + last digit of hostname).1; go to main.py - line 106 to make change

cutomize configuration
modify /usr/local/lib/phthon2.7/dist-packages/hotspotd/run.conf
run_open.dat as open access reference 

start as service
add to /etc/rc.local:
#service network-manager stop
/etc/init.d/network-manager stop
/sbin/ifconfig wlan0 up
/usr/local/bin/hotspotd start
or chmod +x hotspotd.sh and add its full path to /etc/rc.local

