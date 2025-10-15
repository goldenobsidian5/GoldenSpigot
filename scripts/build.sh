#!/usr/bin/env bash

(
set -e
basedir="$(cd "$1" && pwd -P)"
gitcmd="git -c commit.gpgsign=false"

if [ "$2" == "--setup" ] || [ "$2" == "--jar" ]; then
	($gitcmd submodule update --init --recursive && ./scripts/remap.sh "$basedir" && ./scripts/decompile.sh "$basedir" && ./scripts/init.sh "$basedir" && ./scripts/applyPatches.sh "$basedir" "$2") || (
		echo "DashSpigot setup stage failed"
		exit 1
	) || exit 1
fi

if [ "$2" == "--compile" ]; then
	if [ ! -d "DashSpigot-API" ] || [ ! -d "DashSpigot-Server" ]; then
		echo "DashSpigot-API or DashSpigot-Server not found. Did you forget to run 'dash setup'?"
		exit 1
	fi
fi

if [ "$2" == "--jar" ] || [ "$2" == "--compile" ]; then
    ./gradlew build && ./scripts/paperclip.sh "$basedir"
fi
) || exit 1
