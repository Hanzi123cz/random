#!/bin/bash

echo $1
echo $2
echo $3
echo $4

#JSON=\{"'apiKey'":"'$1'","'password'":"'$2'","'hash'":"'$3'"\}

echo $JSON

curl --header "Content-Type: application/json" --request POST --data '{"apiKey":"'$1'","password":"'$2'","hash":"'$3'"}' $4
