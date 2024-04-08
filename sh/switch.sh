#!/bin/bash

echo "切换环境"
mv ore_2.sh ore_3.sh
mv ore.sh ore_2.sh
mv ore_3.sh ore.sh
cat ore.sh
exit 1