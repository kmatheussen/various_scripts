#!/bin/sh

# 1. Test that this works: xmessage -center -display :0.0 "Working"
# 2. Edit script when you want to start warning, when to suspend, and when to try hibernating.
# 3. run crontab -e
# 4. Add something like this ("*/1" means check every minute): */1 * * * * /home/kjetil/various_scripts/warn_low_battery.sh


#export XAUTHORITY=/home/kjetil/.Xauthority



if acpi |grep Discharging ; then
	if acpi |grep 20% ; then
		xmessage -center -display :0.0 "Low battery. 20%." &
	fi
	if acpi |grep 19% ; then
		xmessage -center -display :0.0 "Low battery. 19%." &
	fi
	if acpi |grep 18% ; then
		xmessage -center -display :0.0 "Low battery. 18%." &
	fi
	if acpi |grep 17% ; then
		xmessage -center -display :0.0 "Low battery. 17%." &
	fi
	if acpi |grep 16% ; then
		xmessage -center -display :0.0 "Low battery. 16%." &
	fi
	if acpi |grep 15% ; then
		xmessage -center -display :0.0 "Low battery. 15%." &
	fi
	if acpi |grep 14% ; then
		xmessage -center -display :0.0 "Low battery. 14%." &
	fi
	if acpi |grep 13% ; then
		xmessage -center -display :0.0 "Low battery. 13%." &
	fi
	if acpi |grep 12% ; then
		xmessage -center -display :0.0 "Low battery. 12%." &
	fi
	if acpi |grep 11% ; then
		xmessage -center -display :0.0 "Low battery. 11%." &
	fi
	if acpi |grep 10% ; then
		xmessage -center -display :0.0 "Low battery. 10%." &
	fi
	if acpi |grep \ 9% ; then
		xmessage -center -display :0.0 "Low battery. 9%." &
	fi
	if acpi |grep \ 8% ; then
		xmessage -center -display :0.0 "Low battery. 8%. Trying to call systemctl suspend" &
		systemctl suspend
	fi
	if acpi |grep \ 7% ; then
		xmessage -center -display :0.0 "Low battery. 7%." &
	fi
	if acpi |grep \ 6% ; then
		xmessage -center -display :0.0 "Low battery. 6%." &
	fi
	if acpi |grep \ 5% ; then
		xmessage -center -display :0.0 "Low battery. 5%." &
	fi
	if acpi |grep \ 4% ; then
		xmessage -center -display :0.0 "Low battery. 4%." &
	fi
	if acpi |grep \ 3% ; then
		xmessage -center -display :0.0 "Low battery. 3%." &
	fi
	if acpi |grep \ 2% ; then
		xmessage -center -display :0.0 "Low battery. 2%. Trying to call pm-hibernate." &
		pm-hibernate
	fi
	if acpi |grep \ 1% ; then
		xmessage -center -display :0.0 "Low battery. 1%." &
	fi
fi
