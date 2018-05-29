#!/bin/sh


if [ ! -d mods ]; then
    echo "Prepare modules dir first with 'mvn clean package && sh run-modules.sh'"
    exit 1
fi

if [ -d dist ]; then
    rm -rf dist
fi

jlink --module-path \
    $JAVA_HOME/jmod:mods/\
 --launcher run=com.greetings/com.greetings.Main \
 --add-modules com.greetings --output dist/

dist/bin/run

