#!/bin/sh

if [ ! -f com.greetings/target/*.jar -o ! -f org.astro/target/*.jar ]; then
    echo "Build example first with 'mvn clean package'"
    exit 1
fi

if [ -d mods ]; then
    rm -rf mods
fi

mkdir mods

cp com.greetings/target/*.jar mods/
cp org.astro/target/*.jar mods/

java --module-path mods --module com.greetings/com.greetings.Main

