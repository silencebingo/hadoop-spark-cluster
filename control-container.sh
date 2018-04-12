#!/bin/bash
docker container $1 c8bba8ffcb65
echo -e "container slave4 '$1'"
docker container $1 4228af7e4884
echo -e "container slave3 '$1'"
docker container $1 5c9d16ddf24c
echo -e "container slave2 '$1'"
docker container $1 f892eacfef32
echo -e "container slave1 '$1'"
docker container $1 440c7531fbef
echo -e "container master '$1'"
