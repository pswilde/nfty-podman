#!/bin/bash
mkdir ./config

podman run -d \
	--name ntfy \
	-p 1980:80 \
	-v ./config:/etc/ntfy \
       	binwiederhier/ntfy \
	serve
