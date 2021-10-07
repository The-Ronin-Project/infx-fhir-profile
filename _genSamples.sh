#!/bin/bash

# This script lists all resources ending in Example01 or Test and 
# creates an example.ndjson.gz or test.ndjson.gz ready 
# to deploy to HealthSamurai devbox

RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color
file_count=1

usage () {
  echo -n "Usage: $0 -d {example|test}"
  exit 1
}

if [ $# -eq 0 ]; then
  usage
fi

while getopts d: flag
do
  case "${flag}" in
    d) data=${OPTARG};;
    *) usage ${OPTARG};;
  esac
done

if [ ${data} = "example" ]; then
  fname_end="Example01"
elif [ ${data} = "test" ]; then
  fname_end="Test"
else
  echo -n "Unknown data requested"
  usage
fi

files=`ls ${PWD}/fsh-generated/resources/*${fname_end}.json 2>/dev/null`

if [ -z "${files}" ]
then
  echo -e "${RED}No test data found in ${PWD}/fsh-generated/resources.${NC}"
  echo ''
  echo "Compile the resources using the command:"
  echo -e "${GREEN}sushi .${NC}"
  echo ''
  exit 1
fi

echo '[' > ${data}.json
for i in $files
do
  if [ $file_count -gt 1 ]
  then
    echo ',' >> ${data}.json
  fi
  file_count+=1
  cat $i >> ${data}.json
done
echo ']' >> ${data}.json
cat ${data}.json | jq -c '.[]' > ${data}.ndjson
gzip -9 ${data}.ndjson
rm ${data}.json
echo -e "${GREEN}Created ${PWD}/${data}.ndjson.gz that can be uploaded to devbox${NC}"

