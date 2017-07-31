#!/bin/bash -

CONF_FILE='greeting_config.txt'

if ! . $CONF_FILE; then
	echo "Error: failed to load configuration file"
	exit 1
fi

DATE=`date +%m/%d/%Y`

TOTAL_GREETING=`mysql -u${JBOSS_USER} -p${JBOSS_PASSWORD} -h db-vip -D $MESSAGING_DATABASE -N --execute "SELECT COUNT(*) FROM greeting;"`

SMS_TEXT="$SITE_NAME+Greeting+Count+$DATE+%A+Number+of+greeting:+$TOTAL_GREETING"

for recipient in $SMS_RECIPIENTS;
do
        curl "http://$SMS_SERVER/send?sms_dest=$recipient&sms_source=$SMS_SENDER&sms_valid_rel=500&sms_text=$SMS_TEXT HTTP/1.0"
done