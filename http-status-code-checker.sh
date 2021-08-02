#!/bin/sh

FANSWOO_STATUS_CODE=$(curl -I -m 15 -s -w "%{http_code}\n" -o /dev/null https://fanswoo.com)
FANSWORK_STATUS_CODE=$(curl -I -m 15 -s -w "%{http_code}\n" -o /dev/null https://fanswork.com)
LIGO_STATUS_CODE=$(curl -I -m 15 -s -w "%{http_code}\n" -o /dev/null https://ligo.design)

if [ "$FANSWOO_STATUS_CODE" != 200 ] || [ "$FANSWORK_STATUS_CODE" != 200 ] || [ "$LIGO_STATUS_CODE" != 200 ]
then
    echo "fails"
    exit 1
else
    echo "success"
fi
