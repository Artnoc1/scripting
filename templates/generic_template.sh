#!/usr/bin/env bash
# Copyright (c) 2014, TOGGL LLC
# All rights reserved.
# Published under New BSD license

# Error handling and logging
LOG_NAME="`basename $0 .sh`.log"
LAST_LINES_TO_SHOW_ON_ERROR=20

set -o pipefail
set -o errtrace
set -o nounset
set -o errexit

exec 3>&1 4>&2 # store original stdin in 3 and stderr in 4
exec >> ${LOG_NAME}
exec 2>&1 # Direct output to to file

log() {
  echo "$(date) $1"
}

restore_file_descriptors() {
 exec 1>&3 2>&4 # restore original file descriptors
}

err_handler() {
 restore_file_descriptors
 echo "Got error, see last ${LAST_LINES_TO_SHOW_ON_ERROR} lines of log"
 tail -n${LAST_LINES_TO_SHOW_ON_ERROR} ${LOG_NAME} 1>&2
 exit 10
}

trap err_handler ERR
trap restore_file_descriptors EXIT

log "Started $(basename $0)"

# Your code starts here =================================================