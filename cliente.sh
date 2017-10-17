SERVER_IP=$1
INTERFACE=$2

# DELAY 0, THROTTLE 0, LOSS 0%
DL=0
THR=0
LOSS=0
tc qdisc del dev $INTERFACE root 
#iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
#iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
#iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 0, THROTTLE 0, LOSS 0.001%
LOSS=0.001
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem loss 0.001
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 0, THROTTLE 0, LOSS 0.01%
LOSS=0.01
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem loss 0.01
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 0, THROTTLE 0, LOSS 0.1%
LOSS=0.1
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem loss 0.1
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 0, THROTTLE 0, LOSS 1.0%
LOSS=1
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem loss 1
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 0, THROTTLE 0, LOSS 10%
LOSS=10
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem loss 10
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 12.5, THROTTLE 0, LOSS 0%
DL=12.5
THR=0
LOSS=0
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay 12.5
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 12.5, THROTTLE 0, LOSS 0.001%
LOSS=0.001
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay 12.5 loss 0.001
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 12.5, THROTTLE 0, LOSS 0.01%
LOSS=0.01
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay 12.5 loss 0.01
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 12.5, THROTTLE 0, LOSS 0.1%
LOSS=0.1
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay 12.5 loss 0.1
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 12.5, THROTTLE 0, LOSS 1%
LOSS=1
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay 12.5 loss 1
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"

# DELAY 12.5, THROTTLE 0, LOSS 10%
LOSS=10
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay 12.5 loss 10
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "$DL-$THR-$LOSS-veno.txt"
