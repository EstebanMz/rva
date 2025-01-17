#!/bin/bash

readonly DIST=/home/deploy/distribute

bundle exec rake

mkdir -p $DIST/rva
[ -e $DIST/rva/rva_cars.zip ] && rm -r $DIST/rva/rva_cars.zip
[ -e $DIST/rva/rva_tracks.zip ] && rm -r $DIST/rva/rva_tracks.zip
[ -e $DIST/rva/rva_lego_tracks.zip ] && rm -r $DIST/rva/rva_lego_tracks.zip
[ -e $DIST/rva/packages.json ] && rm $DIST/packages.json

mv rva_cars/rva_cars.zip $DIST/rva
mv rva_tracks/rva_tracks.zip $DIST/rva
mv rva_lego_tracks/rva_lego_tracks.zip $DIST/rva
mv packages.json $DIST/packages.json

chmod -R 777 $DIST/rva
chmod -R 777 $DIST/packages.json
