#!/bin/bash
defined_services=$(docker-compose ps --services | wc -l)
running_services=$(docker ps --format '{{.Names}}' | wc -l)

if [ "$defined_services" -eq "$running_services" ]
then
	exit 0
else
	exit 1
fi
