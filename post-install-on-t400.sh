#!/bin/sh
# Shell-script for postinstallation work on a T400 or another Thinkpad

# Scrolling with Trackpoint
echo '<?xml version="1.0" encoding="UTF-8"?>
<match key="info.product" string="TPPS/2 IBM TrackPoint">
 <merge key="input.x11_options.EmulateWheel" type="string">true</merge>
 <merge key="input.x11_options.EmulateWheelButton" type="string">2</merge>
 <merge key="input.x11_options.XAxisMapping" type="string">6 7</merge>
 <merge key="input.x11_options.YAxisMapping" type="string">4 5</merge>
 <merge key="input.x11_options.ZAxsisMapping" type="string">4 5</merge>
 <merge key="input.x11_options.Emulate3Buttons" type="string">true</merge>
</match>' > /etc/hal/fdi/policy/mouse-wheel.fdi

# FN + F8 to switch trackpad on/off
echo '<?xml version="1.0" encoding="UTF-8"?>
<deviceinfo version="0.2">
 <device>
  <match key="input.x11_driver" string="synaptics">
   <merge key="input.x11_options.SHMConfig" type="string">True</merge>
  </match>
 </device>
</deviceinfo>' > /etc/hal/fdi/policy/shmconfig.fdi

# recommended workaround for hard disk bug
sed -i 's/ENABLE_LAPTOP_MODE=false/ENABLE_LAPTOP_MODE=true/g' /etc/default/acpi-support

sed -i 's/BATT_HD_POWERMGMT=1/BATT_HD_POWERMGMT=200/g' /etc/laptop-mode/laptop-mode.conf

# Menu Key Workaround
sed -i 's|key\ <I151>\ \ \ {\ \ \ \ \ \ \[\ XF86WakeUp|key\ <I151>\ \  {\ \ \ \ \ \ \[\ Menu\ \ \ \ \ \ |g' /usr/share/X11/xkb/symbols/inet

sudo rm /var/cache/hald/fdi-cache
sudo /etc/init.d/hal restart

echo '==========================================='
echo 'After an reboot you certainly can use the features! To do so type "reboot"'

