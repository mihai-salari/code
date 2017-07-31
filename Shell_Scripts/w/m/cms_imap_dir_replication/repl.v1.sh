#!/bin/bash -

NOW=`date +'%Y-%m-%d %H:%M %Z'`
RNOW=`date +'%Y%m%d%H%M%S'`

BASE_DIR="$HOME/lee/mail_replication"
LOG_DIR="$BASE_DIR/log"
LOG_ARCHIVE_DIR="$LOG_DIR/archive"

REPL_PID="$LOG_DIR/repl.pid"
REPL_LOG="$LOG_DIR/repl.log"
REPL_DUP_LOG="$LOG_DIR/repl.dup"

RSYNC=`which rsync`
RSYNC_OPT="-avzh --delete"
RSYNC_SOURCE="/usr/db/mail/"
RSYNC_TARGET="/usr/db/mail6/"
RSYNC_LOG="$LOG_DIR/rsync.$RNOW"
RSYNC_ERR_LOG="$LOG_DIR/rsync.$RNOW.err"

# Make sure the script is not run if another process is running
if [ -f "$REPL_PID" ]; then
    echo "$NOW: rsync is running, skip duplicate" >> $REPL_DUP_LOG
    exit 1
fi

# Replication start
echo "$NOW: replication start" >> $REPL_LOG
touch $REPL_PID

$RSYNC $RSYNC_OPT $RSYNC_SOURCE $RSYNC_TARGET > $RSYNC_LOG 2> $RSYNC_ERR_LOG

# Replication finish
NOW=`date +'%Y-%m-%d %H:%M %Z'`
echo "$NOW: replication complete" >> $REPL_LOG

# Clean up
mv $RSYNC_LOG $LOG_ARCHIVE_DIR/
mv $RSYNC_ERR_LOG $LOG_ARCHIVE_DIR/
rm $REPL_PID