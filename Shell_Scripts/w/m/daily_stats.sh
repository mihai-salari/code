#!/bin/bash -

#
# /etc/crontab
# 0 2 * * * tecnotree /home/tecnotree/bin/daily_stats.sh 2>&1
#


# CSV fields's definition:
# number of events;number of creation;number of deletion;number of calls;number of direct retrieval call corrected;number of direct retrieval call corrected (duration = 0);number of direct retrieval call corrected (duration != 0);number of outcall;number of active subscriber;number of message deposit;number of message notification;number of message notification for MCN;number of message notification for new message (121);number of message notification delivered;number of message notification delivered for MCN;number of message notification sucessfully delivered for MCN;number of message notification delivered for new message (121);number of message notification replaced;number of message notification replaced for MCN;number of message notification replaced for new message (121);number of greeting changed;number of subscriber;number of subscriber with english langage;number of subscriber with bahasa langage;number of subscriber with tamil langage;number of subscriber with mandarin langage;number of prepaid static;number of postpaid static;number of prepaid dynamic;number of postpaid dynamic;number of fixeline;number of prepaid vvm;number of postpaid vvm;number of mcn off;number of mailbox with basic greeting;number of mailbox with msisdn greeting;number of mailbox with nametag greeting;number of mailbox with personal greeting;number of password/language change;total number of mailboxes with 1 to 5 messages;total number of mailboxes with 6 to 10 messages;total number of mailboxes with 11 to 15 messages;total number of mailboxes with 16 or more messages;total number of messages in msg store;total number of messages in msg store with status SAVED;total number of messages in msg store with status NEW;total number of messages in msg store with status DELETED;license dynamic used;license static used;license fix line used;license vvm used;Number of call with redirection reason -1;Number of call with redirection reason 0;Number of call with redirection reason 1;Number of call with redirection reason 2;Number of call with redirection reason 3;Number of call with redirection reason 4;Number of call with redirection reason 5;Number of call with redirection reason 6 


fabien_stats_log_file="/home/tecnotree/statistics_v4/log/statistics_v4.log"
mcn_stats_file="/home/tecnotree/bin/mcn_subs.csv"

stats_html_file="/var/www/html/daily_stats/stats.txt"
ramis_stats_html_file="/var/www/html/daily_stats/ramis_stats.txt"

today=`date`
day="1"

# get yesterday's date
yesterday=$(date --date="${today} - ${day} day" +%Y-%m-%d)

# list out all csv fields
f1="date"
f2="number of events"
f3="number of creation"
f4="number of deletion"
f5="number of calls"
f6="number of direct retrieval call corrected"
f7="number of direct retrieval call corrected (duration = 0)"
f8="number of direct retrieval call corrected (duration != 0)"
f9="number of outcall"
f10="number of active subscriber"
f11="number of message deposit"
f12="number of message notification"
f13="number of message notification for MCN"
f14="number of message notification for new message (121)"
f15="number of message notification delivered"
f16="number of message notification delivered for MCN"
f17="number of message notification sucessfully delivered for MCN"
f18="number of message notification delivered for new message (121)"
f19="number of message notification replaced"
f20="number of message notification replaced for MCN"
f21="number of message notification replaced for new message (121)"
f22="number of greeting changed"
f23="number of subscriber"
f24="number of subscriber with english langage"
f25="number of subscriber with bahasa langage"
f26="number of subscriber with tamil langage"
f27="number of subscriber with mandarin langage"
f28="number of prepaid static"
f29="number of postpaid static"
f30="number of prepaid dynamic"
f31="number of postpaid dynamic"
f32="number of fixeline"
f33="number of prepaid vvm"
f34="number of postpaid vvm"
f35="number of mcn off"
f36="number of mailbox with basic greeting"
f37="number of mailbox with msisdn greeting"
f38="number of mailbox with nametag greeting"
f39="number of mailbox with personal greeting"
f40="number of password/language change"
f41="total number of mailboxes with 1 to 5 messages"
f42="total number of mailboxes with 6 to 10 messages"
f43="total number of mailboxes with 11 to 15 messages"
f44="total number of mailboxes with 16 or more messages"
f45="total number of messages in msg store"
f46="total number of messages in msg store with status SAVED"
f47="total number of messages in msg store with status NEW"
f48="total number of messages in msg store with status DELETED"
f49="license dynamic used"
f50="license static used"
f51="license fix line used"
f52="license vvm used"
f53="Number of call with redirection reason -1"
f54="Number of call with redirection reason 0"
f55="Number of call with redirection reason 1"
f56="Number of call with redirection reason 2"
f57="Number of call with redirection reason 3"
f58="Number of call with redirection reason 4"
f59="Number of call with redirection reason 5"
f60="Number of call with redirection reason 6"

# extra csv fields added to final stats file (not in Fabien stats)
f61="Total MCN subscriber"
f62="Total prepaid and postpaid subscriber"

########################################################
#
# process csv values from Fabien's statistics_v4
#
########################################################

# get date/time
# log_date=`cat $fabien_stats_log_file | grep 'second line' | cut -d , -f 1 | cut -d " " -f 1`

# get all csv values
csv_data=`cat $fabien_stats_log_file | grep 'second line' | cut -d \; -f 2-60`

# append date to beginning of line
csv_data="$yesterday;$csv_data"

# get total prepaid and postpaid subscriber for both static and dynamic cos
total_prepaid_static_subs=`cat $fabien_stats_log_file | grep 'second line' | cut -d \; -f 28`
total_prepaid_dynamic_subs=`cat $fabien_stats_log_file | grep 'second line' | cut -d \; -f 30`
total_postpaid_static_subs=`cat $fabien_stats_log_file | grep 'second line' | cut -d \; -f 29`
total_postpaid_dynamic_subs=`cat $fabien_stats_log_file | grep 'second line' | cut -d \; -f 31`
total_prepaid_postpaid_subs=$(($total_prepaid_static_subs + $total_prepaid_dynamic_subs + $total_postpaid_static_subs + $total_postpaid_dynamic_subs))

#########################################
#
# process mcn data from daily mcn stats 
#
#########################################

# get total mcn subscriber
total_mcn_subs=`sed -n '$p' $mcn_stats_file | cut -d \; -f 3`

###########################################
#
# generate final csv file with all values
#
###########################################

echo "$csv_data;$total_mcn_subs;$total_prepaid_postpaid_subs" >> $stats_html_file

###########################################
#
# filter out csv values required by Ramis
#
###########################################

ramis_csv_data=`sed -n '$p' $stats_html_file | awk -F\; -v 'OFS=;' '{ print $1,$5,$6,$23,$61,$28,$29,$30,$31,$62,$16,$17,$9 }'`

echo "$ramis_csv_data" >> $ramis_stats_html_file