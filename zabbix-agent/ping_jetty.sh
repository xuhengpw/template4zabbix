#!/bin/bash
#Date:          2016-06-06
#Author:        Created by mean
#Mail:          990@qq.com
#Function:      This script is monitor linux service status
#Version:       1.0

jetty_status_fun(){

	JETTY_STAT_VALUE=''
	ADDR=10.25.106.196
	PRO_PORT=$1
	PRO_NAME=$2
	comm=`curl -m 5 -s $ADDR:$1/$2game/test`
	if [ "$comm" = "success" ];then
		JETTY_STAT_VALUE=1
		echo $JETTY_STAT_VALUE
	else
		JETTY_STAT_VALUE=0
		echo $JETTY_STAT_VALUE
	fi
}


main(){
	case $1 in
		jetty_status)
			jetty_status_fun $2 $3;
			;;
		*)
			echo $"Usage : $0 {jetty_status key}"
	esac
}


main $1 $2 $3
