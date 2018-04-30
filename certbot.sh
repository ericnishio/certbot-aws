#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

certbot certonly \
--manual \
--manual-auth-hook $DIR/auth-hook.sh \
--manual-cleanup-hook $DIR/cleanup-hook.sh \
-d $CERTBOT_DOMAIN -d www.$CERTBOT_DOMAIN
