#!/bin/bash

#Output file
REPORT = "system_report.txt"

#Write system health info
{
	echo "========================"
	echo "System Health Report"
	echo "Generated on: $(date)"
	echo "========================"
	echo " "

	echo "Uptime:"
	uptime
	echo " "

	echo "CPU Usage:"
	top -bn1 | grep "CPU(s)"
	echo " "

	echo "Memory Usage:"
	free -h
	echo " "

	echo "Disk Usage:"
	df -h
	echo " "
} > "$REPORT"

echo "System health report saved to $REPORT"
