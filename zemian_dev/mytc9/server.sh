#!/usr/bin/env bash
SCRIPT_HOME=$(cd `dirname $0` && pwd)
export CATALINA_BASE=$SCRIPT_HOME
export CATALINA_HOME=C:/Users/xbbj5x6/ossdev/tomcat/output/build

$CATALINA_HOME/bin/catalina.sh $@
