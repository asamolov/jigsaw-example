#!/bin/sh

jlink --module-path \
    $JAVA_HOME/jmod:\
com.greetings/target/com.greetings-1.0-SNAPSHOT.jar:\
org.astro/target/org.astro-1.0-SNAPSHOT.jar \
 --launcher run=com.greetings/com.greetings.Main \
 --add-modules com.greetings --output dist/
