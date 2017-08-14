#!/bin/bash -

CONF_FILE='/home/tecnotree/bin/fetch_greeting_failed_config.txt'

DATE=`date +%m/%d/%Y`

if ! . $CONF_FILE; then
	echo "Error: failed to load configuration file"
	exit 1
fi

grep -i 'failed to fetch greeting' $JBOSS_SERVER_LOG* > $TMP_GREP_FILE
cat $TMP_GREP_FILE | cut -d ' ' -f 1,2,9 > $TMP_RESULT_FILE

diff $RESULT_FILE $TMP_RESULT_FILE > $TMP_DIFF_RESULT
grep -i 'server.log' $TMP_DIFF_RESULT > $DIFF_RESULT

diff_line=$(wc -l "$DIFF_RESULT" | awk '{print $1}')

if [ $diff_line != "0" ]; then
	SMS_TEXT="$SITE_NAME+Greeting+Error+$DATE+%A+$AS+Failed+to+fetch+greeting:+$diff_line"
	
	for recipient in $SMS_RECIPIENTS;
	do
	        curl "http://$SMS_SERVER/send?sms_dest=$recipient&sms_source=$SMS_SENDER&sms_valid_rel=500&sms_text=$SMS_TEXT HTTP/1.0"
	done
	
	mv $TMP_RESULT_FILE $RESULT_FILE
fi