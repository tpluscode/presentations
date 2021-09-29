#!/bin/sh

/app/server.js --config=/config-sparql.json --sparql-endpoint-url=$DB_URL?infer=true
