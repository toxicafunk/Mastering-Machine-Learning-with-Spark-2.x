#!/usr/bin/env bash
set -e
TOPDIR="$(cd `dirname $0`/..; pwd)"
export DATADIR="$TOPDIR/data"

export SPARKLING_WATER_VERSION="3.26.2-2.4"
export SPARK_PACKAGES=\
"ai.h2o:sparkling-water-package_2.11:${SPARKLING_WATER_VERSION},\
com.packtpub:mastering-ml-w-spark-utils_2.11:1.0.0-SNAPSHOT"

$SPARK_HOME/bin/spark-shell \
        --master 'local[*]' \
        --driver-memory 4g \
        --executor-memory 4g \
        --packages "$SPARK_PACKAGES" "$@"


