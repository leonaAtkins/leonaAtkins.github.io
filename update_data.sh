#!/bin/bash
TIMESTAMP = $(date -u +%FT%TZ)
curl https://www.metoffice.gov.uk/public/data/LayerCache/GetCapabilities/Item/Forecast > ./assets/data/Forecast.xml && curl https://www.metoffice.gov.uk/public/data/LayerCache/GetCapabilities/Item/Observation > ./assets/data/observation.xml
git add --all
git commit -m "update ' $TIMESTAMP ' "
git push -u origin master
