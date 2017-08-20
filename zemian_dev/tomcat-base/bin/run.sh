#!/usr/bin/env bash

export CATALINA_HOME=$HOME/apps/apache-tomcat
export CATALINA_BASE=$(cd "`dirname $0`/.." && pwd)
$CATALINA_HOME/bin/catalina.sh run

