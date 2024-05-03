#!/usr/bin/env bash

output_dir="./out"
if [ -n "$HOST_USER" ]; then
	if [ -n "$HOST_GROUP" ]; then
		chown -R "$HOST_USER:$HOST_GROUP" "$output_dir"/*
	fi
	chown -R "$HOST_USER" "$output_dir"/*
fi
