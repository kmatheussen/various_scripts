#!/bin/sh

#export XAUTHORITY=/home/kjetil/.Xauthority

#test
#xmessage -center -display :0.0 "Low battery. 11%."

if acpi |grep 10% ; then
    xmessage -center -display :0.0 "Low battery. 10%." &
fi
if acpi |grep \ 9% ; then
    xmessage -center -display :0.0 "Low battery. 9%." &
fi
if acpi |grep \ 8% ; then
    xmessage -center -display :0.0 "Low battery. 8%." &
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
    xmessage -center -display :0.0 "Low battery. 2%." &
fi
if acpi |grep \ 1% ; then
    xmessage -center -display :0.0 "Low battery. 1%." &
fi
