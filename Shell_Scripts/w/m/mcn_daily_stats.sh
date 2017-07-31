#!/bin/bash -

# Usage:
# export SITE_NAME=RAWANG; ./mcn_daily_stats.sh
# export SITE_NAME=NILAI; ./mcn_daily_stats.sh

CONF_FILE='config.txt'

# The date command below depends on GNU version,
# hence it won't works on other OS (such as OSX)
if [ `uname` != "Linux" ]; then
	echo "Error: use Linux"
	exit 1
fi

if ! printenv SITE_NAME > /dev/null; then
	echo "Usage: export SITE_NAME=site; ./mcn_daily_stats.sh"
	exit 1
fi

if ! . $CONF_FILE; then
	echo "Error: failed to load configuration file"
	exit 1
fi

today=`date`
day="1"

# Get yesterday's date
DATE=`date +%m/%d/%Y`
CSV_DATE=$(date --date="${today} - ${day} day" +%Y-%m-%d)

# Initialize all variables
if [ $SITE_NAME == "RAWANG" ]; then
	SMS_SENDER="RWG_SUBSTAT"
	CSV_FILE='/home/tecnotree/bin/rawang_vm_subs_stats.csv'
elif [ $SITE_NAME == "NILAI" ]; then
	SMS_SENDER="NLA_SUBSTAT"
	CSV_FILE='/home/tecnotree/bin/nilai_vm_subs_stats.csv'
else
	exit 1
fi

# MySQL queries
TOTAL_VM_SUBS=`mysql -u${JBOSS_USER} -p${JBOSS_PASSWORD} -h db-vip -D $MESSAGING_DATABASE -N --execute "SELECT count(*) FROM subscription";`
TOTAL_MCN_DISABLED=`mysql -u${JBOSS_USER} -p${JBOSS_PASSWORD} -h db-vip -D $MESSAGING_DATABASE -N --execute "SELECT count(*) FROM subscription_feature WHERE name='MCN' AND disabled=1";`
TOTAL_MCN_SUBS=$(($TOTAL_VM_SUBS - $TOTAL_MCN_DISABLED))

# Generate csv fields and append to csv file
echo "$CSV_DATE;$TOTAL_VM_SUBS;$TOTAL_MCN_SUBS;$TOTAL_MCN_DISABLED" >> $CSV_FILE

# Prepare SMS content
SMS_TEXT="$SITE_NAME+Subscriber+Stats+$DATE+%A+Number+of+vm+subs:+$TOTAL_VM_SUBS+%A+Number+of+mcn+subs:+$TOTAL_MCN_SUBS"

# Send to each SMS recipient
for recipient in $SMS_RECIPIENTS;
do
        curl "http://$SMS_SERVER/send?sms_dest=$recipient&sms_source=$SMS_SENDER&sms_valid_rel=500&sms_text=$SMS_TEXT HTTP/1.0"
done