#!/bin/bash
#

/usr/bin/curl -s -X GET https://api.bitvalor.com/v1/ticker.json | \
    /usr/bin/jq .ticker_24h.total.last | \
    /usr/bin/xargs printf "%'.2f\n" | \
    /usr/bin/xargs /usr/bin/notify-send -u 'normal' -a 'Bitcoin' -i bitcoin128 'Valor do BTC Agora'
