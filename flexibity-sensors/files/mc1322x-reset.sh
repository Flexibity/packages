# reset is connected to PB10 (gpio 74)

echo 0 > /sys/class/gpio/gpio74/value
sleep 1
echo 1 > /sys/class/gpio/gpio74/value

