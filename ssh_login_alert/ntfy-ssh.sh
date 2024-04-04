#!/bin/bash
if [ "${PAM_TYPE}" = "open_session" ]; then
  echo "here"
  curl \
    -H prio:high \
    -H tags:warning \
    -d "SSH login: ${PAM_USER} from ${PAM_RHOST}" \
    ntfy.sh/syed-alerts
fi