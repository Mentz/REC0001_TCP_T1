SERVER_IP=$1
INTERFACE=$2

# DELAY 100, THROTTLE 0, LOSS 0%
DL=100
THR=0
LOSS=0
tc qdisc del dev $INTERFACE root 
#iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "results/$DL-$THR-$LOSS-reno.txt"
#iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "results/$DL-$THR-$LOSS-cubic.txt"
#iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "results/$DL-$THR-$LOSS-bbr.txt"
#iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "results/$DL-$THR-$LOSS-veno.txt"

# DELAY 100, THROTTLE 0, LOSS 0.001%
LOSS=0.001
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay $DL loss $LOSS
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "results/$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "results/$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "results/$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "results/$DL-$THR-$LOSS-veno.txt"

# DELAY 100, THROTTLE 0, LOSS 0.01%
LOSS=0.01
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay $DL loss $LOSS
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "results/$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "results/$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "results/$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "results/$DL-$THR-$LOSS-veno.txt"

# DELAY 100, THROTTLE 0, LOSS 0.1%
LOSS=0.1
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay $DL loss $LOSS
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "results/$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "results/$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "results/$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "results/$DL-$THR-$LOSS-veno.txt"

# DELAY 100, THROTTLE 0, LOSS 1.0%
LOSS=1
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay $DL loss $LOSS
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "results/$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "results/$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "results/$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "results/$DL-$THR-$LOSS-veno.txt"

# DELAY 100, THROTTLE 0, LOSS 10%
LOSS=10
tc qdisc del dev $INTERFACE root 
tc qdisc add dev $INTERFACE root netem delay $DL loss $LOSS
iperf -c $SERVER_IP -t 120 -i 1 -p 50000 -e -Z reno >> "results/$DL-$THR-$LOSS-reno.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50001 -e -Z cubic >> "results/$DL-$THR-$LOSS-cubic.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50002 -e -Z bbr >> "results/$DL-$THR-$LOSS-bbr.txt"
iperf -c $SERVER_IP -t 120 -i 1 -p 50003 -e -Z veno >> "results/$DL-$THR-$LOSS-veno.txt"
