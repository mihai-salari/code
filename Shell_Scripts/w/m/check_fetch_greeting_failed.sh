#!/bin/bash -

CONF_FILE='/home/tecnotree/bin/fetch_greeting_failed_config.txt'

DATE=`date +%m/%d/%Y`

if ! . $CONF_FILE; then
	echo "Error: failed to load configuration file"
	exit 1
fi

# grep the error message from all server.log files
grep -i 'failed to fetch greeting' $JBOSS_SERVER_LOG* > $TMP_GREP_FILE

# cut the needed fields
cat $TMP_GREP_FILE | cut -d ' ' -f 1,2,9 > $TMP_RESULT_FILE

# compare the latest grep result to previous one
diff $RESULT_FILE $TMP_RESULT_FILE > $TMP_DIFF_RESULT

# to remove the diff info message at the top of the file
grep -i 'server.log' $TMP_DIFF_RESULT > $DIFF_RESULT

# get number of lines in the diff result file, if 0 line means no new error found
diff_line=$(wc -l "$DIFF_RESULT" | awk '{print $1}')

# if number of lines is not 0, then we have new fetch error,
# therefore, prepare the SMS content and fire out
if [ $diff_line != "0" ]; then
	SMS_TEXT="$SITE_NAME+Greeting+Error+$DATE+%A+$AS+Failed+to+fetch+greeting:+$diff_line"
	
	for recipient in $SMS_RECIPIENTS;
	do
	        curl "http://$SMS_SERVER/send?sms_dest=$recipient&sms_source=$SMS_SENDER&sms_valid_rel=500&sms_text=$SMS_TEXT HTTP/1.0"
	done
	
	# update to use the new found fetch error result file
	mv $TMP_RESULT_FILE $RESULT_FILE
fi