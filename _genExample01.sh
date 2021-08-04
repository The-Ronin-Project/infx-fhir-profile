#!/bin/bash

# This script lists all resources ending in Example01.json and 
# creates an example01.ndjson.gz ready to deploy to HealthSamurai devbox

RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color
file_count=1
files=`ls ${PWD}/fsh-generated/resources/*Example01.json 2>/dev/null`

if [ -z "${files}" ]
then
  echo -e "${RED}No examples found in ${PWD}/fsh-generated/resources.${NC}"
  echo ''
  echo "Compile the resources using the command:"
  echo -e "${GREEN}sushi .${NC}"
  echo ''
  exit 1
fi

echo '[' > example01.json
for i in $files
do
  if [ $file_count -gt 1 ]
  then
    echo ',' >> example01.json
  fi
  file_count+=1
  cat $i >> example01.json
done
echo ']' >> example01.json
cat example01.json | jq -c '.[]' > example01.ndjson
gzip -9 example01.ndjson
rm example01.json
echo -e "${GREEN}Created ${PWD}/example01.ndjson.gz that can be uploaded to devbox${NC}"

