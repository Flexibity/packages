# _RESETB is connected to PB10 (gpio 74)
# ADC2_VREFL is connected to PA14 (gpio 46)
# ADC2_VREFH is connected to PA15 (gpio 47)
#
# Erase: ADC2_VREFH = 0; ADC2_VREFL = 1
# Normal: ADC2_VREFH = 1; ADC2_VREGL = 0

# reset
echo 0 > /sys/class/gpio/gpio74/value
sleep 1
# erase flash
echo 1 > /sys/class/gpio/gpio46/value
echo 0 > /sys/class/gpio/gpio47/value
echo 1 > /sys/class/gpio/gpio74/value
sleep 5
# normal flash
echo 0 > /sys/class/gpio/gpio46/value
echo 1 > /sys/class/gpio/gpio47/value
# reset
echo 0 > /sys/class/gpio/gpio74/value
sleep 1
echo 1 > /sys/class/gpio/gpio74/value

