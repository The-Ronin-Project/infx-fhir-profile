#!/bin/bash

# This script lists all resources ending in Example01 or Test and 
# creates an example.ndjson.gz or test.ndjson.gz ready 
# to deploy to HealthSamurai devbox

RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color
file_count=1

usage () {
  echo -n "Usage: $0 -d {example|test} -v"
  echo ""
  echo -n "use \"-v\" to include DetectedEdVisit tests."
  echo ""
  exit 1
}

if [ $# -eq 0 ]; then
  usage
fi

with_edvisits=false

while getopts vd: flag
do
  case "${flag}" in
    v) with_edvisits=true;;
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

if ! type sushi > /dev/null; then
  echo -e "${RED}ERROR: sushi is not installed.  Please install sushi.${NC}"
  exit 1
fi

if ! type jq > /dev/null; then
  echo -e "${RED}ERROR: jq is not installed.  Please install jq.${NC}"
  exit 1
fi

sushi ${PWD}
if [ ! $? ]
then
  echo -e "${RED}ERROR: sushi failed!${NC}"
  exit 1
fi

TEMP_DIR="${PWD}/temp/stage"
mkdir -p ${TEMP_DIR}
cp ${PWD}/fsh-generated/resources/*${fname_end}.json ${TEMP_DIR}

if [ ${data} = "test" ]; then
  doc_ref=`ls ${TEMP_DIR}/*DocumentReference*${fname_end}.json 2>/dev/null`
  if [ ! -z "${doc_ref}" ]
  then
    # Process DocumentReference content.attachment.data
    for i in ${doc_ref}
    do
      dec_name=`cat ${i} | jq -r '.content[0].attachment.data' | base64 -d`
      echo -e "${GREEN}Inserting ${dec_name} in ${i}.${NC}"
      enc_file=`cat ${PWD}/custom/notes/${dec_name} | base64`
      f=`jq '.content[0].attachment.data = $newVal' --arg newVal ${enc_file} <<< cat ${i}`
      echo ${f} > ${i}
    done
  fi
fi

if [ ${with_edvisits} ]
then
  echo -e "${GREEN}Copying ED Visit resources.${NC}"
  cp ${PWD}/custom/resources/*${fname_end}.json ${TEMP_DIR} 2>/dev/null
fi

files=`ls ${TEMP_DIR}/*${fname_end}.json 2>/dev/null`

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
  ((file_count+=1))
  cat $i >> ${data}.json
done
echo ']' >> ${data}.json
cat ${data}.json | jq -c '.[]' > ${data}.ndjson
gzip -9 ${data}.ndjson
rm ${data}.json
echo -e "${GREEN}Created ${PWD}/${data}.ndjson.gz that can be uploaded to devbox${NC}"
rm -rf ${TEMP_DIR}
