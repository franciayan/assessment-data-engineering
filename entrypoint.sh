#!/bin/bash

./wait-for.sh pgdb:5433 -- python ./load-data.py
./wait-for.sh minio:9000 -- ./load-track-data.sh
