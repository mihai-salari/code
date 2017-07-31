#!/bin/bash -

debug="on"

now=`date +'%Y-%m-%d %H:%M %Z'`
rnow=`date +'%Y%m%d%H%M%S'`

base_dir="$HOME/lee/mail_replication"
log_dir="$base_dir/log"
log_archive_dir="$log_dir/archive"

repl_option="$1"

if [ "$debug" = "on" ]; then
    echo "DEBUG: now = $now"
    echo "DEBUG: rnow = $rnow"
    echo "DEBUG: base_dir = $base_dir"
    echo "DEBUG: log_dir = $log_dir"
    echo "DEBUG: log_archive_dir = $log_archive_dir"
    echo "DEBUG: repl_option = $repl_option"
fi

if [ "$repl_option" = "repo" ]; then
    rsync_source="/usr/db/mail/repository/"
    rsync_target="/usr/db/mail6/repository/"
elif [ "$repl_option" = "part1" ]; then
    rsync_source="/usr/db/mail/parts/part1/"
    rsync_target="/usr/db/mail6/parts/part1/"
elif [ "$repl_option" = "part2" ]; then
    rsync_source="/usr/db/mail/parts/part2/"
    rsync_target="/usr/db/mail6/parts/part2/"
else
    echo "ERROR: repl_option is unknown"
    exit 1
fi

if [ "$debug" = "on" ]; then
    echo "DEBUG: rsync_source = $rsync_source"
    echo "DEBUG: rsync_target = $rsync_target"
fi

repl_pid="$log_dir/repl.$repl_option.pid"
repl_log="$log_dir/repl.$repl_option.log"
repl_dup_log="$log_dir/repl.$repl_option.dup"

rsync=`which rsync`
rsync_opt="-avzh --delete"

rsync_log="$log_dir/rsync.$repl_option.$rnow"
rsync_err_log="$log_dir/rsync.$repl_option.$rnow.err"

if [ "$debug" = "on" ]; then
    echo "DEBUG: repl_pid = $repl_pid"
    echo "DEBUG: repl_log = $repl_log"
    echo "DEBUG: repl_dup_log = $repl_dup_log"
    echo "DEBUG: rsync = $rsync"
    echo "DEBUG: rsync_opt = $rsync_opt"
    echo "DEBUG: rsync_log = $rsync_log"
    echo "DEBUG: rsync_err_log = $rsync_err_log"
fi

# Make sure the script is not run if another process is running
if [ -f "$repl_pid" ]; then
    echo "$now: rsync is running, exit" >> $repl_dup_log
    exit 1
fi

# Replication start
echo "$now: replication start" >> $repl_log
touch $repl_pid

$rsync $rsync_opt $rsync_source $rsync_target > $rsync_log 2> $rsync_err_log
#sleep 10

# Replication finish
now=`date +'%Y-%m-%d %H:%M %Z'`
echo "$now: replication complete" >> $repl_log

# Clean up
mv $rsync_log $log_archive_dir/
mv $rsync_err_log $log_archive_dir/
rm $repl_pid